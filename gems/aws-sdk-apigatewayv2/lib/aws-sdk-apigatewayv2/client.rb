# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ApiGatewayV2
  # An API client for ApiGatewayV2
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon API Gateway V2</p>
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
    def initialize(config = AWS::SDK::ApiGatewayV2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an Api resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApiInput}.
    #
    # @option params [String] :api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    #
    # @option params [Cors] :cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html">Configuring CORS</a> for more information.</p>
    #
    # @option params [String] :credentials_arn
    #   <p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null. Currently, this property is not used for HTTP integrations. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :description
    #   <p>The description of the API.</p>
    #
    # @option params [Boolean] :disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    #
    # @option params [Boolean] :disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    #
    # @option params [String] :name
    #   <p>The name of the API.</p>
    #
    # @option params [String] :protocol_type
    #   <p>The API protocol.</p>
    #
    # @option params [String] :route_key
    #   <p>This property is part of quick create. If you don't specify a routeKey, a default route of $default is created. The $default route acts as a catch-all for any request made to your API, for a particular stage. The $default route key can't be modified. You can add routes after creating the API, and you can update the route keys of additional routes. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #
    # @option params [String] :target
    #   <p>This property is part of quick create. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :version
    #   <p>A version identifier for the API.</p>
    #
    # @return [Types::CreateApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api(
    #     api_key_selection_expression: 'ApiKeySelectionExpression',
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: [
    #         'member'
    #       ],
    #       allow_methods: [
    #         'member'
    #       ],
    #       allow_origins: [
    #         'member'
    #       ],
    #       max_age: 1
    #     },
    #     credentials_arn: 'CredentialsArn',
    #     description: 'Description',
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     name: 'Name', # required
    #     protocol_type: 'WEBSOCKET', # required - accepts ["WEBSOCKET", "HTTP"]
    #     route_key: 'RouteKey',
    #     route_selection_expression: 'RouteSelectionExpression',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     target: 'Target',
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApiOutput
    #   resp.data.api_endpoint #=> String
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.api_id #=> String
    #   resp.data.api_key_selection_expression #=> String
    #   resp.data.cors_configuration #=> Types::Cors
    #   resp.data.cors_configuration.allow_credentials #=> Boolean
    #   resp.data.cors_configuration.allow_headers #=> Array<String>
    #   resp.data.cors_configuration.allow_headers[0] #=> String
    #   resp.data.cors_configuration.allow_methods #=> Array<String>
    #   resp.data.cors_configuration.allow_methods[0] #=> String
    #   resp.data.cors_configuration.allow_origins #=> Array<String>
    #   resp.data.cors_configuration.allow_origins[0] #=> String
    #   resp.data.cors_configuration.expose_headers #=> Array<String>
    #   resp.data.cors_configuration.max_age #=> Integer
    #   resp.data.created_date #=> Time
    #   resp.data.description #=> String
    #   resp.data.disable_schema_validation #=> Boolean
    #   resp.data.disable_execute_api_endpoint #=> Boolean
    #   resp.data.import_info #=> Array<String>
    #   resp.data.import_info[0] #=> String
    #   resp.data.name #=> String
    #   resp.data.protocol_type #=> String, one of ["WEBSOCKET", "HTTP"]
    #   resp.data.route_selection_expression #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.version #=> String
    #   resp.data.warnings #=> Array<String>
    #
    def create_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApi
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::CreateApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApi,
        stubs: @stubs,
        params_class: Params::CreateApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an API mapping.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApiMappingInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :api_mapping_key
    #   The API mapping key.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @option params [String] :stage
    #   <p>The API stage.</p>
    #
    # @return [Types::CreateApiMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_mapping(
    #     api_id: 'ApiId', # required
    #     api_mapping_key: 'ApiMappingKey',
    #     domain_name: 'DomainName', # required
    #     stage: 'Stage' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApiMappingOutput
    #   resp.data.api_id #=> String
    #   resp.data.api_mapping_id #=> String
    #   resp.data.api_mapping_key #=> String
    #   resp.data.stage #=> String
    #
    def create_api_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApiMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApiMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApiMapping
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::CreateApiMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApiMapping,
        stubs: @stubs,
        params_class: Params::CreateApiMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_api_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Authorizer for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAuthorizerInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :authorizer_credentials_arn
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>
    #
    # @option params [String] :authorizer_payload_format_version
    #   <p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>
    #
    # @option params [Integer] :authorizer_result_ttl_in_seconds
    #   <p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>
    #
    # @option params [String] :authorizer_type
    #   <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    #
    # @option params [String] :authorizer_uri
    #   <p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
    #                  , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>
    #
    # @option params [Boolean] :enable_simple_responses
    #   <p>Specifies whether a Lambda authorizer returns a response in a simple format. By default, a Lambda authorizer must return an IAM policy. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a></p>
    #
    # @option params [Array<String>] :identity_source
    #   <p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>
    #
    # @option params [String] :identity_validation_expression
    #   <p>This parameter is not used.</p>
    #
    # @option params [JWTConfiguration] :jwt_configuration
    #   <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :name
    #   <p>The name of the authorizer.</p>
    #
    # @return [Types::CreateAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_authorizer(
    #     api_id: 'ApiId', # required
    #     authorizer_credentials_arn: 'AuthorizerCredentialsArn',
    #     authorizer_payload_format_version: 'AuthorizerPayloadFormatVersion',
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: 'REQUEST', # required - accepts ["REQUEST", "JWT"]
    #     authorizer_uri: 'AuthorizerUri',
    #     enable_simple_responses: false,
    #     identity_source: [
    #       'member'
    #     ], # required
    #     identity_validation_expression: 'IdentityValidationExpression',
    #     jwt_configuration: {
    #       audience: [
    #         'member'
    #       ],
    #       issuer: 'Issuer'
    #     },
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAuthorizerOutput
    #   resp.data.authorizer_credentials_arn #=> String
    #   resp.data.authorizer_id #=> String
    #   resp.data.authorizer_payload_format_version #=> String
    #   resp.data.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.data.authorizer_type #=> String, one of ["REQUEST", "JWT"]
    #   resp.data.authorizer_uri #=> String
    #   resp.data.enable_simple_responses #=> Boolean
    #   resp.data.identity_source #=> Array<String>
    #   resp.data.identity_source[0] #=> String
    #   resp.data.identity_validation_expression #=> String
    #   resp.data.jwt_configuration #=> Types::JWTConfiguration
    #   resp.data.jwt_configuration.audience #=> Array<String>
    #   resp.data.jwt_configuration.audience[0] #=> String
    #   resp.data.jwt_configuration.issuer #=> String
    #   resp.data.name #=> String
    #
    def create_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAuthorizerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAuthorizer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::CreateAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAuthorizer,
        stubs: @stubs,
        params_class: Params::CreateAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Deployment for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :description
    #   <p>The description for the deployment resource.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the Stage resource for the Deployment resource to create.</p>
    #
    # @return [Types::CreateDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment(
    #     api_id: 'ApiId', # required
    #     description: 'Description',
    #     stage_name: 'StageName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentOutput
    #   resp.data.auto_deployed #=> Boolean
    #   resp.data.created_date #=> Time
    #   resp.data.deployment_id #=> String
    #   resp.data.deployment_status #=> String, one of ["PENDING", "FAILED", "DEPLOYED"]
    #   resp.data.deployment_status_message #=> String
    #   resp.data.description #=> String
    #
    def create_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeployment
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::CreateDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeployment,
        stubs: @stubs,
        params_class: Params::CreateDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a domain name.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @option params [Array<DomainNameConfiguration>] :domain_name_configurations
    #   <p>The domain name configurations.</p>
    #
    # @option params [MutualTlsAuthenticationInput] :mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The collection of tags associated with a domain name.</p>
    #
    # @return [Types::CreateDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_name(
    #     domain_name: 'DomainName', # required
    #     domain_name_configurations: [
    #       {
    #         api_gateway_domain_name: 'ApiGatewayDomainName',
    #         certificate_arn: 'CertificateArn',
    #         certificate_name: 'CertificateName',
    #         certificate_upload_date: Time.now,
    #         domain_name_status: 'AVAILABLE', # accepts ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"]
    #         domain_name_status_message: 'DomainNameStatusMessage',
    #         endpoint_type: 'REGIONAL', # accepts ["REGIONAL", "EDGE"]
    #         hosted_zone_id: 'HostedZoneId',
    #         security_policy: 'TLS_1_0', # accepts ["TLS_1_0", "TLS_1_2"]
    #         ownership_verification_certificate_arn: 'OwnershipVerificationCertificateArn'
    #       }
    #     ],
    #     mutual_tls_authentication: {
    #       truststore_uri: 'TruststoreUri',
    #       truststore_version: 'TruststoreVersion'
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDomainNameOutput
    #   resp.data.api_mapping_selection_expression #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.domain_name_configurations #=> Array<DomainNameConfiguration>
    #   resp.data.domain_name_configurations[0] #=> Types::DomainNameConfiguration
    #   resp.data.domain_name_configurations[0].api_gateway_domain_name #=> String
    #   resp.data.domain_name_configurations[0].certificate_arn #=> String
    #   resp.data.domain_name_configurations[0].certificate_name #=> String
    #   resp.data.domain_name_configurations[0].certificate_upload_date #=> Time
    #   resp.data.domain_name_configurations[0].domain_name_status #=> String, one of ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"]
    #   resp.data.domain_name_configurations[0].domain_name_status_message #=> String
    #   resp.data.domain_name_configurations[0].endpoint_type #=> String, one of ["REGIONAL", "EDGE"]
    #   resp.data.domain_name_configurations[0].hosted_zone_id #=> String
    #   resp.data.domain_name_configurations[0].security_policy #=> String, one of ["TLS_1_0", "TLS_1_2"]
    #   resp.data.domain_name_configurations[0].ownership_verification_certificate_arn #=> String
    #   resp.data.mutual_tls_authentication #=> Types::MutualTlsAuthentication
    #   resp.data.mutual_tls_authentication.truststore_uri #=> String
    #   resp.data.mutual_tls_authentication.truststore_version #=> String
    #   resp.data.mutual_tls_authentication.truststore_warnings #=> Array<String>
    #   resp.data.mutual_tls_authentication.truststore_warnings[0] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_domain_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDomainNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDomainNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDomainName
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::AccessDeniedException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::CreateDomainName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDomainName,
        stubs: @stubs,
        params_class: Params::CreateDomainNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_domain_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Integration.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIntegrationInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :connection_id
    #   <p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :connection_type
    #   <p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>
    #
    # @option params [String] :content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #
    # @option params [String] :credentials_arn
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>
    #
    # @option params [String] :description
    #   <p>The description of the integration.</p>
    #
    # @option params [String] :integration_method
    #   <p>Specifies the integration's HTTP method type.</p>
    #
    # @option params [String] :integration_subtype
    #   <p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration subtype reference</a>.</p>
    #
    # @option params [String] :integration_type
    #   <p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration. For HTTP API private integrations, use an HTTP_PROXY integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a "loopback" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>
    #
    # @option params [String] :integration_uri
    #   <p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>
    #
    # @option params [String] :passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>
    #
    # @option params [String] :payload_format_version
    #   <p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>
    #
    # @option params [Hash<String, String>] :request_parameters
    #   <p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
    #                  , where
    #                     <replaceable>{location}</replaceable>
    #                   is querystring, path, or header; and
    #                     <replaceable>{name}</replaceable>
    #                   must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to the backend. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt; where action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #
    # @option params [Hash<String, String>] :request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>
    #
    # @option params [Hash<String, Hash<String, String>>] :response_parameters
    #   <p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #
    # @option params [String] :template_selection_expression
    #   <p>The template selection expression for the integration.</p>
    #
    # @option params [Integer] :timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>
    #
    # @option params [TlsConfigInput] :tls_config
    #   <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    #
    # @return [Types::CreateIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration(
    #     api_id: 'ApiId', # required
    #     connection_id: 'ConnectionId',
    #     connection_type: 'INTERNET', # accepts ["INTERNET", "VPC_LINK"]
    #     content_handling_strategy: 'CONVERT_TO_BINARY', # accepts ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #     credentials_arn: 'CredentialsArn',
    #     description: 'Description',
    #     integration_method: 'IntegrationMethod',
    #     integration_subtype: 'IntegrationSubtype',
    #     integration_type: 'AWS', # required - accepts ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #     integration_uri: 'IntegrationUri',
    #     passthrough_behavior: 'WHEN_NO_MATCH', # accepts ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"]
    #     payload_format_version: 'PayloadFormatVersion',
    #     request_parameters: {
    #       'key' => 'value'
    #     },
    #     request_templates: {
    #       'key' => 'value'
    #     },
    #     template_selection_expression: 'TemplateSelectionExpression',
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       server_name_to_verify: 'ServerNameToVerify'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIntegrationOutput
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.connection_id #=> String
    #   resp.data.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.content_handling_strategy #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.credentials_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.integration_id #=> String
    #   resp.data.integration_method #=> String
    #   resp.data.integration_response_selection_expression #=> String
    #   resp.data.integration_subtype #=> String
    #   resp.data.integration_type #=> String, one of ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.integration_uri #=> String
    #   resp.data.passthrough_behavior #=> String, one of ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"]
    #   resp.data.payload_format_version #=> String
    #   resp.data.request_parameters #=> Hash<String, String>
    #   resp.data.request_parameters['key'] #=> String
    #   resp.data.request_templates #=> Hash<String, String>
    #   resp.data.request_templates['key'] #=> String
    #   resp.data.response_parameters #=> Hash<String, Hash<String, String>>
    #   resp.data.template_selection_expression #=> String
    #   resp.data.timeout_in_millis #=> Integer
    #   resp.data.tls_config #=> Types::TlsConfig
    #   resp.data.tls_config.server_name_to_verify #=> String
    #
    def create_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIntegrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIntegration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::CreateIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIntegration,
        stubs: @stubs,
        params_class: Params::CreateIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an IntegrationResponses.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIntegrationResponseInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :content_handling_strategy
    #   <p>Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    #
    # @option params [String] :integration_response_key
    #   <p>The integration response key.</p>
    #
    # @option params [Hash<String, String>] :response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where {name} is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where {name} is a valid and unique response header name and {JSON-expression} is a valid JSON expression without the $ prefix.</p>
    #
    # @option params [Hash<String, String>] :response_templates
    #   <p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #
    # @option params [String] :template_selection_expression
    #   <p>The template selection expression for the integration response. Supported only for WebSocket APIs.</p>
    #
    # @return [Types::CreateIntegrationResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration_response(
    #     api_id: 'ApiId', # required
    #     content_handling_strategy: 'CONVERT_TO_BINARY', # accepts ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #     integration_id: 'IntegrationId', # required
    #     integration_response_key: 'IntegrationResponseKey', # required
    #     response_parameters: {
    #       'key' => 'value'
    #     },
    #     response_templates: {
    #       'key' => 'value'
    #     },
    #     template_selection_expression: 'TemplateSelectionExpression'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIntegrationResponseOutput
    #   resp.data.content_handling_strategy #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.integration_response_id #=> String
    #   resp.data.integration_response_key #=> String
    #   resp.data.response_parameters #=> Hash<String, String>
    #   resp.data.response_parameters['key'] #=> String
    #   resp.data.response_templates #=> Hash<String, String>
    #   resp.data.response_templates['key'] #=> String
    #   resp.data.template_selection_expression #=> String
    #
    def create_integration_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIntegrationResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIntegrationResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIntegrationResponse
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::CreateIntegrationResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIntegrationResponse,
        stubs: @stubs,
        params_class: Params::CreateIntegrationResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_integration_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Model for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateModelInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :content_type
    #   <p>The content-type for the model, for example, "application/json".</p>
    #
    # @option params [String] :description
    #   <p>The description of the model.</p>
    #
    # @option params [String] :name
    #   <p>The name of the model. Must be alphanumeric.</p>
    #
    # @option params [String] :schema
    #   <p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>
    #
    # @return [Types::CreateModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model(
    #     api_id: 'ApiId', # required
    #     content_type: 'ContentType',
    #     description: 'Description',
    #     name: 'Name', # required
    #     schema: 'Schema' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateModelOutput
    #   resp.data.content_type #=> String
    #   resp.data.description #=> String
    #   resp.data.model_id #=> String
    #   resp.data.name #=> String
    #   resp.data.schema #=> String
    #
    def create_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateModel
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::CreateModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateModel,
        stubs: @stubs,
        params_class: Params::CreateModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Route for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRouteInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [Boolean] :api_key_required
    #   <p>Specifies whether an API key is required for the route. Supported only for WebSocket APIs.</p>
    #
    # @option params [Array<String>] :authorization_scopes
    #   <p>The authorization scopes supported by this route.</p>
    #
    # @option params [String] :authorization_type
    #   <p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    #
    # @option params [String] :authorizer_id
    #   <p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    #
    # @option params [String] :model_selection_expression
    #   <p>The model selection expression for the route. Supported only for WebSocket APIs.</p>
    #
    # @option params [String] :operation_name
    #   <p>The operation name for the route.</p>
    #
    # @option params [Hash<String, String>] :request_models
    #   <p>The request models for the route. Supported only for WebSocket APIs.</p>
    #
    # @option params [Hash<String, ParameterConstraints>] :request_parameters
    #   <p>The request parameters for the route. Supported only for WebSocket APIs.</p>
    #
    # @option params [String] :route_key
    #   <p>The route key for the route.</p>
    #
    # @option params [String] :route_response_selection_expression
    #   <p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>
    #
    # @option params [String] :target
    #   <p>The target for the route.</p>
    #
    # @return [Types::CreateRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route(
    #     api_id: 'ApiId', # required
    #     api_key_required: false,
    #     authorization_scopes: [
    #       'member'
    #     ],
    #     authorization_type: 'NONE', # accepts ["NONE", "AWS_IAM", "CUSTOM", "JWT"]
    #     authorizer_id: 'AuthorizerId',
    #     model_selection_expression: 'ModelSelectionExpression',
    #     operation_name: 'OperationName',
    #     request_models: {
    #       'key' => 'value'
    #     },
    #     request_parameters: {
    #       'key' => {
    #         required: false
    #       }
    #     },
    #     route_key: 'RouteKey', # required
    #     route_response_selection_expression: 'RouteResponseSelectionExpression',
    #     target: 'Target'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRouteOutput
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.api_key_required #=> Boolean
    #   resp.data.authorization_scopes #=> Array<String>
    #   resp.data.authorization_scopes[0] #=> String
    #   resp.data.authorization_type #=> String, one of ["NONE", "AWS_IAM", "CUSTOM", "JWT"]
    #   resp.data.authorizer_id #=> String
    #   resp.data.model_selection_expression #=> String
    #   resp.data.operation_name #=> String
    #   resp.data.request_models #=> Hash<String, String>
    #   resp.data.request_models['key'] #=> String
    #   resp.data.request_parameters #=> Hash<String, ParameterConstraints>
    #   resp.data.request_parameters['key'] #=> Types::ParameterConstraints
    #   resp.data.request_parameters['key'].required #=> Boolean
    #   resp.data.route_id #=> String
    #   resp.data.route_key #=> String
    #   resp.data.route_response_selection_expression #=> String
    #   resp.data.target #=> String
    #
    def create_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRouteInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
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

    # <p>Creates a RouteResponse for a Route.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRouteResponseInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :model_selection_expression
    #   <p>The model selection expression for the route response. Supported only for WebSocket APIs.</p>
    #
    # @option params [Hash<String, String>] :response_models
    #   <p>The response models for the route response.</p>
    #
    # @option params [Hash<String, ParameterConstraints>] :response_parameters
    #   <p>The route response parameters.</p>
    #
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    #
    # @option params [String] :route_response_key
    #   <p>The route response key.</p>
    #
    # @return [Types::CreateRouteResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route_response(
    #     api_id: 'ApiId', # required
    #     model_selection_expression: 'ModelSelectionExpression',
    #     response_models: {
    #       'key' => 'value'
    #     },
    #     response_parameters: {
    #       'key' => {
    #         required: false
    #       }
    #     },
    #     route_id: 'RouteId', # required
    #     route_response_key: 'RouteResponseKey' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRouteResponseOutput
    #   resp.data.model_selection_expression #=> String
    #   resp.data.response_models #=> Hash<String, String>
    #   resp.data.response_models['key'] #=> String
    #   resp.data.response_parameters #=> Hash<String, ParameterConstraints>
    #   resp.data.response_parameters['key'] #=> Types::ParameterConstraints
    #   resp.data.response_parameters['key'].required #=> Boolean
    #   resp.data.route_response_id #=> String
    #   resp.data.route_response_key #=> String
    #
    def create_route_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRouteResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRouteResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRouteResponse
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::CreateRouteResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRouteResponse,
        stubs: @stubs,
        params_class: Params::CreateRouteResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_route_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Stage for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStageInput}.
    #
    # @option params [AccessLogSettings] :access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [Boolean] :auto_deploy
    #   <p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>
    #
    # @option params [String] :client_certificate_id
    #   <p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>
    #
    # @option params [RouteSettings] :default_route_settings
    #   <p>The default route settings for the stage.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The deployment identifier of the API stage.</p>
    #
    # @option params [String] :description
    #   <p>The description for the API stage.</p>
    #
    # @option params [Hash<String, RouteSettings>] :route_settings
    #   <p>Route settings for the stage, by routeKey.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage.</p>
    #
    # @option params [Hash<String, String>] :stage_variables
    #   <p>A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #
    # @return [Types::CreateStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stage(
    #     access_log_settings: {
    #       destination_arn: 'DestinationArn',
    #       format: 'Format'
    #     },
    #     api_id: 'ApiId', # required
    #     auto_deploy: false,
    #     client_certificate_id: 'ClientCertificateId',
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: 'ERROR', # accepts ["ERROR", "INFO", "OFF"]
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0
    #     },
    #     deployment_id: 'DeploymentId',
    #     description: 'Description',
    #     stage_name: 'StageName', # required
    #     stage_variables: {
    #       'key' => 'value'
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStageOutput
    #   resp.data.access_log_settings #=> Types::AccessLogSettings
    #   resp.data.access_log_settings.destination_arn #=> String
    #   resp.data.access_log_settings.format #=> String
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.auto_deploy #=> Boolean
    #   resp.data.client_certificate_id #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.default_route_settings #=> Types::RouteSettings
    #   resp.data.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.data.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.data.default_route_settings.logging_level #=> String, one of ["ERROR", "INFO", "OFF"]
    #   resp.data.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.data.default_route_settings.throttling_rate_limit #=> Float
    #   resp.data.deployment_id #=> String
    #   resp.data.description #=> String
    #   resp.data.last_deployment_status_message #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.route_settings #=> Hash<String, RouteSettings>
    #   resp.data.stage_name #=> String
    #   resp.data.stage_variables #=> Hash<String, String>
    #   resp.data.stage_variables['key'] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_stage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStage
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::CreateStage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStage,
        stubs: @stubs,
        params_class: Params::CreateStageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a VPC link.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVpcLinkInput}.
    #
    # @option params [String] :name
    #   <p>The name of the VPC link.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of security group IDs for the VPC link.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs to include in the VPC link.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags.</p>
    #
    # @return [Types::CreateVpcLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_link(
    #     name: 'Name', # required
    #     security_group_ids: [
    #       'member'
    #     ],
    #     subnet_ids: [
    #       'member'
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVpcLinkOutput
    #   resp.data.created_date #=> Time
    #   resp.data.name #=> String
    #   resp.data.security_group_ids #=> Array<String>
    #   resp.data.security_group_ids[0] #=> String
    #   resp.data.subnet_ids #=> Array<String>
    #   resp.data.subnet_ids[0] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.vpc_link_id #=> String
    #   resp.data.vpc_link_status #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"]
    #   resp.data.vpc_link_status_message #=> String
    #   resp.data.vpc_link_version #=> String, one of ["V2"]
    #
    def create_vpc_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVpcLinkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVpcLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVpcLink
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::CreateVpcLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVpcLink,
        stubs: @stubs,
        params_class: Params::CreateVpcLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vpc_link
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the AccessLogSettings for a Stage. To disable access logging for a Stage, delete its AccessLogSettings.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccessLogSettingsInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #
    # @return [Types::DeleteAccessLogSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_log_settings(
    #     api_id: 'ApiId', # required
    #     stage_name: 'StageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccessLogSettingsOutput
    #
    def delete_access_log_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccessLogSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccessLogSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccessLogSettings
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteAccessLogSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccessLogSettings,
        stubs: @stubs,
        params_class: Params::DeleteAccessLogSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_access_log_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Api resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApiInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @return [Types::DeleteApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api(
    #     api_id: 'ApiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApiOutput
    #
    def delete_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApi
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApi,
        stubs: @stubs,
        params_class: Params::DeleteApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an API mapping.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApiMappingInput}.
    #
    # @option params [String] :api_mapping_id
    #   <p>The API mapping identifier.</p>
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @return [Types::DeleteApiMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api_mapping(
    #     api_mapping_id: 'ApiMappingId', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApiMappingOutput
    #
    def delete_api_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApiMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApiMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApiMapping
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteApiMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApiMapping,
        stubs: @stubs,
        params_class: Params::DeleteApiMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_api_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Authorizer.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAuthorizerInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :authorizer_id
    #   <p>The authorizer identifier.</p>
    #
    # @return [Types::DeleteAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_authorizer(
    #     api_id: 'ApiId', # required
    #     authorizer_id: 'AuthorizerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAuthorizerOutput
    #
    def delete_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAuthorizerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAuthorizer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAuthorizer,
        stubs: @stubs,
        params_class: Params::DeleteAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a CORS configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCorsConfigurationInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @return [Types::DeleteCorsConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cors_configuration(
    #     api_id: 'ApiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCorsConfigurationOutput
    #
    def delete_cors_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCorsConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCorsConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCorsConfiguration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteCorsConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCorsConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteCorsConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cors_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Deployment.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeploymentInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The deployment ID.</p>
    #
    # @return [Types::DeleteDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment(
    #     api_id: 'ApiId', # required
    #     deployment_id: 'DeploymentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeploymentOutput
    #
    def delete_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDeployment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDeployment,
        stubs: @stubs,
        params_class: Params::DeleteDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a domain name.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @return [Types::DeleteDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_name(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainNameOutput
    #
    def delete_domain_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDomainNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDomainNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDomainName
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteDomainName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDomainName,
        stubs: @stubs,
        params_class: Params::DeleteDomainNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_domain_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Integration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIntegrationInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    #
    # @return [Types::DeleteIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration(
    #     api_id: 'ApiId', # required
    #     integration_id: 'IntegrationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIntegrationOutput
    #
    def delete_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIntegrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIntegration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIntegration,
        stubs: @stubs,
        params_class: Params::DeleteIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an IntegrationResponses.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIntegrationResponseInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    #
    # @option params [String] :integration_response_id
    #   <p>The integration response ID.</p>
    #
    # @return [Types::DeleteIntegrationResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration_response(
    #     api_id: 'ApiId', # required
    #     integration_id: 'IntegrationId', # required
    #     integration_response_id: 'IntegrationResponseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIntegrationResponseOutput
    #
    def delete_integration_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIntegrationResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIntegrationResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIntegrationResponse
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteIntegrationResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIntegrationResponse,
        stubs: @stubs,
        params_class: Params::DeleteIntegrationResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_integration_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Model.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteModelInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    #
    # @return [Types::DeleteModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model(
    #     api_id: 'ApiId', # required
    #     model_id: 'ModelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteModelOutput
    #
    def delete_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteModel
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteModel,
        stubs: @stubs,
        params_class: Params::DeleteModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Route.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRouteInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    #
    # @return [Types::DeleteRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route(
    #     api_id: 'ApiId', # required
    #     route_id: 'RouteId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRouteOutput
    #
    def delete_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRouteInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
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

    # <p>Deletes a route request parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRouteRequestParameterInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :request_parameter_key
    #   <p>The route request parameter key.</p>
    #
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    #
    # @return [Types::DeleteRouteRequestParameterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route_request_parameter(
    #     api_id: 'ApiId', # required
    #     request_parameter_key: 'RequestParameterKey', # required
    #     route_id: 'RouteId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRouteRequestParameterOutput
    #
    def delete_route_request_parameter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRouteRequestParameterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRouteRequestParameterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRouteRequestParameter
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteRouteRequestParameter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRouteRequestParameter,
        stubs: @stubs,
        params_class: Params::DeleteRouteRequestParameterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_route_request_parameter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a RouteResponse.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRouteResponseInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    #
    # @option params [String] :route_response_id
    #   <p>The route response ID.</p>
    #
    # @return [Types::DeleteRouteResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route_response(
    #     api_id: 'ApiId', # required
    #     route_id: 'RouteId', # required
    #     route_response_id: 'RouteResponseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRouteResponseOutput
    #
    def delete_route_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRouteResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRouteResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRouteResponse
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteRouteResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRouteResponse,
        stubs: @stubs,
        params_class: Params::DeleteRouteResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_route_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the RouteSettings for a stage.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRouteSettingsInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :route_key
    #   <p>The route key.</p>
    #
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #
    # @return [Types::DeleteRouteSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route_settings(
    #     api_id: 'ApiId', # required
    #     route_key: 'RouteKey', # required
    #     stage_name: 'StageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRouteSettingsOutput
    #
    def delete_route_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRouteSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRouteSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRouteSettings
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteRouteSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRouteSettings,
        stubs: @stubs,
        params_class: Params::DeleteRouteSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_route_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Stage.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStageInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #
    # @return [Types::DeleteStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stage(
    #     api_id: 'ApiId', # required
    #     stage_name: 'StageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStageOutput
    #
    def delete_stage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStage
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteStage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStage,
        stubs: @stubs,
        params_class: Params::DeleteStageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a VPC link.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVpcLinkInput}.
    #
    # @option params [String] :vpc_link_id
    #   <p>The ID of the VPC link.</p>
    #
    # @return [Types::DeleteVpcLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_link(
    #     vpc_link_id: 'VpcLinkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVpcLinkOutput
    #
    def delete_vpc_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVpcLinkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVpcLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVpcLink
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteVpcLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVpcLink,
        stubs: @stubs,
        params_class: Params::DeleteVpcLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vpc_link
        )
      )
      raise resp.error if resp.error
      resp
    end

    # @param [Hash] params
    #   See {Types::ExportApiInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :export_version
    #   <p>The version of the API Gateway export algorithm. API Gateway uses the latest version by default. Currently, the only supported version is 1.0.</p>
    #
    # @option params [Boolean] :include_extensions
    #   <p>Specifies whether to include <a href="https://docs.aws.amazon.com//apigateway/latest/developerguide/api-gateway-swagger-extensions.html">API Gateway extensions</a> in the exported API definition. API Gateway extensions are included by default.</p>
    #
    # @option params [String] :output_type
    #   <p>The output type of the exported definition file. Valid values are JSON and YAML.</p>
    #
    # @option params [String] :specification
    #   <p>The version of the API specification to use. OAS30, for OpenAPI 3.0, is the only supported value.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the API stage to export. If you don't specify this property, a representation of the latest API configuration is exported.</p>
    #
    # @return [Types::ExportApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_api(
    #     api_id: 'ApiId', # required
    #     export_version: 'ExportVersion',
    #     include_extensions: false,
    #     output_type: 'OutputType', # required
    #     specification: 'Specification', # required
    #     stage_name: 'StageName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportApiOutput
    #   resp.data.body #=> String
    #
    def export_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportApi
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::ExportApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportApi,
        stubs: @stubs,
        params_class: Params::ExportApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an Api resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApiInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @return [Types::GetApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api(
    #     api_id: 'ApiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApiOutput
    #   resp.data.api_endpoint #=> String
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.api_id #=> String
    #   resp.data.api_key_selection_expression #=> String
    #   resp.data.cors_configuration #=> Types::Cors
    #   resp.data.cors_configuration.allow_credentials #=> Boolean
    #   resp.data.cors_configuration.allow_headers #=> Array<String>
    #   resp.data.cors_configuration.allow_headers[0] #=> String
    #   resp.data.cors_configuration.allow_methods #=> Array<String>
    #   resp.data.cors_configuration.allow_methods[0] #=> String
    #   resp.data.cors_configuration.allow_origins #=> Array<String>
    #   resp.data.cors_configuration.allow_origins[0] #=> String
    #   resp.data.cors_configuration.expose_headers #=> Array<String>
    #   resp.data.cors_configuration.max_age #=> Integer
    #   resp.data.created_date #=> Time
    #   resp.data.description #=> String
    #   resp.data.disable_schema_validation #=> Boolean
    #   resp.data.disable_execute_api_endpoint #=> Boolean
    #   resp.data.import_info #=> Array<String>
    #   resp.data.import_info[0] #=> String
    #   resp.data.name #=> String
    #   resp.data.protocol_type #=> String, one of ["WEBSOCKET", "HTTP"]
    #   resp.data.route_selection_expression #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.version #=> String
    #   resp.data.warnings #=> Array<String>
    #
    def get_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApi
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApi,
        stubs: @stubs,
        params_class: Params::GetApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an API mapping.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApiMappingInput}.
    #
    # @option params [String] :api_mapping_id
    #   <p>The API mapping identifier.</p>
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @return [Types::GetApiMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_mapping(
    #     api_mapping_id: 'ApiMappingId', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApiMappingOutput
    #   resp.data.api_id #=> String
    #   resp.data.api_mapping_id #=> String
    #   resp.data.api_mapping_key #=> String
    #   resp.data.stage #=> String
    #
    def get_api_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApiMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApiMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApiMapping
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetApiMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApiMapping,
        stubs: @stubs,
        params_class: Params::GetApiMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_api_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets API mappings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApiMappingsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetApiMappingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_mappings(
    #     domain_name: 'DomainName', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApiMappingsOutput
    #   resp.data.items #=> Array<ApiMapping>
    #   resp.data.items[0] #=> Types::ApiMapping
    #   resp.data.items[0].api_id #=> String
    #   resp.data.items[0].api_mapping_id #=> String
    #   resp.data.items[0].api_mapping_key #=> String
    #   resp.data.items[0].stage #=> String
    #   resp.data.next_token #=> String
    #
    def get_api_mappings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApiMappingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApiMappingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApiMappings
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetApiMappings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApiMappings,
        stubs: @stubs,
        params_class: Params::GetApiMappingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_api_mappings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a collection of Api resources.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApisInput}.
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetApisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apis(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApisOutput
    #   resp.data.items #=> Array<Api>
    #   resp.data.items[0] #=> Types::Api
    #   resp.data.items[0].api_endpoint #=> String
    #   resp.data.items[0].api_gateway_managed #=> Boolean
    #   resp.data.items[0].api_id #=> String
    #   resp.data.items[0].api_key_selection_expression #=> String
    #   resp.data.items[0].cors_configuration #=> Types::Cors
    #   resp.data.items[0].cors_configuration.allow_credentials #=> Boolean
    #   resp.data.items[0].cors_configuration.allow_headers #=> Array<String>
    #   resp.data.items[0].cors_configuration.allow_headers[0] #=> String
    #   resp.data.items[0].cors_configuration.allow_methods #=> Array<String>
    #   resp.data.items[0].cors_configuration.allow_methods[0] #=> String
    #   resp.data.items[0].cors_configuration.allow_origins #=> Array<String>
    #   resp.data.items[0].cors_configuration.allow_origins[0] #=> String
    #   resp.data.items[0].cors_configuration.expose_headers #=> Array<String>
    #   resp.data.items[0].cors_configuration.max_age #=> Integer
    #   resp.data.items[0].created_date #=> Time
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].disable_schema_validation #=> Boolean
    #   resp.data.items[0].disable_execute_api_endpoint #=> Boolean
    #   resp.data.items[0].import_info #=> Array<String>
    #   resp.data.items[0].import_info[0] #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].protocol_type #=> String, one of ["WEBSOCKET", "HTTP"]
    #   resp.data.items[0].route_selection_expression #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].version #=> String
    #   resp.data.items[0].warnings #=> Array<String>
    #   resp.data.next_token #=> String
    #
    def get_apis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApis
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetApis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApis,
        stubs: @stubs,
        params_class: Params::GetApisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_apis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an Authorizer.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAuthorizerInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :authorizer_id
    #   <p>The authorizer identifier.</p>
    #
    # @return [Types::GetAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorizer(
    #     api_id: 'ApiId', # required
    #     authorizer_id: 'AuthorizerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAuthorizerOutput
    #   resp.data.authorizer_credentials_arn #=> String
    #   resp.data.authorizer_id #=> String
    #   resp.data.authorizer_payload_format_version #=> String
    #   resp.data.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.data.authorizer_type #=> String, one of ["REQUEST", "JWT"]
    #   resp.data.authorizer_uri #=> String
    #   resp.data.enable_simple_responses #=> Boolean
    #   resp.data.identity_source #=> Array<String>
    #   resp.data.identity_source[0] #=> String
    #   resp.data.identity_validation_expression #=> String
    #   resp.data.jwt_configuration #=> Types::JWTConfiguration
    #   resp.data.jwt_configuration.audience #=> Array<String>
    #   resp.data.jwt_configuration.audience[0] #=> String
    #   resp.data.jwt_configuration.issuer #=> String
    #   resp.data.name #=> String
    #
    def get_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAuthorizerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAuthorizer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAuthorizer,
        stubs: @stubs,
        params_class: Params::GetAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the Authorizers for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAuthorizersInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetAuthorizersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorizers(
    #     api_id: 'ApiId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAuthorizersOutput
    #   resp.data.items #=> Array<Authorizer>
    #   resp.data.items[0] #=> Types::Authorizer
    #   resp.data.items[0].authorizer_credentials_arn #=> String
    #   resp.data.items[0].authorizer_id #=> String
    #   resp.data.items[0].authorizer_payload_format_version #=> String
    #   resp.data.items[0].authorizer_result_ttl_in_seconds #=> Integer
    #   resp.data.items[0].authorizer_type #=> String, one of ["REQUEST", "JWT"]
    #   resp.data.items[0].authorizer_uri #=> String
    #   resp.data.items[0].enable_simple_responses #=> Boolean
    #   resp.data.items[0].identity_source #=> Array<String>
    #   resp.data.items[0].identity_source[0] #=> String
    #   resp.data.items[0].identity_validation_expression #=> String
    #   resp.data.items[0].jwt_configuration #=> Types::JWTConfiguration
    #   resp.data.items[0].jwt_configuration.audience #=> Array<String>
    #   resp.data.items[0].jwt_configuration.audience[0] #=> String
    #   resp.data.items[0].jwt_configuration.issuer #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def get_authorizers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAuthorizersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAuthorizersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAuthorizers
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetAuthorizers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAuthorizers,
        stubs: @stubs,
        params_class: Params::GetAuthorizersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_authorizers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a Deployment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The deployment ID.</p>
    #
    # @return [Types::GetDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment(
    #     api_id: 'ApiId', # required
    #     deployment_id: 'DeploymentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentOutput
    #   resp.data.auto_deployed #=> Boolean
    #   resp.data.created_date #=> Time
    #   resp.data.deployment_id #=> String
    #   resp.data.deployment_status #=> String, one of ["PENDING", "FAILED", "DEPLOYED"]
    #   resp.data.deployment_status_message #=> String
    #   resp.data.description #=> String
    #
    def get_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeployment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeployment,
        stubs: @stubs,
        params_class: Params::GetDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the Deployments for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentsInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployments(
    #     api_id: 'ApiId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentsOutput
    #   resp.data.items #=> Array<Deployment>
    #   resp.data.items[0] #=> Types::Deployment
    #   resp.data.items[0].auto_deployed #=> Boolean
    #   resp.data.items[0].created_date #=> Time
    #   resp.data.items[0].deployment_id #=> String
    #   resp.data.items[0].deployment_status #=> String, one of ["PENDING", "FAILED", "DEPLOYED"]
    #   resp.data.items[0].deployment_status_message #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def get_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeployments
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeployments,
        stubs: @stubs,
        params_class: Params::GetDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a domain name.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @return [Types::GetDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_name(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainNameOutput
    #   resp.data.api_mapping_selection_expression #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.domain_name_configurations #=> Array<DomainNameConfiguration>
    #   resp.data.domain_name_configurations[0] #=> Types::DomainNameConfiguration
    #   resp.data.domain_name_configurations[0].api_gateway_domain_name #=> String
    #   resp.data.domain_name_configurations[0].certificate_arn #=> String
    #   resp.data.domain_name_configurations[0].certificate_name #=> String
    #   resp.data.domain_name_configurations[0].certificate_upload_date #=> Time
    #   resp.data.domain_name_configurations[0].domain_name_status #=> String, one of ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"]
    #   resp.data.domain_name_configurations[0].domain_name_status_message #=> String
    #   resp.data.domain_name_configurations[0].endpoint_type #=> String, one of ["REGIONAL", "EDGE"]
    #   resp.data.domain_name_configurations[0].hosted_zone_id #=> String
    #   resp.data.domain_name_configurations[0].security_policy #=> String, one of ["TLS_1_0", "TLS_1_2"]
    #   resp.data.domain_name_configurations[0].ownership_verification_certificate_arn #=> String
    #   resp.data.mutual_tls_authentication #=> Types::MutualTlsAuthentication
    #   resp.data.mutual_tls_authentication.truststore_uri #=> String
    #   resp.data.mutual_tls_authentication.truststore_version #=> String
    #   resp.data.mutual_tls_authentication.truststore_warnings #=> Array<String>
    #   resp.data.mutual_tls_authentication.truststore_warnings[0] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_domain_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDomainNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDomainNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDomainName
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetDomainName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDomainName,
        stubs: @stubs,
        params_class: Params::GetDomainNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_domain_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the domain names for an AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainNamesInput}.
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetDomainNamesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_names(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainNamesOutput
    #   resp.data.items #=> Array<DomainName>
    #   resp.data.items[0] #=> Types::DomainName
    #   resp.data.items[0].api_mapping_selection_expression #=> String
    #   resp.data.items[0].domain_name #=> String
    #   resp.data.items[0].domain_name_configurations #=> Array<DomainNameConfiguration>
    #   resp.data.items[0].domain_name_configurations[0] #=> Types::DomainNameConfiguration
    #   resp.data.items[0].domain_name_configurations[0].api_gateway_domain_name #=> String
    #   resp.data.items[0].domain_name_configurations[0].certificate_arn #=> String
    #   resp.data.items[0].domain_name_configurations[0].certificate_name #=> String
    #   resp.data.items[0].domain_name_configurations[0].certificate_upload_date #=> Time
    #   resp.data.items[0].domain_name_configurations[0].domain_name_status #=> String, one of ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"]
    #   resp.data.items[0].domain_name_configurations[0].domain_name_status_message #=> String
    #   resp.data.items[0].domain_name_configurations[0].endpoint_type #=> String, one of ["REGIONAL", "EDGE"]
    #   resp.data.items[0].domain_name_configurations[0].hosted_zone_id #=> String
    #   resp.data.items[0].domain_name_configurations[0].security_policy #=> String, one of ["TLS_1_0", "TLS_1_2"]
    #   resp.data.items[0].domain_name_configurations[0].ownership_verification_certificate_arn #=> String
    #   resp.data.items[0].mutual_tls_authentication #=> Types::MutualTlsAuthentication
    #   resp.data.items[0].mutual_tls_authentication.truststore_uri #=> String
    #   resp.data.items[0].mutual_tls_authentication.truststore_version #=> String
    #   resp.data.items[0].mutual_tls_authentication.truststore_warnings #=> Array<String>
    #   resp.data.items[0].mutual_tls_authentication.truststore_warnings[0] #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def get_domain_names(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDomainNamesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDomainNamesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDomainNames
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetDomainNames
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDomainNames,
        stubs: @stubs,
        params_class: Params::GetDomainNamesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_domain_names
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an Integration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIntegrationInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    #
    # @return [Types::GetIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration(
    #     api_id: 'ApiId', # required
    #     integration_id: 'IntegrationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntegrationOutput
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.connection_id #=> String
    #   resp.data.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.content_handling_strategy #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.credentials_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.integration_id #=> String
    #   resp.data.integration_method #=> String
    #   resp.data.integration_response_selection_expression #=> String
    #   resp.data.integration_subtype #=> String
    #   resp.data.integration_type #=> String, one of ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.integration_uri #=> String
    #   resp.data.passthrough_behavior #=> String, one of ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"]
    #   resp.data.payload_format_version #=> String
    #   resp.data.request_parameters #=> Hash<String, String>
    #   resp.data.request_parameters['key'] #=> String
    #   resp.data.request_templates #=> Hash<String, String>
    #   resp.data.request_templates['key'] #=> String
    #   resp.data.response_parameters #=> Hash<String, Hash<String, String>>
    #   resp.data.template_selection_expression #=> String
    #   resp.data.timeout_in_millis #=> Integer
    #   resp.data.tls_config #=> Types::TlsConfig
    #   resp.data.tls_config.server_name_to_verify #=> String
    #
    def get_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIntegrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIntegration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIntegration,
        stubs: @stubs,
        params_class: Params::GetIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an IntegrationResponses.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIntegrationResponseInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    #
    # @option params [String] :integration_response_id
    #   <p>The integration response ID.</p>
    #
    # @return [Types::GetIntegrationResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration_response(
    #     api_id: 'ApiId', # required
    #     integration_id: 'IntegrationId', # required
    #     integration_response_id: 'IntegrationResponseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntegrationResponseOutput
    #   resp.data.content_handling_strategy #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.integration_response_id #=> String
    #   resp.data.integration_response_key #=> String
    #   resp.data.response_parameters #=> Hash<String, String>
    #   resp.data.response_parameters['key'] #=> String
    #   resp.data.response_templates #=> Hash<String, String>
    #   resp.data.response_templates['key'] #=> String
    #   resp.data.template_selection_expression #=> String
    #
    def get_integration_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIntegrationResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIntegrationResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIntegrationResponse
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetIntegrationResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIntegrationResponse,
        stubs: @stubs,
        params_class: Params::GetIntegrationResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_integration_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the IntegrationResponses for an Integration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIntegrationResponsesInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetIntegrationResponsesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration_responses(
    #     api_id: 'ApiId', # required
    #     integration_id: 'IntegrationId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntegrationResponsesOutput
    #   resp.data.items #=> Array<IntegrationResponse>
    #   resp.data.items[0] #=> Types::IntegrationResponse
    #   resp.data.items[0].content_handling_strategy #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.items[0].integration_response_id #=> String
    #   resp.data.items[0].integration_response_key #=> String
    #   resp.data.items[0].response_parameters #=> Hash<String, String>
    #   resp.data.items[0].response_parameters['key'] #=> String
    #   resp.data.items[0].response_templates #=> Hash<String, String>
    #   resp.data.items[0].response_templates['key'] #=> String
    #   resp.data.items[0].template_selection_expression #=> String
    #   resp.data.next_token #=> String
    #
    def get_integration_responses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIntegrationResponsesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIntegrationResponsesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIntegrationResponses
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetIntegrationResponses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIntegrationResponses,
        stubs: @stubs,
        params_class: Params::GetIntegrationResponsesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_integration_responses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the Integrations for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIntegrationsInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetIntegrationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integrations(
    #     api_id: 'ApiId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntegrationsOutput
    #   resp.data.items #=> Array<Integration>
    #   resp.data.items[0] #=> Types::Integration
    #   resp.data.items[0].api_gateway_managed #=> Boolean
    #   resp.data.items[0].connection_id #=> String
    #   resp.data.items[0].connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.items[0].content_handling_strategy #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.items[0].credentials_arn #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].integration_id #=> String
    #   resp.data.items[0].integration_method #=> String
    #   resp.data.items[0].integration_response_selection_expression #=> String
    #   resp.data.items[0].integration_subtype #=> String
    #   resp.data.items[0].integration_type #=> String, one of ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.items[0].integration_uri #=> String
    #   resp.data.items[0].passthrough_behavior #=> String, one of ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"]
    #   resp.data.items[0].payload_format_version #=> String
    #   resp.data.items[0].request_parameters #=> Hash<String, String>
    #   resp.data.items[0].request_parameters['key'] #=> String
    #   resp.data.items[0].request_templates #=> Hash<String, String>
    #   resp.data.items[0].request_templates['key'] #=> String
    #   resp.data.items[0].response_parameters #=> Hash<String, Hash<String, String>>
    #   resp.data.items[0].template_selection_expression #=> String
    #   resp.data.items[0].timeout_in_millis #=> Integer
    #   resp.data.items[0].tls_config #=> Types::TlsConfig
    #   resp.data.items[0].tls_config.server_name_to_verify #=> String
    #   resp.data.next_token #=> String
    #
    def get_integrations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIntegrationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIntegrationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIntegrations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetIntegrations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIntegrations,
        stubs: @stubs,
        params_class: Params::GetIntegrationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_integrations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a Model.</p>
    #
    # @param [Hash] params
    #   See {Types::GetModelInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    #
    # @return [Types::GetModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model(
    #     api_id: 'ApiId', # required
    #     model_id: 'ModelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetModelOutput
    #   resp.data.content_type #=> String
    #   resp.data.description #=> String
    #   resp.data.model_id #=> String
    #   resp.data.name #=> String
    #   resp.data.schema #=> String
    #
    def get_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetModel
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetModel,
        stubs: @stubs,
        params_class: Params::GetModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a model template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetModelTemplateInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    #
    # @return [Types::GetModelTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_template(
    #     api_id: 'ApiId', # required
    #     model_id: 'ModelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetModelTemplateOutput
    #   resp.data.value #=> String
    #
    def get_model_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetModelTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetModelTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetModelTemplate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetModelTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetModelTemplate,
        stubs: @stubs,
        params_class: Params::GetModelTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_model_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the Models for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetModelsInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_models(
    #     api_id: 'ApiId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetModelsOutput
    #   resp.data.items #=> Array<Model>
    #   resp.data.items[0] #=> Types::Model
    #   resp.data.items[0].content_type #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].model_id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].schema #=> String
    #   resp.data.next_token #=> String
    #
    def get_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetModelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetModels
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetModels,
        stubs: @stubs,
        params_class: Params::GetModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a Route.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRouteInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    #
    # @return [Types::GetRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_route(
    #     api_id: 'ApiId', # required
    #     route_id: 'RouteId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRouteOutput
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.api_key_required #=> Boolean
    #   resp.data.authorization_scopes #=> Array<String>
    #   resp.data.authorization_scopes[0] #=> String
    #   resp.data.authorization_type #=> String, one of ["NONE", "AWS_IAM", "CUSTOM", "JWT"]
    #   resp.data.authorizer_id #=> String
    #   resp.data.model_selection_expression #=> String
    #   resp.data.operation_name #=> String
    #   resp.data.request_models #=> Hash<String, String>
    #   resp.data.request_models['key'] #=> String
    #   resp.data.request_parameters #=> Hash<String, ParameterConstraints>
    #   resp.data.request_parameters['key'] #=> Types::ParameterConstraints
    #   resp.data.request_parameters['key'].required #=> Boolean
    #   resp.data.route_id #=> String
    #   resp.data.route_key #=> String
    #   resp.data.route_response_selection_expression #=> String
    #   resp.data.target #=> String
    #
    def get_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRouteInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
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

    # <p>Gets a RouteResponse.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRouteResponseInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    #
    # @option params [String] :route_response_id
    #   <p>The route response ID.</p>
    #
    # @return [Types::GetRouteResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_route_response(
    #     api_id: 'ApiId', # required
    #     route_id: 'RouteId', # required
    #     route_response_id: 'RouteResponseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRouteResponseOutput
    #   resp.data.model_selection_expression #=> String
    #   resp.data.response_models #=> Hash<String, String>
    #   resp.data.response_models['key'] #=> String
    #   resp.data.response_parameters #=> Hash<String, ParameterConstraints>
    #   resp.data.response_parameters['key'] #=> Types::ParameterConstraints
    #   resp.data.response_parameters['key'].required #=> Boolean
    #   resp.data.route_response_id #=> String
    #   resp.data.route_response_key #=> String
    #
    def get_route_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRouteResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRouteResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRouteResponse
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetRouteResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRouteResponse,
        stubs: @stubs,
        params_class: Params::GetRouteResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_route_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the RouteResponses for a Route.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRouteResponsesInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    #
    # @return [Types::GetRouteResponsesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_route_responses(
    #     api_id: 'ApiId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken',
    #     route_id: 'RouteId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRouteResponsesOutput
    #   resp.data.items #=> Array<RouteResponse>
    #   resp.data.items[0] #=> Types::RouteResponse
    #   resp.data.items[0].model_selection_expression #=> String
    #   resp.data.items[0].response_models #=> Hash<String, String>
    #   resp.data.items[0].response_models['key'] #=> String
    #   resp.data.items[0].response_parameters #=> Hash<String, ParameterConstraints>
    #   resp.data.items[0].response_parameters['key'] #=> Types::ParameterConstraints
    #   resp.data.items[0].response_parameters['key'].required #=> Boolean
    #   resp.data.items[0].route_response_id #=> String
    #   resp.data.items[0].route_response_key #=> String
    #   resp.data.next_token #=> String
    #
    def get_route_responses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRouteResponsesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRouteResponsesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRouteResponses
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetRouteResponses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRouteResponses,
        stubs: @stubs,
        params_class: Params::GetRouteResponsesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_route_responses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the Routes for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRoutesInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetRoutesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_routes(
    #     api_id: 'ApiId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRoutesOutput
    #   resp.data.items #=> Array<Route>
    #   resp.data.items[0] #=> Types::Route
    #   resp.data.items[0].api_gateway_managed #=> Boolean
    #   resp.data.items[0].api_key_required #=> Boolean
    #   resp.data.items[0].authorization_scopes #=> Array<String>
    #   resp.data.items[0].authorization_scopes[0] #=> String
    #   resp.data.items[0].authorization_type #=> String, one of ["NONE", "AWS_IAM", "CUSTOM", "JWT"]
    #   resp.data.items[0].authorizer_id #=> String
    #   resp.data.items[0].model_selection_expression #=> String
    #   resp.data.items[0].operation_name #=> String
    #   resp.data.items[0].request_models #=> Hash<String, String>
    #   resp.data.items[0].request_models['key'] #=> String
    #   resp.data.items[0].request_parameters #=> Hash<String, ParameterConstraints>
    #   resp.data.items[0].request_parameters['key'] #=> Types::ParameterConstraints
    #   resp.data.items[0].request_parameters['key'].required #=> Boolean
    #   resp.data.items[0].route_id #=> String
    #   resp.data.items[0].route_key #=> String
    #   resp.data.items[0].route_response_selection_expression #=> String
    #   resp.data.items[0].target #=> String
    #   resp.data.next_token #=> String
    #
    def get_routes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRoutesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRoutesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRoutes
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetRoutes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRoutes,
        stubs: @stubs,
        params_class: Params::GetRoutesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_routes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a Stage.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStageInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #
    # @return [Types::GetStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage(
    #     api_id: 'ApiId', # required
    #     stage_name: 'StageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStageOutput
    #   resp.data.access_log_settings #=> Types::AccessLogSettings
    #   resp.data.access_log_settings.destination_arn #=> String
    #   resp.data.access_log_settings.format #=> String
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.auto_deploy #=> Boolean
    #   resp.data.client_certificate_id #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.default_route_settings #=> Types::RouteSettings
    #   resp.data.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.data.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.data.default_route_settings.logging_level #=> String, one of ["ERROR", "INFO", "OFF"]
    #   resp.data.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.data.default_route_settings.throttling_rate_limit #=> Float
    #   resp.data.deployment_id #=> String
    #   resp.data.description #=> String
    #   resp.data.last_deployment_status_message #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.route_settings #=> Hash<String, RouteSettings>
    #   resp.data.stage_name #=> String
    #   resp.data.stage_variables #=> Hash<String, String>
    #   resp.data.stage_variables['key'] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_stage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStage
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetStage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStage,
        stubs: @stubs,
        params_class: Params::GetStageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_stage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the Stages for an API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStagesInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetStagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stages(
    #     api_id: 'ApiId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStagesOutput
    #   resp.data.items #=> Array<Stage>
    #   resp.data.items[0] #=> Types::Stage
    #   resp.data.items[0].access_log_settings #=> Types::AccessLogSettings
    #   resp.data.items[0].access_log_settings.destination_arn #=> String
    #   resp.data.items[0].access_log_settings.format #=> String
    #   resp.data.items[0].api_gateway_managed #=> Boolean
    #   resp.data.items[0].auto_deploy #=> Boolean
    #   resp.data.items[0].client_certificate_id #=> String
    #   resp.data.items[0].created_date #=> Time
    #   resp.data.items[0].default_route_settings #=> Types::RouteSettings
    #   resp.data.items[0].default_route_settings.data_trace_enabled #=> Boolean
    #   resp.data.items[0].default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.data.items[0].default_route_settings.logging_level #=> String, one of ["ERROR", "INFO", "OFF"]
    #   resp.data.items[0].default_route_settings.throttling_burst_limit #=> Integer
    #   resp.data.items[0].default_route_settings.throttling_rate_limit #=> Float
    #   resp.data.items[0].deployment_id #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].last_deployment_status_message #=> String
    #   resp.data.items[0].last_updated_date #=> Time
    #   resp.data.items[0].route_settings #=> Hash<String, RouteSettings>
    #   resp.data.items[0].stage_name #=> String
    #   resp.data.items[0].stage_variables #=> Hash<String, String>
    #   resp.data.items[0].stage_variables['key'] #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def get_stages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStages
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::GetStages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStages,
        stubs: @stubs,
        params_class: Params::GetStagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_stages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a collection of Tag resources.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTagsInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN for the tag.</p>
    #
    # @return [Types::GetTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTagsOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTags
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::GetTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTags,
        stubs: @stubs,
        params_class: Params::GetTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a VPC link.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVpcLinkInput}.
    #
    # @option params [String] :vpc_link_id
    #   <p>The ID of the VPC link.</p>
    #
    # @return [Types::GetVpcLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_link(
    #     vpc_link_id: 'VpcLinkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVpcLinkOutput
    #   resp.data.created_date #=> Time
    #   resp.data.name #=> String
    #   resp.data.security_group_ids #=> Array<String>
    #   resp.data.security_group_ids[0] #=> String
    #   resp.data.subnet_ids #=> Array<String>
    #   resp.data.subnet_ids[0] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.vpc_link_id #=> String
    #   resp.data.vpc_link_status #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"]
    #   resp.data.vpc_link_status_message #=> String
    #   resp.data.vpc_link_version #=> String, one of ["V2"]
    #
    def get_vpc_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVpcLinkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVpcLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVpcLink
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::GetVpcLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVpcLink,
        stubs: @stubs,
        params_class: Params::GetVpcLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_vpc_link
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a collection of VPC links.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVpcLinksInput}.
    #
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    #
    # @return [Types::GetVpcLinksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_links(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVpcLinksOutput
    #   resp.data.items #=> Array<VpcLink>
    #   resp.data.items[0] #=> Types::VpcLink
    #   resp.data.items[0].created_date #=> Time
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].security_group_ids #=> Array<String>
    #   resp.data.items[0].security_group_ids[0] #=> String
    #   resp.data.items[0].subnet_ids #=> Array<String>
    #   resp.data.items[0].subnet_ids[0] #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].vpc_link_id #=> String
    #   resp.data.items[0].vpc_link_status #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"]
    #   resp.data.items[0].vpc_link_status_message #=> String
    #   resp.data.items[0].vpc_link_version #=> String, one of ["V2"]
    #   resp.data.next_token #=> String
    #
    def get_vpc_links(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVpcLinksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVpcLinksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVpcLinks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::GetVpcLinks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVpcLinks,
        stubs: @stubs,
        params_class: Params::GetVpcLinksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_vpc_links
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports an API.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportApiInput}.
    #
    # @option params [String] :basepath
    #   <p>Specifies how to interpret the base path of the API during import. Valid values are ignore, prepend, and split. The default value is ignore. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html">Set the OpenAPI basePath Property</a>. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :body
    #   <p>The OpenAPI definition. Supported only for HTTP APIs.</p>
    #
    # @option params [Boolean] :fail_on_warnings
    #   <p>Specifies whether to rollback the API creation when a warning is encountered. By default, API creation continues if a warning is encountered.</p>
    #
    # @return [Types::ImportApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_api(
    #     basepath: 'Basepath',
    #     body: 'Body', # required
    #     fail_on_warnings: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportApiOutput
    #   resp.data.api_endpoint #=> String
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.api_id #=> String
    #   resp.data.api_key_selection_expression #=> String
    #   resp.data.cors_configuration #=> Types::Cors
    #   resp.data.cors_configuration.allow_credentials #=> Boolean
    #   resp.data.cors_configuration.allow_headers #=> Array<String>
    #   resp.data.cors_configuration.allow_headers[0] #=> String
    #   resp.data.cors_configuration.allow_methods #=> Array<String>
    #   resp.data.cors_configuration.allow_methods[0] #=> String
    #   resp.data.cors_configuration.allow_origins #=> Array<String>
    #   resp.data.cors_configuration.allow_origins[0] #=> String
    #   resp.data.cors_configuration.expose_headers #=> Array<String>
    #   resp.data.cors_configuration.max_age #=> Integer
    #   resp.data.created_date #=> Time
    #   resp.data.description #=> String
    #   resp.data.disable_schema_validation #=> Boolean
    #   resp.data.disable_execute_api_endpoint #=> Boolean
    #   resp.data.import_info #=> Array<String>
    #   resp.data.import_info[0] #=> String
    #   resp.data.name #=> String
    #   resp.data.protocol_type #=> String, one of ["WEBSOCKET", "HTTP"]
    #   resp.data.route_selection_expression #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.version #=> String
    #   resp.data.warnings #=> Array<String>
    #
    def import_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportApi
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::ImportApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportApi,
        stubs: @stubs,
        params_class: Params::ImportApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Puts an Api resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ReimportApiInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :basepath
    #   <p>Specifies how to interpret the base path of the API during import. Valid values are ignore, prepend, and split. The default value is ignore. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html">Set the OpenAPI basePath Property</a>. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :body
    #   <p>The OpenAPI definition. Supported only for HTTP APIs.</p>
    #
    # @option params [Boolean] :fail_on_warnings
    #   <p>Specifies whether to rollback the API creation when a warning is encountered. By default, API creation continues if a warning is encountered.</p>
    #
    # @return [Types::ReimportApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reimport_api(
    #     api_id: 'ApiId', # required
    #     basepath: 'Basepath',
    #     body: 'Body', # required
    #     fail_on_warnings: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReimportApiOutput
    #   resp.data.api_endpoint #=> String
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.api_id #=> String
    #   resp.data.api_key_selection_expression #=> String
    #   resp.data.cors_configuration #=> Types::Cors
    #   resp.data.cors_configuration.allow_credentials #=> Boolean
    #   resp.data.cors_configuration.allow_headers #=> Array<String>
    #   resp.data.cors_configuration.allow_headers[0] #=> String
    #   resp.data.cors_configuration.allow_methods #=> Array<String>
    #   resp.data.cors_configuration.allow_methods[0] #=> String
    #   resp.data.cors_configuration.allow_origins #=> Array<String>
    #   resp.data.cors_configuration.allow_origins[0] #=> String
    #   resp.data.cors_configuration.expose_headers #=> Array<String>
    #   resp.data.cors_configuration.max_age #=> Integer
    #   resp.data.created_date #=> Time
    #   resp.data.description #=> String
    #   resp.data.disable_schema_validation #=> Boolean
    #   resp.data.disable_execute_api_endpoint #=> Boolean
    #   resp.data.import_info #=> Array<String>
    #   resp.data.import_info[0] #=> String
    #   resp.data.name #=> String
    #   resp.data.protocol_type #=> String, one of ["WEBSOCKET", "HTTP"]
    #   resp.data.route_selection_expression #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.version #=> String
    #   resp.data.warnings #=> Array<String>
    #
    def reimport_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReimportApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReimportApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReimportApi
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::ReimportApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReimportApi,
        stubs: @stubs,
        params_class: Params::ReimportApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reimport_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resets all authorizer cache entries on a stage. Supported only for HTTP APIs.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetAuthorizersCacheInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can contain only alphanumeric characters, hyphens, and underscores, or be $default. Maximum length is 128 characters.</p>
    #
    # @return [Types::ResetAuthorizersCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_authorizers_cache(
    #     api_id: 'ApiId', # required
    #     stage_name: 'StageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetAuthorizersCacheOutput
    #
    def reset_authorizers_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetAuthorizersCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetAuthorizersCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetAuthorizersCache
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException]),
        data_parser: Parsers::ResetAuthorizersCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetAuthorizersCache,
        stubs: @stubs,
        params_class: Params::ResetAuthorizersCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_authorizers_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Tag resource to represent a tag.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN for the tag.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     }
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
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

    # <p>Deletes a Tag.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN for the tag.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The Tag keys to delete</p>
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
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

    # <p>Updates an Api resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApiInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    #
    # @option params [Cors] :cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :credentials_arn
    #   <p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, don't specify this parameter. Currently, this property is not used for HTTP integrations. If provided, this value replaces the credentials associated with the quick create integration. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :description
    #   <p>The description of the API.</p>
    #
    # @option params [Boolean] :disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    #
    # @option params [Boolean] :disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    #
    # @option params [String] :name
    #   <p>The name of the API.</p>
    #
    # @option params [String] :route_key
    #   <p>This property is part of quick create. If not specified, the route created using quick create is kept. Otherwise, this value replaces the route key of the quick create route. Additional routes may still be added after the API is updated. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    #
    # @option params [String] :target
    #   <p>This property is part of quick create. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. The value provided updates the integration URI and integration type. You can update a quick-created target, but you can't remove it from an API. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :version
    #   <p>A version identifier for the API.</p>
    #
    # @return [Types::UpdateApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api(
    #     api_id: 'ApiId', # required
    #     api_key_selection_expression: 'ApiKeySelectionExpression',
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: [
    #         'member'
    #       ],
    #       allow_methods: [
    #         'member'
    #       ],
    #       allow_origins: [
    #         'member'
    #       ],
    #       max_age: 1
    #     },
    #     credentials_arn: 'CredentialsArn',
    #     description: 'Description',
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     name: 'Name',
    #     route_key: 'RouteKey',
    #     route_selection_expression: 'RouteSelectionExpression',
    #     target: 'Target',
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApiOutput
    #   resp.data.api_endpoint #=> String
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.api_id #=> String
    #   resp.data.api_key_selection_expression #=> String
    #   resp.data.cors_configuration #=> Types::Cors
    #   resp.data.cors_configuration.allow_credentials #=> Boolean
    #   resp.data.cors_configuration.allow_headers #=> Array<String>
    #   resp.data.cors_configuration.allow_headers[0] #=> String
    #   resp.data.cors_configuration.allow_methods #=> Array<String>
    #   resp.data.cors_configuration.allow_methods[0] #=> String
    #   resp.data.cors_configuration.allow_origins #=> Array<String>
    #   resp.data.cors_configuration.allow_origins[0] #=> String
    #   resp.data.cors_configuration.expose_headers #=> Array<String>
    #   resp.data.cors_configuration.max_age #=> Integer
    #   resp.data.created_date #=> Time
    #   resp.data.description #=> String
    #   resp.data.disable_schema_validation #=> Boolean
    #   resp.data.disable_execute_api_endpoint #=> Boolean
    #   resp.data.import_info #=> Array<String>
    #   resp.data.import_info[0] #=> String
    #   resp.data.name #=> String
    #   resp.data.protocol_type #=> String, one of ["WEBSOCKET", "HTTP"]
    #   resp.data.route_selection_expression #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.version #=> String
    #   resp.data.warnings #=> Array<String>
    #
    def update_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApi
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApi,
        stubs: @stubs,
        params_class: Params::UpdateApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The API mapping.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApiMappingInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :api_mapping_id
    #   <p>The API mapping identifier.</p>
    #
    # @option params [String] :api_mapping_key
    #   <p>The API mapping key.</p>
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @option params [String] :stage
    #   <p>The API stage.</p>
    #
    # @return [Types::UpdateApiMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_mapping(
    #     api_id: 'ApiId', # required
    #     api_mapping_id: 'ApiMappingId', # required
    #     api_mapping_key: 'ApiMappingKey',
    #     domain_name: 'DomainName', # required
    #     stage: 'Stage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApiMappingOutput
    #   resp.data.api_id #=> String
    #   resp.data.api_mapping_id #=> String
    #   resp.data.api_mapping_key #=> String
    #   resp.data.stage #=> String
    #
    def update_api_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApiMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApiMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApiMapping
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateApiMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApiMapping,
        stubs: @stubs,
        params_class: Params::UpdateApiMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_api_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an Authorizer.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAuthorizerInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :authorizer_credentials_arn
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter.</p>
    #
    # @option params [String] :authorizer_id
    #   <p>The authorizer identifier.</p>
    #
    # @option params [String] :authorizer_payload_format_version
    #   <p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>
    #
    # @option params [Integer] :authorizer_result_ttl_in_seconds
    #   <p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>
    #
    # @option params [String] :authorizer_type
    #   <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    #
    # @option params [String] :authorizer_uri
    #   <p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
    #                  , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>
    #
    # @option params [Boolean] :enable_simple_responses
    #   <p>Specifies whether a Lambda authorizer returns a response in a simple format. By default, a Lambda authorizer must return an IAM policy. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a></p>
    #
    # @option params [Array<String>] :identity_source
    #   <p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>
    #
    # @option params [String] :identity_validation_expression
    #   <p>This parameter is not used.</p>
    #
    # @option params [JWTConfiguration] :jwt_configuration
    #   <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :name
    #   <p>The name of the authorizer.</p>
    #
    # @return [Types::UpdateAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_authorizer(
    #     api_id: 'ApiId', # required
    #     authorizer_credentials_arn: 'AuthorizerCredentialsArn',
    #     authorizer_id: 'AuthorizerId', # required
    #     authorizer_payload_format_version: 'AuthorizerPayloadFormatVersion',
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: 'REQUEST', # accepts ["REQUEST", "JWT"]
    #     authorizer_uri: 'AuthorizerUri',
    #     enable_simple_responses: false,
    #     identity_source: [
    #       'member'
    #     ],
    #     identity_validation_expression: 'IdentityValidationExpression',
    #     jwt_configuration: {
    #       audience: [
    #         'member'
    #       ],
    #       issuer: 'Issuer'
    #     },
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAuthorizerOutput
    #   resp.data.authorizer_credentials_arn #=> String
    #   resp.data.authorizer_id #=> String
    #   resp.data.authorizer_payload_format_version #=> String
    #   resp.data.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.data.authorizer_type #=> String, one of ["REQUEST", "JWT"]
    #   resp.data.authorizer_uri #=> String
    #   resp.data.enable_simple_responses #=> Boolean
    #   resp.data.identity_source #=> Array<String>
    #   resp.data.identity_source[0] #=> String
    #   resp.data.identity_validation_expression #=> String
    #   resp.data.jwt_configuration #=> Types::JWTConfiguration
    #   resp.data.jwt_configuration.audience #=> Array<String>
    #   resp.data.jwt_configuration.audience[0] #=> String
    #   resp.data.jwt_configuration.issuer #=> String
    #   resp.data.name #=> String
    #
    def update_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAuthorizerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAuthorizer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAuthorizer,
        stubs: @stubs,
        params_class: Params::UpdateAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a Deployment.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeploymentInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The deployment ID.</p>
    #
    # @option params [String] :description
    #   <p>The description for the deployment resource.</p>
    #
    # @return [Types::UpdateDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deployment(
    #     api_id: 'ApiId', # required
    #     deployment_id: 'DeploymentId', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeploymentOutput
    #   resp.data.auto_deployed #=> Boolean
    #   resp.data.created_date #=> Time
    #   resp.data.deployment_id #=> String
    #   resp.data.deployment_status #=> String, one of ["PENDING", "FAILED", "DEPLOYED"]
    #   resp.data.deployment_status_message #=> String
    #   resp.data.description #=> String
    #
    def update_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDeployment
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDeployment,
        stubs: @stubs,
        params_class: Params::UpdateDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a domain name.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @option params [Array<DomainNameConfiguration>] :domain_name_configurations
    #   <p>The domain name configurations.</p>
    #
    # @option params [MutualTlsAuthenticationInput] :mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name.</p>
    #
    # @return [Types::UpdateDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_name(
    #     domain_name: 'DomainName', # required
    #     domain_name_configurations: [
    #       {
    #         api_gateway_domain_name: 'ApiGatewayDomainName',
    #         certificate_arn: 'CertificateArn',
    #         certificate_name: 'CertificateName',
    #         certificate_upload_date: Time.now,
    #         domain_name_status: 'AVAILABLE', # accepts ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"]
    #         domain_name_status_message: 'DomainNameStatusMessage',
    #         endpoint_type: 'REGIONAL', # accepts ["REGIONAL", "EDGE"]
    #         hosted_zone_id: 'HostedZoneId',
    #         security_policy: 'TLS_1_0', # accepts ["TLS_1_0", "TLS_1_2"]
    #         ownership_verification_certificate_arn: 'OwnershipVerificationCertificateArn'
    #       }
    #     ],
    #     mutual_tls_authentication: {
    #       truststore_uri: 'TruststoreUri',
    #       truststore_version: 'TruststoreVersion'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainNameOutput
    #   resp.data.api_mapping_selection_expression #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.domain_name_configurations #=> Array<DomainNameConfiguration>
    #   resp.data.domain_name_configurations[0] #=> Types::DomainNameConfiguration
    #   resp.data.domain_name_configurations[0].api_gateway_domain_name #=> String
    #   resp.data.domain_name_configurations[0].certificate_arn #=> String
    #   resp.data.domain_name_configurations[0].certificate_name #=> String
    #   resp.data.domain_name_configurations[0].certificate_upload_date #=> Time
    #   resp.data.domain_name_configurations[0].domain_name_status #=> String, one of ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"]
    #   resp.data.domain_name_configurations[0].domain_name_status_message #=> String
    #   resp.data.domain_name_configurations[0].endpoint_type #=> String, one of ["REGIONAL", "EDGE"]
    #   resp.data.domain_name_configurations[0].hosted_zone_id #=> String
    #   resp.data.domain_name_configurations[0].security_policy #=> String, one of ["TLS_1_0", "TLS_1_2"]
    #   resp.data.domain_name_configurations[0].ownership_verification_certificate_arn #=> String
    #   resp.data.mutual_tls_authentication #=> Types::MutualTlsAuthentication
    #   resp.data.mutual_tls_authentication.truststore_uri #=> String
    #   resp.data.mutual_tls_authentication.truststore_version #=> String
    #   resp.data.mutual_tls_authentication.truststore_warnings #=> Array<String>
    #   resp.data.mutual_tls_authentication.truststore_warnings[0] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_domain_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomainName
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateDomainName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomainName,
        stubs: @stubs,
        params_class: Params::UpdateDomainNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an Integration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIntegrationInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :connection_id
    #   <p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>
    #
    # @option params [String] :connection_type
    #   <p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>
    #
    # @option params [String] :content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #
    # @option params [String] :credentials_arn
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>
    #
    # @option params [String] :description
    #   <p>The description of the integration</p>
    #
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    #
    # @option params [String] :integration_method
    #   <p>Specifies the integration's HTTP method type.</p>
    #
    # @option params [String] :integration_subtype
    #   <p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration subtype reference</a>.</p>
    #
    # @option params [String] :integration_type
    #   <p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration. For HTTP API private integrations, use an HTTP_PROXY integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a "loopback" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>
    #
    # @option params [String] :integration_uri
    #   <p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>
    #
    # @option params [String] :passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>
    #
    # @option params [String] :payload_format_version
    #   <p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>
    #
    # @option params [Hash<String, String>] :request_parameters
    #   <p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
    #             , where
    #               <replaceable>{location}</replaceable>
    #              is querystring, path, or header; and
    #               <replaceable>{name}</replaceable>
    #              must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to the backend. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt; where action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.">Transforming API requests and responses</a>.</p>
    #
    # @option params [Hash<String, String>] :request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>
    #
    # @option params [Hash<String, Hash<String, String>>] :response_parameters
    #   <p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    #
    # @option params [String] :template_selection_expression
    #   <p>The template selection expression for the integration.</p>
    #
    # @option params [Integer] :timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>
    #
    # @option params [TlsConfigInput] :tls_config
    #   <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    #
    # @return [Types::UpdateIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integration(
    #     api_id: 'ApiId', # required
    #     connection_id: 'ConnectionId',
    #     connection_type: 'INTERNET', # accepts ["INTERNET", "VPC_LINK"]
    #     content_handling_strategy: 'CONVERT_TO_BINARY', # accepts ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #     credentials_arn: 'CredentialsArn',
    #     description: 'Description',
    #     integration_id: 'IntegrationId', # required
    #     integration_method: 'IntegrationMethod',
    #     integration_subtype: 'IntegrationSubtype',
    #     integration_type: 'AWS', # accepts ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #     integration_uri: 'IntegrationUri',
    #     passthrough_behavior: 'WHEN_NO_MATCH', # accepts ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"]
    #     payload_format_version: 'PayloadFormatVersion',
    #     request_parameters: {
    #       'key' => 'value'
    #     },
    #     request_templates: {
    #       'key' => 'value'
    #     },
    #     template_selection_expression: 'TemplateSelectionExpression',
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       server_name_to_verify: 'ServerNameToVerify'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIntegrationOutput
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.connection_id #=> String
    #   resp.data.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.content_handling_strategy #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.credentials_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.integration_id #=> String
    #   resp.data.integration_method #=> String
    #   resp.data.integration_response_selection_expression #=> String
    #   resp.data.integration_subtype #=> String
    #   resp.data.integration_type #=> String, one of ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.integration_uri #=> String
    #   resp.data.passthrough_behavior #=> String, one of ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"]
    #   resp.data.payload_format_version #=> String
    #   resp.data.request_parameters #=> Hash<String, String>
    #   resp.data.request_parameters['key'] #=> String
    #   resp.data.request_templates #=> Hash<String, String>
    #   resp.data.request_templates['key'] #=> String
    #   resp.data.response_parameters #=> Hash<String, Hash<String, String>>
    #   resp.data.template_selection_expression #=> String
    #   resp.data.timeout_in_millis #=> Integer
    #   resp.data.tls_config #=> Types::TlsConfig
    #   resp.data.tls_config.server_name_to_verify #=> String
    #
    def update_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIntegrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIntegration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIntegration,
        stubs: @stubs,
        params_class: Params::UpdateIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an IntegrationResponses.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIntegrationResponseInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    #
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    #
    # @option params [String] :integration_response_id
    #   <p>The integration response ID.</p>
    #
    # @option params [String] :integration_response_key
    #   <p>The integration response key.</p>
    #
    # @option params [Hash<String, String>] :response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.<replaceable>{name}</replaceable>
    #                  , where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.<replaceable>{name}</replaceable>
    #                   or integration.response.body.<replaceable>{JSON-expression}</replaceable>
    #                  , where
    #                     <replaceable>{name}</replaceable>
    #                   is a valid and unique response header name and
    #                     <replaceable>{JSON-expression}</replaceable>
    #                   is a valid JSON expression without the $ prefix.</p>
    #
    # @option params [Hash<String, String>] :response_templates
    #   <p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    #
    # @option params [String] :template_selection_expression
    #   <p>The template selection expression for the integration response. Supported only for WebSocket APIs.</p>
    #
    # @return [Types::UpdateIntegrationResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integration_response(
    #     api_id: 'ApiId', # required
    #     content_handling_strategy: 'CONVERT_TO_BINARY', # accepts ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #     integration_id: 'IntegrationId', # required
    #     integration_response_id: 'IntegrationResponseId', # required
    #     integration_response_key: 'IntegrationResponseKey',
    #     response_parameters: {
    #       'key' => 'value'
    #     },
    #     response_templates: {
    #       'key' => 'value'
    #     },
    #     template_selection_expression: 'TemplateSelectionExpression'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIntegrationResponseOutput
    #   resp.data.content_handling_strategy #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.integration_response_id #=> String
    #   resp.data.integration_response_key #=> String
    #   resp.data.response_parameters #=> Hash<String, String>
    #   resp.data.response_parameters['key'] #=> String
    #   resp.data.response_templates #=> Hash<String, String>
    #   resp.data.response_templates['key'] #=> String
    #   resp.data.template_selection_expression #=> String
    #
    def update_integration_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIntegrationResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIntegrationResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIntegrationResponse
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateIntegrationResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIntegrationResponse,
        stubs: @stubs,
        params_class: Params::UpdateIntegrationResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_integration_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a Model.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateModelInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :content_type
    #   <p>The content-type for the model, for example, "application/json".</p>
    #
    # @option params [String] :description
    #   <p>The description of the model.</p>
    #
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    #
    # @option params [String] :name
    #   <p>The name of the model.</p>
    #
    # @option params [String] :schema
    #   <p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>
    #
    # @return [Types::UpdateModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model(
    #     api_id: 'ApiId', # required
    #     content_type: 'ContentType',
    #     description: 'Description',
    #     model_id: 'ModelId', # required
    #     name: 'Name',
    #     schema: 'Schema'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateModelOutput
    #   resp.data.content_type #=> String
    #   resp.data.description #=> String
    #   resp.data.model_id #=> String
    #   resp.data.name #=> String
    #   resp.data.schema #=> String
    #
    def update_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateModel
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateModel,
        stubs: @stubs,
        params_class: Params::UpdateModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a Route.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRouteInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [Boolean] :api_key_required
    #   <p>Specifies whether an API key is required for the route. Supported only for WebSocket APIs.</p>
    #
    # @option params [Array<String>] :authorization_scopes
    #   <p>The authorization scopes supported by this route.</p>
    #
    # @option params [String] :authorization_type
    #   <p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    #
    # @option params [String] :authorizer_id
    #   <p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    #
    # @option params [String] :model_selection_expression
    #   <p>The model selection expression for the route. Supported only for WebSocket APIs.</p>
    #
    # @option params [String] :operation_name
    #   <p>The operation name for the route.</p>
    #
    # @option params [Hash<String, String>] :request_models
    #   <p>The request models for the route. Supported only for WebSocket APIs.</p>
    #
    # @option params [Hash<String, ParameterConstraints>] :request_parameters
    #   <p>The request parameters for the route. Supported only for WebSocket APIs.</p>
    #
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    #
    # @option params [String] :route_key
    #   <p>The route key for the route.</p>
    #
    # @option params [String] :route_response_selection_expression
    #   <p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>
    #
    # @option params [String] :target
    #   <p>The target for the route.</p>
    #
    # @return [Types::UpdateRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_route(
    #     api_id: 'ApiId', # required
    #     api_key_required: false,
    #     authorization_scopes: [
    #       'member'
    #     ],
    #     authorization_type: 'NONE', # accepts ["NONE", "AWS_IAM", "CUSTOM", "JWT"]
    #     authorizer_id: 'AuthorizerId',
    #     model_selection_expression: 'ModelSelectionExpression',
    #     operation_name: 'OperationName',
    #     request_models: {
    #       'key' => 'value'
    #     },
    #     request_parameters: {
    #       'key' => {
    #         required: false
    #       }
    #     },
    #     route_id: 'RouteId', # required
    #     route_key: 'RouteKey',
    #     route_response_selection_expression: 'RouteResponseSelectionExpression',
    #     target: 'Target'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRouteOutput
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.api_key_required #=> Boolean
    #   resp.data.authorization_scopes #=> Array<String>
    #   resp.data.authorization_scopes[0] #=> String
    #   resp.data.authorization_type #=> String, one of ["NONE", "AWS_IAM", "CUSTOM", "JWT"]
    #   resp.data.authorizer_id #=> String
    #   resp.data.model_selection_expression #=> String
    #   resp.data.operation_name #=> String
    #   resp.data.request_models #=> Hash<String, String>
    #   resp.data.request_models['key'] #=> String
    #   resp.data.request_parameters #=> Hash<String, ParameterConstraints>
    #   resp.data.request_parameters['key'] #=> Types::ParameterConstraints
    #   resp.data.request_parameters['key'].required #=> Boolean
    #   resp.data.route_id #=> String
    #   resp.data.route_key #=> String
    #   resp.data.route_response_selection_expression #=> String
    #   resp.data.target #=> String
    #
    def update_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRouteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoute
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoute,
        stubs: @stubs,
        params_class: Params::UpdateRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a RouteResponse.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRouteResponseInput}.
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [String] :model_selection_expression
    #   <p>The model selection expression for the route response. Supported only for WebSocket APIs.</p>
    #
    # @option params [Hash<String, String>] :response_models
    #   <p>The response models for the route response.</p>
    #
    # @option params [Hash<String, ParameterConstraints>] :response_parameters
    #   <p>The route response parameters.</p>
    #
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    #
    # @option params [String] :route_response_id
    #   <p>The route response ID.</p>
    #
    # @option params [String] :route_response_key
    #   <p>The route response key.</p>
    #
    # @return [Types::UpdateRouteResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_route_response(
    #     api_id: 'ApiId', # required
    #     model_selection_expression: 'ModelSelectionExpression',
    #     response_models: {
    #       'key' => 'value'
    #     },
    #     response_parameters: {
    #       'key' => {
    #         required: false
    #       }
    #     },
    #     route_id: 'RouteId', # required
    #     route_response_id: 'RouteResponseId', # required
    #     route_response_key: 'RouteResponseKey'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRouteResponseOutput
    #   resp.data.model_selection_expression #=> String
    #   resp.data.response_models #=> Hash<String, String>
    #   resp.data.response_models['key'] #=> String
    #   resp.data.response_parameters #=> Hash<String, ParameterConstraints>
    #   resp.data.response_parameters['key'] #=> Types::ParameterConstraints
    #   resp.data.response_parameters['key'].required #=> Boolean
    #   resp.data.route_response_id #=> String
    #   resp.data.route_response_key #=> String
    #
    def update_route_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRouteResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRouteResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRouteResponse
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateRouteResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRouteResponse,
        stubs: @stubs,
        params_class: Params::UpdateRouteResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_route_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a Stage.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStageInput}.
    #
    # @option params [AccessLogSettings] :access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    #
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    #
    # @option params [Boolean] :auto_deploy
    #   <p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>
    #
    # @option params [String] :client_certificate_id
    #   <p>The identifier of a client certificate for a Stage.</p>
    #
    # @option params [RouteSettings] :default_route_settings
    #   <p>The default route settings for the stage.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The deployment identifier for the API stage. Can't be updated if autoDeploy is enabled.</p>
    #
    # @option params [String] :description
    #   <p>The description for the API stage.</p>
    #
    # @option params [Hash<String, RouteSettings>] :route_settings
    #   <p>Route settings for the stage.</p>
    #
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can contain only alphanumeric characters, hyphens, and underscores, or be $default. Maximum length is 128 characters.</p>
    #
    # @option params [Hash<String, String>] :stage_variables
    #   <p>A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>
    #
    # @return [Types::UpdateStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stage(
    #     access_log_settings: {
    #       destination_arn: 'DestinationArn',
    #       format: 'Format'
    #     },
    #     api_id: 'ApiId', # required
    #     auto_deploy: false,
    #     client_certificate_id: 'ClientCertificateId',
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: 'ERROR', # accepts ["ERROR", "INFO", "OFF"]
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0
    #     },
    #     deployment_id: 'DeploymentId',
    #     description: 'Description',
    #     stage_name: 'StageName', # required
    #     stage_variables: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStageOutput
    #   resp.data.access_log_settings #=> Types::AccessLogSettings
    #   resp.data.access_log_settings.destination_arn #=> String
    #   resp.data.access_log_settings.format #=> String
    #   resp.data.api_gateway_managed #=> Boolean
    #   resp.data.auto_deploy #=> Boolean
    #   resp.data.client_certificate_id #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.default_route_settings #=> Types::RouteSettings
    #   resp.data.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.data.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.data.default_route_settings.logging_level #=> String, one of ["ERROR", "INFO", "OFF"]
    #   resp.data.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.data.default_route_settings.throttling_rate_limit #=> Float
    #   resp.data.deployment_id #=> String
    #   resp.data.description #=> String
    #   resp.data.last_deployment_status_message #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.route_settings #=> Hash<String, RouteSettings>
    #   resp.data.stage_name #=> String
    #   resp.data.stage_variables #=> Hash<String, String>
    #   resp.data.stage_variables['key'] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_stage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStage
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::ConflictException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateStage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStage,
        stubs: @stubs,
        params_class: Params::UpdateStageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_stage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a VPC link.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVpcLinkInput}.
    #
    # @option params [String] :name
    #   <p>The name of the VPC link.</p>
    #
    # @option params [String] :vpc_link_id
    #   <p>The ID of the VPC link.</p>
    #
    # @return [Types::UpdateVpcLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_link(
    #     name: 'Name',
    #     vpc_link_id: 'VpcLinkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVpcLinkOutput
    #   resp.data.created_date #=> Time
    #   resp.data.name #=> String
    #   resp.data.security_group_ids #=> Array<String>
    #   resp.data.security_group_ids[0] #=> String
    #   resp.data.subnet_ids #=> Array<String>
    #   resp.data.subnet_ids[0] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.vpc_link_id #=> String
    #   resp.data.vpc_link_status #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"]
    #   resp.data.vpc_link_status_message #=> String
    #   resp.data.vpc_link_version #=> String, one of ["V2"]
    #
    def update_vpc_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVpcLinkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVpcLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVpcLink
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotFoundException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateVpcLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVpcLink,
        stubs: @stubs,
        params_class: Params::UpdateVpcLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_vpc_link
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
