# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoT1ClickProjects
  # An API client for AWSIoT1ClickProjects
  # See {#initialize} for a full list of supported configuration options
  # <p>The AWS IoT 1-Click Projects API Reference</p>
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
    def initialize(config = AWS::SDK::IoT1ClickProjects::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a physical device with a placement.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateDeviceWithPlacementInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project containing the placement in which to associate the device.</p>
    #
    # @option params [String] :placement_name
    #   <p>The name of the placement in which to associate the device.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the physical device to be associated with the given placement in the project.
    #         Note that a mandatory 4 character prefix is required for all <code>deviceId</code>
    #         values.</p>
    #
    # @option params [String] :device_template_name
    #   <p>The device template name to associate with the device ID.</p>
    #
    # @return [Types::AssociateDeviceWithPlacementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_device_with_placement(
    #     project_name: 'projectName', # required
    #     placement_name: 'placementName', # required
    #     device_id: 'deviceId', # required
    #     device_template_name: 'deviceTemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateDeviceWithPlacementOutput
    #
    def associate_device_with_placement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateDeviceWithPlacementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateDeviceWithPlacementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateDeviceWithPlacement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException]),
        data_parser: Parsers::AssociateDeviceWithPlacement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateDeviceWithPlacement,
        stubs: @stubs,
        params_class: Params::AssociateDeviceWithPlacementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_device_with_placement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an empty placement.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePlacementInput}.
    #
    # @option params [String] :placement_name
    #   <p>The name of the placement to be created.</p>
    #
    # @option params [String] :project_name
    #   <p>The name of the project in which to create the placement.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>Optional user-defined key/value pairs providing contextual data (such as location or
    #         function) for the placement.</p>
    #
    # @return [Types::CreatePlacementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_placement(
    #     placement_name: 'placementName', # required
    #     project_name: 'projectName', # required
    #     attributes: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePlacementOutput
    #
    def create_placement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePlacementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePlacementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePlacement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreatePlacement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePlacement,
        stubs: @stubs,
        params_class: Params::CreatePlacementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_placement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an empty project with a placement template. A project contains zero or more
    #       placements that adhere to the placement template defined in the project.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project to create.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the project.</p>
    #
    # @option params [PlacementTemplate] :placement_template
    #   <p>The schema defining the placement to be created. A placement template defines placement
    #         default attributes and device templates. You cannot add or remove device templates after the
    #         project has been created. However, you can update <code>callbackOverrides</code> for the
    #         device templates using the <code>UpdateProject</code> API.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Optional tags (metadata key/value pairs) to be associated with the project. For example,
    #           <code>{ {"key1": "value1", "key2": "value2"} }</code>. For more information, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS Tagging
    #           Strategies</a>.</p>
    #
    # @return [Types::CreateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project(
    #     project_name: 'projectName', # required
    #     description: 'description',
    #     placement_template: {
    #       default_attributes: {
    #         'key' => 'value'
    #       },
    #       device_templates: {
    #         'key' => {
    #           device_type: 'deviceType',
    #           callback_overrides: {
    #             'key' => 'value'
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectOutput
    #
    def create_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceConflictException, Errors::InternalFailureException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProject,
        stubs: @stubs,
        params_class: Params::CreateProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a placement. To delete a placement, it must not have any devices associated with
    #       it.</p>
    #          <note>
    #             <p>When you delete a placement, all associated data becomes irretrievable.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeletePlacementInput}.
    #
    # @option params [String] :placement_name
    #   <p>The name of the empty placement to delete.</p>
    #
    # @option params [String] :project_name
    #   <p>The project containing the empty placement to delete.</p>
    #
    # @return [Types::DeletePlacementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_placement(
    #     placement_name: 'placementName', # required
    #     project_name: 'projectName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePlacementOutput
    #
    def delete_placement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePlacementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePlacementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePlacement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeletePlacement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePlacement,
        stubs: @stubs,
        params_class: Params::DeletePlacementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_placement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a project. To delete a project, it must not have any placements associated with
    #       it.</p>
    #          <note>
    #             <p>When you delete a project, all associated data becomes irretrievable.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the empty project to delete.</p>
    #
    # @return [Types::DeleteProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project(
    #     project_name: 'projectName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectOutput
    #
    def delete_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProject,
        stubs: @stubs,
        params_class: Params::DeleteProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a placement in a project.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePlacementInput}.
    #
    # @option params [String] :placement_name
    #   <p>The name of the placement within a project.</p>
    #
    # @option params [String] :project_name
    #   <p>The project containing the placement to be described.</p>
    #
    # @return [Types::DescribePlacementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_placement(
    #     placement_name: 'placementName', # required
    #     project_name: 'projectName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePlacementOutput
    #   resp.data.placement #=> Types::PlacementDescription
    #   resp.data.placement.project_name #=> String
    #   resp.data.placement.placement_name #=> String
    #   resp.data.placement.attributes #=> Hash<String, String>
    #   resp.data.placement.attributes['key'] #=> String
    #   resp.data.placement.created_date #=> Time
    #   resp.data.placement.updated_date #=> Time
    #
    def describe_placement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePlacementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePlacementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePlacement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribePlacement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePlacement,
        stubs: @stubs,
        params_class: Params::DescribePlacementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_placement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an object describing a project.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProjectInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project to be described.</p>
    #
    # @return [Types::DescribeProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project(
    #     project_name: 'projectName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProjectOutput
    #   resp.data.project #=> Types::ProjectDescription
    #   resp.data.project.arn #=> String
    #   resp.data.project.project_name #=> String
    #   resp.data.project.description #=> String
    #   resp.data.project.created_date #=> Time
    #   resp.data.project.updated_date #=> Time
    #   resp.data.project.placement_template #=> Types::PlacementTemplate
    #   resp.data.project.placement_template.default_attributes #=> Hash<String, String>
    #   resp.data.project.placement_template.default_attributes['key'] #=> String
    #   resp.data.project.placement_template.device_templates #=> Hash<String, DeviceTemplate>
    #   resp.data.project.placement_template.device_templates['key'] #=> Types::DeviceTemplate
    #   resp.data.project.placement_template.device_templates['key'].device_type #=> String
    #   resp.data.project.placement_template.device_templates['key'].callback_overrides #=> Hash<String, String>
    #   resp.data.project.placement_template.device_templates['key'].callback_overrides['key'] #=> String
    #   resp.data.project.tags #=> Hash<String, String>
    #   resp.data.project.tags['key'] #=> String
    #
    def describe_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProject,
        stubs: @stubs,
        params_class: Params::DescribeProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a physical device from a placement.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateDeviceFromPlacementInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the placement.</p>
    #
    # @option params [String] :placement_name
    #   <p>The name of the placement that the device should be removed from.</p>
    #
    # @option params [String] :device_template_name
    #   <p>The device ID that should be removed from the placement.</p>
    #
    # @return [Types::DisassociateDeviceFromPlacementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_device_from_placement(
    #     project_name: 'projectName', # required
    #     placement_name: 'placementName', # required
    #     device_template_name: 'deviceTemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateDeviceFromPlacementOutput
    #
    def disassociate_device_from_placement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateDeviceFromPlacementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateDeviceFromPlacementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateDeviceFromPlacement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DisassociateDeviceFromPlacement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateDeviceFromPlacement,
        stubs: @stubs,
        params_class: Params::DisassociateDeviceFromPlacementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_device_from_placement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an object enumerating the devices in a placement.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDevicesInPlacementInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project containing the placement.</p>
    #
    # @option params [String] :placement_name
    #   <p>The name of the placement to get the devices from.</p>
    #
    # @return [Types::GetDevicesInPlacementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_devices_in_placement(
    #     project_name: 'projectName', # required
    #     placement_name: 'placementName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDevicesInPlacementOutput
    #   resp.data.devices #=> Hash<String, String>
    #   resp.data.devices['key'] #=> String
    #
    def get_devices_in_placement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDevicesInPlacementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDevicesInPlacementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDevicesInPlacement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetDevicesInPlacement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDevicesInPlacement,
        stubs: @stubs,
        params_class: Params::GetDevicesInPlacementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_devices_in_placement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the placement(s) of a project.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPlacementsInput}.
    #
    # @option params [String] :project_name
    #   <p>The project containing the placements to be listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request. If not set, a default value of 100 is
    #         used.</p>
    #
    # @return [Types::ListPlacementsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_placements(
    #     project_name: 'projectName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPlacementsOutput
    #   resp.data.placements #=> Array<PlacementSummary>
    #   resp.data.placements[0] #=> Types::PlacementSummary
    #   resp.data.placements[0].project_name #=> String
    #   resp.data.placements[0].placement_name #=> String
    #   resp.data.placements[0].created_date #=> Time
    #   resp.data.placements[0].updated_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_placements(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPlacementsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPlacementsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPlacements
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListPlacements
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPlacements,
        stubs: @stubs,
        params_class: Params::ListPlacementsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_placements
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProjectsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request. If not set, a default value of 100 is
    #         used.</p>
    #
    # @return [Types::ListProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProjectsOutput
    #   resp.data.projects #=> Array<ProjectSummary>
    #   resp.data.projects[0] #=> Types::ProjectSummary
    #   resp.data.projects[0].arn #=> String
    #   resp.data.projects[0].project_name #=> String
    #   resp.data.projects[0].created_date #=> Time
    #   resp.data.projects[0].updated_date #=> Time
    #   resp.data.projects[0].tags #=> Hash<String, String>
    #   resp.data.projects[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_projects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProjectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProjects
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListProjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProjects,
        stubs: @stubs,
        params_class: Params::ListProjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_projects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags (metadata key/value pairs) which you have assigned to the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags you want to list.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException]),
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

    # <p>Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be
    #       used to manage a resource. For more information, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS Tagging
    #         Strategies</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resouce for which tag(s) should be added or modified.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The new or modifying tag(s) for the resource. See <a href="https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html#1click-limits">AWS IoT 1-Click Service Limits</a> for the maximum number of tags allowed per
    #         resource.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException]),
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

    # <p>Removes one or more tags (metadata key/value pairs) from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tag you want to remove.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of those tags which you want to remove.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException]),
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

    # <p>Updates a placement with the given attributes. To clear an attribute, pass an empty value
    #       (i.e., "").</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePlacementInput}.
    #
    # @option params [String] :placement_name
    #   <p>The name of the placement to update.</p>
    #
    # @option params [String] :project_name
    #   <p>The name of the project containing the placement to be updated.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>The user-defined object of attributes used to update the placement. The maximum number of
    #         key/value pairs is 50.</p>
    #
    # @return [Types::UpdatePlacementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_placement(
    #     placement_name: 'placementName', # required
    #     project_name: 'projectName', # required
    #     attributes: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePlacementOutput
    #
    def update_placement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePlacementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePlacementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePlacement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdatePlacement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePlacement,
        stubs: @stubs,
        params_class: Params::UpdatePlacementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_placement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a project associated with your AWS account and region. With the exception of
    #       device template names, you can pass just the values that need to be updated because the update
    #       request will change only the values that are provided. To clear a value, pass the empty string
    #       (i.e., <code>""</code>).</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProjectInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project to be updated.</p>
    #
    # @option params [String] :description
    #   <p>An optional user-defined description for the project.</p>
    #
    # @option params [PlacementTemplate] :placement_template
    #   <p>An object defining the project update. Once a project has been created, you cannot add
    #         device template names to the project. However, for a given <code>placementTemplate</code>, you
    #         can update the associated <code>callbackOverrides</code> for the device definition using this
    #         API.</p>
    #
    # @return [Types::UpdateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project(
    #     project_name: 'projectName', # required
    #     description: 'description',
    #     placement_template: {
    #       default_attributes: {
    #         'key' => 'value'
    #       },
    #       device_templates: {
    #         'key' => {
    #           device_type: 'deviceType',
    #           callback_overrides: {
    #             'key' => 'value'
    #           }
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProjectOutput
    #
    def update_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProject,
        stubs: @stubs,
        params_class: Params::UpdateProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_project
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
