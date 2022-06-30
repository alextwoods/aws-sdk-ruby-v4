# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Schemas
  # An API client for schemas
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon EventBridge Schema Registry</p>
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
    def initialize(config = AWS::SDK::Schemas::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a discoverer.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDiscovererInput}.
    #
    # @option params [String] :description
    #   <p>A description for the discoverer.</p>
    #
    # @option params [String] :source_arn
    #   <p>The ARN of the event bus.</p>
    #
    # @option params [Boolean] :cross_account
    #   <p>Support discovery of schemas in events sent to the bus from another account. (default: true).</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags associated with the resource.</p>
    #
    # @return [Types::CreateDiscovererOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_discoverer(
    #     description: 'Description',
    #     source_arn: 'SourceArn', # required
    #     cross_account: false,
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDiscovererOutput
    #   resp.data.description #=> String
    #   resp.data.discoverer_arn #=> String
    #   resp.data.discoverer_id #=> String
    #   resp.data.source_arn #=> String
    #   resp.data.state #=> String, one of ["STARTED", "STOPPED"]
    #   resp.data.cross_account #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_discoverer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDiscovererInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDiscovererInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDiscoverer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::UnauthorizedException, Errors::ConflictException]),
        data_parser: Parsers::CreateDiscoverer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDiscoverer,
        stubs: @stubs,
        params_class: Params::CreateDiscovererOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_discoverer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a registry.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRegistryInput}.
    #
    # @option params [String] :description
    #   <p>A description of the registry to be created.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate with the registry.</p>
    #
    # @return [Types::CreateRegistryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_registry(
    #     description: 'Description',
    #     registry_name: 'RegistryName', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRegistryOutput
    #   resp.data.description #=> String
    #   resp.data.registry_arn #=> String
    #   resp.data.registry_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_registry(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRegistryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRegistryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRegistry
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::UnauthorizedException, Errors::ConflictException]),
        data_parser: Parsers::CreateRegistry
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRegistry,
        stubs: @stubs,
        params_class: Params::CreateRegistryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_registry
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a schema definition.</p> <note><p>Inactive schemas will be deleted after two years.</p></note>
    #
    # @param [Hash] params
    #   See {Types::CreateSchemaInput}.
    #
    # @option params [String] :content
    #   <p>The source of the schema definition.</p>
    #
    # @option params [String] :description
    #   <p>A description of the schema.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags associated with the schema.</p>
    #
    # @option params [String] :type
    #   <p>The type of schema.</p>
    #
    # @return [Types::CreateSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schema(
    #     content: 'Content', # required
    #     description: 'Description',
    #     registry_name: 'RegistryName', # required
    #     schema_name: 'SchemaName', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     type: 'OpenApi3' # required - accepts ["OpenApi3", "JSONSchemaDraft4"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSchemaOutput
    #   resp.data.description #=> String
    #   resp.data.last_modified #=> Time
    #   resp.data.schema_arn #=> String
    #   resp.data.schema_name #=> String
    #   resp.data.schema_version #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.type #=> String
    #   resp.data.version_created_date #=> Time
    #
    def create_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSchema
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreateSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSchema,
        stubs: @stubs,
        params_class: Params::CreateSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a discoverer.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDiscovererInput}.
    #
    # @option params [String] :discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    # @return [Types::DeleteDiscovererOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_discoverer(
    #     discoverer_id: 'DiscovererId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDiscovererOutput
    #
    def delete_discoverer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDiscovererInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDiscovererInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDiscoverer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteDiscoverer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDiscoverer,
        stubs: @stubs,
        params_class: Params::DeleteDiscovererOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_discoverer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Registry.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRegistryInput}.
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @return [Types::DeleteRegistryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_registry(
    #     registry_name: 'RegistryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRegistryOutput
    #
    def delete_registry(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRegistryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRegistryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRegistry
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteRegistry
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRegistry,
        stubs: @stubs,
        params_class: Params::DeleteRegistryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_registry
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete the resource-based policy attached to the specified registry.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyInput}.
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @return [Types::DeleteResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy(
    #     registry_name: 'RegistryName'
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
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

    # <p>Delete a schema definition.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSchemaInput}.
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    #
    # @return [Types::DeleteSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema(
    #     registry_name: 'RegistryName', # required
    #     schema_name: 'SchemaName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSchemaOutput
    #
    def delete_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSchema
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSchema,
        stubs: @stubs,
        params_class: Params::DeleteSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete the schema version definition</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSchemaVersionInput}.
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    #
    # @option params [String] :schema_version
    #   The version number of the schema
    #
    # @return [Types::DeleteSchemaVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema_version(
    #     registry_name: 'RegistryName', # required
    #     schema_name: 'SchemaName', # required
    #     schema_version: 'SchemaVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSchemaVersionOutput
    #
    def delete_schema_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSchemaVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSchemaVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSchemaVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteSchemaVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSchemaVersion,
        stubs: @stubs,
        params_class: Params::DeleteSchemaVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_schema_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe the code binding URI.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCodeBindingInput}.
    #
    # @option params [String] :language
    #   <p>The language of the code binding.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    #
    # @option params [String] :schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #
    # @return [Types::DescribeCodeBindingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_code_binding(
    #     language: 'Language', # required
    #     registry_name: 'RegistryName', # required
    #     schema_name: 'SchemaName', # required
    #     schema_version: 'SchemaVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCodeBindingOutput
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified #=> Time
    #   resp.data.schema_version #=> String
    #   resp.data.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"]
    #
    def describe_code_binding(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCodeBindingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCodeBindingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCodeBinding
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeCodeBinding
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCodeBinding,
        stubs: @stubs,
        params_class: Params::DescribeCodeBindingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_code_binding
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the discoverer.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDiscovererInput}.
    #
    # @option params [String] :discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    # @return [Types::DescribeDiscovererOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_discoverer(
    #     discoverer_id: 'DiscovererId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDiscovererOutput
    #   resp.data.description #=> String
    #   resp.data.discoverer_arn #=> String
    #   resp.data.discoverer_id #=> String
    #   resp.data.source_arn #=> String
    #   resp.data.state #=> String, one of ["STARTED", "STOPPED"]
    #   resp.data.cross_account #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_discoverer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDiscovererInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDiscovererInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDiscoverer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeDiscoverer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDiscoverer,
        stubs: @stubs,
        params_class: Params::DescribeDiscovererOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_discoverer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the registry.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRegistryInput}.
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @return [Types::DescribeRegistryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registry(
    #     registry_name: 'RegistryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRegistryOutput
    #   resp.data.description #=> String
    #   resp.data.registry_arn #=> String
    #   resp.data.registry_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_registry(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRegistryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRegistryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRegistry
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeRegistry
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRegistry,
        stubs: @stubs,
        params_class: Params::DescribeRegistryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_registry
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve the schema definition.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSchemaInput}.
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    #
    # @option params [String] :schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #
    # @return [Types::DescribeSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schema(
    #     registry_name: 'RegistryName', # required
    #     schema_name: 'SchemaName', # required
    #     schema_version: 'SchemaVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSchemaOutput
    #   resp.data.content #=> String
    #   resp.data.description #=> String
    #   resp.data.last_modified #=> Time
    #   resp.data.schema_arn #=> String
    #   resp.data.schema_name #=> String
    #   resp.data.schema_version #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.type #=> String
    #   resp.data.version_created_date #=> Time
    #
    def describe_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSchema
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSchema,
        stubs: @stubs,
        params_class: Params::DescribeSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # @param [Hash] params
    #   See {Types::ExportSchemaInput}.
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    #
    # @option params [String] :schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #
    # @return [Types::ExportSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_schema(
    #     registry_name: 'RegistryName', # required
    #     schema_name: 'SchemaName', # required
    #     schema_version: 'SchemaVersion',
    #     type: 'Type' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportSchemaOutput
    #   resp.data.content #=> String
    #   resp.data.schema_arn #=> String
    #   resp.data.schema_name #=> String
    #   resp.data.schema_version #=> String
    #   resp.data.type #=> String
    #
    def export_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportSchema
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::ExportSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportSchema,
        stubs: @stubs,
        params_class: Params::ExportSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the code binding source URI.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCodeBindingSourceInput}.
    #
    # @option params [String] :language
    #   <p>The language of the code binding.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    #
    # @option params [String] :schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #
    # @return [Types::GetCodeBindingSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_binding_source(
    #     language: 'Language', # required
    #     registry_name: 'RegistryName', # required
    #     schema_name: 'SchemaName', # required
    #     schema_version: 'SchemaVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCodeBindingSourceOutput
    #   resp.data.body #=> String
    #
    def get_code_binding_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCodeBindingSourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCodeBindingSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCodeBindingSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetCodeBindingSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCodeBindingSource,
        stubs: @stubs,
        params_class: Params::GetCodeBindingSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_code_binding_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the discovered schema that was generated based on sampled events.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDiscoveredSchemaInput}.
    #
    # @option params [Array<String>] :events
    #   <p>An array of strings where each string is a JSON event. These are the events that were used to generate the schema. The array includes a single type of event and has a maximum size of 10 events.</p>
    #
    # @option params [String] :type
    #   <p>The type of event.</p>
    #
    # @return [Types::GetDiscoveredSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_discovered_schema(
    #     events: [
    #       'member'
    #     ], # required
    #     type: 'OpenApi3' # required - accepts ["OpenApi3", "JSONSchemaDraft4"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDiscoveredSchemaOutput
    #   resp.data.content #=> String
    #
    def get_discovered_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDiscoveredSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDiscoveredSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDiscoveredSchema
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetDiscoveredSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDiscoveredSchema,
        stubs: @stubs,
        params_class: Params::GetDiscoveredSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_discovered_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the resource-based policy attached to a given registry.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourcePolicyInput}.
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @return [Types::GetResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy(
    #     registry_name: 'RegistryName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourcePolicyOutput
    #   resp.data.policy #=> String
    #   resp.data.revision_id #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
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

    # <p>List the discoverers.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDiscoverersInput}.
    #
    # @option params [String] :discoverer_id_prefix
    #   <p>Specifying this limits the results to only those discoverer IDs that start with the specified prefix.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    # @option params [String] :source_arn_prefix
    #   <p>Specifying this limits the results to only those ARNs that start with the specified prefix.</p>
    #
    # @return [Types::ListDiscoverersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discoverers(
    #     discoverer_id_prefix: 'DiscovererIdPrefix',
    #     limit: 1,
    #     next_token: 'NextToken',
    #     source_arn_prefix: 'SourceArnPrefix'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDiscoverersOutput
    #   resp.data.discoverers #=> Array<DiscovererSummary>
    #   resp.data.discoverers[0] #=> Types::DiscovererSummary
    #   resp.data.discoverers[0].discoverer_arn #=> String
    #   resp.data.discoverers[0].discoverer_id #=> String
    #   resp.data.discoverers[0].source_arn #=> String
    #   resp.data.discoverers[0].state #=> String, one of ["STARTED", "STOPPED"]
    #   resp.data.discoverers[0].cross_account #=> Boolean
    #   resp.data.discoverers[0].tags #=> Hash<String, String>
    #   resp.data.discoverers[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_discoverers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDiscoverersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDiscoverersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDiscoverers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListDiscoverers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDiscoverers,
        stubs: @stubs,
        params_class: Params::ListDiscoverersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_discoverers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the registries.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRegistriesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    # @option params [String] :registry_name_prefix
    #   <p>Specifying this limits the results to only those registry names that start with the specified prefix.</p>
    #
    # @option params [String] :scope
    #   <p>Can be set to Local or AWS to limit responses to your custom registries, or the ones provided by AWS.</p>
    #
    # @return [Types::ListRegistriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_registries(
    #     limit: 1,
    #     next_token: 'NextToken',
    #     registry_name_prefix: 'RegistryNamePrefix',
    #     scope: 'Scope'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRegistriesOutput
    #   resp.data.next_token #=> String
    #   resp.data.registries #=> Array<RegistrySummary>
    #   resp.data.registries[0] #=> Types::RegistrySummary
    #   resp.data.registries[0].registry_arn #=> String
    #   resp.data.registries[0].registry_name #=> String
    #   resp.data.registries[0].tags #=> Hash<String, String>
    #   resp.data.registries[0].tags['key'] #=> String
    #
    def list_registries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRegistriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRegistriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRegistries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListRegistries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRegistries,
        stubs: @stubs,
        params_class: Params::ListRegistriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_registries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of the schema versions and related information.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSchemaVersionsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    #
    # @return [Types::ListSchemaVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schema_versions(
    #     limit: 1,
    #     next_token: 'NextToken',
    #     registry_name: 'RegistryName', # required
    #     schema_name: 'SchemaName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSchemaVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.schema_versions #=> Array<SchemaVersionSummary>
    #   resp.data.schema_versions[0] #=> Types::SchemaVersionSummary
    #   resp.data.schema_versions[0].schema_arn #=> String
    #   resp.data.schema_versions[0].schema_name #=> String
    #   resp.data.schema_versions[0].schema_version #=> String
    #   resp.data.schema_versions[0].type #=> String, one of ["OpenApi3", "JSONSchemaDraft4"]
    #
    def list_schema_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSchemaVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSchemaVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSchemaVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListSchemaVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSchemaVersions,
        stubs: @stubs,
        params_class: Params::ListSchemaVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_schema_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the schemas.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSchemasInput}.
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name_prefix
    #   <p>Specifying this limits the results to only those schema names that start with the specified prefix.</p>
    #
    # @return [Types::ListSchemasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schemas(
    #     limit: 1,
    #     next_token: 'NextToken',
    #     registry_name: 'RegistryName', # required
    #     schema_name_prefix: 'SchemaNamePrefix'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSchemasOutput
    #   resp.data.next_token #=> String
    #   resp.data.schemas #=> Array<SchemaSummary>
    #   resp.data.schemas[0] #=> Types::SchemaSummary
    #   resp.data.schemas[0].last_modified #=> Time
    #   resp.data.schemas[0].schema_arn #=> String
    #   resp.data.schemas[0].schema_name #=> String
    #   resp.data.schemas[0].tags #=> Hash<String, String>
    #   resp.data.schemas[0].tags['key'] #=> String
    #   resp.data.schemas[0].version_count #=> Integer
    #
    def list_schemas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSchemasInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSchemasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSchemas
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListSchemas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSchemas,
        stubs: @stubs,
        params_class: Params::ListSchemasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_schemas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get tags for resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException]),
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

    # <p>Put code binding URI</p>
    #
    # @param [Hash] params
    #   See {Types::PutCodeBindingInput}.
    #
    # @option params [String] :language
    #   <p>The language of the code binding.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    #
    # @option params [String] :schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #
    # @return [Types::PutCodeBindingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_code_binding(
    #     language: 'Language', # required
    #     registry_name: 'RegistryName', # required
    #     schema_name: 'SchemaName', # required
    #     schema_version: 'SchemaVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutCodeBindingOutput
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified #=> Time
    #   resp.data.schema_version #=> String
    #   resp.data.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"]
    #
    def put_code_binding(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutCodeBindingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutCodeBindingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutCodeBinding
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::GoneException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::PutCodeBinding
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutCodeBinding,
        stubs: @stubs,
        params_class: Params::PutCodeBindingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_code_binding
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The name of the policy.</p>
    #
    # @param [Hash] params
    #   See {Types::PutResourcePolicyInput}.
    #
    # @option params [String] :policy
    #   <p>The resource-based policy.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :revision_id
    #   <p>The revision ID of the policy.</p>
    #
    # @return [Types::PutResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy(
    #     policy: 'Policy', # required
    #     registry_name: 'RegistryName',
    #     revision_id: 'RevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourcePolicyOutput
    #   resp.data.policy #=> String
    #   resp.data.revision_id #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::PreconditionFailedException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
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

    # <p>Search the schemas</p>
    #
    # @param [Hash] params
    #   See {Types::SearchSchemasInput}.
    #
    # @option params [String] :keywords
    #   <p>Specifying this limits the results to only schemas that include the provided keywords.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @return [Types::SearchSchemasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_schemas(
    #     keywords: 'Keywords', # required
    #     limit: 1,
    #     next_token: 'NextToken',
    #     registry_name: 'RegistryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchSchemasOutput
    #   resp.data.next_token #=> String
    #   resp.data.schemas #=> Array<SearchSchemaSummary>
    #   resp.data.schemas[0] #=> Types::SearchSchemaSummary
    #   resp.data.schemas[0].registry_name #=> String
    #   resp.data.schemas[0].schema_arn #=> String
    #   resp.data.schemas[0].schema_name #=> String
    #   resp.data.schemas[0].schema_versions #=> Array<SearchSchemaVersionSummary>
    #   resp.data.schemas[0].schema_versions[0] #=> Types::SearchSchemaVersionSummary
    #   resp.data.schemas[0].schema_versions[0].created_date #=> Time
    #   resp.data.schemas[0].schema_versions[0].schema_version #=> String
    #   resp.data.schemas[0].schema_versions[0].type #=> String, one of ["OpenApi3", "JSONSchemaDraft4"]
    #
    def search_schemas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchSchemasInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchSchemasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchSchemas
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::SearchSchemas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchSchemas,
        stubs: @stubs,
        params_class: Params::SearchSchemasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_schemas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the discoverer</p>
    #
    # @param [Hash] params
    #   See {Types::StartDiscovererInput}.
    #
    # @option params [String] :discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    # @return [Types::StartDiscovererOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_discoverer(
    #     discoverer_id: 'DiscovererId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDiscovererOutput
    #   resp.data.discoverer_id #=> String
    #   resp.data.state #=> String, one of ["STARTED", "STOPPED"]
    #
    def start_discoverer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDiscovererInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDiscovererInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDiscoverer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::StartDiscoverer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDiscoverer,
        stubs: @stubs,
        params_class: Params::StartDiscovererOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_discoverer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the discoverer</p>
    #
    # @param [Hash] params
    #   See {Types::StopDiscovererInput}.
    #
    # @option params [String] :discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    # @return [Types::StopDiscovererOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_discoverer(
    #     discoverer_id: 'DiscovererId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopDiscovererOutput
    #   resp.data.discoverer_id #=> String
    #   resp.data.state #=> String, one of ["STARTED", "STOPPED"]
    #
    def stop_discoverer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopDiscovererInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopDiscovererInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopDiscoverer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::StopDiscoverer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopDiscoverer,
        stubs: @stubs,
        params_class: Params::StopDiscovererOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_discoverer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add tags to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags associated with the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException]),
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

    # <p>Removes tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Keys of key-value pairs.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException]),
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

    # <p>Updates the discoverer</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDiscovererInput}.
    #
    # @option params [String] :description
    #   <p>The description of the discoverer to update.</p>
    #
    # @option params [String] :discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    # @option params [Boolean] :cross_account
    #   <p>Support discovery of schemas in events sent to the bus from another account. (default: true)</p>
    #
    # @return [Types::UpdateDiscovererOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_discoverer(
    #     description: 'Description',
    #     discoverer_id: 'DiscovererId', # required
    #     cross_account: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDiscovererOutput
    #   resp.data.description #=> String
    #   resp.data.discoverer_arn #=> String
    #   resp.data.discoverer_id #=> String
    #   resp.data.source_arn #=> String
    #   resp.data.state #=> String, one of ["STARTED", "STOPPED"]
    #   resp.data.cross_account #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_discoverer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDiscovererInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDiscovererInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDiscoverer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateDiscoverer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDiscoverer,
        stubs: @stubs,
        params_class: Params::UpdateDiscovererOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_discoverer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a registry.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRegistryInput}.
    #
    # @option params [String] :description
    #   <p>The description of the registry to update.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @return [Types::UpdateRegistryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_registry(
    #     description: 'Description',
    #     registry_name: 'RegistryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRegistryOutput
    #   resp.data.description #=> String
    #   resp.data.registry_arn #=> String
    #   resp.data.registry_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_registry(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRegistryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRegistryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRegistry
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateRegistry
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRegistry,
        stubs: @stubs,
        params_class: Params::UpdateRegistryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_registry
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the schema definition</p> <note><p>Inactive schemas will be deleted after two years.</p></note>
    #
    # @param [Hash] params
    #   See {Types::UpdateSchemaInput}.
    #
    # @option params [String] :client_token_id
    #   <p>The ID of the client token.</p>
    #
    # @option params [String] :content
    #   <p>The source of the schema definition.</p>
    #
    # @option params [String] :description
    #   <p>The description of the schema.</p>
    #
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    #
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    #
    # @option params [String] :type
    #   <p>The schema type for the events schema.</p>
    #
    # @return [Types::UpdateSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_schema(
    #     client_token_id: 'ClientTokenId',
    #     content: 'Content',
    #     description: 'Description',
    #     registry_name: 'RegistryName', # required
    #     schema_name: 'SchemaName', # required
    #     type: 'OpenApi3' # accepts ["OpenApi3", "JSONSchemaDraft4"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSchemaOutput
    #   resp.data.description #=> String
    #   resp.data.last_modified #=> Time
    #   resp.data.schema_arn #=> String
    #   resp.data.schema_name #=> String
    #   resp.data.schema_version #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.type #=> String
    #   resp.data.version_created_date #=> Time
    #
    def update_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSchema
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSchema,
        stubs: @stubs,
        params_class: Params::UpdateSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_schema
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
