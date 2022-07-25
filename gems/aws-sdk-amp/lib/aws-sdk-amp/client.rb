# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Amp
  # An API client for AmazonPrometheusService
  # See {#initialize} for a full list of supported configuration options
  # Amazon Managed Service for Prometheus
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
    def initialize(config = AWS::SDK::Amp::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # Create an alert manager definition.
    #
    # @param [Hash] params
    #   See {Types::CreateAlertManagerDefinitionInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace in which to create the alert manager definition.
    #
    # @option params [String] :data
    #   The alert manager definition data.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    # @return [Types::CreateAlertManagerDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alert_manager_definition(
    #     workspace_id: 'workspaceId', # required
    #     data: 'data', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAlertManagerDefinitionOutput
    #   resp.data.status #=> Types::AlertManagerDefinitionStatus
    #   resp.data.status.status_code #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"]
    #   resp.data.status.status_reason #=> String
    #
    def create_alert_manager_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAlertManagerDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAlertManagerDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAlertManagerDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateAlertManagerDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAlertManagerDefinition,
        stubs: @stubs,
        params_class: Params::CreateAlertManagerDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_alert_manager_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Create a rule group namespace.
    #
    # @param [Hash] params
    #   See {Types::CreateRuleGroupsNamespaceInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace in which to create the rule group namespace.
    #
    # @option params [String] :name
    #   The rule groups namespace name.
    #
    # @option params [String] :data
    #   The namespace data that define the rule groups.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    # @option params [Hash<String, String>] :tags
    #   Optional, user-provided tags for this rule groups namespace.
    #
    # @return [Types::CreateRuleGroupsNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_groups_namespace(
    #     workspace_id: 'workspaceId', # required
    #     name: 'name', # required
    #     data: 'data', # required
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRuleGroupsNamespaceOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.status #=> Types::RuleGroupsNamespaceStatus
    #   resp.data.status.status_code #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"]
    #   resp.data.status.status_reason #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_rule_groups_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRuleGroupsNamespaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRuleGroupsNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRuleGroupsNamespace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateRuleGroupsNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRuleGroupsNamespace,
        stubs: @stubs,
        params_class: Params::CreateRuleGroupsNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_rule_groups_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a new AMP workspace.
    #
    # @param [Hash] params
    #   See {Types::CreateWorkspaceInput}.
    #
    # @option params [String] :alias
    #   An optional user-assigned alias for this workspace. This alias is for user reference and does not need to be unique.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    # @option params [Hash<String, String>] :tags
    #   Optional, user-provided tags for this workspace.
    #
    # @return [Types::CreateWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace(
    #     alias: 'alias',
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkspaceOutput
    #   resp.data.workspace_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.status #=> Types::WorkspaceStatus
    #   resp.data.status.status_code #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkspace,
        stubs: @stubs,
        params_class: Params::CreateWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes an alert manager definition.
    #
    # @param [Hash] params
    #   See {Types::DeleteAlertManagerDefinitionInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace in which to delete the alert manager definition.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    # @return [Types::DeleteAlertManagerDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alert_manager_definition(
    #     workspace_id: 'workspaceId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAlertManagerDefinitionOutput
    #
    def delete_alert_manager_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAlertManagerDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAlertManagerDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAlertManagerDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteAlertManagerDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAlertManagerDefinition,
        stubs: @stubs,
        params_class: Params::DeleteAlertManagerDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_alert_manager_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Delete a rule groups namespace.
    #
    # @param [Hash] params
    #   See {Types::DeleteRuleGroupsNamespaceInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace to delete rule group definition.
    #
    # @option params [String] :name
    #   The rule groups namespace name.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    # @return [Types::DeleteRuleGroupsNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule_groups_namespace(
    #     workspace_id: 'workspaceId', # required
    #     name: 'name', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRuleGroupsNamespaceOutput
    #
    def delete_rule_groups_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRuleGroupsNamespaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRuleGroupsNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRuleGroupsNamespace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteRuleGroupsNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRuleGroupsNamespace,
        stubs: @stubs,
        params_class: Params::DeleteRuleGroupsNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_rule_groups_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes an AMP workspace.
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkspaceInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace to delete.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    # @return [Types::DeleteWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace(
    #     workspace_id: 'workspaceId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkspaceOutput
    #
    def delete_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkspace,
        stubs: @stubs,
        params_class: Params::DeleteWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Describes an alert manager definition.
    #
    # @param [Hash] params
    #   See {Types::DescribeAlertManagerDefinitionInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace to describe.
    #
    # @return [Types::DescribeAlertManagerDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alert_manager_definition(
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAlertManagerDefinitionOutput
    #   resp.data.alert_manager_definition #=> Types::AlertManagerDefinitionDescription
    #   resp.data.alert_manager_definition.status #=> Types::AlertManagerDefinitionStatus
    #   resp.data.alert_manager_definition.status.status_code #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"]
    #   resp.data.alert_manager_definition.status.status_reason #=> String
    #   resp.data.alert_manager_definition.data #=> String
    #   resp.data.alert_manager_definition.created_at #=> Time
    #   resp.data.alert_manager_definition.modified_at #=> Time
    #
    def describe_alert_manager_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAlertManagerDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAlertManagerDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAlertManagerDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeAlertManagerDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAlertManagerDefinition,
        stubs: @stubs,
        params_class: Params::DescribeAlertManagerDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_alert_manager_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Describe a rule groups namespace.
    #
    # @param [Hash] params
    #   See {Types::DescribeRuleGroupsNamespaceInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace to describe.
    #
    # @option params [String] :name
    #   The rule groups namespace.
    #
    # @return [Types::DescribeRuleGroupsNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule_groups_namespace(
    #     workspace_id: 'workspaceId', # required
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRuleGroupsNamespaceOutput
    #   resp.data.rule_groups_namespace #=> Types::RuleGroupsNamespaceDescription
    #   resp.data.rule_groups_namespace.arn #=> String
    #   resp.data.rule_groups_namespace.name #=> String
    #   resp.data.rule_groups_namespace.status #=> Types::RuleGroupsNamespaceStatus
    #   resp.data.rule_groups_namespace.status.status_code #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"]
    #   resp.data.rule_groups_namespace.status.status_reason #=> String
    #   resp.data.rule_groups_namespace.data #=> String
    #   resp.data.rule_groups_namespace.created_at #=> Time
    #   resp.data.rule_groups_namespace.modified_at #=> Time
    #   resp.data.rule_groups_namespace.tags #=> Hash<String, String>
    #   resp.data.rule_groups_namespace.tags['key'] #=> String
    #
    def describe_rule_groups_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRuleGroupsNamespaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRuleGroupsNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRuleGroupsNamespace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeRuleGroupsNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRuleGroupsNamespace,
        stubs: @stubs,
        params_class: Params::DescribeRuleGroupsNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_rule_groups_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Describes an existing AMP workspace.
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkspaceInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace to describe.
    #
    # @return [Types::DescribeWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace(
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkspaceOutput
    #   resp.data.workspace #=> Types::WorkspaceDescription
    #   resp.data.workspace.workspace_id #=> String
    #   resp.data.workspace.alias #=> String
    #   resp.data.workspace.arn #=> String
    #   resp.data.workspace.status #=> Types::WorkspaceStatus
    #   resp.data.workspace.status.status_code #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED"]
    #   resp.data.workspace.prometheus_endpoint #=> String
    #   resp.data.workspace.created_at #=> Time
    #   resp.data.workspace.tags #=> Hash<String, String>
    #   resp.data.workspace.tags['key'] #=> String
    #
    def describe_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkspace,
        stubs: @stubs,
        params_class: Params::DescribeWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Lists rule groups namespaces.
    #
    # @param [Hash] params
    #   See {Types::ListRuleGroupsNamespacesInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace.
    #
    # @option params [String] :name
    #   Optional filter for rule groups namespace name. Only the rule groups namespace that begin with this value will be returned.
    #
    # @option params [String] :next_token
    #   Pagination token to request the next page in a paginated list. This token is obtained from the output of the previous ListRuleGroupsNamespaces request.
    #
    # @option params [Integer] :max_results
    #   Maximum results to return in response (default=100, maximum=1000).
    #
    # @return [Types::ListRuleGroupsNamespacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_groups_namespaces(
    #     workspace_id: 'workspaceId', # required
    #     name: 'name',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRuleGroupsNamespacesOutput
    #   resp.data.rule_groups_namespaces #=> Array<RuleGroupsNamespaceSummary>
    #   resp.data.rule_groups_namespaces[0] #=> Types::RuleGroupsNamespaceSummary
    #   resp.data.rule_groups_namespaces[0].arn #=> String
    #   resp.data.rule_groups_namespaces[0].name #=> String
    #   resp.data.rule_groups_namespaces[0].status #=> Types::RuleGroupsNamespaceStatus
    #   resp.data.rule_groups_namespaces[0].status.status_code #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"]
    #   resp.data.rule_groups_namespaces[0].status.status_reason #=> String
    #   resp.data.rule_groups_namespaces[0].created_at #=> Time
    #   resp.data.rule_groups_namespaces[0].modified_at #=> Time
    #   resp.data.rule_groups_namespaces[0].tags #=> Hash<String, String>
    #   resp.data.rule_groups_namespaces[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_rule_groups_namespaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRuleGroupsNamespacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRuleGroupsNamespacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRuleGroupsNamespaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListRuleGroupsNamespaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRuleGroupsNamespaces,
        stubs: @stubs,
        params_class: Params::ListRuleGroupsNamespacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rule_groups_namespaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Lists the tags you have assigned to the resource.
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The ARN of the resource.
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # Lists all AMP workspaces, including workspaces being created or deleted.
    #
    # @param [Hash] params
    #   See {Types::ListWorkspacesInput}.
    #
    # @option params [String] :next_token
    #   Pagination token to request the next page in a paginated list. This token is obtained from the output of the previous ListWorkspaces request.
    #
    # @option params [String] :alias
    #   Optional filter for workspace alias. Only the workspaces with aliases that begin with this value will be returned.
    #
    # @option params [Integer] :max_results
    #   Maximum results to return in response (default=100, maximum=1000).
    #
    # @return [Types::ListWorkspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workspaces(
    #     next_token: 'nextToken',
    #     alias: 'alias',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkspacesOutput
    #   resp.data.workspaces #=> Array<WorkspaceSummary>
    #   resp.data.workspaces[0] #=> Types::WorkspaceSummary
    #   resp.data.workspaces[0].workspace_id #=> String
    #   resp.data.workspaces[0].alias #=> String
    #   resp.data.workspaces[0].arn #=> String
    #   resp.data.workspaces[0].status #=> Types::WorkspaceStatus
    #   resp.data.workspaces[0].status.status_code #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED"]
    #   resp.data.workspaces[0].created_at #=> Time
    #   resp.data.workspaces[0].tags #=> Hash<String, String>
    #   resp.data.workspaces[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_workspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkspacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkspaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListWorkspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkspaces,
        stubs: @stubs,
        params_class: Params::ListWorkspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_workspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Update an alert manager definition.
    #
    # @param [Hash] params
    #   See {Types::PutAlertManagerDefinitionInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace in which to update the alert manager definition.
    #
    # @option params [String] :data
    #   The alert manager definition data.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    # @return [Types::PutAlertManagerDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_alert_manager_definition(
    #     workspace_id: 'workspaceId', # required
    #     data: 'data', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAlertManagerDefinitionOutput
    #   resp.data.status #=> Types::AlertManagerDefinitionStatus
    #   resp.data.status.status_code #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"]
    #   resp.data.status.status_reason #=> String
    #
    def put_alert_manager_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAlertManagerDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAlertManagerDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAlertManagerDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::PutAlertManagerDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAlertManagerDefinition,
        stubs: @stubs,
        params_class: Params::PutAlertManagerDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_alert_manager_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Update a rule groups namespace.
    #
    # @param [Hash] params
    #   See {Types::PutRuleGroupsNamespaceInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace in which to update the rule group namespace.
    #
    # @option params [String] :name
    #   The rule groups namespace name.
    #
    # @option params [String] :data
    #   The namespace data that define the rule groups.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    # @return [Types::PutRuleGroupsNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rule_groups_namespace(
    #     workspace_id: 'workspaceId', # required
    #     name: 'name', # required
    #     data: 'data', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRuleGroupsNamespaceOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.status #=> Types::RuleGroupsNamespaceStatus
    #   resp.data.status.status_code #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"]
    #   resp.data.status.status_reason #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def put_rule_groups_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRuleGroupsNamespaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRuleGroupsNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRuleGroupsNamespace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::PutRuleGroupsNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRuleGroupsNamespace,
        stubs: @stubs,
        params_class: Params::PutRuleGroupsNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_rule_groups_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates tags for the specified resource.
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [Hash<String, String>] :tags
    #   The list of tags assigned to the resource.
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # Deletes tags from the specified resource.
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [Array<String>] :tag_keys
    #   One or more tag keys
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # Updates an AMP workspace alias.
    #
    # @param [Hash] params
    #   See {Types::UpdateWorkspaceAliasInput}.
    #
    # @option params [String] :workspace_id
    #   The ID of the workspace being updated.
    #
    # @option params [String] :alias
    #   The new alias of the workspace.
    #
    # @option params [String] :client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    # @return [Types::UpdateWorkspaceAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_alias(
    #     workspace_id: 'workspaceId', # required
    #     alias: 'alias',
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWorkspaceAliasOutput
    #
    def update_workspace_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWorkspaceAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWorkspaceAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWorkspaceAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateWorkspaceAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWorkspaceAlias,
        stubs: @stubs,
        params_class: Params::UpdateWorkspaceAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_workspace_alias
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
