# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::APIGateway
  # An API client for BackplaneControlService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon API Gateway</fullname>
  #         <p>Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. API Gateway allows developers to securely connect mobile and web applications to APIs that run on AWS Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.</p>
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
    def initialize(config = AWS::SDK::APIGateway::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Create an ApiKey resource. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateApiKeyInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ApiKey.</p>
    #
    # @option params [String] :description
    #   <p>The description of the ApiKey.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>Specifies whether the ApiKey can be used by callers.</p>
    #
    # @option params [Boolean] :generate_distinct_id
    #   <p>Specifies whether (<code>true</code>) or not (<code>false</code>) the key identifier is distinct from the created API key value. This parameter is deprecated and should not be used.</p>
    #
    # @option params [String] :value
    #   <p>Specifies a value of the API key.</p>
    #
    # @option params [Array<StageKey>] :stage_keys
    #   <p>DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.</p>
    #
    # @option params [String] :customer_id
    #   <p>An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #
    # @return [Types::CreateApiKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_key(
    #     name: 'name',
    #     description: 'description',
    #     enabled: false,
    #     generate_distinct_id: false,
    #     value: 'value',
    #     stage_keys: [
    #       {
    #         rest_api_id: 'restApiId',
    #         stage_name: 'stageName'
    #       }
    #     ],
    #     customer_id: 'customerId',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApiKeyOutput
    #   resp.data.id #=> String
    #   resp.data.value #=> String
    #   resp.data.name #=> String
    #   resp.data.customer_id #=> String
    #   resp.data.description #=> String
    #   resp.data.enabled #=> Boolean
    #   resp.data.created_date #=> Time
    #   resp.data.last_updated_date #=> Time
    #   resp.data.stage_keys #=> Array<String>
    #   resp.data.stage_keys[0] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_api_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApiKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApiKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApiKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::CreateApiKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApiKey,
        stubs: @stubs,
        params_class: Params::CreateApiKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_api_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a new Authorizer resource to an existing RestApi resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAuthorizerInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :name
    #   <p>The name of the authorizer.</p>
    #
    # @option params [String] :type
    #   <p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
    #
    # @option params [Array<String>] :provider_ar_ns
    #   <p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>
    #
    # @option params [String] :auth_type
    #   <p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>
    #
    # @option params [String] :authorizer_uri
    #   <p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>
    #
    # @option params [String] :authorizer_credentials
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
    #
    # @option params [String] :identity_source
    #   <p>The identity source for which authorization is requested. For a <code>TOKEN</code> or
    #           <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request
    #         header mapping expression for the custom header holding the authorization token submitted by
    #         the client. For example, if the token header name is <code>Auth</code>, the header mapping
    #         expression is <code>method.request.header.Auth</code>. For the <code>REQUEST</code>
    #         authorizer, this is required when authorization caching is enabled. The value is a
    #         comma-separated string of one or more mapping expressions of the specified request parameters.
    #         For example, if an <code>Auth</code> header, a <code>Name</code> query string parameter are
    #         defined as identity sources, this value is <code>method.request.header.Auth,
    #           method.request.querystring.Name</code>. These parameters will be used to derive the
    #         authorization caching key and to perform runtime validation of the <code>REQUEST</code>
    #         authorizer by verifying all of the identity-related request parameters are present, not null
    #         and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda
    #         function, otherwise, it returns a 401 Unauthorized response without calling the Lambda
    #         function. The valid value is a string of comma-separated mapping expressions of the specified
    #         request parameters. When the authorization caching is not enabled, this property is
    #         optional.</p>
    #
    # @option params [String] :identity_validation_expression
    #   <p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>
    #
    # @option params [Integer] :authorizer_result_ttl_in_seconds
    #   <p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
    #
    # @return [Types::CreateAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_authorizer(
    #     rest_api_id: 'restApiId', # required
    #     name: 'name', # required
    #     type: 'TOKEN', # required - accepts ["TOKEN", "REQUEST", "COGNITO_USER_POOLS"]
    #     provider_ar_ns: [
    #       'member'
    #     ],
    #     auth_type: 'authType',
    #     authorizer_uri: 'authorizerUri',
    #     authorizer_credentials: 'authorizerCredentials',
    #     identity_source: 'identitySource',
    #     identity_validation_expression: 'identityValidationExpression',
    #     authorizer_result_ttl_in_seconds: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAuthorizerOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.type #=> String, one of ["TOKEN", "REQUEST", "COGNITO_USER_POOLS"]
    #   resp.data.provider_ar_ns #=> Array<String>
    #   resp.data.provider_ar_ns[0] #=> String
    #   resp.data.auth_type #=> String
    #   resp.data.authorizer_uri #=> String
    #   resp.data.authorizer_credentials #=> String
    #   resp.data.identity_source #=> String
    #   resp.data.identity_validation_expression #=> String
    #   resp.data.authorizer_result_ttl_in_seconds #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Creates a new BasePathMapping resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBasePathMappingInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name of the BasePathMapping resource to create.</p>
    #
    # @option params [String] :base_path
    #   <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify a base path name after the domain name.</p>
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :stage
    #   <p>The name of the API's stage that you want to use for this mapping. Specify '(none)' if you want callers to explicitly specify the stage name after any base path name.</p>
    #
    # @return [Types::CreateBasePathMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_base_path_mapping(
    #     domain_name: 'domainName', # required
    #     base_path: 'basePath',
    #     rest_api_id: 'restApiId', # required
    #     stage: 'stage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBasePathMappingOutput
    #   resp.data.base_path #=> String
    #   resp.data.rest_api_id #=> String
    #   resp.data.stage #=> String
    #
    def create_base_path_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBasePathMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBasePathMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBasePathMapping
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::CreateBasePathMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBasePathMapping,
        stubs: @stubs,
        params_class: Params::CreateBasePathMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_base_path_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Deployment resource, which makes a specified RestApi callable over the internet.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the Stage resource for the Deployment resource to create.</p>
    #
    # @option params [String] :stage_description
    #   <p>The description of the Stage resource for the Deployment resource to create.</p>
    #
    # @option params [String] :description
    #   <p>The description for the Deployment resource to create.</p>
    #
    # @option params [Boolean] :cache_cluster_enabled
    #   <p>Enables a cache cluster for the Stage resource specified in the input.</p>
    #
    # @option params [String] :cache_cluster_size
    #   <p>Specifies the cache cluster size for the Stage resource specified in the input, if a cache cluster is enabled.</p>
    #
    # @option params [Hash<String, String>] :variables
    #   <p>A map that defines the stage variables for the Stage resource that is associated
    #             with the new deployment. Variable names can have alphanumeric and underscore characters, and the values
    #             must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>
    #
    # @option params [DeploymentCanarySettings] :canary_settings
    #   <p>The input configuration for the canary deployment when the deployment is a canary release deployment. </p>
    #
    # @option params [Boolean] :tracing_enabled
    #   <p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>
    #
    # @return [Types::CreateDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment(
    #     rest_api_id: 'restApiId', # required
    #     stage_name: 'stageName',
    #     stage_description: 'stageDescription',
    #     description: 'description',
    #     cache_cluster_enabled: false,
    #     cache_cluster_size: '0.5', # accepts ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"]
    #     variables: {
    #       'key' => 'value'
    #     },
    #     canary_settings: {
    #       percent_traffic: 1.0,
    #       use_stage_cache: false
    #     },
    #     tracing_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentOutput
    #   resp.data.id #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.api_summary #=> Hash<String, Hash<String, MethodSnapshot>>
    #   resp.data.api_summary['key'] #=> Hash<String, MethodSnapshot>
    #   resp.data.api_summary['key']['key'] #=> Types::MethodSnapshot
    #   resp.data.api_summary['key']['key'].authorization_type #=> String
    #   resp.data.api_summary['key']['key'].api_key_required #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ServiceUnavailableException, Errors::BadRequestException]),
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

    # <p>Creates a documentation part.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDocumentationPartInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [DocumentationPartLocation] :location
    #   <p>The location of the targeted API entity of the to-be-created documentation part.</p>
    #
    # @option params [String] :properties
    #   <p>The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only OpenAPI-compliant key-value pairs can be exported and, hence, published.</p>
    #
    # @return [Types::CreateDocumentationPartOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_documentation_part(
    #     rest_api_id: 'restApiId', # required
    #     location: {
    #       type: 'API', # required - accepts ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"]
    #       path: 'path',
    #       member_method: 'method',
    #       status_code: 'statusCode',
    #       name: 'name'
    #     }, # required
    #     properties: 'properties' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDocumentationPartOutput
    #   resp.data.id #=> String
    #   resp.data.location #=> Types::DocumentationPartLocation
    #   resp.data.location.type #=> String, one of ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"]
    #   resp.data.location.path #=> String
    #   resp.data.location.member_method #=> String
    #   resp.data.location.status_code #=> String
    #   resp.data.location.name #=> String
    #   resp.data.properties #=> String
    #
    def create_documentation_part(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDocumentationPartInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDocumentationPartInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDocumentationPart
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::CreateDocumentationPart
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDocumentationPart,
        stubs: @stubs,
        params_class: Params::CreateDocumentationPartOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_documentation_part
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a documentation version</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDocumentationVersionInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :documentation_version
    #   <p>The version identifier of the new snapshot.</p>
    #
    # @option params [String] :stage_name
    #   <p>The stage name to be associated with the new documentation snapshot.</p>
    #
    # @option params [String] :description
    #   <p>A description about the new documentation snapshot.</p>
    #
    # @return [Types::CreateDocumentationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_documentation_version(
    #     rest_api_id: 'restApiId', # required
    #     documentation_version: 'documentationVersion', # required
    #     stage_name: 'stageName',
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDocumentationVersionOutput
    #   resp.data.version #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.description #=> String
    #
    def create_documentation_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDocumentationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDocumentationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDocumentationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::CreateDocumentationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDocumentationVersion,
        stubs: @stubs,
        params_class: Params::CreateDocumentationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_documentation_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new domain name.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the DomainName resource.</p>
    #
    # @option params [String] :certificate_name
    #   <p>The user-friendly name of the certificate that will be used by edge-optimized endpoint for this domain name.</p>
    #
    # @option params [String] :certificate_body
    #   <p>[Deprecated] The body of the server certificate that will be used by edge-optimized endpoint for this domain name provided by your certificate authority.</p>
    #
    # @option params [String] :certificate_private_key
    #   <p>[Deprecated] Your edge-optimized endpoint's domain name certificate's private key.</p>
    #
    # @option params [String] :certificate_chain
    #   <p>[Deprecated] The intermediate certificates and optionally the root certificate, one after the other without any blank lines, used by an edge-optimized endpoint for this domain name. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.</p>
    #
    # @option params [String] :certificate_arn
    #   <p>The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.</p>
    #
    # @option params [String] :regional_certificate_name
    #   <p>The user-friendly name of the certificate that will be used by regional endpoint for this domain name.</p>
    #
    # @option params [String] :regional_certificate_arn
    #   <p>The reference to an AWS-managed certificate that will be used by regional endpoint for this domain name. AWS Certificate Manager is the only supported source.</p>
    #
    # @option params [EndpointConfiguration] :endpoint_configuration
    #   <p>The endpoint configuration of this DomainName showing the endpoint types of the domain name. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #
    # @option params [String] :security_policy
    #   <p>The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are <code>TLS_1_0</code> and <code>TLS_1_2</code>.</p>
    #
    # @option params [MutualTlsAuthenticationInput] :mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway
    #         performs two-way authentication between the client and the server. Clients must present a
    #         trusted certificate to access your API.</p>
    #
    # @option params [String] :ownership_verification_certificate_arn
    #   <p>The ARN of the public certificate issued by ACM to validate ownership of your custom
    #         domain. Only required when configuring mutual TLS and using an ACM imported or private CA
    #         certificate ARN as the regionalCertificateArn.</p>
    #
    # @return [Types::CreateDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_name(
    #     domain_name: 'domainName', # required
    #     certificate_name: 'certificateName',
    #     certificate_body: 'certificateBody',
    #     certificate_private_key: 'certificatePrivateKey',
    #     certificate_chain: 'certificateChain',
    #     certificate_arn: 'certificateArn',
    #     regional_certificate_name: 'regionalCertificateName',
    #     regional_certificate_arn: 'regionalCertificateArn',
    #     endpoint_configuration: {
    #       types: [
    #         'REGIONAL' # accepts ["REGIONAL", "EDGE", "PRIVATE"]
    #       ],
    #       vpc_endpoint_ids: [
    #         'member'
    #       ]
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     security_policy: 'TLS_1_0', # accepts ["TLS_1_0", "TLS_1_2"]
    #     mutual_tls_authentication: {
    #       truststore_uri: 'truststoreUri',
    #       truststore_version: 'truststoreVersion'
    #     },
    #     ownership_verification_certificate_arn: 'ownershipVerificationCertificateArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDomainNameOutput
    #   resp.data.domain_name #=> String
    #   resp.data.certificate_name #=> String
    #   resp.data.certificate_arn #=> String
    #   resp.data.certificate_upload_date #=> Time
    #   resp.data.regional_domain_name #=> String
    #   resp.data.regional_hosted_zone_id #=> String
    #   resp.data.regional_certificate_name #=> String
    #   resp.data.regional_certificate_arn #=> String
    #   resp.data.distribution_domain_name #=> String
    #   resp.data.distribution_hosted_zone_id #=> String
    #   resp.data.endpoint_configuration #=> Types::EndpointConfiguration
    #   resp.data.endpoint_configuration.types #=> Array<String>
    #   resp.data.endpoint_configuration.types[0] #=> String, one of ["REGIONAL", "EDGE", "PRIVATE"]
    #   resp.data.endpoint_configuration.vpc_endpoint_ids #=> Array<String>
    #   resp.data.endpoint_configuration.vpc_endpoint_ids[0] #=> String
    #   resp.data.domain_name_status #=> String, one of ["AVAILABLE", "UPDATING", "PENDING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"]
    #   resp.data.domain_name_status_message #=> String
    #   resp.data.security_policy #=> String, one of ["TLS_1_0", "TLS_1_2"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.mutual_tls_authentication #=> Types::MutualTlsAuthentication
    #   resp.data.mutual_tls_authentication.truststore_uri #=> String
    #   resp.data.mutual_tls_authentication.truststore_version #=> String
    #   resp.data.mutual_tls_authentication.truststore_warnings #=> Array<String>
    #   resp.data.ownership_verification_certificate_arn #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Adds a new Model resource to an existing RestApi resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateModelInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The RestApi identifier under which the Model will be created.</p>
    #
    # @option params [String] :name
    #   <p>The name of the model. Must be alphanumeric.</p>
    #
    # @option params [String] :description
    #   <p>The description of the model.</p>
    #
    # @option params [String] :schema
    #   <p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model.</p>
    #
    # @option params [String] :content_type
    #   <p>The content-type for the model.</p>
    #
    # @return [Types::CreateModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model(
    #     rest_api_id: 'restApiId', # required
    #     name: 'name', # required
    #     description: 'description',
    #     schema: 'schema',
    #     content_type: 'contentType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateModelOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.schema #=> String
    #   resp.data.content_type #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Creates a RequestValidator of a given RestApi.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRequestValidatorInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :name
    #   <p>The name of the to-be-created RequestValidator.</p>
    #
    # @option params [Boolean] :validate_request_body
    #   <p>A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (<code>true</code>) or not (<code>false</code>).</p>
    #
    # @option params [Boolean] :validate_request_parameters
    #   <p>A Boolean flag to indicate whether to validate request parameters, <code>true</code>, or not <code>false</code>.</p>
    #
    # @return [Types::CreateRequestValidatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_request_validator(
    #     rest_api_id: 'restApiId', # required
    #     name: 'name',
    #     validate_request_body: false,
    #     validate_request_parameters: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRequestValidatorOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.validate_request_body #=> Boolean
    #   resp.data.validate_request_parameters #=> Boolean
    #
    def create_request_validator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRequestValidatorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRequestValidatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRequestValidator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::CreateRequestValidator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRequestValidator,
        stubs: @stubs,
        params_class: Params::CreateRequestValidatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_request_validator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Resource resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResourceInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :parent_id
    #   <p>The parent resource's identifier.</p>
    #
    # @option params [String] :path_part
    #   <p>The last path segment for this resource.</p>
    #
    # @return [Types::CreateResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource(
    #     rest_api_id: 'restApiId', # required
    #     parent_id: 'parentId', # required
    #     path_part: 'pathPart' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourceOutput
    #   resp.data.id #=> String
    #   resp.data.parent_id #=> String
    #   resp.data.path_part #=> String
    #   resp.data.path #=> String
    #   resp.data.resource_methods #=> Hash<String, Method>
    #   resp.data.resource_methods['key'] #=> Types::Method
    #   resp.data.resource_methods['key'].http_method #=> String
    #   resp.data.resource_methods['key'].authorization_type #=> String
    #   resp.data.resource_methods['key'].authorizer_id #=> String
    #   resp.data.resource_methods['key'].api_key_required #=> Boolean
    #   resp.data.resource_methods['key'].request_validator_id #=> String
    #   resp.data.resource_methods['key'].operation_name #=> String
    #   resp.data.resource_methods['key'].request_parameters #=> Hash<String, Boolean>
    #   resp.data.resource_methods['key'].request_parameters['key'] #=> Boolean
    #   resp.data.resource_methods['key'].request_models #=> Hash<String, String>
    #   resp.data.resource_methods['key'].request_models['key'] #=> String
    #   resp.data.resource_methods['key'].method_responses #=> Hash<String, MethodResponse>
    #   resp.data.resource_methods['key'].method_responses['key'] #=> Types::MethodResponse
    #   resp.data.resource_methods['key'].method_responses['key'].status_code #=> String
    #   resp.data.resource_methods['key'].method_responses['key'].response_parameters #=> Hash<String, Boolean>
    #   resp.data.resource_methods['key'].method_responses['key'].response_models #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration #=> Types::Integration
    #   resp.data.resource_methods['key'].method_integration.type #=> String, one of ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.resource_methods['key'].method_integration.http_method #=> String
    #   resp.data.resource_methods['key'].method_integration.uri #=> String
    #   resp.data.resource_methods['key'].method_integration.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.resource_methods['key'].method_integration.connection_id #=> String
    #   resp.data.resource_methods['key'].method_integration.credentials #=> String
    #   resp.data.resource_methods['key'].method_integration.request_parameters #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.request_templates #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.passthrough_behavior #=> String
    #   resp.data.resource_methods['key'].method_integration.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.resource_methods['key'].method_integration.timeout_in_millis #=> Integer
    #   resp.data.resource_methods['key'].method_integration.cache_namespace #=> String
    #   resp.data.resource_methods['key'].method_integration.cache_key_parameters #=> Array<String>
    #   resp.data.resource_methods['key'].method_integration.cache_key_parameters[0] #=> String
    #   resp.data.resource_methods['key'].method_integration.integration_responses #=> Hash<String, IntegrationResponse>
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'] #=> Types::IntegrationResponse
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].status_code #=> String
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].selection_pattern #=> String
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].response_parameters #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].response_templates #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.resource_methods['key'].method_integration.tls_config #=> Types::TlsConfig
    #   resp.data.resource_methods['key'].method_integration.tls_config.insecure_skip_verification #=> Boolean
    #   resp.data.resource_methods['key'].authorization_scopes #=> Array<String>
    #
    def create_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::CreateResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResource,
        stubs: @stubs,
        params_class: Params::CreateResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new RestApi resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRestApiInput}.
    #
    # @option params [String] :name
    #   <p>The name of the RestApi.</p>
    #
    # @option params [String] :description
    #   <p>The description of the RestApi.</p>
    #
    # @option params [String] :version
    #   <p>A version identifier for the API.</p>
    #
    # @option params [String] :clone_from
    #   <p>The ID of the RestApi that you want to clone from.</p>
    #
    # @option params [Array<String>] :binary_media_types
    #   <p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>
    #
    # @option params [Integer] :minimum_compression_size
    #   <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
    #
    # @option params [String] :api_key_source
    #   <p>The source of the API key for metering requests according to a usage plan. Valid values
    #         are: ><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a
    #         request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>
    #         from a custom authorizer.</p>
    #
    # @option params [EndpointConfiguration] :endpoint_configuration
    #   <p>The endpoint configuration of this RestApi showing the endpoint types of the API. </p>
    #
    # @option params [String] :policy
    #   <p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #
    # @option params [Boolean] :disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.
    #         By default, clients can invoke your API with the default
    #         <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a
    #         custom domain name to invoke your API, disable the default endpoint</p>
    #
    # @return [Types::CreateRestApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rest_api(
    #     name: 'name', # required
    #     description: 'description',
    #     version: 'version',
    #     clone_from: 'cloneFrom',
    #     binary_media_types: [
    #       'member'
    #     ],
    #     minimum_compression_size: 1,
    #     api_key_source: 'HEADER', # accepts ["HEADER", "AUTHORIZER"]
    #     endpoint_configuration: {
    #       types: [
    #         'REGIONAL' # accepts ["REGIONAL", "EDGE", "PRIVATE"]
    #       ],
    #     },
    #     policy: 'policy',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     disable_execute_api_endpoint: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRestApiOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.warnings #=> Array<String>
    #   resp.data.warnings[0] #=> String
    #   resp.data.binary_media_types #=> Array<String>
    #   resp.data.minimum_compression_size #=> Integer
    #   resp.data.api_key_source #=> String, one of ["HEADER", "AUTHORIZER"]
    #   resp.data.endpoint_configuration #=> Types::EndpointConfiguration
    #   resp.data.endpoint_configuration.types #=> Array<String>
    #   resp.data.endpoint_configuration.types[0] #=> String, one of ["REGIONAL", "EDGE", "PRIVATE"]
    #   resp.data.endpoint_configuration.vpc_endpoint_ids #=> Array<String>
    #   resp.data.policy #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.disable_execute_api_endpoint #=> Boolean
    #
    def create_rest_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRestApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRestApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRestApi
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::CreateRestApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRestApi,
        stubs: @stubs,
        params_class: Params::CreateRestApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_rest_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Stage resource that references a pre-existing Deployment for the API. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateStageInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name for the Stage resource. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The identifier of the Deployment resource for the Stage resource.</p>
    #
    # @option params [String] :description
    #   <p>The description of the Stage resource.</p>
    #
    # @option params [Boolean] :cache_cluster_enabled
    #   <p>Whether cache clustering is enabled for the stage.</p>
    #
    # @option params [String] :cache_cluster_size
    #   <p>The stage's cache cluster size.</p>
    #
    # @option params [Hash<String, String>] :variables
    #   <p>A map that defines the stage variables for the new Stage resource. Variable names
    #             can have alphanumeric and underscore characters, and the values must match
    #             <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>
    #
    # @option params [String] :documentation_version
    #   <p>The version of the associated API documentation.</p>
    #
    # @option params [CanarySettings] :canary_settings
    #   <p>The canary deployment settings of this stage.</p>
    #
    # @option params [Boolean] :tracing_enabled
    #   <p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #
    # @return [Types::CreateStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stage(
    #     rest_api_id: 'restApiId', # required
    #     stage_name: 'stageName', # required
    #     deployment_id: 'deploymentId', # required
    #     description: 'description',
    #     cache_cluster_enabled: false,
    #     cache_cluster_size: '0.5', # accepts ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"]
    #     variables: {
    #       'key' => 'value'
    #     },
    #     documentation_version: 'documentationVersion',
    #     canary_settings: {
    #       percent_traffic: 1.0,
    #       deployment_id: 'deploymentId',
    #       use_stage_cache: false
    #     },
    #     tracing_enabled: false,
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStageOutput
    #   resp.data.deployment_id #=> String
    #   resp.data.client_certificate_id #=> String
    #   resp.data.stage_name #=> String
    #   resp.data.description #=> String
    #   resp.data.cache_cluster_enabled #=> Boolean
    #   resp.data.cache_cluster_size #=> String, one of ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"]
    #   resp.data.cache_cluster_status #=> String, one of ["CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"]
    #   resp.data.method_settings #=> Hash<String, MethodSetting>
    #   resp.data.method_settings['key'] #=> Types::MethodSetting
    #   resp.data.method_settings['key'].metrics_enabled #=> Boolean
    #   resp.data.method_settings['key'].logging_level #=> String
    #   resp.data.method_settings['key'].data_trace_enabled #=> Boolean
    #   resp.data.method_settings['key'].throttling_burst_limit #=> Integer
    #   resp.data.method_settings['key'].throttling_rate_limit #=> Float
    #   resp.data.method_settings['key'].caching_enabled #=> Boolean
    #   resp.data.method_settings['key'].cache_ttl_in_seconds #=> Integer
    #   resp.data.method_settings['key'].cache_data_encrypted #=> Boolean
    #   resp.data.method_settings['key'].require_authorization_for_cache_control #=> Boolean
    #   resp.data.method_settings['key'].unauthorized_cache_control_header_strategy #=> String, one of ["FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"]
    #   resp.data.variables #=> Hash<String, String>
    #   resp.data.variables['key'] #=> String
    #   resp.data.documentation_version #=> String
    #   resp.data.access_log_settings #=> Types::AccessLogSettings
    #   resp.data.access_log_settings.format #=> String
    #   resp.data.access_log_settings.destination_arn #=> String
    #   resp.data.canary_settings #=> Types::CanarySettings
    #   resp.data.canary_settings.percent_traffic #=> Float
    #   resp.data.canary_settings.deployment_id #=> String
    #   resp.data.canary_settings.stage_variable_overrides #=> Hash<String, String>
    #   resp.data.canary_settings.use_stage_cache #=> Boolean
    #   resp.data.tracing_enabled #=> Boolean
    #   resp.data.web_acl_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.created_date #=> Time
    #   resp.data.last_updated_date #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateUsagePlanInput}.
    #
    # @option params [String] :name
    #   <p>The name of the usage plan.</p>
    #
    # @option params [String] :description
    #   <p>The description of the usage plan.</p>
    #
    # @option params [Array<ApiStage>] :api_stages
    #   <p>The associated API stages of the usage plan.</p>
    #
    # @option params [ThrottleSettings] :throttle
    #   <p>The throttling limits of the usage plan.</p>
    #
    # @option params [QuotaSettings] :quota
    #   <p>The quota of the usage plan.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #
    # @return [Types::CreateUsagePlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_usage_plan(
    #     name: 'name', # required
    #     description: 'description',
    #     api_stages: [
    #       {
    #         api_id: 'apiId',
    #         stage: 'stage',
    #         throttle: {
    #           'key' => {
    #             burst_limit: 1,
    #             rate_limit: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     quota: {
    #       limit: 1,
    #       offset: 1,
    #       period: 'DAY' # accepts ["DAY", "WEEK", "MONTH"]
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUsagePlanOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.api_stages #=> Array<ApiStage>
    #   resp.data.api_stages[0] #=> Types::ApiStage
    #   resp.data.api_stages[0].api_id #=> String
    #   resp.data.api_stages[0].stage #=> String
    #   resp.data.api_stages[0].throttle #=> Hash<String, ThrottleSettings>
    #   resp.data.api_stages[0].throttle['key'] #=> Types::ThrottleSettings
    #   resp.data.api_stages[0].throttle['key'].burst_limit #=> Integer
    #   resp.data.api_stages[0].throttle['key'].rate_limit #=> Float
    #   resp.data.throttle #=> Types::ThrottleSettings
    #   resp.data.quota #=> Types::QuotaSettings
    #   resp.data.quota.limit #=> Integer
    #   resp.data.quota.offset #=> Integer
    #   resp.data.quota.period #=> String, one of ["DAY", "WEEK", "MONTH"]
    #   resp.data.product_code #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_usage_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUsagePlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUsagePlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUsagePlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::CreateUsagePlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUsagePlan,
        stubs: @stubs,
        params_class: Params::CreateUsagePlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_usage_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a usage plan key for adding an existing API key to a usage plan.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUsagePlanKeyInput}.
    #
    # @option params [String] :usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-created UsagePlanKey resource representing a plan customer.</p>
    #
    # @option params [String] :key_id
    #   <p>The identifier of a UsagePlanKey resource for a plan customer.</p>
    #
    # @option params [String] :key_type
    #   <p>The type of a UsagePlanKey resource for a plan customer.</p>
    #
    # @return [Types::CreateUsagePlanKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_usage_plan_key(
    #     usage_plan_id: 'usagePlanId', # required
    #     key_id: 'keyId', # required
    #     key_type: 'keyType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUsagePlanKeyOutput
    #   resp.data.id #=> String
    #   resp.data.type #=> String
    #   resp.data.value #=> String
    #   resp.data.name #=> String
    #
    def create_usage_plan_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUsagePlanKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUsagePlanKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUsagePlanKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::CreateUsagePlanKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUsagePlanKey,
        stubs: @stubs,
        params_class: Params::CreateUsagePlanKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_usage_plan_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVpcLinkInput}.
    #
    # @option params [String] :name
    #   <p>The name used to label and identify the VPC link.</p>
    #
    # @option params [String] :description
    #   <p>The description of the VPC link.</p>
    #
    # @option params [Array<String>] :target_arns
    #   <p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same AWS account of the API owner.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #
    # @return [Types::CreateVpcLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_link(
    #     name: 'name', # required
    #     description: 'description',
    #     target_arns: [
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
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.target_arns #=> Array<String>
    #   resp.data.target_arns[0] #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "PENDING", "DELETING", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Deletes the ApiKey resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApiKeyInput}.
    #
    # @option params [String] :api_key
    #   <p>The identifier of the ApiKey resource to be deleted.</p>
    #
    # @return [Types::DeleteApiKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api_key(
    #     api_key: 'apiKey' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApiKeyOutput
    #
    def delete_api_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApiKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApiKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApiKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteApiKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApiKey,
        stubs: @stubs,
        params_class: Params::DeleteApiKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_api_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing Authorizer resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAuthorizerInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :authorizer_id
    #   <p>The identifier of the Authorizer resource.</p>
    #
    # @return [Types::DeleteAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_authorizer(
    #     rest_api_id: 'restApiId', # required
    #     authorizer_id: 'authorizerId' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Deletes the BasePathMapping resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBasePathMappingInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name of the BasePathMapping resource to delete.</p>
    #
    # @option params [String] :base_path
    #   <p>The base path name of the BasePathMapping resource to delete.</p>
    #           <p>To specify an empty base path, set this parameter to <code>'(none)'</code>.</p>
    #
    # @return [Types::DeleteBasePathMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_base_path_mapping(
    #     domain_name: 'domainName', # required
    #     base_path: 'basePath' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBasePathMappingOutput
    #
    def delete_base_path_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBasePathMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBasePathMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBasePathMapping
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteBasePathMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBasePathMapping,
        stubs: @stubs,
        params_class: Params::DeleteBasePathMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_base_path_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the ClientCertificate resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClientCertificateInput}.
    #
    # @option params [String] :client_certificate_id
    #   <p>The identifier of the ClientCertificate resource to be deleted.</p>
    #
    # @return [Types::DeleteClientCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_client_certificate(
    #     client_certificate_id: 'clientCertificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClientCertificateOutput
    #
    def delete_client_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClientCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClientCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteClientCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteClientCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteClientCertificate,
        stubs: @stubs,
        params_class: Params::DeleteClientCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_client_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Deployment resource. Deleting a deployment will only succeed if there are no Stage resources associated with it.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeploymentInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The identifier of the Deployment resource to delete.</p>
    #
    # @return [Types::DeleteDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment(
    #     rest_api_id: 'restApiId', # required
    #     deployment_id: 'deploymentId' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Deletes a documentation part</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDocumentationPartInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :documentation_part_id
    #   <p>The identifier of the to-be-deleted documentation part.</p>
    #
    # @return [Types::DeleteDocumentationPartOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_documentation_part(
    #     rest_api_id: 'restApiId', # required
    #     documentation_part_id: 'documentationPartId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDocumentationPartOutput
    #
    def delete_documentation_part(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDocumentationPartInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDocumentationPartInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDocumentationPart
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteDocumentationPart
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDocumentationPart,
        stubs: @stubs,
        params_class: Params::DeleteDocumentationPartOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_documentation_part
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a documentation version.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDocumentationVersionInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :documentation_version
    #   <p>The version identifier of a to-be-deleted documentation snapshot.</p>
    #
    # @return [Types::DeleteDocumentationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_documentation_version(
    #     rest_api_id: 'restApiId', # required
    #     documentation_version: 'documentationVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDocumentationVersionOutput
    #
    def delete_documentation_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDocumentationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDocumentationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDocumentationVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteDocumentationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDocumentationVersion,
        stubs: @stubs,
        params_class: Params::DeleteDocumentationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_documentation_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the DomainName resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the DomainName resource to be deleted.</p>
    #
    # @return [Types::DeleteDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_name(
    #     domain_name: 'domainName' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGatewayResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    #
    # @return [Types::DeleteGatewayResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway_response(
    #     rest_api_id: 'restApiId', # required
    #     response_type: 'DEFAULT_4XX' # required - accepts ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGatewayResponseOutput
    #
    def delete_gateway_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGatewayResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGatewayResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGatewayResponse
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteGatewayResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGatewayResponse,
        stubs: @stubs,
        params_class: Params::DeleteGatewayResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_gateway_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents a delete integration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIntegrationInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>Specifies a delete integration request's resource identifier.</p>
    #
    # @option params [String] :http_method
    #   <p>Specifies a delete integration request's HTTP method.</p>
    #
    # @return [Types::DeleteIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Represents a delete integration response.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIntegrationResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>Specifies a delete integration response request's resource identifier.</p>
    #
    # @option params [String] :http_method
    #   <p>Specifies a delete integration response request's HTTP method.</p>
    #
    # @option params [String] :status_code
    #   <p>Specifies a delete integration response request's status code.</p>
    #
    # @return [Types::DeleteIntegrationResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration_response(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     status_code: 'statusCode' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Deletes an existing Method resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMethodInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    #
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #
    # @return [Types::DeleteMethodOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_method(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMethodOutput
    #
    def delete_method(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMethodInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMethodInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMethod
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteMethod
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMethod,
        stubs: @stubs,
        params_class: Params::DeleteMethodOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_method
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing MethodResponse resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMethodResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the MethodResponse resource.</p>
    #
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #
    # @option params [String] :status_code
    #   <p>The status code identifier for the MethodResponse resource.</p>
    #
    # @return [Types::DeleteMethodResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_method_response(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     status_code: 'statusCode' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMethodResponseOutput
    #
    def delete_method_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMethodResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMethodResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMethodResponse
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteMethodResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMethodResponse,
        stubs: @stubs,
        params_class: Params::DeleteMethodResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_method_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a model.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteModelInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :model_name
    #   <p>The name of the model to delete.</p>
    #
    # @return [Types::DeleteModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model(
    #     rest_api_id: 'restApiId', # required
    #     model_name: 'modelName' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Deletes a RequestValidator of a given RestApi.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRequestValidatorInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :request_validator_id
    #   <p>The identifier of the RequestValidator to be deleted.</p>
    #
    # @return [Types::DeleteRequestValidatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_request_validator(
    #     rest_api_id: 'restApiId', # required
    #     request_validator_id: 'requestValidatorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRequestValidatorOutput
    #
    def delete_request_validator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRequestValidatorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRequestValidatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRequestValidator
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteRequestValidator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRequestValidator,
        stubs: @stubs,
        params_class: Params::DeleteRequestValidatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_request_validator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Resource resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourceInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the Resource resource.</p>
    #
    # @return [Types::DeleteResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourceOutput
    #
    def delete_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResource
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResource,
        stubs: @stubs,
        params_class: Params::DeleteResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified API.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRestApiInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @return [Types::DeleteRestApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rest_api(
    #     rest_api_id: 'restApiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRestApiOutput
    #
    def delete_rest_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRestApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRestApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRestApi
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteRestApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRestApi,
        stubs: @stubs,
        params_class: Params::DeleteRestApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_rest_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Stage resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStageInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the Stage resource to delete.</p>
    #
    # @return [Types::DeleteStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stage(
    #     rest_api_id: 'restApiId', # required
    #     stage_name: 'stageName' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Deletes a usage plan of a given plan Id.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUsagePlanInput}.
    #
    # @option params [String] :usage_plan_id
    #   <p>The Id of the to-be-deleted usage plan.</p>
    #
    # @return [Types::DeleteUsagePlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_usage_plan(
    #     usage_plan_id: 'usagePlanId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUsagePlanOutput
    #
    def delete_usage_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUsagePlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUsagePlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUsagePlan
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteUsagePlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUsagePlan,
        stubs: @stubs,
        params_class: Params::DeleteUsagePlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_usage_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a usage plan key  and remove the underlying API key from the associated usage plan.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUsagePlanKeyInput}.
    #
    # @option params [String] :usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-deleted UsagePlanKey resource representing a plan customer.</p>
    #
    # @option params [String] :key_id
    #   <p>The Id of the UsagePlanKey resource to be deleted.</p>
    #
    # @return [Types::DeleteUsagePlanKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_usage_plan_key(
    #     usage_plan_id: 'usagePlanId', # required
    #     key_id: 'keyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUsagePlanKeyOutput
    #
    def delete_usage_plan_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUsagePlanKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUsagePlanKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUsagePlanKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteUsagePlanKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUsagePlanKey,
        stubs: @stubs,
        params_class: Params::DeleteUsagePlanKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_usage_plan_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing VpcLink of a specified identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVpcLinkInput}.
    #
    # @option params [String] :vpc_link_id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    #
    # @return [Types::DeleteVpcLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_link(
    #     vpc_link_id: 'vpcLinkId' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Flushes all authorizer cache entries on a stage.</p>
    #
    # @param [Hash] params
    #   See {Types::FlushStageAuthorizersCacheInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage to flush.</p>
    #
    # @return [Types::FlushStageAuthorizersCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.flush_stage_authorizers_cache(
    #     rest_api_id: 'restApiId', # required
    #     stage_name: 'stageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::FlushStageAuthorizersCacheOutput
    #
    def flush_stage_authorizers_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FlushStageAuthorizersCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::FlushStageAuthorizersCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::FlushStageAuthorizersCache
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::FlushStageAuthorizersCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::FlushStageAuthorizersCache,
        stubs: @stubs,
        params_class: Params::FlushStageAuthorizersCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :flush_stage_authorizers_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Flushes a stage's cache.</p>
    #
    # @param [Hash] params
    #   See {Types::FlushStageCacheInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage to flush its cache.</p>
    #
    # @return [Types::FlushStageCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.flush_stage_cache(
    #     rest_api_id: 'restApiId', # required
    #     stage_name: 'stageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::FlushStageCacheOutput
    #
    def flush_stage_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FlushStageCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::FlushStageCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::FlushStageCache
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::FlushStageCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::FlushStageCache,
        stubs: @stubs,
        params_class: Params::FlushStageCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :flush_stage_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a ClientCertificate resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GenerateClientCertificateInput}.
    #
    # @option params [String] :description
    #   <p>The description of the ClientCertificate.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #
    # @return [Types::GenerateClientCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_client_certificate(
    #     description: 'description',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateClientCertificateOutput
    #   resp.data.client_certificate_id #=> String
    #   resp.data.description #=> String
    #   resp.data.pem_encoded_certificate #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.expiration_date #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def generate_client_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateClientCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateClientCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateClientCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GenerateClientCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateClientCertificate,
        stubs: @stubs,
        params_class: Params::GenerateClientCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_client_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the current Account resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountInput}.
    #
    # @return [Types::GetAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountOutput
    #   resp.data.cloudwatch_role_arn #=> String
    #   resp.data.throttle_settings #=> Types::ThrottleSettings
    #   resp.data.throttle_settings.burst_limit #=> Integer
    #   resp.data.throttle_settings.rate_limit #=> Float
    #   resp.data.features #=> Array<String>
    #   resp.data.features[0] #=> String
    #   resp.data.api_key_version #=> String
    #
    def get_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccount,
        stubs: @stubs,
        params_class: Params::GetAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the current ApiKey resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApiKeyInput}.
    #
    # @option params [String] :api_key
    #   <p>The identifier of the ApiKey resource.</p>
    #
    # @option params [Boolean] :include_value
    #   <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains the key value.</p>
    #
    # @return [Types::GetApiKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_key(
    #     api_key: 'apiKey', # required
    #     include_value: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApiKeyOutput
    #   resp.data.id #=> String
    #   resp.data.value #=> String
    #   resp.data.name #=> String
    #   resp.data.customer_id #=> String
    #   resp.data.description #=> String
    #   resp.data.enabled #=> Boolean
    #   resp.data.created_date #=> Time
    #   resp.data.last_updated_date #=> Time
    #   resp.data.stage_keys #=> Array<String>
    #   resp.data.stage_keys[0] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_api_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApiKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApiKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApiKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetApiKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApiKey,
        stubs: @stubs,
        params_class: Params::GetApiKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_api_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the current ApiKeys resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApiKeysInput}.
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @option params [String] :name_query
    #   <p>The name of queried API keys.</p>
    #
    # @option params [String] :customer_id
    #   <p>The identifier of a customer in AWS Marketplace or an external system, such as a developer portal.</p>
    #
    # @option params [Boolean] :include_values
    #   <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains key values.</p>
    #
    # @return [Types::GetApiKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_keys(
    #     position: 'position',
    #     limit: 1,
    #     name_query: 'nameQuery',
    #     customer_id: 'customerId',
    #     include_values: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApiKeysOutput
    #   resp.data.warnings #=> Array<String>
    #   resp.data.warnings[0] #=> String
    #   resp.data.items #=> Array<ApiKey>
    #   resp.data.items[0] #=> Types::ApiKey
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].value #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].customer_id #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].enabled #=> Boolean
    #   resp.data.items[0].created_date #=> Time
    #   resp.data.items[0].last_updated_date #=> Time
    #   resp.data.items[0].stage_keys #=> Array<String>
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.position #=> String
    #
    def get_api_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApiKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApiKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApiKeys
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetApiKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApiKeys,
        stubs: @stubs,
        params_class: Params::GetApiKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_api_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe an existing Authorizer resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAuthorizerInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :authorizer_id
    #   <p>The identifier of the Authorizer resource.</p>
    #
    # @return [Types::GetAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorizer(
    #     rest_api_id: 'restApiId', # required
    #     authorizer_id: 'authorizerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAuthorizerOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.type #=> String, one of ["TOKEN", "REQUEST", "COGNITO_USER_POOLS"]
    #   resp.data.provider_ar_ns #=> Array<String>
    #   resp.data.provider_ar_ns[0] #=> String
    #   resp.data.auth_type #=> String
    #   resp.data.authorizer_uri #=> String
    #   resp.data.authorizer_credentials #=> String
    #   resp.data.identity_source #=> String
    #   resp.data.identity_validation_expression #=> String
    #   resp.data.authorizer_result_ttl_in_seconds #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Describe an existing Authorizers resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAuthorizersInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetAuthorizersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorizers(
    #     rest_api_id: 'restApiId', # required
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAuthorizersOutput
    #   resp.data.items #=> Array<Authorizer>
    #   resp.data.items[0] #=> Types::Authorizer
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].type #=> String, one of ["TOKEN", "REQUEST", "COGNITO_USER_POOLS"]
    #   resp.data.items[0].provider_ar_ns #=> Array<String>
    #   resp.data.items[0].provider_ar_ns[0] #=> String
    #   resp.data.items[0].auth_type #=> String
    #   resp.data.items[0].authorizer_uri #=> String
    #   resp.data.items[0].authorizer_credentials #=> String
    #   resp.data.items[0].identity_source #=> String
    #   resp.data.items[0].identity_validation_expression #=> String
    #   resp.data.items[0].authorizer_result_ttl_in_seconds #=> Integer
    #   resp.data.position #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Describe a BasePathMapping resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBasePathMappingInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name of the BasePathMapping resource to be described.</p>
    #
    # @option params [String] :base_path
    #   <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify any base path name after the domain name.</p>
    #
    # @return [Types::GetBasePathMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_base_path_mapping(
    #     domain_name: 'domainName', # required
    #     base_path: 'basePath' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBasePathMappingOutput
    #   resp.data.base_path #=> String
    #   resp.data.rest_api_id #=> String
    #   resp.data.stage #=> String
    #
    def get_base_path_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBasePathMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBasePathMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBasePathMapping
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetBasePathMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBasePathMapping,
        stubs: @stubs,
        params_class: Params::GetBasePathMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_base_path_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents a collection of BasePathMapping resources.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBasePathMappingsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name of a BasePathMapping resource.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetBasePathMappingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_base_path_mappings(
    #     domain_name: 'domainName', # required
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBasePathMappingsOutput
    #   resp.data.items #=> Array<BasePathMapping>
    #   resp.data.items[0] #=> Types::BasePathMapping
    #   resp.data.items[0].base_path #=> String
    #   resp.data.items[0].rest_api_id #=> String
    #   resp.data.items[0].stage #=> String
    #   resp.data.position #=> String
    #
    def get_base_path_mappings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBasePathMappingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBasePathMappingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBasePathMappings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetBasePathMappings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBasePathMappings,
        stubs: @stubs,
        params_class: Params::GetBasePathMappingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_base_path_mappings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the current ClientCertificate resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetClientCertificateInput}.
    #
    # @option params [String] :client_certificate_id
    #   <p>The identifier of the ClientCertificate resource to be described.</p>
    #
    # @return [Types::GetClientCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_client_certificate(
    #     client_certificate_id: 'clientCertificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetClientCertificateOutput
    #   resp.data.client_certificate_id #=> String
    #   resp.data.description #=> String
    #   resp.data.pem_encoded_certificate #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.expiration_date #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_client_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetClientCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetClientCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetClientCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetClientCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetClientCertificate,
        stubs: @stubs,
        params_class: Params::GetClientCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_client_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a collection of ClientCertificate resources.</p>
    #
    # @param [Hash] params
    #   See {Types::GetClientCertificatesInput}.
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetClientCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_client_certificates(
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetClientCertificatesOutput
    #   resp.data.items #=> Array<ClientCertificate>
    #   resp.data.items[0] #=> Types::ClientCertificate
    #   resp.data.items[0].client_certificate_id #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].pem_encoded_certificate #=> String
    #   resp.data.items[0].created_date #=> Time
    #   resp.data.items[0].expiration_date #=> Time
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.position #=> String
    #
    def get_client_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetClientCertificatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetClientCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetClientCertificates
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetClientCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetClientCertificates,
        stubs: @stubs,
        params_class: Params::GetClientCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_client_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a Deployment resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The identifier of the Deployment resource to get information about.</p>
    #
    # @option params [Array<String>] :embed
    #   <p>A query parameter to retrieve the specified embedded resources of the returned Deployment resource in the response. In a REST API call, this <code>embed</code> parameter value is a list of comma-separated strings, as in  <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2</code>. The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the <code>"apisummary"</code> string.  For example, <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary</code>.</p>
    #
    # @return [Types::GetDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment(
    #     rest_api_id: 'restApiId', # required
    #     deployment_id: 'deploymentId', # required
    #     embed: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentOutput
    #   resp.data.id #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.api_summary #=> Hash<String, Hash<String, MethodSnapshot>>
    #   resp.data.api_summary['key'] #=> Hash<String, MethodSnapshot>
    #   resp.data.api_summary['key']['key'] #=> Types::MethodSnapshot
    #   resp.data.api_summary['key']['key'].authorization_type #=> String
    #   resp.data.api_summary['key']['key'].api_key_required #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ServiceUnavailableException, Errors::BadRequestException]),
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

    # <p>Gets information about a Deployments collection.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentsInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployments(
    #     rest_api_id: 'restApiId', # required
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentsOutput
    #   resp.data.items #=> Array<Deployment>
    #   resp.data.items[0] #=> Types::Deployment
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].created_date #=> Time
    #   resp.data.items[0].api_summary #=> Hash<String, Hash<String, MethodSnapshot>>
    #   resp.data.items[0].api_summary['key'] #=> Hash<String, MethodSnapshot>
    #   resp.data.items[0].api_summary['key']['key'] #=> Types::MethodSnapshot
    #   resp.data.items[0].api_summary['key']['key'].authorization_type #=> String
    #   resp.data.items[0].api_summary['key']['key'].api_key_required #=> Boolean
    #   resp.data.position #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ServiceUnavailableException, Errors::BadRequestException]),
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

    # <p>Gets a documentation part.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDocumentationPartInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :documentation_part_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @return [Types::GetDocumentationPartOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_documentation_part(
    #     rest_api_id: 'restApiId', # required
    #     documentation_part_id: 'documentationPartId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDocumentationPartOutput
    #   resp.data.id #=> String
    #   resp.data.location #=> Types::DocumentationPartLocation
    #   resp.data.location.type #=> String, one of ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"]
    #   resp.data.location.path #=> String
    #   resp.data.location.member_method #=> String
    #   resp.data.location.status_code #=> String
    #   resp.data.location.name #=> String
    #   resp.data.properties #=> String
    #
    def get_documentation_part(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDocumentationPartInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDocumentationPartInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDocumentationPart
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetDocumentationPart
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDocumentationPart,
        stubs: @stubs,
        params_class: Params::GetDocumentationPartOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_documentation_part
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets documentation parts.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDocumentationPartsInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :type
    #   <p>The type of API entities of the to-be-retrieved documentation parts. </p>
    #
    # @option params [String] :name_query
    #   <p>The name of API entities of the to-be-retrieved documentation parts.</p>
    #
    # @option params [String] :path
    #   <p>The path of API entities of the to-be-retrieved documentation parts.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @option params [String] :location_status
    #   <p>The status of the API documentation parts to retrieve. Valid values are <code>DOCUMENTED</code> for retrieving DocumentationPart resources with content and <code>UNDOCUMENTED</code> for DocumentationPart resources without content.</p>
    #
    # @return [Types::GetDocumentationPartsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_documentation_parts(
    #     rest_api_id: 'restApiId', # required
    #     type: 'API', # accepts ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"]
    #     name_query: 'nameQuery',
    #     path: 'path',
    #     position: 'position',
    #     limit: 1,
    #     location_status: 'DOCUMENTED' # accepts ["DOCUMENTED", "UNDOCUMENTED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDocumentationPartsOutput
    #   resp.data.items #=> Array<DocumentationPart>
    #   resp.data.items[0] #=> Types::DocumentationPart
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].location #=> Types::DocumentationPartLocation
    #   resp.data.items[0].location.type #=> String, one of ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"]
    #   resp.data.items[0].location.path #=> String
    #   resp.data.items[0].location.member_method #=> String
    #   resp.data.items[0].location.status_code #=> String
    #   resp.data.items[0].location.name #=> String
    #   resp.data.items[0].properties #=> String
    #   resp.data.position #=> String
    #
    def get_documentation_parts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDocumentationPartsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDocumentationPartsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDocumentationParts
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetDocumentationParts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDocumentationParts,
        stubs: @stubs,
        params_class: Params::GetDocumentationPartsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_documentation_parts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a documentation version.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDocumentationVersionInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :documentation_version
    #   <p>The version identifier of the to-be-retrieved documentation snapshot.</p>
    #
    # @return [Types::GetDocumentationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_documentation_version(
    #     rest_api_id: 'restApiId', # required
    #     documentation_version: 'documentationVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDocumentationVersionOutput
    #   resp.data.version #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.description #=> String
    #
    def get_documentation_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDocumentationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDocumentationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDocumentationVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetDocumentationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDocumentationVersion,
        stubs: @stubs,
        params_class: Params::GetDocumentationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_documentation_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets documentation versions.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDocumentationVersionsInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetDocumentationVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_documentation_versions(
    #     rest_api_id: 'restApiId', # required
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDocumentationVersionsOutput
    #   resp.data.items #=> Array<DocumentationVersion>
    #   resp.data.items[0] #=> Types::DocumentationVersion
    #   resp.data.items[0].version #=> String
    #   resp.data.items[0].created_date #=> Time
    #   resp.data.items[0].description #=> String
    #   resp.data.position #=> String
    #
    def get_documentation_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDocumentationVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDocumentationVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDocumentationVersions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetDocumentationVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDocumentationVersions,
        stubs: @stubs,
        params_class: Params::GetDocumentationVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_documentation_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents a domain name that is contained in a simpler, more intuitive URL that can be called.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the DomainName resource.</p>
    #
    # @return [Types::GetDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_name(
    #     domain_name: 'domainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainNameOutput
    #   resp.data.domain_name #=> String
    #   resp.data.certificate_name #=> String
    #   resp.data.certificate_arn #=> String
    #   resp.data.certificate_upload_date #=> Time
    #   resp.data.regional_domain_name #=> String
    #   resp.data.regional_hosted_zone_id #=> String
    #   resp.data.regional_certificate_name #=> String
    #   resp.data.regional_certificate_arn #=> String
    #   resp.data.distribution_domain_name #=> String
    #   resp.data.distribution_hosted_zone_id #=> String
    #   resp.data.endpoint_configuration #=> Types::EndpointConfiguration
    #   resp.data.endpoint_configuration.types #=> Array<String>
    #   resp.data.endpoint_configuration.types[0] #=> String, one of ["REGIONAL", "EDGE", "PRIVATE"]
    #   resp.data.endpoint_configuration.vpc_endpoint_ids #=> Array<String>
    #   resp.data.endpoint_configuration.vpc_endpoint_ids[0] #=> String
    #   resp.data.domain_name_status #=> String, one of ["AVAILABLE", "UPDATING", "PENDING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"]
    #   resp.data.domain_name_status_message #=> String
    #   resp.data.security_policy #=> String, one of ["TLS_1_0", "TLS_1_2"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.mutual_tls_authentication #=> Types::MutualTlsAuthentication
    #   resp.data.mutual_tls_authentication.truststore_uri #=> String
    #   resp.data.mutual_tls_authentication.truststore_version #=> String
    #   resp.data.mutual_tls_authentication.truststore_warnings #=> Array<String>
    #   resp.data.ownership_verification_certificate_arn #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Represents a collection of DomainName resources.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainNamesInput}.
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetDomainNamesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_names(
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainNamesOutput
    #   resp.data.items #=> Array<DomainName>
    #   resp.data.items[0] #=> Types::DomainName
    #   resp.data.items[0].domain_name #=> String
    #   resp.data.items[0].certificate_name #=> String
    #   resp.data.items[0].certificate_arn #=> String
    #   resp.data.items[0].certificate_upload_date #=> Time
    #   resp.data.items[0].regional_domain_name #=> String
    #   resp.data.items[0].regional_hosted_zone_id #=> String
    #   resp.data.items[0].regional_certificate_name #=> String
    #   resp.data.items[0].regional_certificate_arn #=> String
    #   resp.data.items[0].distribution_domain_name #=> String
    #   resp.data.items[0].distribution_hosted_zone_id #=> String
    #   resp.data.items[0].endpoint_configuration #=> Types::EndpointConfiguration
    #   resp.data.items[0].endpoint_configuration.types #=> Array<String>
    #   resp.data.items[0].endpoint_configuration.types[0] #=> String, one of ["REGIONAL", "EDGE", "PRIVATE"]
    #   resp.data.items[0].endpoint_configuration.vpc_endpoint_ids #=> Array<String>
    #   resp.data.items[0].endpoint_configuration.vpc_endpoint_ids[0] #=> String
    #   resp.data.items[0].domain_name_status #=> String, one of ["AVAILABLE", "UPDATING", "PENDING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"]
    #   resp.data.items[0].domain_name_status_message #=> String
    #   resp.data.items[0].security_policy #=> String, one of ["TLS_1_0", "TLS_1_2"]
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].mutual_tls_authentication #=> Types::MutualTlsAuthentication
    #   resp.data.items[0].mutual_tls_authentication.truststore_uri #=> String
    #   resp.data.items[0].mutual_tls_authentication.truststore_version #=> String
    #   resp.data.items[0].mutual_tls_authentication.truststore_warnings #=> Array<String>
    #   resp.data.items[0].ownership_verification_certificate_arn #=> String
    #   resp.data.position #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Exports a deployed version of a RestApi in a specified format.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExportInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the Stage that will be exported.</p>
    #
    # @option params [String] :export_type
    #   <p>The type of export. Acceptable values are 'oas30' for OpenAPI 3.0.x and 'swagger' for Swagger/OpenAPI 2.0.</p>
    #
    # @option params [Hash<String, String>] :parameters
    #   <p>A key-value map of query string parameters that specify properties of the export, depending on the requested <code>exportType</code>. For <code>exportType</code>
    #               <code>oas30</code> and <code>swagger</code>, any combination of the following parameters are supported: <code>extensions='integrations'</code> or <code>extensions='apigateway'</code> will export the API with x-amazon-apigateway-integration extensions. <code>extensions='authorizers'</code> will export the API with  x-amazon-apigateway-authorizer extensions. <code>postman</code> will export the API with Postman extensions, allowing for import to the Postman tool</p>
    #
    # @option params [String] :accepts
    #   <p>The content-type of the export, for example <code>application/json</code>. Currently <code>application/json</code> and <code>application/yaml</code> are supported for <code>exportType</code> of<code>oas30</code> and <code>swagger</code>. This should be specified in the <code>Accept</code> header for direct API requests.</p>
    #
    # @return [Types::GetExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_export(
    #     rest_api_id: 'restApiId', # required
    #     stage_name: 'stageName', # required
    #     export_type: 'exportType', # required
    #     parameters: {
    #       'key' => 'value'
    #     },
    #     accepts: 'accepts'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExportOutput
    #   resp.data.content_type #=> String
    #   resp.data.content_disposition #=> String
    #   resp.data.body #=> String
    #
    def get_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExport
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExport,
        stubs: @stubs,
        params_class: Params::GetExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a GatewayResponse of a specified response type on the given RestApi.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGatewayResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    #
    # @return [Types::GetGatewayResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway_response(
    #     rest_api_id: 'restApiId', # required
    #     response_type: 'DEFAULT_4XX' # required - accepts ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGatewayResponseOutput
    #   resp.data.response_type #=> String, one of ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"]
    #   resp.data.status_code #=> String
    #   resp.data.response_parameters #=> Hash<String, String>
    #   resp.data.response_parameters['key'] #=> String
    #   resp.data.response_templates #=> Hash<String, String>
    #   resp.data.default_response #=> Boolean
    #
    def get_gateway_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGatewayResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGatewayResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGatewayResponse
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetGatewayResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGatewayResponse,
        stubs: @stubs,
        params_class: Params::GetGatewayResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_gateway_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGatewayResponsesInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set. The GatewayResponse collection does not support pagination and the position does not apply here.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500. The GatewayResponses collection does not support pagination and the limit does not apply here.</p>
    #
    # @return [Types::GetGatewayResponsesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway_responses(
    #     rest_api_id: 'restApiId', # required
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGatewayResponsesOutput
    #   resp.data.items #=> Array<GatewayResponse>
    #   resp.data.items[0] #=> Types::GatewayResponse
    #   resp.data.items[0].response_type #=> String, one of ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"]
    #   resp.data.items[0].status_code #=> String
    #   resp.data.items[0].response_parameters #=> Hash<String, String>
    #   resp.data.items[0].response_parameters['key'] #=> String
    #   resp.data.items[0].response_templates #=> Hash<String, String>
    #   resp.data.items[0].default_response #=> Boolean
    #   resp.data.position #=> String
    #
    def get_gateway_responses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGatewayResponsesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGatewayResponsesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGatewayResponses
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetGatewayResponses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGatewayResponses,
        stubs: @stubs,
        params_class: Params::GetGatewayResponsesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_gateway_responses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the integration settings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIntegrationInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>Specifies a get integration request's resource identifier</p>
    #
    # @option params [String] :http_method
    #   <p>Specifies a get integration request's HTTP method.</p>
    #
    # @return [Types::GetIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntegrationOutput
    #   resp.data.type #=> String, one of ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.http_method #=> String
    #   resp.data.uri #=> String
    #   resp.data.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.connection_id #=> String
    #   resp.data.credentials #=> String
    #   resp.data.request_parameters #=> Hash<String, String>
    #   resp.data.request_parameters['key'] #=> String
    #   resp.data.request_templates #=> Hash<String, String>
    #   resp.data.passthrough_behavior #=> String
    #   resp.data.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.timeout_in_millis #=> Integer
    #   resp.data.cache_namespace #=> String
    #   resp.data.cache_key_parameters #=> Array<String>
    #   resp.data.cache_key_parameters[0] #=> String
    #   resp.data.integration_responses #=> Hash<String, IntegrationResponse>
    #   resp.data.integration_responses['key'] #=> Types::IntegrationResponse
    #   resp.data.integration_responses['key'].status_code #=> String
    #   resp.data.integration_responses['key'].selection_pattern #=> String
    #   resp.data.integration_responses['key'].response_parameters #=> Hash<String, String>
    #   resp.data.integration_responses['key'].response_templates #=> Hash<String, String>
    #   resp.data.integration_responses['key'].content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.tls_config #=> Types::TlsConfig
    #   resp.data.tls_config.insecure_skip_verification #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Represents a get integration response.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIntegrationResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>Specifies a get integration response request's resource identifier.</p>
    #
    # @option params [String] :http_method
    #   <p>Specifies a get integration response request's HTTP method.</p>
    #
    # @option params [String] :status_code
    #   <p>Specifies a get integration response request's status code.</p>
    #
    # @return [Types::GetIntegrationResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration_response(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     status_code: 'statusCode' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntegrationResponseOutput
    #   resp.data.status_code #=> String
    #   resp.data.selection_pattern #=> String
    #   resp.data.response_parameters #=> Hash<String, String>
    #   resp.data.response_parameters['key'] #=> String
    #   resp.data.response_templates #=> Hash<String, String>
    #   resp.data.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Describe an existing Method resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMethodInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    #
    # @option params [String] :http_method
    #   <p>Specifies the method request's HTTP method type.</p>
    #
    # @return [Types::GetMethodOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_method(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMethodOutput
    #   resp.data.http_method #=> String
    #   resp.data.authorization_type #=> String
    #   resp.data.authorizer_id #=> String
    #   resp.data.api_key_required #=> Boolean
    #   resp.data.request_validator_id #=> String
    #   resp.data.operation_name #=> String
    #   resp.data.request_parameters #=> Hash<String, Boolean>
    #   resp.data.request_parameters['key'] #=> Boolean
    #   resp.data.request_models #=> Hash<String, String>
    #   resp.data.request_models['key'] #=> String
    #   resp.data.method_responses #=> Hash<String, MethodResponse>
    #   resp.data.method_responses['key'] #=> Types::MethodResponse
    #   resp.data.method_responses['key'].status_code #=> String
    #   resp.data.method_responses['key'].response_parameters #=> Hash<String, Boolean>
    #   resp.data.method_responses['key'].response_models #=> Hash<String, String>
    #   resp.data.method_integration #=> Types::Integration
    #   resp.data.method_integration.type #=> String, one of ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.method_integration.http_method #=> String
    #   resp.data.method_integration.uri #=> String
    #   resp.data.method_integration.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.method_integration.connection_id #=> String
    #   resp.data.method_integration.credentials #=> String
    #   resp.data.method_integration.request_parameters #=> Hash<String, String>
    #   resp.data.method_integration.request_templates #=> Hash<String, String>
    #   resp.data.method_integration.passthrough_behavior #=> String
    #   resp.data.method_integration.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.method_integration.timeout_in_millis #=> Integer
    #   resp.data.method_integration.cache_namespace #=> String
    #   resp.data.method_integration.cache_key_parameters #=> Array<String>
    #   resp.data.method_integration.cache_key_parameters[0] #=> String
    #   resp.data.method_integration.integration_responses #=> Hash<String, IntegrationResponse>
    #   resp.data.method_integration.integration_responses['key'] #=> Types::IntegrationResponse
    #   resp.data.method_integration.integration_responses['key'].status_code #=> String
    #   resp.data.method_integration.integration_responses['key'].selection_pattern #=> String
    #   resp.data.method_integration.integration_responses['key'].response_parameters #=> Hash<String, String>
    #   resp.data.method_integration.integration_responses['key'].response_templates #=> Hash<String, String>
    #   resp.data.method_integration.integration_responses['key'].content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.method_integration.tls_config #=> Types::TlsConfig
    #   resp.data.method_integration.tls_config.insecure_skip_verification #=> Boolean
    #   resp.data.authorization_scopes #=> Array<String>
    #
    def get_method(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMethodInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMethodInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMethod
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetMethod
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMethod,
        stubs: @stubs,
        params_class: Params::GetMethodOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_method
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a MethodResponse resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMethodResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the MethodResponse resource.</p>
    #
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #
    # @option params [String] :status_code
    #   <p>The status code for the MethodResponse resource.</p>
    #
    # @return [Types::GetMethodResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_method_response(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     status_code: 'statusCode' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMethodResponseOutput
    #   resp.data.status_code #=> String
    #   resp.data.response_parameters #=> Hash<String, Boolean>
    #   resp.data.response_parameters['key'] #=> Boolean
    #   resp.data.response_models #=> Hash<String, String>
    #   resp.data.response_models['key'] #=> String
    #
    def get_method_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMethodResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMethodResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMethodResponse
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetMethodResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMethodResponse,
        stubs: @stubs,
        params_class: Params::GetMethodResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_method_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing model defined for a RestApi resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetModelInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The RestApi identifier under which the Model exists.</p>
    #
    # @option params [String] :model_name
    #   <p>The name of the model as an identifier.</p>
    #
    # @option params [Boolean] :flatten
    #   <p>A query parameter of a Boolean value to resolve (<code>true</code>) all external model references and returns a flattened model schema or not (<code>false</code>) The default is <code>false</code>.</p>
    #
    # @return [Types::GetModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model(
    #     rest_api_id: 'restApiId', # required
    #     model_name: 'modelName', # required
    #     flatten: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetModelOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.schema #=> String
    #   resp.data.content_type #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Generates a sample mapping template that can be used to transform a payload into the structure of a model.</p>
    #
    # @param [Hash] params
    #   See {Types::GetModelTemplateInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :model_name
    #   <p>The name of the model for which to generate a template.</p>
    #
    # @return [Types::GetModelTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_template(
    #     rest_api_id: 'restApiId', # required
    #     model_name: 'modelName' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Describes existing Models defined for a RestApi resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetModelsInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_models(
    #     rest_api_id: 'restApiId', # required
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetModelsOutput
    #   resp.data.items #=> Array<Model>
    #   resp.data.items[0] #=> Types::Model
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].schema #=> String
    #   resp.data.items[0].content_type #=> String
    #   resp.data.position #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Gets a RequestValidator of a given RestApi.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRequestValidatorInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :request_validator_id
    #   <p>The identifier of the RequestValidator to be retrieved.</p>
    #
    # @return [Types::GetRequestValidatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_request_validator(
    #     rest_api_id: 'restApiId', # required
    #     request_validator_id: 'requestValidatorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRequestValidatorOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.validate_request_body #=> Boolean
    #   resp.data.validate_request_parameters #=> Boolean
    #
    def get_request_validator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRequestValidatorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRequestValidatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRequestValidator
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetRequestValidator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRequestValidator,
        stubs: @stubs,
        params_class: Params::GetRequestValidatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_request_validator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the RequestValidators collection of a given RestApi.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRequestValidatorsInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetRequestValidatorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_request_validators(
    #     rest_api_id: 'restApiId', # required
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRequestValidatorsOutput
    #   resp.data.items #=> Array<RequestValidator>
    #   resp.data.items[0] #=> Types::RequestValidator
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].validate_request_body #=> Boolean
    #   resp.data.items[0].validate_request_parameters #=> Boolean
    #   resp.data.position #=> String
    #
    def get_request_validators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRequestValidatorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRequestValidatorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRequestValidators
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetRequestValidators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRequestValidators,
        stubs: @stubs,
        params_class: Params::GetRequestValidatorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_request_validators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier for the Resource resource.</p>
    #
    # @option params [Array<String>] :embed
    #   <p>A query parameter to retrieve the specified resources embedded in the returned Resource representation in the response. This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code>.</p>
    #
    # @return [Types::GetResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     embed: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceOutput
    #   resp.data.id #=> String
    #   resp.data.parent_id #=> String
    #   resp.data.path_part #=> String
    #   resp.data.path #=> String
    #   resp.data.resource_methods #=> Hash<String, Method>
    #   resp.data.resource_methods['key'] #=> Types::Method
    #   resp.data.resource_methods['key'].http_method #=> String
    #   resp.data.resource_methods['key'].authorization_type #=> String
    #   resp.data.resource_methods['key'].authorizer_id #=> String
    #   resp.data.resource_methods['key'].api_key_required #=> Boolean
    #   resp.data.resource_methods['key'].request_validator_id #=> String
    #   resp.data.resource_methods['key'].operation_name #=> String
    #   resp.data.resource_methods['key'].request_parameters #=> Hash<String, Boolean>
    #   resp.data.resource_methods['key'].request_parameters['key'] #=> Boolean
    #   resp.data.resource_methods['key'].request_models #=> Hash<String, String>
    #   resp.data.resource_methods['key'].request_models['key'] #=> String
    #   resp.data.resource_methods['key'].method_responses #=> Hash<String, MethodResponse>
    #   resp.data.resource_methods['key'].method_responses['key'] #=> Types::MethodResponse
    #   resp.data.resource_methods['key'].method_responses['key'].status_code #=> String
    #   resp.data.resource_methods['key'].method_responses['key'].response_parameters #=> Hash<String, Boolean>
    #   resp.data.resource_methods['key'].method_responses['key'].response_models #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration #=> Types::Integration
    #   resp.data.resource_methods['key'].method_integration.type #=> String, one of ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.resource_methods['key'].method_integration.http_method #=> String
    #   resp.data.resource_methods['key'].method_integration.uri #=> String
    #   resp.data.resource_methods['key'].method_integration.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.resource_methods['key'].method_integration.connection_id #=> String
    #   resp.data.resource_methods['key'].method_integration.credentials #=> String
    #   resp.data.resource_methods['key'].method_integration.request_parameters #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.request_templates #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.passthrough_behavior #=> String
    #   resp.data.resource_methods['key'].method_integration.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.resource_methods['key'].method_integration.timeout_in_millis #=> Integer
    #   resp.data.resource_methods['key'].method_integration.cache_namespace #=> String
    #   resp.data.resource_methods['key'].method_integration.cache_key_parameters #=> Array<String>
    #   resp.data.resource_methods['key'].method_integration.cache_key_parameters[0] #=> String
    #   resp.data.resource_methods['key'].method_integration.integration_responses #=> Hash<String, IntegrationResponse>
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'] #=> Types::IntegrationResponse
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].status_code #=> String
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].selection_pattern #=> String
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].response_parameters #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].response_templates #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.resource_methods['key'].method_integration.tls_config #=> Types::TlsConfig
    #   resp.data.resource_methods['key'].method_integration.tls_config.insecure_skip_verification #=> Boolean
    #   resp.data.resource_methods['key'].authorization_scopes #=> Array<String>
    #
    def get_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResource
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResource,
        stubs: @stubs,
        params_class: Params::GetResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about a collection of Resource resources.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourcesInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @option params [Array<String>] :embed
    #   <p>A query parameter used to retrieve the specified resources embedded in the returned Resources resource in the response.  This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources?embed=methods</code>.</p>
    #
    # @return [Types::GetResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resources(
    #     rest_api_id: 'restApiId', # required
    #     position: 'position',
    #     limit: 1,
    #     embed: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourcesOutput
    #   resp.data.items #=> Array<Resource>
    #   resp.data.items[0] #=> Types::Resource
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].parent_id #=> String
    #   resp.data.items[0].path_part #=> String
    #   resp.data.items[0].path #=> String
    #   resp.data.items[0].resource_methods #=> Hash<String, Method>
    #   resp.data.items[0].resource_methods['key'] #=> Types::Method
    #   resp.data.items[0].resource_methods['key'].http_method #=> String
    #   resp.data.items[0].resource_methods['key'].authorization_type #=> String
    #   resp.data.items[0].resource_methods['key'].authorizer_id #=> String
    #   resp.data.items[0].resource_methods['key'].api_key_required #=> Boolean
    #   resp.data.items[0].resource_methods['key'].request_validator_id #=> String
    #   resp.data.items[0].resource_methods['key'].operation_name #=> String
    #   resp.data.items[0].resource_methods['key'].request_parameters #=> Hash<String, Boolean>
    #   resp.data.items[0].resource_methods['key'].request_parameters['key'] #=> Boolean
    #   resp.data.items[0].resource_methods['key'].request_models #=> Hash<String, String>
    #   resp.data.items[0].resource_methods['key'].request_models['key'] #=> String
    #   resp.data.items[0].resource_methods['key'].method_responses #=> Hash<String, MethodResponse>
    #   resp.data.items[0].resource_methods['key'].method_responses['key'] #=> Types::MethodResponse
    #   resp.data.items[0].resource_methods['key'].method_responses['key'].status_code #=> String
    #   resp.data.items[0].resource_methods['key'].method_responses['key'].response_parameters #=> Hash<String, Boolean>
    #   resp.data.items[0].resource_methods['key'].method_responses['key'].response_models #=> Hash<String, String>
    #   resp.data.items[0].resource_methods['key'].method_integration #=> Types::Integration
    #   resp.data.items[0].resource_methods['key'].method_integration.type #=> String, one of ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.items[0].resource_methods['key'].method_integration.http_method #=> String
    #   resp.data.items[0].resource_methods['key'].method_integration.uri #=> String
    #   resp.data.items[0].resource_methods['key'].method_integration.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.items[0].resource_methods['key'].method_integration.connection_id #=> String
    #   resp.data.items[0].resource_methods['key'].method_integration.credentials #=> String
    #   resp.data.items[0].resource_methods['key'].method_integration.request_parameters #=> Hash<String, String>
    #   resp.data.items[0].resource_methods['key'].method_integration.request_templates #=> Hash<String, String>
    #   resp.data.items[0].resource_methods['key'].method_integration.passthrough_behavior #=> String
    #   resp.data.items[0].resource_methods['key'].method_integration.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.items[0].resource_methods['key'].method_integration.timeout_in_millis #=> Integer
    #   resp.data.items[0].resource_methods['key'].method_integration.cache_namespace #=> String
    #   resp.data.items[0].resource_methods['key'].method_integration.cache_key_parameters #=> Array<String>
    #   resp.data.items[0].resource_methods['key'].method_integration.cache_key_parameters[0] #=> String
    #   resp.data.items[0].resource_methods['key'].method_integration.integration_responses #=> Hash<String, IntegrationResponse>
    #   resp.data.items[0].resource_methods['key'].method_integration.integration_responses['key'] #=> Types::IntegrationResponse
    #   resp.data.items[0].resource_methods['key'].method_integration.integration_responses['key'].status_code #=> String
    #   resp.data.items[0].resource_methods['key'].method_integration.integration_responses['key'].selection_pattern #=> String
    #   resp.data.items[0].resource_methods['key'].method_integration.integration_responses['key'].response_parameters #=> Hash<String, String>
    #   resp.data.items[0].resource_methods['key'].method_integration.integration_responses['key'].response_templates #=> Hash<String, String>
    #   resp.data.items[0].resource_methods['key'].method_integration.integration_responses['key'].content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.items[0].resource_methods['key'].method_integration.tls_config #=> Types::TlsConfig
    #   resp.data.items[0].resource_methods['key'].method_integration.tls_config.insecure_skip_verification #=> Boolean
    #   resp.data.items[0].resource_methods['key'].authorization_scopes #=> Array<String>
    #   resp.data.position #=> String
    #
    def get_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResources
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResources,
        stubs: @stubs,
        params_class: Params::GetResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the RestApi resource in the collection.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRestApiInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @return [Types::GetRestApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rest_api(
    #     rest_api_id: 'restApiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRestApiOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.warnings #=> Array<String>
    #   resp.data.warnings[0] #=> String
    #   resp.data.binary_media_types #=> Array<String>
    #   resp.data.minimum_compression_size #=> Integer
    #   resp.data.api_key_source #=> String, one of ["HEADER", "AUTHORIZER"]
    #   resp.data.endpoint_configuration #=> Types::EndpointConfiguration
    #   resp.data.endpoint_configuration.types #=> Array<String>
    #   resp.data.endpoint_configuration.types[0] #=> String, one of ["REGIONAL", "EDGE", "PRIVATE"]
    #   resp.data.endpoint_configuration.vpc_endpoint_ids #=> Array<String>
    #   resp.data.policy #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.disable_execute_api_endpoint #=> Boolean
    #
    def get_rest_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRestApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRestApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRestApi
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetRestApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRestApi,
        stubs: @stubs,
        params_class: Params::GetRestApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_rest_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the RestApis resources for your collection.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRestApisInput}.
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetRestApisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rest_apis(
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRestApisOutput
    #   resp.data.items #=> Array<RestApi>
    #   resp.data.items[0] #=> Types::RestApi
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].created_date #=> Time
    #   resp.data.items[0].version #=> String
    #   resp.data.items[0].warnings #=> Array<String>
    #   resp.data.items[0].warnings[0] #=> String
    #   resp.data.items[0].binary_media_types #=> Array<String>
    #   resp.data.items[0].minimum_compression_size #=> Integer
    #   resp.data.items[0].api_key_source #=> String, one of ["HEADER", "AUTHORIZER"]
    #   resp.data.items[0].endpoint_configuration #=> Types::EndpointConfiguration
    #   resp.data.items[0].endpoint_configuration.types #=> Array<String>
    #   resp.data.items[0].endpoint_configuration.types[0] #=> String, one of ["REGIONAL", "EDGE", "PRIVATE"]
    #   resp.data.items[0].endpoint_configuration.vpc_endpoint_ids #=> Array<String>
    #   resp.data.items[0].policy #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].disable_execute_api_endpoint #=> Boolean
    #   resp.data.position #=> String
    #
    def get_rest_apis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRestApisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRestApisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRestApis
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetRestApis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRestApis,
        stubs: @stubs,
        params_class: Params::GetRestApisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_rest_apis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a client SDK for a RestApi and Stage.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSdkInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the Stage that the SDK will use.</p>
    #
    # @option params [String] :sdk_type
    #   <p>The language for the generated SDK. Currently <code>java</code>, <code>javascript</code>, <code>android</code>, <code>objectivec</code> (for iOS), <code>swift</code> (for iOS), and <code>ruby</code>  are supported.</p>
    #
    # @option params [Hash<String, String>] :parameters
    #   <p>A string-to-string key-value map of query parameters <code>sdkType</code>-dependent properties of the SDK. For <code>sdkType</code> of <code>objectivec</code> or <code>swift</code>,  a parameter named <code>classPrefix</code> is required. For <code>sdkType</code> of <code>android</code>, parameters named <code>groupId</code>, <code>artifactId</code>, <code>artifactVersion</code>, and <code>invokerPackage</code> are required. For <code>sdkType</code> of <code>java</code>, parameters named <code>serviceName</code> and <code>javaPackageName</code> are required. </p>
    #
    # @return [Types::GetSdkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sdk(
    #     rest_api_id: 'restApiId', # required
    #     stage_name: 'stageName', # required
    #     sdk_type: 'sdkType', # required
    #     parameters: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSdkOutput
    #   resp.data.content_type #=> String
    #   resp.data.content_disposition #=> String
    #   resp.data.body #=> String
    #
    def get_sdk(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSdkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSdkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSdk
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetSdk
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSdk,
        stubs: @stubs,
        params_class: Params::GetSdkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sdk
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an SDK type.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSdkTypeInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the queried SdkType instance.</p>
    #
    # @return [Types::GetSdkTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sdk_type(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSdkTypeOutput
    #   resp.data.id #=> String
    #   resp.data.friendly_name #=> String
    #   resp.data.description #=> String
    #   resp.data.configuration_properties #=> Array<SdkConfigurationProperty>
    #   resp.data.configuration_properties[0] #=> Types::SdkConfigurationProperty
    #   resp.data.configuration_properties[0].name #=> String
    #   resp.data.configuration_properties[0].friendly_name #=> String
    #   resp.data.configuration_properties[0].description #=> String
    #   resp.data.configuration_properties[0].required #=> Boolean
    #   resp.data.configuration_properties[0].default_value #=> String
    #
    def get_sdk_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSdkTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSdkTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSdkType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetSdkType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSdkType,
        stubs: @stubs,
        params_class: Params::GetSdkTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sdk_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets SDK types</p>
    #
    # @param [Hash] params
    #   See {Types::GetSdkTypesInput}.
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetSdkTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sdk_types(
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSdkTypesOutput
    #   resp.data.items #=> Array<SdkType>
    #   resp.data.items[0] #=> Types::SdkType
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].friendly_name #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].configuration_properties #=> Array<SdkConfigurationProperty>
    #   resp.data.items[0].configuration_properties[0] #=> Types::SdkConfigurationProperty
    #   resp.data.items[0].configuration_properties[0].name #=> String
    #   resp.data.items[0].configuration_properties[0].friendly_name #=> String
    #   resp.data.items[0].configuration_properties[0].description #=> String
    #   resp.data.items[0].configuration_properties[0].required #=> Boolean
    #   resp.data.items[0].configuration_properties[0].default_value #=> String
    #
    def get_sdk_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSdkTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSdkTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSdkTypes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetSdkTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSdkTypes,
        stubs: @stubs,
        params_class: Params::GetSdkTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sdk_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a Stage resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStageInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the Stage resource to get information about.</p>
    #
    # @return [Types::GetStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage(
    #     rest_api_id: 'restApiId', # required
    #     stage_name: 'stageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStageOutput
    #   resp.data.deployment_id #=> String
    #   resp.data.client_certificate_id #=> String
    #   resp.data.stage_name #=> String
    #   resp.data.description #=> String
    #   resp.data.cache_cluster_enabled #=> Boolean
    #   resp.data.cache_cluster_size #=> String, one of ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"]
    #   resp.data.cache_cluster_status #=> String, one of ["CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"]
    #   resp.data.method_settings #=> Hash<String, MethodSetting>
    #   resp.data.method_settings['key'] #=> Types::MethodSetting
    #   resp.data.method_settings['key'].metrics_enabled #=> Boolean
    #   resp.data.method_settings['key'].logging_level #=> String
    #   resp.data.method_settings['key'].data_trace_enabled #=> Boolean
    #   resp.data.method_settings['key'].throttling_burst_limit #=> Integer
    #   resp.data.method_settings['key'].throttling_rate_limit #=> Float
    #   resp.data.method_settings['key'].caching_enabled #=> Boolean
    #   resp.data.method_settings['key'].cache_ttl_in_seconds #=> Integer
    #   resp.data.method_settings['key'].cache_data_encrypted #=> Boolean
    #   resp.data.method_settings['key'].require_authorization_for_cache_control #=> Boolean
    #   resp.data.method_settings['key'].unauthorized_cache_control_header_strategy #=> String, one of ["FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"]
    #   resp.data.variables #=> Hash<String, String>
    #   resp.data.variables['key'] #=> String
    #   resp.data.documentation_version #=> String
    #   resp.data.access_log_settings #=> Types::AccessLogSettings
    #   resp.data.access_log_settings.format #=> String
    #   resp.data.access_log_settings.destination_arn #=> String
    #   resp.data.canary_settings #=> Types::CanarySettings
    #   resp.data.canary_settings.percent_traffic #=> Float
    #   resp.data.canary_settings.deployment_id #=> String
    #   resp.data.canary_settings.stage_variable_overrides #=> Hash<String, String>
    #   resp.data.canary_settings.use_stage_cache #=> Boolean
    #   resp.data.tracing_enabled #=> Boolean
    #   resp.data.web_acl_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.created_date #=> Time
    #   resp.data.last_updated_date #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Gets information about one or more Stage resources.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStagesInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The stages' deployment identifiers.</p>
    #
    # @return [Types::GetStagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stages(
    #     rest_api_id: 'restApiId', # required
    #     deployment_id: 'deploymentId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStagesOutput
    #   resp.data.item #=> Array<Stage>
    #   resp.data.item[0] #=> Types::Stage
    #   resp.data.item[0].deployment_id #=> String
    #   resp.data.item[0].client_certificate_id #=> String
    #   resp.data.item[0].stage_name #=> String
    #   resp.data.item[0].description #=> String
    #   resp.data.item[0].cache_cluster_enabled #=> Boolean
    #   resp.data.item[0].cache_cluster_size #=> String, one of ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"]
    #   resp.data.item[0].cache_cluster_status #=> String, one of ["CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"]
    #   resp.data.item[0].method_settings #=> Hash<String, MethodSetting>
    #   resp.data.item[0].method_settings['key'] #=> Types::MethodSetting
    #   resp.data.item[0].method_settings['key'].metrics_enabled #=> Boolean
    #   resp.data.item[0].method_settings['key'].logging_level #=> String
    #   resp.data.item[0].method_settings['key'].data_trace_enabled #=> Boolean
    #   resp.data.item[0].method_settings['key'].throttling_burst_limit #=> Integer
    #   resp.data.item[0].method_settings['key'].throttling_rate_limit #=> Float
    #   resp.data.item[0].method_settings['key'].caching_enabled #=> Boolean
    #   resp.data.item[0].method_settings['key'].cache_ttl_in_seconds #=> Integer
    #   resp.data.item[0].method_settings['key'].cache_data_encrypted #=> Boolean
    #   resp.data.item[0].method_settings['key'].require_authorization_for_cache_control #=> Boolean
    #   resp.data.item[0].method_settings['key'].unauthorized_cache_control_header_strategy #=> String, one of ["FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"]
    #   resp.data.item[0].variables #=> Hash<String, String>
    #   resp.data.item[0].variables['key'] #=> String
    #   resp.data.item[0].documentation_version #=> String
    #   resp.data.item[0].access_log_settings #=> Types::AccessLogSettings
    #   resp.data.item[0].access_log_settings.format #=> String
    #   resp.data.item[0].access_log_settings.destination_arn #=> String
    #   resp.data.item[0].canary_settings #=> Types::CanarySettings
    #   resp.data.item[0].canary_settings.percent_traffic #=> Float
    #   resp.data.item[0].canary_settings.deployment_id #=> String
    #   resp.data.item[0].canary_settings.stage_variable_overrides #=> Hash<String, String>
    #   resp.data.item[0].canary_settings.use_stage_cache #=> Boolean
    #   resp.data.item[0].tracing_enabled #=> Boolean
    #   resp.data.item[0].web_acl_arn #=> String
    #   resp.data.item[0].tags #=> Hash<String, String>
    #   resp.data.item[0].created_date #=> Time
    #   resp.data.item[0].last_updated_date #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Gets the Tags collection for a given resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTagsInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of a resource that can be tagged.</p>
    #
    # @option params [String] :position
    #   <p>(Not currently supported) The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>(Not currently supported) The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags(
    #     resource_arn: 'resourceArn', # required
    #     position: 'position',
    #     limit: 1
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Gets the usage data of a usage plan in a specified time interval.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUsageInput}.
    #
    # @option params [String] :usage_plan_id
    #   <p>The Id of the usage plan associated with the usage data.</p>
    #
    # @option params [String] :key_id
    #   <p>The Id of the API key associated with the resultant usage data.</p>
    #
    # @option params [String] :start_date
    #   <p>The starting date (e.g., 2016-01-01) of the usage data.</p>
    #
    # @option params [String] :end_date
    #   <p>The ending date (e.g., 2016-12-31) of the usage data.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage(
    #     usage_plan_id: 'usagePlanId', # required
    #     key_id: 'keyId',
    #     start_date: 'startDate', # required
    #     end_date: 'endDate', # required
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUsageOutput
    #   resp.data.usage_plan_id #=> String
    #   resp.data.start_date #=> String
    #   resp.data.end_date #=> String
    #   resp.data.items #=> Hash<String, Array<Array<Integer>>>
    #   resp.data.items['key'] #=> Array<Array<Integer>>
    #   resp.data.items['key'][0] #=> Array<Integer>
    #   resp.data.items['key'][0][0] #=> Integer
    #   resp.data.position #=> String
    #
    def get_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUsage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUsage,
        stubs: @stubs,
        params_class: Params::GetUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a usage plan of a given plan identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUsagePlanInput}.
    #
    # @option params [String] :usage_plan_id
    #   <p>The identifier of the UsagePlan resource to be retrieved.</p>
    #
    # @return [Types::GetUsagePlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_plan(
    #     usage_plan_id: 'usagePlanId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUsagePlanOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.api_stages #=> Array<ApiStage>
    #   resp.data.api_stages[0] #=> Types::ApiStage
    #   resp.data.api_stages[0].api_id #=> String
    #   resp.data.api_stages[0].stage #=> String
    #   resp.data.api_stages[0].throttle #=> Hash<String, ThrottleSettings>
    #   resp.data.api_stages[0].throttle['key'] #=> Types::ThrottleSettings
    #   resp.data.api_stages[0].throttle['key'].burst_limit #=> Integer
    #   resp.data.api_stages[0].throttle['key'].rate_limit #=> Float
    #   resp.data.throttle #=> Types::ThrottleSettings
    #   resp.data.quota #=> Types::QuotaSettings
    #   resp.data.quota.limit #=> Integer
    #   resp.data.quota.offset #=> Integer
    #   resp.data.quota.period #=> String, one of ["DAY", "WEEK", "MONTH"]
    #   resp.data.product_code #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_usage_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUsagePlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUsagePlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUsagePlan
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetUsagePlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUsagePlan,
        stubs: @stubs,
        params_class: Params::GetUsagePlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_usage_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a usage plan key of a given key identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUsagePlanKeyInput}.
    #
    # @option params [String] :usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>
    #
    # @option params [String] :key_id
    #   <p>The key Id of the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>
    #
    # @return [Types::GetUsagePlanKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_plan_key(
    #     usage_plan_id: 'usagePlanId', # required
    #     key_id: 'keyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUsagePlanKeyOutput
    #   resp.data.id #=> String
    #   resp.data.type #=> String
    #   resp.data.value #=> String
    #   resp.data.name #=> String
    #
    def get_usage_plan_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUsagePlanKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUsagePlanKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUsagePlanKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetUsagePlanKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUsagePlanKey,
        stubs: @stubs,
        params_class: Params::GetUsagePlanKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_usage_plan_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all the usage plan keys representing the API keys added to a specified usage plan.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUsagePlanKeysInput}.
    #
    # @option params [String] :usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @option params [String] :name_query
    #   <p>A query parameter specifying the name of the to-be-returned usage plan keys.</p>
    #
    # @return [Types::GetUsagePlanKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_plan_keys(
    #     usage_plan_id: 'usagePlanId', # required
    #     position: 'position',
    #     limit: 1,
    #     name_query: 'nameQuery'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUsagePlanKeysOutput
    #   resp.data.items #=> Array<UsagePlanKey>
    #   resp.data.items[0] #=> Types::UsagePlanKey
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].type #=> String
    #   resp.data.items[0].value #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.position #=> String
    #
    def get_usage_plan_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUsagePlanKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUsagePlanKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUsagePlanKeys
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetUsagePlanKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUsagePlanKeys,
        stubs: @stubs,
        params_class: Params::GetUsagePlanKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_usage_plan_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all the usage plans of the caller's account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUsagePlansInput}.
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [String] :key_id
    #   <p>The identifier of the API key associated with the usage plans.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetUsagePlansOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_plans(
    #     position: 'position',
    #     key_id: 'keyId',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUsagePlansOutput
    #   resp.data.items #=> Array<UsagePlan>
    #   resp.data.items[0] #=> Types::UsagePlan
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].api_stages #=> Array<ApiStage>
    #   resp.data.items[0].api_stages[0] #=> Types::ApiStage
    #   resp.data.items[0].api_stages[0].api_id #=> String
    #   resp.data.items[0].api_stages[0].stage #=> String
    #   resp.data.items[0].api_stages[0].throttle #=> Hash<String, ThrottleSettings>
    #   resp.data.items[0].api_stages[0].throttle['key'] #=> Types::ThrottleSettings
    #   resp.data.items[0].api_stages[0].throttle['key'].burst_limit #=> Integer
    #   resp.data.items[0].api_stages[0].throttle['key'].rate_limit #=> Float
    #   resp.data.items[0].throttle #=> Types::ThrottleSettings
    #   resp.data.items[0].quota #=> Types::QuotaSettings
    #   resp.data.items[0].quota.limit #=> Integer
    #   resp.data.items[0].quota.offset #=> Integer
    #   resp.data.items[0].quota.period #=> String, one of ["DAY", "WEEK", "MONTH"]
    #   resp.data.items[0].product_code #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.position #=> String
    #
    def get_usage_plans(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUsagePlansInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUsagePlansInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUsagePlans
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::GetUsagePlans
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUsagePlans,
        stubs: @stubs,
        params_class: Params::GetUsagePlansOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_usage_plans
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a specified VPC link under the caller's account in a region.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVpcLinkInput}.
    #
    # @option params [String] :vpc_link_id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    #
    # @return [Types::GetVpcLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_link(
    #     vpc_link_id: 'vpcLinkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVpcLinkOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.target_arns #=> Array<String>
    #   resp.data.target_arns[0] #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "PENDING", "DELETING", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Gets the VpcLinks collection under the caller's account in a selected region.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVpcLinksInput}.
    #
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    #
    # @return [Types::GetVpcLinksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_links(
    #     position: 'position',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVpcLinksOutput
    #   resp.data.items #=> Array<VpcLink>
    #   resp.data.items[0] #=> Types::VpcLink
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].target_arns #=> Array<String>
    #   resp.data.items[0].target_arns[0] #=> String
    #   resp.data.items[0].status #=> String, one of ["AVAILABLE", "PENDING", "DELETING", "FAILED"]
    #   resp.data.items[0].status_message #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.position #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Import API keys from an external source, such as a CSV-formatted file.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportApiKeysInput}.
    #
    # @option params [String] :body
    #   <p>The payload of the POST request to import API keys. For the payload format, see API Key File Format.</p>
    #
    # @option params [String] :format
    #   <p>A query parameter to specify the input format to imported API keys. Currently, only the <code>csv</code> format is supported.</p>
    #
    # @option params [Boolean] :fail_on_warnings
    #   <p>A query parameter to indicate whether to rollback ApiKey importation (<code>true</code>) or not (<code>false</code>) when error is encountered.</p>
    #
    # @return [Types::ImportApiKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_api_keys(
    #     body: 'body', # required
    #     format: 'csv', # required - accepts ["csv"]
    #     fail_on_warnings: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportApiKeysOutput
    #   resp.data.ids #=> Array<String>
    #   resp.data.ids[0] #=> String
    #   resp.data.warnings #=> Array<String>
    #
    def import_api_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportApiKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportApiKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportApiKeys
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::ImportApiKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportApiKeys,
        stubs: @stubs,
        params_class: Params::ImportApiKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_api_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports documentation parts</p>
    #
    # @param [Hash] params
    #   See {Types::ImportDocumentationPartsInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :mode
    #   <p>A query parameter to indicate whether to overwrite (<code>OVERWRITE</code>) any existing DocumentationParts definition or to merge (<code>MERGE</code>) the new definition into the existing one. The default value is <code>MERGE</code>.</p>
    #
    # @option params [Boolean] :fail_on_warnings
    #   <p>A query parameter to specify whether to rollback the documentation importation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
    #
    # @option params [String] :body
    #   <p>Raw byte array representing the to-be-imported documentation parts. To import from an OpenAPI file, this is a JSON object.</p>
    #
    # @return [Types::ImportDocumentationPartsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_documentation_parts(
    #     rest_api_id: 'restApiId', # required
    #     mode: 'merge', # accepts ["merge", "overwrite"]
    #     fail_on_warnings: false,
    #     body: 'body' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportDocumentationPartsOutput
    #   resp.data.ids #=> Array<String>
    #   resp.data.ids[0] #=> String
    #   resp.data.warnings #=> Array<String>
    #
    def import_documentation_parts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportDocumentationPartsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportDocumentationPartsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportDocumentationParts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::ImportDocumentationParts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportDocumentationParts,
        stubs: @stubs,
        params_class: Params::ImportDocumentationPartsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_documentation_parts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A feature of the API Gateway control service for creating a new API from an external API definition file.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportRestApiInput}.
    #
    # @option params [Boolean] :fail_on_warnings
    #   <p>A query parameter to indicate whether to rollback the API creation (<code>true</code>) or not (<code>false</code>)
    #               when a warning is encountered. The default value is <code>false</code>.</p>
    #
    # @option params [Hash<String, String>] :parameters
    #   <p>A key-value map of context-specific query string parameters specifying the behavior of different API importing operations. The following shows operation-specific parameters and their supported values.</p>
    #           <p> To exclude DocumentationParts from the import, set <code>parameters</code> as <code>ignore=documentation</code>.</p>
    #            <p> To configure the endpoint type, set <code>parameters</code> as <code>endpointConfigurationTypes=EDGE</code>, <code>endpointConfigurationTypes=REGIONAL</code>, or <code>endpointConfigurationTypes=PRIVATE</code>. The default endpoint type is <code>EDGE</code>.</p>
    #           <p> To handle imported <code>basepath</code>, set <code>parameters</code> as <code>basepath=ignore</code>, <code>basepath=prepend</code> or <code>basepath=split</code>.</p>
    #           <p>For example, the AWS CLI command to exclude documentation from the imported API is:</p>
    #           <p>The AWS CLI command to set the regional endpoint on the imported API is:</p>
    #
    # @option params [String] :body
    #   <p>The POST request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.</p>
    #
    # @return [Types::ImportRestApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_rest_api(
    #     fail_on_warnings: false,
    #     parameters: {
    #       'key' => 'value'
    #     },
    #     body: 'body' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportRestApiOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.warnings #=> Array<String>
    #   resp.data.warnings[0] #=> String
    #   resp.data.binary_media_types #=> Array<String>
    #   resp.data.minimum_compression_size #=> Integer
    #   resp.data.api_key_source #=> String, one of ["HEADER", "AUTHORIZER"]
    #   resp.data.endpoint_configuration #=> Types::EndpointConfiguration
    #   resp.data.endpoint_configuration.types #=> Array<String>
    #   resp.data.endpoint_configuration.types[0] #=> String, one of ["REGIONAL", "EDGE", "PRIVATE"]
    #   resp.data.endpoint_configuration.vpc_endpoint_ids #=> Array<String>
    #   resp.data.policy #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.disable_execute_api_endpoint #=> Boolean
    #
    def import_rest_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportRestApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportRestApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportRestApi
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::ImportRestApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportRestApi,
        stubs: @stubs,
        params_class: Params::ImportRestApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_rest_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.</p>
    #
    # @param [Hash] params
    #   See {Types::PutGatewayResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :response_type
    #   <p>The response type of the associated GatewayResponse</p>
    #
    # @option params [String] :status_code
    #   <p>The HTTP status code of the GatewayResponse.</p>
    #
    # @option params [Hash<String, String>] :response_parameters
    #   <p>Response parameters (paths, query strings and headers) of the GatewayResponse as a string-to-string map of key-value  pairs.</p>
    #
    # @option params [Hash<String, String>] :response_templates
    #   <p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>
    #
    # @return [Types::PutGatewayResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_gateway_response(
    #     rest_api_id: 'restApiId', # required
    #     response_type: 'DEFAULT_4XX', # required - accepts ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"]
    #     status_code: 'statusCode',
    #     response_parameters: {
    #       'key' => 'value'
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutGatewayResponseOutput
    #   resp.data.response_type #=> String, one of ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"]
    #   resp.data.status_code #=> String
    #   resp.data.response_parameters #=> Hash<String, String>
    #   resp.data.response_parameters['key'] #=> String
    #   resp.data.response_templates #=> Hash<String, String>
    #   resp.data.default_response #=> Boolean
    #
    def put_gateway_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutGatewayResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutGatewayResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutGatewayResponse
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::PutGatewayResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutGatewayResponse,
        stubs: @stubs,
        params_class: Params::PutGatewayResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_gateway_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets up a method's integration.</p>
    #
    # @param [Hash] params
    #   See {Types::PutIntegrationInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>Specifies a put integration request's resource ID.</p>
    #
    # @option params [String] :http_method
    #   <p>Specifies the HTTP method for the integration.</p>
    #
    # @option params [String] :type
    #   <p>Specifies a put integration input's type.</p>
    #
    # @option params [String] :integration_http_method
    #   <p>The HTTP method for the integration.</p>
    #
    # @option params [String] :uri
    #   <p>Specifies Uniform Resource Identifier (URI) of the integration endpoint. For HTTP or
    #         <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the
    #         RFC-3986 specification, for either standard integration, where <code>connectionType</code> is not <code>VPC_LINK</code>,
    #         or private integration, where <code>connectionType</code> is <code>VPC_LINK</code>. For a private HTTP integration, the
    #         URI is not used for routing. For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of the form
    #         <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api</code>}. Here,
    #         {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the integrated
    #         Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by certain Amazon Web Services
    #         service for fast host-name lookup. action can be used for an Amazon Web Services service action-based API,
    #         using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing {service_api} refers to
    #         a supported action {name} plus any required input parameters. Alternatively, path can be used
    #         for an Amazon Web Services service path-based API. The ensuing service_api refers to the path to an Amazon Web Services
    #         service resource, including the region of the integrated Amazon Web Services service, if applicable. For
    #         example, for integration with the S3 API of <code>GetObject</code>, the <code>uri</code> can be either
    #         <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or
    #         <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>.</p>
    #
    # @option params [String] :connection_type
    #   <p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>
    #
    # @option params [String] :connection_id
    #   <p>The ID of the VpcLink used for the integration. Specify this value only if you specify <code>VPC_LINK</code> as the connection type.</p>
    #
    # @option params [String] :credentials
    #   <p>Specifies whether credentials are required for a put integration.</p>
    #
    # @option params [Hash<String, String>] :request_parameters
    #   <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
    #
    # @option params [Hash<String, String>] :request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
    #
    # @option params [String] :passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the <code>requestTemplates</code> property on the Integration resource. There are three valid values:  <code>WHEN_NO_MATCH</code>, <code>WHEN_NO_TEMPLATES</code>, and <code>NEVER</code>.
    #           </p>
    #
    # @option params [String] :cache_namespace
    #   <p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>
    #
    # @option params [Array<String>] :cache_key_parameters
    #   <p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>
    #
    # @option params [String] :content_handling
    #   <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #
    #            <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>
    #
    # @option params [Integer] :timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.</p>
    #
    # @option params [TlsConfig] :tls_config
    #   <p>Specifies the TLS configuration for an integration.</p>
    #
    # @return [Types::PutIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_integration(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     type: 'HTTP', # required - accepts ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #     integration_http_method: 'integrationHttpMethod',
    #     uri: 'uri',
    #     connection_type: 'INTERNET', # accepts ["INTERNET", "VPC_LINK"]
    #     connection_id: 'connectionId',
    #     credentials: 'credentials',
    #     request_parameters: {
    #       'key' => 'value'
    #     },
    #     passthrough_behavior: 'passthroughBehavior',
    #     cache_namespace: 'cacheNamespace',
    #     cache_key_parameters: [
    #       'member'
    #     ],
    #     content_handling: 'CONVERT_TO_BINARY', # accepts ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       insecure_skip_verification: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutIntegrationOutput
    #   resp.data.type #=> String, one of ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.http_method #=> String
    #   resp.data.uri #=> String
    #   resp.data.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.connection_id #=> String
    #   resp.data.credentials #=> String
    #   resp.data.request_parameters #=> Hash<String, String>
    #   resp.data.request_parameters['key'] #=> String
    #   resp.data.request_templates #=> Hash<String, String>
    #   resp.data.passthrough_behavior #=> String
    #   resp.data.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.timeout_in_millis #=> Integer
    #   resp.data.cache_namespace #=> String
    #   resp.data.cache_key_parameters #=> Array<String>
    #   resp.data.cache_key_parameters[0] #=> String
    #   resp.data.integration_responses #=> Hash<String, IntegrationResponse>
    #   resp.data.integration_responses['key'] #=> Types::IntegrationResponse
    #   resp.data.integration_responses['key'].status_code #=> String
    #   resp.data.integration_responses['key'].selection_pattern #=> String
    #   resp.data.integration_responses['key'].response_parameters #=> Hash<String, String>
    #   resp.data.integration_responses['key'].response_templates #=> Hash<String, String>
    #   resp.data.integration_responses['key'].content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.tls_config #=> Types::TlsConfig
    #   resp.data.tls_config.insecure_skip_verification #=> Boolean
    #
    def put_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutIntegrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutIntegration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::PutIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutIntegration,
        stubs: @stubs,
        params_class: Params::PutIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents a put integration.</p>
    #
    # @param [Hash] params
    #   See {Types::PutIntegrationResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>Specifies a put integration response request's resource identifier.</p>
    #
    # @option params [String] :http_method
    #   <p>Specifies a put integration response request's HTTP method.</p>
    #
    # @option params [String] :status_code
    #   <p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>
    #
    # @option params [String] :selection_pattern
    #   <p>Specifies the selection pattern of a put integration response.</p>
    #
    # @option params [Hash<String, String>] :response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the back end.
    #               The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> must be a valid and unique response header name and <code>JSON-expression</code> a valid JSON expression without the <code>$</code> prefix.</p>
    #
    # @option params [Hash<String, String>] :response_templates
    #   <p>Specifies a put integration response's templates.</p>
    #
    # @option params [String] :content_handling
    #   <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #
    #            <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
    #
    # @return [Types::PutIntegrationResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_integration_response(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     status_code: 'statusCode', # required
    #     selection_pattern: 'selectionPattern',
    #     response_parameters: {
    #       'key' => 'value'
    #     },
    #     content_handling: 'CONVERT_TO_BINARY' # accepts ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutIntegrationResponseOutput
    #   resp.data.status_code #=> String
    #   resp.data.selection_pattern #=> String
    #   resp.data.response_parameters #=> Hash<String, String>
    #   resp.data.response_parameters['key'] #=> String
    #   resp.data.response_templates #=> Hash<String, String>
    #   resp.data.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #
    def put_integration_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutIntegrationResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutIntegrationResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutIntegrationResponse
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::PutIntegrationResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutIntegrationResponse,
        stubs: @stubs,
        params_class: Params::PutIntegrationResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_integration_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add a method to an existing Resource resource.</p>
    #
    # @param [Hash] params
    #   See {Types::PutMethodInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the new Method resource.</p>
    #
    # @option params [String] :http_method
    #   <p>Specifies the method request's HTTP method type.</p>
    #
    # @option params [String] :authorization_type
    #   <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
    #
    # @option params [String] :authorizer_id
    #   <p>Specifies the identifier of an Authorizer to use on this Method, if the type is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    #
    # @option params [Boolean] :api_key_required
    #   <p>Specifies whether the method required a valid ApiKey.</p>
    #
    # @option params [String] :operation_name
    #   <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>
    #
    # @option params [Hash<String, Boolean>] :request_parameters
    #   <p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key defines a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or body-mapping templates.</p>
    #
    # @option params [Hash<String, String>] :request_models
    #   <p>Specifies the Model resources used for the request's content type. Request models are represented as a key/value map, with a content type as the key and a Model name as the value.</p>
    #
    # @option params [String] :request_validator_id
    #   <p>The identifier of a RequestValidator for validating the method request.</p>
    #
    # @option params [Array<String>] :authorization_scopes
    #   <p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    #
    # @return [Types::PutMethodOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_method(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     authorization_type: 'authorizationType', # required
    #     authorizer_id: 'authorizerId',
    #     api_key_required: false,
    #     operation_name: 'operationName',
    #     request_parameters: {
    #       'key' => false
    #     },
    #     request_models: {
    #       'key' => 'value'
    #     },
    #     request_validator_id: 'requestValidatorId',
    #     authorization_scopes: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutMethodOutput
    #   resp.data.http_method #=> String
    #   resp.data.authorization_type #=> String
    #   resp.data.authorizer_id #=> String
    #   resp.data.api_key_required #=> Boolean
    #   resp.data.request_validator_id #=> String
    #   resp.data.operation_name #=> String
    #   resp.data.request_parameters #=> Hash<String, Boolean>
    #   resp.data.request_parameters['key'] #=> Boolean
    #   resp.data.request_models #=> Hash<String, String>
    #   resp.data.request_models['key'] #=> String
    #   resp.data.method_responses #=> Hash<String, MethodResponse>
    #   resp.data.method_responses['key'] #=> Types::MethodResponse
    #   resp.data.method_responses['key'].status_code #=> String
    #   resp.data.method_responses['key'].response_parameters #=> Hash<String, Boolean>
    #   resp.data.method_responses['key'].response_models #=> Hash<String, String>
    #   resp.data.method_integration #=> Types::Integration
    #   resp.data.method_integration.type #=> String, one of ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.method_integration.http_method #=> String
    #   resp.data.method_integration.uri #=> String
    #   resp.data.method_integration.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.method_integration.connection_id #=> String
    #   resp.data.method_integration.credentials #=> String
    #   resp.data.method_integration.request_parameters #=> Hash<String, String>
    #   resp.data.method_integration.request_templates #=> Hash<String, String>
    #   resp.data.method_integration.passthrough_behavior #=> String
    #   resp.data.method_integration.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.method_integration.timeout_in_millis #=> Integer
    #   resp.data.method_integration.cache_namespace #=> String
    #   resp.data.method_integration.cache_key_parameters #=> Array<String>
    #   resp.data.method_integration.cache_key_parameters[0] #=> String
    #   resp.data.method_integration.integration_responses #=> Hash<String, IntegrationResponse>
    #   resp.data.method_integration.integration_responses['key'] #=> Types::IntegrationResponse
    #   resp.data.method_integration.integration_responses['key'].status_code #=> String
    #   resp.data.method_integration.integration_responses['key'].selection_pattern #=> String
    #   resp.data.method_integration.integration_responses['key'].response_parameters #=> Hash<String, String>
    #   resp.data.method_integration.integration_responses['key'].response_templates #=> Hash<String, String>
    #   resp.data.method_integration.integration_responses['key'].content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.method_integration.tls_config #=> Types::TlsConfig
    #   resp.data.method_integration.tls_config.insecure_skip_verification #=> Boolean
    #   resp.data.authorization_scopes #=> Array<String>
    #
    def put_method(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMethodInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMethodInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMethod
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::PutMethod
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutMethod,
        stubs: @stubs,
        params_class: Params::PutMethodOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_method
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a MethodResponse to an existing Method resource.</p>
    #
    # @param [Hash] params
    #   See {Types::PutMethodResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    #
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #
    # @option params [String] :status_code
    #   <p>The method response's status code.</p>
    #
    # @option params [Hash<String, Boolean>] :response_parameters
    #   <p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
    #
    # @option params [Hash<String, String>] :response_models
    #   <p>Specifies the Model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.</p>
    #
    # @return [Types::PutMethodResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_method_response(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     status_code: 'statusCode', # required
    #     response_parameters: {
    #       'key' => false
    #     },
    #     response_models: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutMethodResponseOutput
    #   resp.data.status_code #=> String
    #   resp.data.response_parameters #=> Hash<String, Boolean>
    #   resp.data.response_parameters['key'] #=> Boolean
    #   resp.data.response_models #=> Hash<String, String>
    #   resp.data.response_models['key'] #=> String
    #
    def put_method_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMethodResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMethodResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMethodResponse
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::PutMethodResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutMethodResponse,
        stubs: @stubs,
        params_class: Params::PutMethodResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_method_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A feature of the API Gateway control service for updating an existing API with an input of external API definitions.
    #             The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRestApiInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :mode
    #   <p>The <code>mode</code> query parameter to specify the update mode. Valid values are "merge" and "overwrite". By default,
    #           the update mode is "merge".</p>
    #
    # @option params [Boolean] :fail_on_warnings
    #   <p>A query parameter to indicate whether to rollback the API update (<code>true</code>) or not (<code>false</code>)
    #               when a warning is encountered. The default value is <code>false</code>.</p>
    #
    # @option params [Hash<String, String>] :parameters
    #   <p>Custom header parameters as part of the request. For example, to exclude DocumentationParts from an imported API, set <code>ignore=documentation</code> as a <code>parameters</code> value, as in the AWS CLI command of <code>aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'</code>.</p>
    #
    # @option params [String] :body
    #   <p>The PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.</p>
    #
    # @return [Types::PutRestApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rest_api(
    #     rest_api_id: 'restApiId', # required
    #     mode: 'merge', # accepts ["merge", "overwrite"]
    #     fail_on_warnings: false,
    #     parameters: {
    #       'key' => 'value'
    #     },
    #     body: 'body' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRestApiOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.warnings #=> Array<String>
    #   resp.data.warnings[0] #=> String
    #   resp.data.binary_media_types #=> Array<String>
    #   resp.data.minimum_compression_size #=> Integer
    #   resp.data.api_key_source #=> String, one of ["HEADER", "AUTHORIZER"]
    #   resp.data.endpoint_configuration #=> Types::EndpointConfiguration
    #   resp.data.endpoint_configuration.types #=> Array<String>
    #   resp.data.endpoint_configuration.types[0] #=> String, one of ["REGIONAL", "EDGE", "PRIVATE"]
    #   resp.data.endpoint_configuration.vpc_endpoint_ids #=> Array<String>
    #   resp.data.policy #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.disable_execute_api_endpoint #=> Boolean
    #
    def put_rest_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRestApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRestApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRestApi
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::PutRestApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRestApi,
        stubs: @stubs,
        params_class: Params::PutRestApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_rest_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates a tag on a given resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of a resource that can be tagged.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.</p>
    #
    # @param [Hash] params
    #   See {Types::TestInvokeAuthorizerInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :authorizer_id
    #   <p>Specifies a test invoke authorizer request's Authorizer ID.</p>
    #
    # @option params [Hash<String, String>] :headers
    #   <p>A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.</p>
    #
    # @option params [Hash<String, Array<String>>] :multi_value_headers
    #   <p>The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.</p>
    #
    # @option params [String] :path_with_query_string
    #   <p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
    #
    # @option params [String] :body
    #   <p>The simulated request body of an incoming invocation request.</p>
    #
    # @option params [Hash<String, String>] :stage_variables
    #   <p>A key-value map of stage variables to simulate an invocation on a deployed Stage.</p>
    #
    # @option params [Hash<String, String>] :additional_context
    #   <p>A key-value map of additional context variables.</p>
    #
    # @return [Types::TestInvokeAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_invoke_authorizer(
    #     rest_api_id: 'restApiId', # required
    #     authorizer_id: 'authorizerId', # required
    #     headers: {
    #       'key' => 'value'
    #     },
    #     multi_value_headers: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     path_with_query_string: 'pathWithQueryString',
    #     body: 'body',
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestInvokeAuthorizerOutput
    #   resp.data.client_status #=> Integer
    #   resp.data.log #=> String
    #   resp.data.latency #=> Integer
    #   resp.data.principal_id #=> String
    #   resp.data.policy #=> String
    #   resp.data.authorization #=> Hash<String, Array<String>>
    #   resp.data.authorization['key'] #=> Array<String>
    #   resp.data.authorization['key'][0] #=> String
    #   resp.data.claims #=> Hash<String, String>
    #   resp.data.claims['key'] #=> String
    #
    def test_invoke_authorizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestInvokeAuthorizerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestInvokeAuthorizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestInvokeAuthorizer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::TestInvokeAuthorizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestInvokeAuthorizer,
        stubs: @stubs,
        params_class: Params::TestInvokeAuthorizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_invoke_authorizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Simulate the invocation of a Method in your RestApi with headers, parameters, and an incoming request body.</p>
    #
    # @param [Hash] params
    #   See {Types::TestInvokeMethodInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>Specifies a test invoke method request's resource ID.</p>
    #
    # @option params [String] :http_method
    #   <p>Specifies a test invoke method request's HTTP method.</p>
    #
    # @option params [String] :path_with_query_string
    #   <p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
    #
    # @option params [String] :body
    #   <p>The simulated request body of an incoming invocation request.</p>
    #
    # @option params [Hash<String, String>] :headers
    #   <p>A key-value map of headers to simulate an incoming invocation request.</p>
    #
    # @option params [Hash<String, Array<String>>] :multi_value_headers
    #   <p>The headers as a map from string to list of values to simulate an incoming invocation request.</p>
    #
    # @option params [String] :client_certificate_id
    #   <p>A ClientCertificate identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.</p>
    #
    # @option params [Hash<String, String>] :stage_variables
    #   <p>A key-value map of stage variables to simulate an invocation on a deployed Stage.</p>
    #
    # @return [Types::TestInvokeMethodOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_invoke_method(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     path_with_query_string: 'pathWithQueryString',
    #     body: 'body',
    #     headers: {
    #       'key' => 'value'
    #     },
    #     multi_value_headers: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     client_certificate_id: 'clientCertificateId',
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestInvokeMethodOutput
    #   resp.data.status #=> Integer
    #   resp.data.body #=> String
    #   resp.data.headers #=> Hash<String, String>
    #   resp.data.headers['key'] #=> String
    #   resp.data.multi_value_headers #=> Hash<String, Array<String>>
    #   resp.data.multi_value_headers['key'] #=> Array<String>
    #   resp.data.multi_value_headers['key'][0] #=> String
    #   resp.data.log #=> String
    #   resp.data.latency #=> Integer
    #
    def test_invoke_method(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestInvokeMethodInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestInvokeMethodInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestInvokeMethod
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::TestInvokeMethod
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestInvokeMethod,
        stubs: @stubs,
        params_class: Params::TestInvokeMethodOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_invoke_method
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a tag from a given resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of a resource that can be tagged.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The Tag keys to delete.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Changes information about the current Account resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccountInput}.
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account(
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccountOutput
    #   resp.data.cloudwatch_role_arn #=> String
    #   resp.data.throttle_settings #=> Types::ThrottleSettings
    #   resp.data.throttle_settings.burst_limit #=> Integer
    #   resp.data.throttle_settings.rate_limit #=> Float
    #   resp.data.features #=> Array<String>
    #   resp.data.features[0] #=> String
    #   resp.data.api_key_version #=> String
    #
    def update_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccount,
        stubs: @stubs,
        params_class: Params::UpdateAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes information about an ApiKey resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApiKeyInput}.
    #
    # @option params [String] :api_key
    #   <p>The identifier of the ApiKey resource to be updated.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateApiKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_key(
    #     api_key: 'apiKey', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApiKeyOutput
    #   resp.data.id #=> String
    #   resp.data.value #=> String
    #   resp.data.name #=> String
    #   resp.data.customer_id #=> String
    #   resp.data.description #=> String
    #   resp.data.enabled #=> Boolean
    #   resp.data.created_date #=> Time
    #   resp.data.last_updated_date #=> Time
    #   resp.data.stage_keys #=> Array<String>
    #   resp.data.stage_keys[0] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_api_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApiKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApiKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApiKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateApiKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApiKey,
        stubs: @stubs,
        params_class: Params::UpdateApiKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_api_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing Authorizer resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAuthorizerInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :authorizer_id
    #   <p>The identifier of the Authorizer resource.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateAuthorizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_authorizer(
    #     rest_api_id: 'restApiId', # required
    #     authorizer_id: 'authorizerId', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAuthorizerOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.type #=> String, one of ["TOKEN", "REQUEST", "COGNITO_USER_POOLS"]
    #   resp.data.provider_ar_ns #=> Array<String>
    #   resp.data.provider_ar_ns[0] #=> String
    #   resp.data.auth_type #=> String
    #   resp.data.authorizer_uri #=> String
    #   resp.data.authorizer_credentials #=> String
    #   resp.data.identity_source #=> String
    #   resp.data.identity_validation_expression #=> String
    #   resp.data.authorizer_result_ttl_in_seconds #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Changes information about the BasePathMapping resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBasePathMappingInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name of the BasePathMapping resource to change.</p>
    #
    # @option params [String] :base_path
    #   <p>The base path of the BasePathMapping resource to change.</p>
    #           <p>To specify an empty base path, set this parameter to <code>'(none)'</code>.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateBasePathMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_base_path_mapping(
    #     domain_name: 'domainName', # required
    #     base_path: 'basePath', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBasePathMappingOutput
    #   resp.data.base_path #=> String
    #   resp.data.rest_api_id #=> String
    #   resp.data.stage #=> String
    #
    def update_base_path_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBasePathMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBasePathMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBasePathMapping
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateBasePathMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBasePathMapping,
        stubs: @stubs,
        params_class: Params::UpdateBasePathMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_base_path_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes information about an ClientCertificate resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClientCertificateInput}.
    #
    # @option params [String] :client_certificate_id
    #   <p>The identifier of the ClientCertificate resource to be updated.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateClientCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_client_certificate(
    #     client_certificate_id: 'clientCertificateId', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClientCertificateOutput
    #   resp.data.client_certificate_id #=> String
    #   resp.data.description #=> String
    #   resp.data.pem_encoded_certificate #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.expiration_date #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_client_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClientCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateClientCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateClientCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateClientCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateClientCertificate,
        stubs: @stubs,
        params_class: Params::UpdateClientCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_client_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes information about a Deployment resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeploymentInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The replacement identifier for the Deployment resource to change information about.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deployment(
    #     rest_api_id: 'restApiId', # required
    #     deployment_id: 'deploymentId', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeploymentOutput
    #   resp.data.id #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.api_summary #=> Hash<String, Hash<String, MethodSnapshot>>
    #   resp.data.api_summary['key'] #=> Hash<String, MethodSnapshot>
    #   resp.data.api_summary['key']['key'] #=> Types::MethodSnapshot
    #   resp.data.api_summary['key']['key'].authorization_type #=> String
    #   resp.data.api_summary['key']['key'].api_key_required #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ServiceUnavailableException, Errors::BadRequestException]),
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

    # <p>Updates a documentation part.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDocumentationPartInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :documentation_part_id
    #   <p>The identifier of the to-be-updated documentation part.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateDocumentationPartOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_documentation_part(
    #     rest_api_id: 'restApiId', # required
    #     documentation_part_id: 'documentationPartId', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDocumentationPartOutput
    #   resp.data.id #=> String
    #   resp.data.location #=> Types::DocumentationPartLocation
    #   resp.data.location.type #=> String, one of ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"]
    #   resp.data.location.path #=> String
    #   resp.data.location.member_method #=> String
    #   resp.data.location.status_code #=> String
    #   resp.data.location.name #=> String
    #   resp.data.properties #=> String
    #
    def update_documentation_part(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDocumentationPartInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDocumentationPartInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDocumentationPart
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateDocumentationPart
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDocumentationPart,
        stubs: @stubs,
        params_class: Params::UpdateDocumentationPartOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_documentation_part
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a documentation version.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDocumentationVersionInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi..</p>
    #
    # @option params [String] :documentation_version
    #   <p>The version identifier of the to-be-updated documentation version.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateDocumentationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_documentation_version(
    #     rest_api_id: 'restApiId', # required
    #     documentation_version: 'documentationVersion', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDocumentationVersionOutput
    #   resp.data.version #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.description #=> String
    #
    def update_documentation_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDocumentationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDocumentationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDocumentationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateDocumentationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDocumentationVersion,
        stubs: @stubs,
        params_class: Params::UpdateDocumentationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_documentation_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes information about the DomainName resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the DomainName resource to be changed.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_name(
    #     domain_name: 'domainName', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainNameOutput
    #   resp.data.domain_name #=> String
    #   resp.data.certificate_name #=> String
    #   resp.data.certificate_arn #=> String
    #   resp.data.certificate_upload_date #=> Time
    #   resp.data.regional_domain_name #=> String
    #   resp.data.regional_hosted_zone_id #=> String
    #   resp.data.regional_certificate_name #=> String
    #   resp.data.regional_certificate_arn #=> String
    #   resp.data.distribution_domain_name #=> String
    #   resp.data.distribution_hosted_zone_id #=> String
    #   resp.data.endpoint_configuration #=> Types::EndpointConfiguration
    #   resp.data.endpoint_configuration.types #=> Array<String>
    #   resp.data.endpoint_configuration.types[0] #=> String, one of ["REGIONAL", "EDGE", "PRIVATE"]
    #   resp.data.endpoint_configuration.vpc_endpoint_ids #=> Array<String>
    #   resp.data.endpoint_configuration.vpc_endpoint_ids[0] #=> String
    #   resp.data.domain_name_status #=> String, one of ["AVAILABLE", "UPDATING", "PENDING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"]
    #   resp.data.domain_name_status_message #=> String
    #   resp.data.security_policy #=> String, one of ["TLS_1_0", "TLS_1_2"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.mutual_tls_authentication #=> Types::MutualTlsAuthentication
    #   resp.data.mutual_tls_authentication.truststore_uri #=> String
    #   resp.data.mutual_tls_authentication.truststore_version #=> String
    #   resp.data.mutual_tls_authentication.truststore_warnings #=> Array<String>
    #   resp.data.ownership_verification_certificate_arn #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Updates a GatewayResponse of a specified response type on the given RestApi.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGatewayResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateGatewayResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_response(
    #     rest_api_id: 'restApiId', # required
    #     response_type: 'DEFAULT_4XX', # required - accepts ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"]
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGatewayResponseOutput
    #   resp.data.response_type #=> String, one of ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"]
    #   resp.data.status_code #=> String
    #   resp.data.response_parameters #=> Hash<String, String>
    #   resp.data.response_parameters['key'] #=> String
    #   resp.data.response_templates #=> Hash<String, String>
    #   resp.data.default_response #=> Boolean
    #
    def update_gateway_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGatewayResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGatewayResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGatewayResponse
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateGatewayResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGatewayResponse,
        stubs: @stubs,
        params_class: Params::UpdateGatewayResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gateway_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents an update integration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIntegrationInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>Represents an update integration request's resource identifier.</p>
    #
    # @option params [String] :http_method
    #   <p>Represents an update integration request's HTTP method.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integration(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIntegrationOutput
    #   resp.data.type #=> String, one of ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.http_method #=> String
    #   resp.data.uri #=> String
    #   resp.data.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.connection_id #=> String
    #   resp.data.credentials #=> String
    #   resp.data.request_parameters #=> Hash<String, String>
    #   resp.data.request_parameters['key'] #=> String
    #   resp.data.request_templates #=> Hash<String, String>
    #   resp.data.passthrough_behavior #=> String
    #   resp.data.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.timeout_in_millis #=> Integer
    #   resp.data.cache_namespace #=> String
    #   resp.data.cache_key_parameters #=> Array<String>
    #   resp.data.cache_key_parameters[0] #=> String
    #   resp.data.integration_responses #=> Hash<String, IntegrationResponse>
    #   resp.data.integration_responses['key'] #=> Types::IntegrationResponse
    #   resp.data.integration_responses['key'].status_code #=> String
    #   resp.data.integration_responses['key'].selection_pattern #=> String
    #   resp.data.integration_responses['key'].response_parameters #=> Hash<String, String>
    #   resp.data.integration_responses['key'].response_templates #=> Hash<String, String>
    #   resp.data.integration_responses['key'].content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.tls_config #=> Types::TlsConfig
    #   resp.data.tls_config.insecure_skip_verification #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Represents an update integration response.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIntegrationResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>Specifies an update integration response request's resource identifier.</p>
    #
    # @option params [String] :http_method
    #   <p>Specifies an update integration response request's HTTP method.</p>
    #
    # @option params [String] :status_code
    #   <p>Specifies an update integration response request's status code.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateIntegrationResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integration_response(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     status_code: 'statusCode', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIntegrationResponseOutput
    #   resp.data.status_code #=> String
    #   resp.data.selection_pattern #=> String
    #   resp.data.response_parameters #=> Hash<String, String>
    #   resp.data.response_parameters['key'] #=> String
    #   resp.data.response_templates #=> Hash<String, String>
    #   resp.data.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Updates an existing Method resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMethodInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    #
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateMethodOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_method(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMethodOutput
    #   resp.data.http_method #=> String
    #   resp.data.authorization_type #=> String
    #   resp.data.authorizer_id #=> String
    #   resp.data.api_key_required #=> Boolean
    #   resp.data.request_validator_id #=> String
    #   resp.data.operation_name #=> String
    #   resp.data.request_parameters #=> Hash<String, Boolean>
    #   resp.data.request_parameters['key'] #=> Boolean
    #   resp.data.request_models #=> Hash<String, String>
    #   resp.data.request_models['key'] #=> String
    #   resp.data.method_responses #=> Hash<String, MethodResponse>
    #   resp.data.method_responses['key'] #=> Types::MethodResponse
    #   resp.data.method_responses['key'].status_code #=> String
    #   resp.data.method_responses['key'].response_parameters #=> Hash<String, Boolean>
    #   resp.data.method_responses['key'].response_models #=> Hash<String, String>
    #   resp.data.method_integration #=> Types::Integration
    #   resp.data.method_integration.type #=> String, one of ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.method_integration.http_method #=> String
    #   resp.data.method_integration.uri #=> String
    #   resp.data.method_integration.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.method_integration.connection_id #=> String
    #   resp.data.method_integration.credentials #=> String
    #   resp.data.method_integration.request_parameters #=> Hash<String, String>
    #   resp.data.method_integration.request_templates #=> Hash<String, String>
    #   resp.data.method_integration.passthrough_behavior #=> String
    #   resp.data.method_integration.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.method_integration.timeout_in_millis #=> Integer
    #   resp.data.method_integration.cache_namespace #=> String
    #   resp.data.method_integration.cache_key_parameters #=> Array<String>
    #   resp.data.method_integration.cache_key_parameters[0] #=> String
    #   resp.data.method_integration.integration_responses #=> Hash<String, IntegrationResponse>
    #   resp.data.method_integration.integration_responses['key'] #=> Types::IntegrationResponse
    #   resp.data.method_integration.integration_responses['key'].status_code #=> String
    #   resp.data.method_integration.integration_responses['key'].selection_pattern #=> String
    #   resp.data.method_integration.integration_responses['key'].response_parameters #=> Hash<String, String>
    #   resp.data.method_integration.integration_responses['key'].response_templates #=> Hash<String, String>
    #   resp.data.method_integration.integration_responses['key'].content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.method_integration.tls_config #=> Types::TlsConfig
    #   resp.data.method_integration.tls_config.insecure_skip_verification #=> Boolean
    #   resp.data.authorization_scopes #=> Array<String>
    #
    def update_method(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMethodInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMethodInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMethod
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateMethod
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMethod,
        stubs: @stubs,
        params_class: Params::UpdateMethodOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_method
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing MethodResponse resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMethodResponseInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the MethodResponse resource.</p>
    #
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    #
    # @option params [String] :status_code
    #   <p>The status code for the MethodResponse resource.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateMethodResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_method_response(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     http_method: 'httpMethod', # required
    #     status_code: 'statusCode', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMethodResponseOutput
    #   resp.data.status_code #=> String
    #   resp.data.response_parameters #=> Hash<String, Boolean>
    #   resp.data.response_parameters['key'] #=> Boolean
    #   resp.data.response_models #=> Hash<String, String>
    #   resp.data.response_models['key'] #=> String
    #
    def update_method_response(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMethodResponseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMethodResponseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMethodResponse
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateMethodResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMethodResponse,
        stubs: @stubs,
        params_class: Params::UpdateMethodResponseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_method_response
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes information about a model.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateModelInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :model_name
    #   <p>The name of the model to update.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model(
    #     rest_api_id: 'restApiId', # required
    #     model_name: 'modelName', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateModelOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.schema #=> String
    #   resp.data.content_type #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Updates a RequestValidator of a given RestApi.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRequestValidatorInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :request_validator_id
    #   <p>The identifier of RequestValidator to be updated.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateRequestValidatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_request_validator(
    #     rest_api_id: 'restApiId', # required
    #     request_validator_id: 'requestValidatorId', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRequestValidatorOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.validate_request_body #=> Boolean
    #   resp.data.validate_request_parameters #=> Boolean
    #
    def update_request_validator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRequestValidatorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRequestValidatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRequestValidator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateRequestValidator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRequestValidator,
        stubs: @stubs,
        params_class: Params::UpdateRequestValidatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_request_validator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes information about a Resource resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the Resource resource.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource(
    #     rest_api_id: 'restApiId', # required
    #     resource_id: 'resourceId', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceOutput
    #   resp.data.id #=> String
    #   resp.data.parent_id #=> String
    #   resp.data.path_part #=> String
    #   resp.data.path #=> String
    #   resp.data.resource_methods #=> Hash<String, Method>
    #   resp.data.resource_methods['key'] #=> Types::Method
    #   resp.data.resource_methods['key'].http_method #=> String
    #   resp.data.resource_methods['key'].authorization_type #=> String
    #   resp.data.resource_methods['key'].authorizer_id #=> String
    #   resp.data.resource_methods['key'].api_key_required #=> Boolean
    #   resp.data.resource_methods['key'].request_validator_id #=> String
    #   resp.data.resource_methods['key'].operation_name #=> String
    #   resp.data.resource_methods['key'].request_parameters #=> Hash<String, Boolean>
    #   resp.data.resource_methods['key'].request_parameters['key'] #=> Boolean
    #   resp.data.resource_methods['key'].request_models #=> Hash<String, String>
    #   resp.data.resource_methods['key'].request_models['key'] #=> String
    #   resp.data.resource_methods['key'].method_responses #=> Hash<String, MethodResponse>
    #   resp.data.resource_methods['key'].method_responses['key'] #=> Types::MethodResponse
    #   resp.data.resource_methods['key'].method_responses['key'].status_code #=> String
    #   resp.data.resource_methods['key'].method_responses['key'].response_parameters #=> Hash<String, Boolean>
    #   resp.data.resource_methods['key'].method_responses['key'].response_models #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration #=> Types::Integration
    #   resp.data.resource_methods['key'].method_integration.type #=> String, one of ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"]
    #   resp.data.resource_methods['key'].method_integration.http_method #=> String
    #   resp.data.resource_methods['key'].method_integration.uri #=> String
    #   resp.data.resource_methods['key'].method_integration.connection_type #=> String, one of ["INTERNET", "VPC_LINK"]
    #   resp.data.resource_methods['key'].method_integration.connection_id #=> String
    #   resp.data.resource_methods['key'].method_integration.credentials #=> String
    #   resp.data.resource_methods['key'].method_integration.request_parameters #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.request_templates #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.passthrough_behavior #=> String
    #   resp.data.resource_methods['key'].method_integration.content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.resource_methods['key'].method_integration.timeout_in_millis #=> Integer
    #   resp.data.resource_methods['key'].method_integration.cache_namespace #=> String
    #   resp.data.resource_methods['key'].method_integration.cache_key_parameters #=> Array<String>
    #   resp.data.resource_methods['key'].method_integration.cache_key_parameters[0] #=> String
    #   resp.data.resource_methods['key'].method_integration.integration_responses #=> Hash<String, IntegrationResponse>
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'] #=> Types::IntegrationResponse
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].status_code #=> String
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].selection_pattern #=> String
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].response_parameters #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].response_templates #=> Hash<String, String>
    #   resp.data.resource_methods['key'].method_integration.integration_responses['key'].content_handling #=> String, one of ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   resp.data.resource_methods['key'].method_integration.tls_config #=> Types::TlsConfig
    #   resp.data.resource_methods['key'].method_integration.tls_config.insecure_skip_verification #=> Boolean
    #   resp.data.resource_methods['key'].authorization_scopes #=> Array<String>
    #
    def update_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResource,
        stubs: @stubs,
        params_class: Params::UpdateResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes information about the specified API.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRestApiInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateRestApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rest_api(
    #     rest_api_id: 'restApiId', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRestApiOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.warnings #=> Array<String>
    #   resp.data.warnings[0] #=> String
    #   resp.data.binary_media_types #=> Array<String>
    #   resp.data.minimum_compression_size #=> Integer
    #   resp.data.api_key_source #=> String, one of ["HEADER", "AUTHORIZER"]
    #   resp.data.endpoint_configuration #=> Types::EndpointConfiguration
    #   resp.data.endpoint_configuration.types #=> Array<String>
    #   resp.data.endpoint_configuration.types[0] #=> String, one of ["REGIONAL", "EDGE", "PRIVATE"]
    #   resp.data.endpoint_configuration.vpc_endpoint_ids #=> Array<String>
    #   resp.data.policy #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.disable_execute_api_endpoint #=> Boolean
    #
    def update_rest_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRestApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRestApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRestApi
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateRestApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRestApi,
        stubs: @stubs,
        params_class: Params::UpdateRestApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_rest_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes information about a Stage resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStageInput}.
    #
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the Stage resource to change information about.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stage(
    #     rest_api_id: 'restApiId', # required
    #     stage_name: 'stageName', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStageOutput
    #   resp.data.deployment_id #=> String
    #   resp.data.client_certificate_id #=> String
    #   resp.data.stage_name #=> String
    #   resp.data.description #=> String
    #   resp.data.cache_cluster_enabled #=> Boolean
    #   resp.data.cache_cluster_size #=> String, one of ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"]
    #   resp.data.cache_cluster_status #=> String, one of ["CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"]
    #   resp.data.method_settings #=> Hash<String, MethodSetting>
    #   resp.data.method_settings['key'] #=> Types::MethodSetting
    #   resp.data.method_settings['key'].metrics_enabled #=> Boolean
    #   resp.data.method_settings['key'].logging_level #=> String
    #   resp.data.method_settings['key'].data_trace_enabled #=> Boolean
    #   resp.data.method_settings['key'].throttling_burst_limit #=> Integer
    #   resp.data.method_settings['key'].throttling_rate_limit #=> Float
    #   resp.data.method_settings['key'].caching_enabled #=> Boolean
    #   resp.data.method_settings['key'].cache_ttl_in_seconds #=> Integer
    #   resp.data.method_settings['key'].cache_data_encrypted #=> Boolean
    #   resp.data.method_settings['key'].require_authorization_for_cache_control #=> Boolean
    #   resp.data.method_settings['key'].unauthorized_cache_control_header_strategy #=> String, one of ["FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"]
    #   resp.data.variables #=> Hash<String, String>
    #   resp.data.variables['key'] #=> String
    #   resp.data.documentation_version #=> String
    #   resp.data.access_log_settings #=> Types::AccessLogSettings
    #   resp.data.access_log_settings.format #=> String
    #   resp.data.access_log_settings.destination_arn #=> String
    #   resp.data.canary_settings #=> Types::CanarySettings
    #   resp.data.canary_settings.percent_traffic #=> Float
    #   resp.data.canary_settings.deployment_id #=> String
    #   resp.data.canary_settings.stage_variable_overrides #=> Hash<String, String>
    #   resp.data.canary_settings.use_stage_cache #=> Boolean
    #   resp.data.tracing_enabled #=> Boolean
    #   resp.data.web_acl_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.created_date #=> Time
    #   resp.data.last_updated_date #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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

    # <p>Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUsageInput}.
    #
    # @option params [String] :usage_plan_id
    #   <p>The Id of the usage plan associated with the usage data.</p>
    #
    # @option params [String] :key_id
    #   <p>The identifier of the API key associated with the usage plan in which a temporary extension is granted to the remaining quota.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_usage(
    #     usage_plan_id: 'usagePlanId', # required
    #     key_id: 'keyId', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUsageOutput
    #   resp.data.usage_plan_id #=> String
    #   resp.data.start_date #=> String
    #   resp.data.end_date #=> String
    #   resp.data.items #=> Hash<String, Array<Array<Integer>>>
    #   resp.data.items['key'] #=> Array<Array<Integer>>
    #   resp.data.items['key'][0] #=> Array<Integer>
    #   resp.data.items['key'][0][0] #=> Integer
    #   resp.data.position #=> String
    #
    def update_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUsage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUsage,
        stubs: @stubs,
        params_class: Params::UpdateUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a usage plan of a given plan Id.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUsagePlanInput}.
    #
    # @option params [String] :usage_plan_id
    #   <p>The Id of the to-be-updated usage plan.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateUsagePlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_usage_plan(
    #     usage_plan_id: 'usagePlanId', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUsagePlanOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.api_stages #=> Array<ApiStage>
    #   resp.data.api_stages[0] #=> Types::ApiStage
    #   resp.data.api_stages[0].api_id #=> String
    #   resp.data.api_stages[0].stage #=> String
    #   resp.data.api_stages[0].throttle #=> Hash<String, ThrottleSettings>
    #   resp.data.api_stages[0].throttle['key'] #=> Types::ThrottleSettings
    #   resp.data.api_stages[0].throttle['key'].burst_limit #=> Integer
    #   resp.data.api_stages[0].throttle['key'].rate_limit #=> Float
    #   resp.data.throttle #=> Types::ThrottleSettings
    #   resp.data.quota #=> Types::QuotaSettings
    #   resp.data.quota.limit #=> Integer
    #   resp.data.quota.offset #=> Integer
    #   resp.data.quota.period #=> String, one of ["DAY", "WEEK", "MONTH"]
    #   resp.data.product_code #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_usage_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUsagePlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUsagePlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUsagePlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateUsagePlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUsagePlan,
        stubs: @stubs,
        params_class: Params::UpdateUsagePlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_usage_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing VpcLink of a specified identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVpcLinkInput}.
    #
    # @option params [String] :vpc_link_id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    #
    # @option params [Array<PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    #
    # @return [Types::UpdateVpcLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_link(
    #     vpc_link_id: 'vpcLinkId', # required
    #     patch_operations: [
    #       {
    #         op: 'add', # accepts ["add", "remove", "replace", "move", "copy", "test"]
    #         path: 'path',
    #         value: 'value',
    #         from: 'from'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVpcLinkOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.target_arns #=> Array<String>
    #   resp.data.target_arns[0] #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "PENDING", "DELETING", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::BadRequestException]),
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
