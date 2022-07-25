# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ServiceCatalogAppRegistry
  # An API client for AWS242AppRegistry
  # See {#initialize} for a full list of supported configuration options
  # <p> Amazon Web Services Service Catalog AppRegistry enables organizations to understand the application context of their Amazon Web Services resources. AppRegistry provides a repository of your applications, their resources, and the application metadata that you use within your enterprise.</p>
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
    def initialize(config = AWS::SDK::ServiceCatalogAppRegistry::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates an attribute group with an application to augment the application's metadata
    #       with the group's attributes. This feature enables applications to be described with
    #       user-defined details that are machine-readable, such as third-party integrations.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateAttributeGroupInput}.
    #
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    #
    # @option params [String] :attribute_group
    #   <p>The name or ID of the attribute group that holds the attributes to describe the application.</p>
    #
    # @return [Types::AssociateAttributeGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_attribute_group(
    #     application: 'application', # required
    #     attribute_group: 'attributeGroup' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateAttributeGroupOutput
    #   resp.data.application_arn #=> String
    #   resp.data.attribute_group_arn #=> String
    #
    def associate_attribute_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateAttributeGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateAttributeGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateAttributeGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::AssociateAttributeGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateAttributeGroup,
        stubs: @stubs,
        params_class: Params::AssociateAttributeGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_attribute_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a resource with an application. Both the resource and the application can be specified either by ID or name.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateResourceInput}.
    #
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resource of which the application will be associated.</p>
    #
    # @option params [String] :resource
    #   <p>The name or ID of the resource of which the application will be associated.</p>
    #
    # @return [Types::AssociateResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resource(
    #     application: 'application', # required
    #     resource_type: 'CFN_STACK', # required - accepts ["CFN_STACK"]
    #     resource: 'resource' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateResourceOutput
    #   resp.data.application_arn #=> String
    #   resp.data.resource_arn #=> String
    #
    def associate_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::AssociateResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateResource,
        stubs: @stubs,
        params_class: Params::AssociateResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new application that is the top-level node in a hierarchy of related cloud resource abstractions.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    #
    # @option params [String] :description
    #   <p>The description of the application.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Key-value pairs you can use to associate with the application.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier that you provide to ensure idempotency. If you retry a request that
    #         completed successfully using the same client token and the same parameters, the retry succeeds
    #         without performing any further actions. If you retry a successful request using the same
    #         client token, but one or more of the parameters are different, the retry fails.</p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     name: 'name', # required
    #     description: 'description',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.application #=> Types::Application
    #   resp.data.application.id #=> String
    #   resp.data.application.arn #=> String
    #   resp.data.application.name #=> String
    #   resp.data.application.description #=> String
    #   resp.data.application.creation_time #=> Time
    #   resp.data.application.last_update_time #=> Time
    #   resp.data.application.tags #=> Hash<String, String>
    #   resp.data.application.tags['key'] #=> String
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
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

    # <p>Creates a new attribute group as a container for user-defined attributes. This feature
    #       enables users to have full control over their cloud application's metadata in a rich
    #       machine-readable format to facilitate integration with automated workflows and third-party
    #       tools.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAttributeGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the attribute group.</p>
    #
    # @option params [String] :description
    #   <p>The description of the attribute group that the user provides.</p>
    #
    # @option params [String] :attributes
    #   <p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Key-value pairs you can use to associate with the attribute group.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier that you provide to ensure idempotency. If you retry a request that
    #         completed successfully using the same client token and the same parameters, the retry succeeds
    #         without performing any further actions. If you retry a successful request using the same
    #         client token, but one or more of the parameters are different, the retry fails.</p>
    #
    # @return [Types::CreateAttributeGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_attribute_group(
    #     name: 'name', # required
    #     description: 'description',
    #     attributes: 'attributes', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAttributeGroupOutput
    #   resp.data.attribute_group #=> Types::AttributeGroup
    #   resp.data.attribute_group.id #=> String
    #   resp.data.attribute_group.arn #=> String
    #   resp.data.attribute_group.name #=> String
    #   resp.data.attribute_group.description #=> String
    #   resp.data.attribute_group.creation_time #=> Time
    #   resp.data.attribute_group.last_update_time #=> Time
    #   resp.data.attribute_group.tags #=> Hash<String, String>
    #   resp.data.attribute_group.tags['key'] #=> String
    #
    def create_attribute_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAttributeGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAttributeGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAttributeGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateAttributeGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAttributeGroup,
        stubs: @stubs,
        params_class: Params::CreateAttributeGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_attribute_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an application that is specified either by its application ID or name. All associated attribute groups and resources must be disassociated from it before deleting an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    #
    # @return [Types::DeleteApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application(
    #     application: 'application' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationOutput
    #   resp.data.application #=> Types::ApplicationSummary
    #   resp.data.application.id #=> String
    #   resp.data.application.arn #=> String
    #   resp.data.application.name #=> String
    #   resp.data.application.description #=> String
    #   resp.data.application.creation_time #=> Time
    #   resp.data.application.last_update_time #=> Time
    #
    def delete_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Deletes an attribute group, specified either by its attribute group ID or name.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAttributeGroupInput}.
    #
    # @option params [String] :attribute_group
    #   <p>The name or ID of the attribute group that holds the attributes to describe the application.</p>
    #
    # @return [Types::DeleteAttributeGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attribute_group(
    #     attribute_group: 'attributeGroup' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAttributeGroupOutput
    #   resp.data.attribute_group #=> Types::AttributeGroupSummary
    #   resp.data.attribute_group.id #=> String
    #   resp.data.attribute_group.arn #=> String
    #   resp.data.attribute_group.name #=> String
    #   resp.data.attribute_group.description #=> String
    #   resp.data.attribute_group.creation_time #=> Time
    #   resp.data.attribute_group.last_update_time #=> Time
    #
    def delete_attribute_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAttributeGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAttributeGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAttributeGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteAttributeGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAttributeGroup,
        stubs: @stubs,
        params_class: Params::DeleteAttributeGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_attribute_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates an attribute group from an application to remove the extra attributes contained in the attribute group from the application's metadata. This operation reverts <code>AssociateAttributeGroup</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateAttributeGroupInput}.
    #
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    #
    # @option params [String] :attribute_group
    #   <p>The name or ID of the attribute group that holds the attributes to describe the application.</p>
    #
    # @return [Types::DisassociateAttributeGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_attribute_group(
    #     application: 'application', # required
    #     attribute_group: 'attributeGroup' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateAttributeGroupOutput
    #   resp.data.application_arn #=> String
    #   resp.data.attribute_group_arn #=> String
    #
    def disassociate_attribute_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateAttributeGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateAttributeGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateAttributeGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateAttributeGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateAttributeGroup,
        stubs: @stubs,
        params_class: Params::DisassociateAttributeGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_attribute_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a resource from application. Both the resource and the application can be specified either by ID or name.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateResourceInput}.
    #
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of the resource that is being disassociated.</p>
    #
    # @option params [String] :resource
    #   <p>The name or ID of the resource.</p>
    #
    # @return [Types::DisassociateResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resource(
    #     application: 'application', # required
    #     resource_type: 'CFN_STACK', # required - accepts ["CFN_STACK"]
    #     resource: 'resource' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateResourceOutput
    #   resp.data.application_arn #=> String
    #   resp.data.resource_arn #=> String
    #
    def disassociate_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisassociateResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateResource,
        stubs: @stubs,
        params_class: Params::DisassociateResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves metadata information about one of your applications. The application can be specified either by its unique ID or by its name (which is unique within one account in one region at a given point in time). Specify by ID in automated workflows if you want to make sure that the exact same application is returned or a <code>ResourceNotFoundException</code> is thrown, avoiding the ABA addressing problem.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationInput}.
    #
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    #
    # @return [Types::GetApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application(
    #     application: 'application' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationOutput
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_update_time #=> Time
    #   resp.data.associated_resource_count #=> Integer
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.integrations #=> Types::Integrations
    #   resp.data.integrations.resource_group #=> Types::ResourceGroup
    #   resp.data.integrations.resource_group.state #=> String, one of ["CREATING", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #   resp.data.integrations.resource_group.arn #=> String
    #   resp.data.integrations.resource_group.error_message #=> String
    #
    def get_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Gets the resource associated with the application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAssociatedResourceInput}.
    #
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resource associated with the application.</p>
    #
    # @option params [String] :resource
    #   <p>The name or ID of the resource associated with the application.</p>
    #
    # @return [Types::GetAssociatedResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_associated_resource(
    #     application: 'application', # required
    #     resource_type: 'CFN_STACK', # required - accepts ["CFN_STACK"]
    #     resource: 'resource' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssociatedResourceOutput
    #   resp.data.resource #=> Types::Resource
    #   resp.data.resource.name #=> String
    #   resp.data.resource.arn #=> String
    #   resp.data.resource.association_time #=> Time
    #   resp.data.resource.integrations #=> Types::ResourceIntegrations
    #   resp.data.resource.integrations.resource_group #=> Types::ResourceGroup
    #   resp.data.resource.integrations.resource_group.state #=> String, one of ["CREATING", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #   resp.data.resource.integrations.resource_group.arn #=> String
    #   resp.data.resource.integrations.resource_group.error_message #=> String
    #
    def get_associated_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssociatedResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssociatedResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssociatedResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetAssociatedResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssociatedResource,
        stubs: @stubs,
        params_class: Params::GetAssociatedResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_associated_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an attribute group, either by its name or its ID. The attribute group can be specified either by its unique ID or by its name.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAttributeGroupInput}.
    #
    # @option params [String] :attribute_group
    #   <p>The name or ID of the attribute group that holds the attributes to describe the application.</p>
    #
    # @return [Types::GetAttributeGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attribute_group(
    #     attribute_group: 'attributeGroup' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAttributeGroupOutput
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.attributes #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_update_time #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_attribute_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAttributeGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAttributeGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAttributeGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetAttributeGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAttributeGroup,
        stubs: @stubs,
        params_class: Params::GetAttributeGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_attribute_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of all of your applications. Results are paginated.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #
    # @return [Types::ListApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationsOutput
    #   resp.data.applications #=> Array<ApplicationSummary>
    #   resp.data.applications[0] #=> Types::ApplicationSummary
    #   resp.data.applications[0].id #=> String
    #   resp.data.applications[0].arn #=> String
    #   resp.data.applications[0].name #=> String
    #   resp.data.applications[0].description #=> String
    #   resp.data.applications[0].creation_time #=> Time
    #   resp.data.applications[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Lists all attribute groups that are associated with specified application.  Results are paginated.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssociatedAttributeGroupsInput}.
    #
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #
    # @return [Types::ListAssociatedAttributeGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_attribute_groups(
    #     application: 'application', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssociatedAttributeGroupsOutput
    #   resp.data.attribute_groups #=> Array<String>
    #   resp.data.attribute_groups[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_associated_attribute_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssociatedAttributeGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssociatedAttributeGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssociatedAttributeGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::ListAssociatedAttributeGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssociatedAttributeGroups,
        stubs: @stubs,
        params_class: Params::ListAssociatedAttributeGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_associated_attribute_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all resources that are associated with specified application. Results are paginated.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssociatedResourcesInput}.
    #
    # @option params [String] :application
    #   <p>The name or ID of the application.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #
    # @return [Types::ListAssociatedResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_resources(
    #     application: 'application', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssociatedResourcesOutput
    #   resp.data.resources #=> Array<ResourceInfo>
    #   resp.data.resources[0] #=> Types::ResourceInfo
    #   resp.data.resources[0].name #=> String
    #   resp.data.resources[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_associated_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssociatedResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssociatedResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssociatedResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::ListAssociatedResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssociatedResources,
        stubs: @stubs,
        params_class: Params::ListAssociatedResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_associated_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all attribute groups which you have access to. Results are paginated.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAttributeGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>
    #
    # @return [Types::ListAttributeGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attribute_groups(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttributeGroupsOutput
    #   resp.data.attribute_groups #=> Array<AttributeGroupSummary>
    #   resp.data.attribute_groups[0] #=> Types::AttributeGroupSummary
    #   resp.data.attribute_groups[0].id #=> String
    #   resp.data.attribute_groups[0].arn #=> String
    #   resp.data.attribute_groups[0].name #=> String
    #   resp.data.attribute_groups[0].description #=> String
    #   resp.data.attribute_groups[0].creation_time #=> Time
    #   resp.data.attribute_groups[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_attribute_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttributeGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttributeGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttributeGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListAttributeGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttributeGroups,
        stubs: @stubs,
        params_class: Params::ListAttributeGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attribute_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the tags on the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Syncs the resource with current AppRegistry records.</p>
    #          <p>Specifically, the resource’s AppRegistry system tags sync with its associated application. We remove the resource's AppRegistry system tags if it does not associate with the application. The caller must have permissions to read and update the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::SyncResourceInput}.
    #
    # @option params [String] :resource_type
    #   <p>The type of resource of which the application will be associated.</p>
    #
    # @option params [String] :resource
    #   <p>An entity you can work with and specify with a name or ID. Examples include an Amazon EC2 instance, an Amazon Web Services CloudFormation stack, or an Amazon S3 bucket.</p>
    #
    # @return [Types::SyncResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sync_resource(
    #     resource_type: 'CFN_STACK', # required - accepts ["CFN_STACK"]
    #     resource: 'resource' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SyncResourceOutput
    #   resp.data.application_arn #=> String
    #   resp.data.resource_arn #=> String
    #   resp.data.action_taken #=> String, one of ["START_SYNC", "NO_ACTION"]
    #
    def sync_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SyncResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SyncResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SyncResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException]),
        data_parser: Parsers::SyncResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SyncResource,
        stubs: @stubs,
        params_class: Params::SyncResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :sync_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified resource.</p>
    #          <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value.</p>
    #          <p>This operation returns an empty response if the call was successful.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The new or modified tags for the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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
    #          <p>This operation returns an empty response if the call was successful.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon resource name (ARN) that specifies the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the tag keys to remove from the specified resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Updates an existing application with new attributes.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :application
    #   <p>The name or ID of the application that will be updated.</p>
    #
    # @option params [String] :name
    #   <p>The new name of the application. The name must be unique in the region in which you are updating the application.</p>
    #
    # @option params [String] :description
    #   <p>The new description of the application.</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     application: 'application', # required
    #     name: 'name',
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #   resp.data.application #=> Types::Application
    #   resp.data.application.id #=> String
    #   resp.data.application.arn #=> String
    #   resp.data.application.name #=> String
    #   resp.data.application.description #=> String
    #   resp.data.application.creation_time #=> Time
    #   resp.data.application.last_update_time #=> Time
    #   resp.data.application.tags #=> Hash<String, String>
    #   resp.data.application.tags['key'] #=> String
    #
    def update_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException]),
        data_parser: Parsers::UpdateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplication,
        stubs: @stubs,
        params_class: Params::UpdateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing attribute group with new details. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAttributeGroupInput}.
    #
    # @option params [String] :attribute_group
    #   <p>The name or ID of the attribute group that holds the attributes to describe the application.</p>
    #
    # @option params [String] :name
    #   <p>The new name of the attribute group. The name must be unique in the region in which you are
    #          updating the attribute group.</p>
    #
    # @option params [String] :description
    #   <p>The description of the attribute group that the user provides.</p>
    #
    # @option params [String] :attributes
    #   <p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>
    #
    # @return [Types::UpdateAttributeGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_attribute_group(
    #     attribute_group: 'attributeGroup', # required
    #     name: 'name',
    #     description: 'description',
    #     attributes: 'attributes'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAttributeGroupOutput
    #   resp.data.attribute_group #=> Types::AttributeGroup
    #   resp.data.attribute_group.id #=> String
    #   resp.data.attribute_group.arn #=> String
    #   resp.data.attribute_group.name #=> String
    #   resp.data.attribute_group.description #=> String
    #   resp.data.attribute_group.creation_time #=> Time
    #   resp.data.attribute_group.last_update_time #=> Time
    #   resp.data.attribute_group.tags #=> Hash<String, String>
    #   resp.data.attribute_group.tags['key'] #=> String
    #
    def update_attribute_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAttributeGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAttributeGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAttributeGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException]),
        data_parser: Parsers::UpdateAttributeGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAttributeGroup,
        stubs: @stubs,
        params_class: Params::UpdateAttributeGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_attribute_group
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
