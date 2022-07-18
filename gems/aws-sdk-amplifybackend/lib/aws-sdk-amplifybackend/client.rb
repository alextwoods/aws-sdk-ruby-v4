# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AmplifyBackend
  # An API client for AmplifyBackend
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS Amplify Admin API</p>
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
    def initialize(config = AWS::SDK::AmplifyBackend::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>This operation clones an existing backend.</p>
    #
    # @param [Hash] params
    #   See {Types::CloneBackendInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :target_environment_name
    #   <p>The name of the destination backend environment to be created.</p>
    #
    # @return [Types::CloneBackendOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.clone_backend(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     target_environment_name: 'TargetEnvironmentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CloneBackendOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def clone_backend(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CloneBackendInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CloneBackendInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CloneBackend
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CloneBackend
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CloneBackend,
        stubs: @stubs,
        params_class: Params::CloneBackendOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :clone_backend
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation creates a backend for an Amplify app. Backends are automatically created at the time of app creation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBackendInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :app_name
    #   <p>The name of the app.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [ResourceConfig] :resource_config
    #   <p>The resource configuration for creating a backend.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of the resource.</p>
    #
    # @return [Types::CreateBackendOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend(
    #     app_id: 'AppId', # required
    #     app_name: 'AppName', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_config: { },
    #     resource_name: 'ResourceName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackendOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def create_backend(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackendInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackendInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackend
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateBackend
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackend,
        stubs: @stubs,
        params_class: Params::CreateBackendOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backend
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new backend API resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBackendAPIInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [BackendAPIResourceConfig] :resource_config
    #   <p>The resource configuration for this request.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    #
    # @return [Types::CreateBackendAPIOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend_api(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: 'API_KEY', # accepts ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"]
    #           settings: {
    #             cognito_user_pool_id: 'CognitoUserPoolId',
    #             description: 'Description',
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: 'OpenIDAuthTTL',
    #             open_id_client_id: 'OpenIDClientId',
    #             open_id_iat_ttl: 'OpenIDIatTTL',
    #             open_id_issue_url: 'OpenIDIssueURL',
    #             open_id_provider_name: 'OpenIDProviderName'
    #           }
    #         }
    #       ],
    #       api_name: 'ApiName',
    #       conflict_resolution: {
    #         resolution_strategy: 'OPTIMISTIC_CONCURRENCY' # accepts ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       },
    #       service: 'Service',
    #       transform_schema: 'TransformSchema'
    #     }, # required
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackendAPIOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def create_backend_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackendAPIInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackendAPIInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackendAPI
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateBackendAPI
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackendAPI,
        stubs: @stubs,
        params_class: Params::CreateBackendAPIOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backend_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new backend authentication resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBackendAuthInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [CreateBackendAuthResourceConfig] :resource_config
    #   <p>The resource configuration for this request object.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    #
    # @return [Types::CreateBackendAuthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend_auth(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_config: {
    #       auth_resources: 'USER_POOL_ONLY', # required - accepts ["USER_POOL_ONLY", "IDENTITY_POOL_AND_USER_POOL"]
    #       identity_pool_configs: {
    #         identity_pool_name: 'IdentityPoolName', # required
    #         unauthenticated_login: false # required
    #       },
    #       service: 'COGNITO', # required - accepts ["COGNITO"]
    #       user_pool_configs: {
    #         forgot_password: {
    #           delivery_method: 'EMAIL', # required - accepts ["EMAIL", "SMS"]
    #           email_settings: {
    #             email_message: 'EmailMessage',
    #             email_subject: 'EmailSubject'
    #           },
    #           sms_settings: {
    #             sms_message: 'SmsMessage'
    #           }
    #         },
    #         mfa: {
    #           mfa_mode: 'ON', # required - accepts ["ON", "OFF", "OPTIONAL"]
    #           settings: {
    #             mfa_types: [
    #               'SMS' # accepts ["SMS", "TOTP"]
    #             ],
    #             sms_message: 'SmsMessage'
    #           }
    #         },
    #         o_auth: {
    #           domain_prefix: 'DomainPrefix',
    #           o_auth_grant_type: 'CODE', # required - accepts ["CODE", "IMPLICIT"]
    #           o_auth_scopes: [
    #             'PHONE' # accepts ["PHONE", "EMAIL", "OPENID", "PROFILE", "AWS_COGNITO_SIGNIN_USER_ADMIN"]
    #           ], # required
    #           redirect_sign_in_ur_is: [
    #             'member'
    #           ], # required
    #           social_provider_settings: {
    #             facebook: {
    #               client_id: 'ClientId',
    #               client_secret: 'ClientSecret'
    #             },
    #             sign_in_with_apple: {
    #               client_id: 'ClientId',
    #               key_id: 'KeyId',
    #               private_key: 'PrivateKey',
    #               team_id: 'TeamId'
    #             }
    #           }
    #         },
    #         password_policy: {
    #           additional_constraints: [
    #             'REQUIRE_DIGIT' # accepts ["REQUIRE_DIGIT", "REQUIRE_LOWERCASE", "REQUIRE_SYMBOL", "REQUIRE_UPPERCASE"]
    #           ],
    #           minimum_length: 1.0 # required
    #         },
    #         required_sign_up_attributes: [
    #           'ADDRESS' # accepts ["ADDRESS", "BIRTHDATE", "EMAIL", "FAMILY_NAME", "GENDER", "GIVEN_NAME", "LOCALE", "MIDDLE_NAME", "NAME", "NICKNAME", "PHONE_NUMBER", "PICTURE", "PREFERRED_USERNAME", "PROFILE", "UPDATED_AT", "WEBSITE", "ZONE_INFO"]
    #         ], # required
    #         sign_in_method: 'EMAIL', # required - accepts ["EMAIL", "EMAIL_AND_PHONE_NUMBER", "PHONE_NUMBER", "USERNAME"]
    #         user_pool_name: 'UserPoolName', # required
    #         verification_message: {
    #           delivery_method: 'EMAIL', # required - accepts ["EMAIL", "SMS"]
    #         }
    #       } # required
    #     }, # required
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackendAuthOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def create_backend_auth(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackendAuthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackendAuthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackendAuth
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateBackendAuth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackendAuth,
        stubs: @stubs,
        params_class: Params::CreateBackendAuthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backend_auth
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a config object for a backend.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBackendConfigInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_manager_app_id
    #   <p>The app ID for the backend manager.</p>
    #
    # @return [Types::CreateBackendConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend_config(
    #     app_id: 'AppId', # required
    #     backend_manager_app_id: 'BackendManagerAppId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackendConfigOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.job_id #=> String
    #   resp.data.status #=> String
    #
    def create_backend_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackendConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackendConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackendConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateBackendConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackendConfig,
        stubs: @stubs,
        params_class: Params::CreateBackendConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backend_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a backend storage resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBackendStorageInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [CreateBackendStorageResourceConfig] :resource_config
    #   <p>The resource configuration for creating backend storage.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of the storage resource.</p>
    #
    # @return [Types::CreateBackendStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend_storage(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_config: {
    #       bucket_name: 'BucketName',
    #       permissions: {
    #         authenticated: [
    #           'READ' # accepts ["READ", "CREATE_AND_UPDATE", "DELETE"]
    #         ], # required
    #         un_authenticated: [
    #           'READ' # accepts ["READ", "CREATE_AND_UPDATE", "DELETE"]
    #         ]
    #       }, # required
    #       service_name: 'S3' # required - accepts ["S3"]
    #     }, # required
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackendStorageOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.job_id #=> String
    #   resp.data.status #=> String
    #
    def create_backend_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackendStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackendStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackendStorage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateBackendStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackendStorage,
        stubs: @stubs,
        params_class: Params::CreateBackendStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backend_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a one-time challenge code to authenticate a user into your Amplify Admin UI.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTokenInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @return [Types::CreateTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_token(
    #     app_id: 'AppId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTokenOutput
    #   resp.data.app_id #=> String
    #   resp.data.challenge_code #=> String
    #   resp.data.session_id #=> String
    #   resp.data.ttl #=> String
    #
    def create_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateToken
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateToken,
        stubs: @stubs,
        params_class: Params::CreateTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an existing environment from your Amplify project.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackendInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @return [Types::DeleteBackendOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backend(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackendOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def delete_backend(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackendInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackendInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackend
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteBackend
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackend,
        stubs: @stubs,
        params_class: Params::DeleteBackendOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backend
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing backend API resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackendAPIInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [BackendAPIResourceConfig] :resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    #
    # @return [Types::DeleteBackendAPIOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backend_api(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: 'API_KEY', # accepts ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"]
    #           settings: {
    #             cognito_user_pool_id: 'CognitoUserPoolId',
    #             description: 'Description',
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: 'OpenIDAuthTTL',
    #             open_id_client_id: 'OpenIDClientId',
    #             open_id_iat_ttl: 'OpenIDIatTTL',
    #             open_id_issue_url: 'OpenIDIssueURL',
    #             open_id_provider_name: 'OpenIDProviderName'
    #           }
    #         }
    #       ],
    #       api_name: 'ApiName',
    #       conflict_resolution: {
    #         resolution_strategy: 'OPTIMISTIC_CONCURRENCY' # accepts ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       },
    #       service: 'Service',
    #       transform_schema: 'TransformSchema'
    #     },
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackendAPIOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def delete_backend_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackendAPIInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackendAPIInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackendAPI
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteBackendAPI
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackendAPI,
        stubs: @stubs,
        params_class: Params::DeleteBackendAPIOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backend_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing backend authentication resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackendAuthInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    #
    # @return [Types::DeleteBackendAuthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backend_auth(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackendAuthOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def delete_backend_auth(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackendAuthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackendAuthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackendAuth
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteBackendAuth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackendAuth,
        stubs: @stubs,
        params_class: Params::DeleteBackendAuthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backend_auth
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified backend storage resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackendStorageInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of the storage resource.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the storage service.</p>
    #
    # @return [Types::DeleteBackendStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backend_storage(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_name: 'ResourceName', # required
    #     service_name: 'S3' # required - accepts ["S3"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackendStorageOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.job_id #=> String
    #   resp.data.status #=> String
    #
    def delete_backend_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackendStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackendStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackendStorage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteBackendStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackendStorage,
        stubs: @stubs,
        params_class: Params::DeleteBackendStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backend_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the challenge token based on the given appId and sessionId.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTokenInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    #
    # @return [Types::DeleteTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_token(
    #     app_id: 'AppId', # required
    #     session_id: 'SessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTokenOutput
    #   resp.data.is_success #=> Boolean
    #
    def delete_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteToken
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteToken,
        stubs: @stubs,
        params_class: Params::DeleteTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a model schema for an existing backend API resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GenerateBackendAPIModelsInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    #
    # @return [Types::GenerateBackendAPIModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_backend_api_models(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateBackendAPIModelsOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def generate_backend_api_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateBackendAPIModelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateBackendAPIModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateBackendAPIModels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GenerateBackendAPIModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateBackendAPIModels,
        stubs: @stubs,
        params_class: Params::GenerateBackendAPIModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_backend_api_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides project-level details for your Amplify UI project.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackendInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @return [Types::GetBackendOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackendOutput
    #   resp.data.amplify_feature_flags #=> String
    #   resp.data.amplify_meta_config #=> String
    #   resp.data.app_id #=> String
    #   resp.data.app_name #=> String
    #   resp.data.backend_environment_list #=> Array<String>
    #   resp.data.backend_environment_list[0] #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #
    def get_backend(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackendInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackendInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackend
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetBackend
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackend,
        stubs: @stubs,
        params_class: Params::GetBackendOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backend
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the details for a backend API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackendAPIInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [BackendAPIResourceConfig] :resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    #
    # @return [Types::GetBackendAPIOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_api(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: 'API_KEY', # accepts ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"]
    #           settings: {
    #             cognito_user_pool_id: 'CognitoUserPoolId',
    #             description: 'Description',
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: 'OpenIDAuthTTL',
    #             open_id_client_id: 'OpenIDClientId',
    #             open_id_iat_ttl: 'OpenIDIatTTL',
    #             open_id_issue_url: 'OpenIDIssueURL',
    #             open_id_provider_name: 'OpenIDProviderName'
    #           }
    #         }
    #       ],
    #       api_name: 'ApiName',
    #       conflict_resolution: {
    #         resolution_strategy: 'OPTIMISTIC_CONCURRENCY' # accepts ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       },
    #       service: 'Service',
    #       transform_schema: 'TransformSchema'
    #     },
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackendAPIOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.resource_config #=> Types::BackendAPIResourceConfig
    #   resp.data.resource_config.additional_auth_types #=> Array<BackendAPIAuthType>
    #   resp.data.resource_config.additional_auth_types[0] #=> Types::BackendAPIAuthType
    #   resp.data.resource_config.additional_auth_types[0].mode #=> String, one of ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"]
    #   resp.data.resource_config.additional_auth_types[0].settings #=> Types::BackendAPIAppSyncAuthSettings
    #   resp.data.resource_config.additional_auth_types[0].settings.cognito_user_pool_id #=> String
    #   resp.data.resource_config.additional_auth_types[0].settings.description #=> String
    #   resp.data.resource_config.additional_auth_types[0].settings.expiration_time #=> Float
    #   resp.data.resource_config.additional_auth_types[0].settings.open_id_auth_ttl #=> String
    #   resp.data.resource_config.additional_auth_types[0].settings.open_id_client_id #=> String
    #   resp.data.resource_config.additional_auth_types[0].settings.open_id_iat_ttl #=> String
    #   resp.data.resource_config.additional_auth_types[0].settings.open_id_issue_url #=> String
    #   resp.data.resource_config.additional_auth_types[0].settings.open_id_provider_name #=> String
    #   resp.data.resource_config.api_name #=> String
    #   resp.data.resource_config.conflict_resolution #=> Types::BackendAPIConflictResolution
    #   resp.data.resource_config.conflict_resolution.resolution_strategy #=> String, one of ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #   resp.data.resource_config.default_auth_type #=> Types::BackendAPIAuthType
    #   resp.data.resource_config.service #=> String
    #   resp.data.resource_config.transform_schema #=> String
    #   resp.data.resource_name #=> String
    #
    def get_backend_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackendAPIInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackendAPIInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackendAPI
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetBackendAPI
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackendAPI,
        stubs: @stubs,
        params_class: Params::GetBackendAPIOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backend_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a model schema for existing backend API resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackendAPIModelsInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    #
    # @return [Types::GetBackendAPIModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_api_models(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackendAPIModelsOutput
    #   resp.data.models #=> String
    #   resp.data.status #=> String, one of ["LATEST", "STALE"]
    #
    def get_backend_api_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackendAPIModelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackendAPIModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackendAPIModels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetBackendAPIModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackendAPIModels,
        stubs: @stubs,
        params_class: Params::GetBackendAPIModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backend_api_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a backend auth details.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackendAuthInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    #
    # @return [Types::GetBackendAuthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_auth(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackendAuthOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.resource_config #=> Types::CreateBackendAuthResourceConfig
    #   resp.data.resource_config.auth_resources #=> String, one of ["USER_POOL_ONLY", "IDENTITY_POOL_AND_USER_POOL"]
    #   resp.data.resource_config.identity_pool_configs #=> Types::CreateBackendAuthIdentityPoolConfig
    #   resp.data.resource_config.identity_pool_configs.identity_pool_name #=> String
    #   resp.data.resource_config.identity_pool_configs.unauthenticated_login #=> Boolean
    #   resp.data.resource_config.service #=> String, one of ["COGNITO"]
    #   resp.data.resource_config.user_pool_configs #=> Types::CreateBackendAuthUserPoolConfig
    #   resp.data.resource_config.user_pool_configs.forgot_password #=> Types::CreateBackendAuthForgotPasswordConfig
    #   resp.data.resource_config.user_pool_configs.forgot_password.delivery_method #=> String, one of ["EMAIL", "SMS"]
    #   resp.data.resource_config.user_pool_configs.forgot_password.email_settings #=> Types::EmailSettings
    #   resp.data.resource_config.user_pool_configs.forgot_password.email_settings.email_message #=> String
    #   resp.data.resource_config.user_pool_configs.forgot_password.email_settings.email_subject #=> String
    #   resp.data.resource_config.user_pool_configs.forgot_password.sms_settings #=> Types::SmsSettings
    #   resp.data.resource_config.user_pool_configs.forgot_password.sms_settings.sms_message #=> String
    #   resp.data.resource_config.user_pool_configs.mfa #=> Types::CreateBackendAuthMFAConfig
    #   resp.data.resource_config.user_pool_configs.mfa.mfa_mode #=> String, one of ["ON", "OFF", "OPTIONAL"]
    #   resp.data.resource_config.user_pool_configs.mfa.settings #=> Types::Settings
    #   resp.data.resource_config.user_pool_configs.mfa.settings.mfa_types #=> Array<String>
    #   resp.data.resource_config.user_pool_configs.mfa.settings.mfa_types[0] #=> String, one of ["SMS", "TOTP"]
    #   resp.data.resource_config.user_pool_configs.mfa.settings.sms_message #=> String
    #   resp.data.resource_config.user_pool_configs.o_auth #=> Types::CreateBackendAuthOAuthConfig
    #   resp.data.resource_config.user_pool_configs.o_auth.domain_prefix #=> String
    #   resp.data.resource_config.user_pool_configs.o_auth.o_auth_grant_type #=> String, one of ["CODE", "IMPLICIT"]
    #   resp.data.resource_config.user_pool_configs.o_auth.o_auth_scopes #=> Array<String>
    #   resp.data.resource_config.user_pool_configs.o_auth.o_auth_scopes[0] #=> String, one of ["PHONE", "EMAIL", "OPENID", "PROFILE", "AWS_COGNITO_SIGNIN_USER_ADMIN"]
    #   resp.data.resource_config.user_pool_configs.o_auth.redirect_sign_in_ur_is #=> Array<String>
    #   resp.data.resource_config.user_pool_configs.o_auth.redirect_sign_in_ur_is[0] #=> String
    #   resp.data.resource_config.user_pool_configs.o_auth.redirect_sign_out_ur_is #=> Array<String>
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings #=> Types::SocialProviderSettings
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings.facebook #=> Types::BackendAuthSocialProviderConfig
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings.facebook.client_id #=> String
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings.facebook.client_secret #=> String
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings.google #=> Types::BackendAuthSocialProviderConfig
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings.login_with_amazon #=> Types::BackendAuthSocialProviderConfig
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings.sign_in_with_apple #=> Types::BackendAuthAppleProviderConfig
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings.sign_in_with_apple.client_id #=> String
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings.sign_in_with_apple.key_id #=> String
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings.sign_in_with_apple.private_key #=> String
    #   resp.data.resource_config.user_pool_configs.o_auth.social_provider_settings.sign_in_with_apple.team_id #=> String
    #   resp.data.resource_config.user_pool_configs.password_policy #=> Types::CreateBackendAuthPasswordPolicyConfig
    #   resp.data.resource_config.user_pool_configs.password_policy.additional_constraints #=> Array<String>
    #   resp.data.resource_config.user_pool_configs.password_policy.additional_constraints[0] #=> String, one of ["REQUIRE_DIGIT", "REQUIRE_LOWERCASE", "REQUIRE_SYMBOL", "REQUIRE_UPPERCASE"]
    #   resp.data.resource_config.user_pool_configs.password_policy.minimum_length #=> Float
    #   resp.data.resource_config.user_pool_configs.required_sign_up_attributes #=> Array<String>
    #   resp.data.resource_config.user_pool_configs.required_sign_up_attributes[0] #=> String, one of ["ADDRESS", "BIRTHDATE", "EMAIL", "FAMILY_NAME", "GENDER", "GIVEN_NAME", "LOCALE", "MIDDLE_NAME", "NAME", "NICKNAME", "PHONE_NUMBER", "PICTURE", "PREFERRED_USERNAME", "PROFILE", "UPDATED_AT", "WEBSITE", "ZONE_INFO"]
    #   resp.data.resource_config.user_pool_configs.sign_in_method #=> String, one of ["EMAIL", "EMAIL_AND_PHONE_NUMBER", "PHONE_NUMBER", "USERNAME"]
    #   resp.data.resource_config.user_pool_configs.user_pool_name #=> String
    #   resp.data.resource_config.user_pool_configs.verification_message #=> Types::CreateBackendAuthVerificationMessageConfig
    #   resp.data.resource_config.user_pool_configs.verification_message.delivery_method #=> String, one of ["EMAIL", "SMS"]
    #   resp.data.resource_config.user_pool_configs.verification_message.email_settings #=> Types::EmailSettings
    #   resp.data.resource_config.user_pool_configs.verification_message.sms_settings #=> Types::SmsSettings
    #   resp.data.resource_name #=> String
    #
    def get_backend_auth(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackendAuthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackendAuthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackendAuth
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetBackendAuth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackendAuth,
        stubs: @stubs,
        params_class: Params::GetBackendAuthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backend_auth
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specific job.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackendJobInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :job_id
    #   <p>The ID for the job.</p>
    #
    # @return [Types::GetBackendJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_job(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackendJobOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.create_time #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #   resp.data.update_time #=> String
    #
    def get_backend_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackendJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackendJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackendJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetBackendJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackendJob,
        stubs: @stubs,
        params_class: Params::GetBackendJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backend_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details for a backend storage resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackendStorageInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of the storage resource.</p>
    #
    # @return [Types::GetBackendStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_storage(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackendStorageOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.resource_config #=> Types::GetBackendStorageResourceConfig
    #   resp.data.resource_config.bucket_name #=> String
    #   resp.data.resource_config.imported #=> Boolean
    #   resp.data.resource_config.permissions #=> Types::BackendStoragePermissions
    #   resp.data.resource_config.permissions.authenticated #=> Array<String>
    #   resp.data.resource_config.permissions.authenticated[0] #=> String, one of ["READ", "CREATE_AND_UPDATE", "DELETE"]
    #   resp.data.resource_config.permissions.un_authenticated #=> Array<String>
    #   resp.data.resource_config.permissions.un_authenticated[0] #=> String, one of ["READ", "CREATE_AND_UPDATE", "DELETE"]
    #   resp.data.resource_config.service_name #=> String, one of ["S3"]
    #   resp.data.resource_name #=> String
    #
    def get_backend_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackendStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackendStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackendStorage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetBackendStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackendStorage,
        stubs: @stubs,
        params_class: Params::GetBackendStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backend_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the challenge token based on the given appId and sessionId.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTokenInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    #
    # @return [Types::GetTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_token(
    #     app_id: 'AppId', # required
    #     session_id: 'SessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTokenOutput
    #   resp.data.app_id #=> String
    #   resp.data.challenge_code #=> String
    #   resp.data.session_id #=> String
    #   resp.data.ttl #=> String
    #
    def get_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetToken
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetToken,
        stubs: @stubs,
        params_class: Params::GetTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports an existing backend authentication resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportBackendAuthInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :identity_pool_id
    #   <p>The ID of the Amazon Cognito identity pool.</p>
    #
    # @option params [String] :native_client_id
    #   <p>The ID of the Amazon Cognito native client.</p>
    #
    # @option params [String] :user_pool_id
    #   <p>The ID of the Amazon Cognito user pool.</p>
    #
    # @option params [String] :web_client_id
    #   <p>The ID of the Amazon Cognito web client.</p>
    #
    # @return [Types::ImportBackendAuthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_backend_auth(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     identity_pool_id: 'IdentityPoolId',
    #     native_client_id: 'NativeClientId', # required
    #     user_pool_id: 'UserPoolId', # required
    #     web_client_id: 'WebClientId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportBackendAuthOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def import_backend_auth(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportBackendAuthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportBackendAuthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportBackendAuth
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ImportBackendAuth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportBackendAuth,
        stubs: @stubs,
        params_class: Params::ImportBackendAuthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_backend_auth
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports an existing backend storage resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportBackendStorageInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :bucket_name
    #   <p>The name of the S3 bucket.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the storage service.</p>
    #
    # @return [Types::ImportBackendStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_backend_storage(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     bucket_name: 'BucketName',
    #     service_name: 'S3' # required - accepts ["S3"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportBackendStorageOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.job_id #=> String
    #   resp.data.status #=> String
    #
    def import_backend_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportBackendStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportBackendStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportBackendStorage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ImportBackendStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportBackendStorage,
        stubs: @stubs,
        params_class: Params::ImportBackendStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_backend_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the jobs for the backend of an Amplify app.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBackendJobsInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :job_id
    #   <p>The ID for the job.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [String] :operation
    #   <p>Filters the list of response objects to include only those with the specified operation name.</p>
    #
    # @option params [String] :status
    #   <p>Filters the list of response objects to include only those with the specified status.</p>
    #
    # @return [Types::ListBackendJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backend_jobs(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     job_id: 'JobId',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     operation: 'Operation',
    #     status: 'Status'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBackendJobsOutput
    #   resp.data.jobs #=> Array<BackendJobRespObj>
    #   resp.data.jobs[0] #=> Types::BackendJobRespObj
    #   resp.data.jobs[0].app_id #=> String
    #   resp.data.jobs[0].backend_environment_name #=> String
    #   resp.data.jobs[0].create_time #=> String
    #   resp.data.jobs[0].error #=> String
    #   resp.data.jobs[0].job_id #=> String
    #   resp.data.jobs[0].operation #=> String
    #   resp.data.jobs[0].status #=> String
    #   resp.data.jobs[0].update_time #=> String
    #   resp.data.next_token #=> String
    #
    def list_backend_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBackendJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBackendJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBackendJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListBackendJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBackendJobs,
        stubs: @stubs,
        params_class: Params::ListBackendJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_backend_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The list of S3 buckets in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListS3BucketsInput}.
    #
    # @option params [String] :next_token
    #   <p>Reserved for future use.</p>
    #
    # @return [Types::ListS3BucketsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_s3_buckets(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListS3BucketsOutput
    #   resp.data.buckets #=> Array<S3BucketInfo>
    #   resp.data.buckets[0] #=> Types::S3BucketInfo
    #   resp.data.buckets[0].creation_date #=> String
    #   resp.data.buckets[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_s3_buckets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListS3BucketsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListS3BucketsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListS3Buckets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListS3Buckets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListS3Buckets,
        stubs: @stubs,
        params_class: Params::ListS3BucketsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_s3_buckets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes all backend environments from your Amplify project.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveAllBackendsInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [Boolean] :clean_amplify_app
    #   <p>Cleans up the Amplify Console app if this value is set to true.</p>
    #
    # @return [Types::RemoveAllBackendsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_all_backends(
    #     app_id: 'AppId', # required
    #     clean_amplify_app: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveAllBackendsOutput
    #   resp.data.app_id #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def remove_all_backends(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveAllBackendsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveAllBackendsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveAllBackends
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RemoveAllBackends
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveAllBackends,
        stubs: @stubs,
        params_class: Params::RemoveAllBackendsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_all_backends
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the AWS resources required to access the Amplify Admin UI.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveBackendConfigInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @return [Types::RemoveBackendConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_backend_config(
    #     app_id: 'AppId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveBackendConfigOutput
    #   resp.data.error #=> String
    #
    def remove_backend_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveBackendConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveBackendConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveBackendConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RemoveBackendConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveBackendConfig,
        stubs: @stubs,
        params_class: Params::RemoveBackendConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_backend_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing backend API resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBackendAPIInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [BackendAPIResourceConfig] :resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    #
    # @return [Types::UpdateBackendAPIOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backend_api(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: 'API_KEY', # accepts ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"]
    #           settings: {
    #             cognito_user_pool_id: 'CognitoUserPoolId',
    #             description: 'Description',
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: 'OpenIDAuthTTL',
    #             open_id_client_id: 'OpenIDClientId',
    #             open_id_iat_ttl: 'OpenIDIatTTL',
    #             open_id_issue_url: 'OpenIDIssueURL',
    #             open_id_provider_name: 'OpenIDProviderName'
    #           }
    #         }
    #       ],
    #       api_name: 'ApiName',
    #       conflict_resolution: {
    #         resolution_strategy: 'OPTIMISTIC_CONCURRENCY' # accepts ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       },
    #       service: 'Service',
    #       transform_schema: 'TransformSchema'
    #     },
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBackendAPIOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def update_backend_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBackendAPIInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBackendAPIInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBackendAPI
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateBackendAPI
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBackendAPI,
        stubs: @stubs,
        params_class: Params::UpdateBackendAPIOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_backend_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing backend authentication resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBackendAuthInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [UpdateBackendAuthResourceConfig] :resource_config
    #   <p>The resource configuration for this request object.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    #
    # @return [Types::UpdateBackendAuthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backend_auth(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_config: {
    #       auth_resources: 'USER_POOL_ONLY', # required - accepts ["USER_POOL_ONLY", "IDENTITY_POOL_AND_USER_POOL"]
    #       identity_pool_configs: {
    #         unauthenticated_login: false
    #       },
    #       service: 'COGNITO', # required - accepts ["COGNITO"]
    #       user_pool_configs: {
    #         forgot_password: {
    #           delivery_method: 'EMAIL', # accepts ["EMAIL", "SMS"]
    #           email_settings: {
    #             email_message: 'EmailMessage',
    #             email_subject: 'EmailSubject'
    #           },
    #           sms_settings: {
    #             sms_message: 'SmsMessage'
    #           }
    #         },
    #         mfa: {
    #           mfa_mode: 'ON', # accepts ["ON", "OFF", "OPTIONAL"]
    #           settings: {
    #             mfa_types: [
    #               'SMS' # accepts ["SMS", "TOTP"]
    #             ],
    #             sms_message: 'SmsMessage'
    #           }
    #         },
    #         o_auth: {
    #           domain_prefix: 'DomainPrefix',
    #           o_auth_grant_type: 'CODE', # accepts ["CODE", "IMPLICIT"]
    #           o_auth_scopes: [
    #             'PHONE' # accepts ["PHONE", "EMAIL", "OPENID", "PROFILE", "AWS_COGNITO_SIGNIN_USER_ADMIN"]
    #           ],
    #           redirect_sign_in_ur_is: [
    #             'member'
    #           ],
    #           social_provider_settings: {
    #             facebook: {
    #               client_id: 'ClientId',
    #               client_secret: 'ClientSecret'
    #             },
    #             sign_in_with_apple: {
    #               client_id: 'ClientId',
    #               key_id: 'KeyId',
    #               private_key: 'PrivateKey',
    #               team_id: 'TeamId'
    #             }
    #           }
    #         },
    #         password_policy: {
    #           additional_constraints: [
    #             'REQUIRE_DIGIT' # accepts ["REQUIRE_DIGIT", "REQUIRE_LOWERCASE", "REQUIRE_SYMBOL", "REQUIRE_UPPERCASE"]
    #           ],
    #           minimum_length: 1.0
    #         },
    #         verification_message: {
    #           delivery_method: 'EMAIL', # required - accepts ["EMAIL", "SMS"]
    #         }
    #       } # required
    #     }, # required
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBackendAuthOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #
    def update_backend_auth(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBackendAuthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBackendAuthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBackendAuth
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateBackendAuth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBackendAuth,
        stubs: @stubs,
        params_class: Params::UpdateBackendAuthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_backend_auth
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the AWS resources required to access the Amplify Admin UI.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBackendConfigInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [LoginAuthConfigReqObj] :login_auth_config
    #   <p>Describes the Amazon Cognito configuration for Admin UI access.</p>
    #
    # @return [Types::UpdateBackendConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backend_config(
    #     app_id: 'AppId', # required
    #     login_auth_config: {
    #       aws_cognito_identity_pool_id: 'AwsCognitoIdentityPoolId',
    #       aws_cognito_region: 'AwsCognitoRegion',
    #       aws_user_pools_id: 'AwsUserPoolsId',
    #       aws_user_pools_web_client_id: 'AwsUserPoolsWebClientId'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBackendConfigOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_manager_app_id #=> String
    #   resp.data.error #=> String
    #   resp.data.login_auth_config #=> Types::LoginAuthConfigReqObj
    #   resp.data.login_auth_config.aws_cognito_identity_pool_id #=> String
    #   resp.data.login_auth_config.aws_cognito_region #=> String
    #   resp.data.login_auth_config.aws_user_pools_id #=> String
    #   resp.data.login_auth_config.aws_user_pools_web_client_id #=> String
    #
    def update_backend_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBackendConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBackendConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBackendConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateBackendConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBackendConfig,
        stubs: @stubs,
        params_class: Params::UpdateBackendConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_backend_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a specific job.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBackendJobInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [String] :job_id
    #   <p>The ID for the job.</p>
    #
    # @option params [String] :operation
    #   <p>Filters the list of response objects to include only those with the specified operation name.</p>
    #
    # @option params [String] :status
    #   <p>Filters the list of response objects to include only those with the specified status.</p>
    #
    # @return [Types::UpdateBackendJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backend_job(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     job_id: 'JobId', # required
    #     operation: 'Operation',
    #     status: 'Status'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBackendJobOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.create_time #=> String
    #   resp.data.error #=> String
    #   resp.data.job_id #=> String
    #   resp.data.operation #=> String
    #   resp.data.status #=> String
    #   resp.data.update_time #=> String
    #
    def update_backend_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBackendJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBackendJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBackendJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateBackendJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBackendJob,
        stubs: @stubs,
        params_class: Params::UpdateBackendJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_backend_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing backend storage resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBackendStorageInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    # @option params [UpdateBackendStorageResourceConfig] :resource_config
    #   <p>The resource configuration for updating backend storage.</p>
    #
    # @option params [String] :resource_name
    #   <p>The name of the storage resource.</p>
    #
    # @return [Types::UpdateBackendStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backend_storage(
    #     app_id: 'AppId', # required
    #     backend_environment_name: 'BackendEnvironmentName', # required
    #     resource_config: {
    #       permissions: {
    #         authenticated: [
    #           'READ' # accepts ["READ", "CREATE_AND_UPDATE", "DELETE"]
    #         ], # required
    #         un_authenticated: [
    #           'READ' # accepts ["READ", "CREATE_AND_UPDATE", "DELETE"]
    #         ]
    #       }, # required
    #       service_name: 'S3' # required - accepts ["S3"]
    #     }, # required
    #     resource_name: 'ResourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBackendStorageOutput
    #   resp.data.app_id #=> String
    #   resp.data.backend_environment_name #=> String
    #   resp.data.job_id #=> String
    #   resp.data.status #=> String
    #
    def update_backend_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBackendStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBackendStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBackendStorage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GatewayTimeoutException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateBackendStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBackendStorage,
        stubs: @stubs,
        params_class: Params::UpdateBackendStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_backend_storage
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
