# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Greengrass
  # An API client for Greengrass
  # See {#initialize} for a full list of supported configuration options
  # AWS IoT Greengrass seamlessly extends AWS onto physical devices so they can act locally on the data they generate, while still using the cloud for management, analytics, and durable storage. AWS IoT Greengrass ensures your devices can respond quickly to local events and operate with intermittent connectivity. AWS IoT Greengrass minimizes the cost of transmitting data to the cloud by allowing you to author AWS Lambda functions that execute locally.
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
    def initialize(config = AWS::SDK::Greengrass::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # Associates a role with a group. Your Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.
    #
    # @param [Hash] params
    #   See {Types::AssociateRoleToGroupInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @option params [String] :role_arn
    #   The ARN of the role you wish to associate with this group. The existence of the role is not validated.
    #
    # @return [Types::AssociateRoleToGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_role_to_group(
    #     group_id: 'GroupId', # required
    #     role_arn: 'RoleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateRoleToGroupOutput
    #   resp.data.associated_at #=> String
    #
    def associate_role_to_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateRoleToGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateRoleToGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateRoleToGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::AssociateRoleToGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateRoleToGroup,
        stubs: @stubs,
        params_class: Params::AssociateRoleToGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_role_to_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Associates a role with your account. AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''.
    #
    # @param [Hash] params
    #   See {Types::AssociateServiceRoleToAccountInput}.
    #
    # @option params [String] :role_arn
    #   The ARN of the service role you wish to associate with your account.
    #
    # @return [Types::AssociateServiceRoleToAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_service_role_to_account(
    #     role_arn: 'RoleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateServiceRoleToAccountOutput
    #   resp.data.associated_at #=> String
    #
    def associate_service_role_to_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateServiceRoleToAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateServiceRoleToAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateServiceRoleToAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::AssociateServiceRoleToAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateServiceRoleToAccount,
        stubs: @stubs,
        params_class: Params::AssociateServiceRoleToAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_service_role_to_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a connector definition. You may provide the initial version of the connector definition now or use ''CreateConnectorDefinitionVersion'' at a later time.
    #
    # @param [Hash] params
    #   See {Types::CreateConnectorDefinitionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [ConnectorDefinitionVersion] :initial_version
    #   Information about the initial version of the connector definition.
    #
    # @option params [String] :name
    #   The name of the connector definition.
    #
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    #
    # @return [Types::CreateConnectorDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector_definition(
    #     amzn_client_token: 'AmznClientToken',
    #     initial_version: {
    #       connectors: [
    #         {
    #           connector_arn: 'ConnectorArn', # required
    #           id: 'Id', # required
    #           parameters: {
    #             'key' => 'value'
    #           }
    #         }
    #       ]
    #     },
    #     name: 'Name',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectorDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #
    def create_connector_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectorDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectorDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnectorDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateConnectorDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnectorDefinition,
        stubs: @stubs,
        params_class: Params::CreateConnectorDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connector_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a version of a connector definition which has already been defined.
    #
    # @param [Hash] params
    #   See {Types::CreateConnectorDefinitionVersionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    #
    # @option params [Array<Connector>] :connectors
    #   A list of references to connectors in this version, with their corresponding configuration settings.
    #
    # @return [Types::CreateConnectorDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector_definition_version(
    #     amzn_client_token: 'AmznClientToken',
    #     connector_definition_id: 'ConnectorDefinitionId', # required
    #     connectors: [
    #       {
    #         connector_arn: 'ConnectorArn', # required
    #         id: 'Id', # required
    #         parameters: {
    #           'key' => 'value'
    #         }
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectorDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def create_connector_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectorDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectorDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnectorDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateConnectorDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnectorDefinitionVersion,
        stubs: @stubs,
        params_class: Params::CreateConnectorDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connector_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.
    #
    # @param [Hash] params
    #   See {Types::CreateCoreDefinitionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [CoreDefinitionVersion] :initial_version
    #   Information about the initial version of the core definition.
    #
    # @option params [String] :name
    #   The name of the core definition.
    #
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    #
    # @return [Types::CreateCoreDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_core_definition(
    #     amzn_client_token: 'AmznClientToken',
    #     initial_version: {
    #       cores: [
    #         {
    #           certificate_arn: 'CertificateArn', # required
    #           id: 'Id', # required
    #           sync_shadow: false,
    #           thing_arn: 'ThingArn' # required
    #         }
    #       ]
    #     },
    #     name: 'Name',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCoreDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #
    def create_core_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCoreDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCoreDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCoreDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateCoreDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCoreDefinition,
        stubs: @stubs,
        params_class: Params::CreateCoreDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_core_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core.
    #
    # @param [Hash] params
    #   See {Types::CreateCoreDefinitionVersionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    #
    # @option params [Array<Core>] :cores
    #   A list of cores in the core definition version.
    #
    # @return [Types::CreateCoreDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_core_definition_version(
    #     amzn_client_token: 'AmznClientToken',
    #     core_definition_id: 'CoreDefinitionId', # required
    #     cores: [
    #       {
    #         certificate_arn: 'CertificateArn', # required
    #         id: 'Id', # required
    #         sync_shadow: false,
    #         thing_arn: 'ThingArn' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCoreDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def create_core_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCoreDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCoreDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCoreDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateCoreDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCoreDefinitionVersion,
        stubs: @stubs,
        params_class: Params::CreateCoreDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_core_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters.
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :deployment_id
    #   The ID of the deployment if you wish to redeploy a previous deployment.
    #
    # @option params [String] :deployment_type
    #   The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @option params [String] :group_version_id
    #   The ID of the group version to be deployed.
    #
    # @return [Types::CreateDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment(
    #     amzn_client_token: 'AmznClientToken',
    #     deployment_id: 'DeploymentId',
    #     deployment_type: 'NewDeployment', # required - accepts ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"]
    #     group_id: 'GroupId', # required
    #     group_version_id: 'GroupVersionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentOutput
    #   resp.data.deployment_arn #=> String
    #   resp.data.deployment_id #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
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

    # Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.
    #
    # @param [Hash] params
    #   See {Types::CreateDeviceDefinitionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [DeviceDefinitionVersion] :initial_version
    #   Information about the initial version of the device definition.
    #
    # @option params [String] :name
    #   The name of the device definition.
    #
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    #
    # @return [Types::CreateDeviceDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_device_definition(
    #     amzn_client_token: 'AmznClientToken',
    #     initial_version: {
    #       devices: [
    #         {
    #           certificate_arn: 'CertificateArn', # required
    #           id: 'Id', # required
    #           sync_shadow: false,
    #           thing_arn: 'ThingArn' # required
    #         }
    #       ]
    #     },
    #     name: 'Name',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeviceDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #
    def create_device_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeviceDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeviceDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeviceDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateDeviceDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeviceDefinition,
        stubs: @stubs,
        params_class: Params::CreateDeviceDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_device_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a version of a device definition that has already been defined.
    #
    # @param [Hash] params
    #   See {Types::CreateDeviceDefinitionVersionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    #
    # @option params [Array<Device>] :devices
    #   A list of devices in the definition version.
    #
    # @return [Types::CreateDeviceDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_device_definition_version(
    #     amzn_client_token: 'AmznClientToken',
    #     device_definition_id: 'DeviceDefinitionId', # required
    #     devices: [
    #       {
    #         certificate_arn: 'CertificateArn', # required
    #         id: 'Id', # required
    #         sync_shadow: false,
    #         thing_arn: 'ThingArn' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeviceDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def create_device_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeviceDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeviceDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeviceDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateDeviceDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeviceDefinitionVersion,
        stubs: @stubs,
        params_class: Params::CreateDeviceDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_device_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.
    #
    # @param [Hash] params
    #   See {Types::CreateFunctionDefinitionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [FunctionDefinitionVersion] :initial_version
    #   Information about the initial version of the function definition.
    #
    # @option params [String] :name
    #   The name of the function definition.
    #
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    #
    # @return [Types::CreateFunctionDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function_definition(
    #     amzn_client_token: 'AmznClientToken',
    #     initial_version: {
    #       default_config: {
    #         execution: {
    #           isolation_mode: 'GreengrassContainer', # accepts ["GreengrassContainer", "NoContainer"]
    #           run_as: {
    #             gid: 1,
    #             uid: 1
    #           }
    #         }
    #       },
    #       functions: [
    #         {
    #           function_arn: 'FunctionArn',
    #           function_configuration: {
    #             encoding_type: 'binary', # accepts ["binary", "json"]
    #             environment: {
    #               access_sysfs: false,
    #               execution: {
    #                 isolation_mode: 'GreengrassContainer', # accepts ["GreengrassContainer", "NoContainer"]
    #               },
    #               resource_access_policies: [
    #                 {
    #                   permission: 'ro', # accepts ["ro", "rw"]
    #                   resource_id: 'ResourceId' # required
    #                 }
    #               ],
    #               variables: {
    #                 'key' => 'value'
    #               }
    #             },
    #             exec_args: 'ExecArgs',
    #             executable: 'Executable',
    #             memory_size: 1,
    #             pinned: false,
    #             timeout: 1
    #           },
    #           id: 'Id' # required
    #         }
    #       ]
    #     },
    #     name: 'Name',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFunctionDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #
    def create_function_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFunctionDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFunctionDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFunctionDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateFunctionDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFunctionDefinition,
        stubs: @stubs,
        params_class: Params::CreateFunctionDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_function_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a version of a Lambda function definition that has already been defined.
    #
    # @param [Hash] params
    #   See {Types::CreateFunctionDefinitionVersionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [FunctionDefaultConfig] :default_config
    #   The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
    #
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    #
    # @option params [Array<Function>] :functions
    #   A list of Lambda functions in this function definition version.
    #
    # @return [Types::CreateFunctionDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function_definition_version(
    #     amzn_client_token: 'AmznClientToken',
    #     default_config: {
    #       execution: {
    #         isolation_mode: 'GreengrassContainer', # accepts ["GreengrassContainer", "NoContainer"]
    #         run_as: {
    #           gid: 1,
    #           uid: 1
    #         }
    #       }
    #     },
    #     function_definition_id: 'FunctionDefinitionId', # required
    #     functions: [
    #       {
    #         function_arn: 'FunctionArn',
    #         function_configuration: {
    #           encoding_type: 'binary', # accepts ["binary", "json"]
    #           environment: {
    #             access_sysfs: false,
    #             execution: {
    #               isolation_mode: 'GreengrassContainer', # accepts ["GreengrassContainer", "NoContainer"]
    #             },
    #             resource_access_policies: [
    #               {
    #                 permission: 'ro', # accepts ["ro", "rw"]
    #                 resource_id: 'ResourceId' # required
    #               }
    #             ],
    #             variables: {
    #               'key' => 'value'
    #             }
    #           },
    #           exec_args: 'ExecArgs',
    #           executable: 'Executable',
    #           memory_size: 1,
    #           pinned: false,
    #           timeout: 1
    #         },
    #         id: 'Id' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFunctionDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def create_function_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFunctionDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFunctionDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFunctionDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateFunctionDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFunctionDefinitionVersion,
        stubs: @stubs,
        params_class: Params::CreateFunctionDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_function_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time. Tip: You can use the ''gg_group_setup'' package (https://github.com/awslabs/aws-greengrass-group-setup) as a library or command-line application to create and deploy Greengrass groups.
    #
    # @param [Hash] params
    #   See {Types::CreateGroupInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [GroupVersion] :initial_version
    #   Information about the initial version of the group.
    #
    # @option params [String] :name
    #   The name of the group.
    #
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    #
    # @return [Types::CreateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group(
    #     amzn_client_token: 'AmznClientToken',
    #     initial_version: {
    #       connector_definition_version_arn: 'ConnectorDefinitionVersionArn',
    #       core_definition_version_arn: 'CoreDefinitionVersionArn',
    #       device_definition_version_arn: 'DeviceDefinitionVersionArn',
    #       function_definition_version_arn: 'FunctionDefinitionVersionArn',
    #       logger_definition_version_arn: 'LoggerDefinitionVersionArn',
    #       resource_definition_version_arn: 'ResourceDefinitionVersionArn',
    #       subscription_definition_version_arn: 'SubscriptionDefinitionVersionArn'
    #     },
    #     name: 'Name', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGroupOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #
    def create_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGroup,
        stubs: @stubs,
        params_class: Params::CreateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a CA for the group. If a CA already exists, it will rotate the existing CA.
    #
    # @param [Hash] params
    #   See {Types::CreateGroupCertificateAuthorityInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::CreateGroupCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_certificate_authority(
    #     amzn_client_token: 'AmznClientToken',
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGroupCertificateAuthorityOutput
    #   resp.data.group_certificate_authority_arn #=> String
    #
    def create_group_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGroupCertificateAuthorityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGroupCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGroupCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::CreateGroupCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGroupCertificateAuthority,
        stubs: @stubs,
        params_class: Params::CreateGroupCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_group_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a version of a group which has already been defined.
    #
    # @param [Hash] params
    #   See {Types::CreateGroupVersionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :connector_definition_version_arn
    #   The ARN of the connector definition version for this group.
    #
    # @option params [String] :core_definition_version_arn
    #   The ARN of the core definition version for this group.
    #
    # @option params [String] :device_definition_version_arn
    #   The ARN of the device definition version for this group.
    #
    # @option params [String] :function_definition_version_arn
    #   The ARN of the function definition version for this group.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @option params [String] :logger_definition_version_arn
    #   The ARN of the logger definition version for this group.
    #
    # @option params [String] :resource_definition_version_arn
    #   The ARN of the resource definition version for this group.
    #
    # @option params [String] :subscription_definition_version_arn
    #   The ARN of the subscription definition version for this group.
    #
    # @return [Types::CreateGroupVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_version(
    #     amzn_client_token: 'AmznClientToken',
    #     connector_definition_version_arn: 'ConnectorDefinitionVersionArn',
    #     core_definition_version_arn: 'CoreDefinitionVersionArn',
    #     device_definition_version_arn: 'DeviceDefinitionVersionArn',
    #     function_definition_version_arn: 'FunctionDefinitionVersionArn',
    #     group_id: 'GroupId', # required
    #     logger_definition_version_arn: 'LoggerDefinitionVersionArn',
    #     resource_definition_version_arn: 'ResourceDefinitionVersionArn',
    #     subscription_definition_version_arn: 'SubscriptionDefinitionVersionArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGroupVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def create_group_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGroupVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGroupVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGroupVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateGroupVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGroupVersion,
        stubs: @stubs,
        params_class: Params::CreateGroupVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_group_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.
    #
    # @param [Hash] params
    #   See {Types::CreateLoggerDefinitionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [LoggerDefinitionVersion] :initial_version
    #   Information about the initial version of the logger definition.
    #
    # @option params [String] :name
    #   The name of the logger definition.
    #
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    #
    # @return [Types::CreateLoggerDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_logger_definition(
    #     amzn_client_token: 'AmznClientToken',
    #     initial_version: {
    #       loggers: [
    #         {
    #           component: 'GreengrassSystem', # required - accepts ["GreengrassSystem", "Lambda"]
    #           id: 'Id', # required
    #           level: 'DEBUG', # required - accepts ["DEBUG", "INFO", "WARN", "ERROR", "FATAL"]
    #           space: 1,
    #           type: 'FileSystem' # required - accepts ["FileSystem", "AWSCloudWatch"]
    #         }
    #       ]
    #     },
    #     name: 'Name',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLoggerDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #
    def create_logger_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLoggerDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLoggerDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLoggerDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateLoggerDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLoggerDefinition,
        stubs: @stubs,
        params_class: Params::CreateLoggerDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_logger_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a version of a logger definition that has already been defined.
    #
    # @param [Hash] params
    #   See {Types::CreateLoggerDefinitionVersionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    #
    # @option params [Array<Logger>] :loggers
    #   A list of loggers.
    #
    # @return [Types::CreateLoggerDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_logger_definition_version(
    #     amzn_client_token: 'AmznClientToken',
    #     logger_definition_id: 'LoggerDefinitionId', # required
    #     loggers: [
    #       {
    #         component: 'GreengrassSystem', # required - accepts ["GreengrassSystem", "Lambda"]
    #         id: 'Id', # required
    #         level: 'DEBUG', # required - accepts ["DEBUG", "INFO", "WARN", "ERROR", "FATAL"]
    #         space: 1,
    #         type: 'FileSystem' # required - accepts ["FileSystem", "AWSCloudWatch"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLoggerDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def create_logger_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLoggerDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLoggerDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLoggerDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateLoggerDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLoggerDefinitionVersion,
        stubs: @stubs,
        params_class: Params::CreateLoggerDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_logger_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.
    #
    # @param [Hash] params
    #   See {Types::CreateResourceDefinitionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [ResourceDefinitionVersion] :initial_version
    #   Information about the initial version of the resource definition.
    #
    # @option params [String] :name
    #   The name of the resource definition.
    #
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    #
    # @return [Types::CreateResourceDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_definition(
    #     amzn_client_token: 'AmznClientToken',
    #     initial_version: {
    #       resources: [
    #         {
    #           id: 'Id', # required
    #           name: 'Name', # required
    #           resource_data_container: {
    #             local_device_resource_data: {
    #               group_owner_setting: {
    #                 auto_add_group_owner: false,
    #                 group_owner: 'GroupOwner'
    #               },
    #               source_path: 'SourcePath'
    #             },
    #             local_volume_resource_data: {
    #               destination_path: 'DestinationPath',
    #               source_path: 'SourcePath'
    #             },
    #             s3_machine_learning_model_resource_data: {
    #               destination_path: 'DestinationPath',
    #               owner_setting: {
    #                 group_owner: 'GroupOwner', # required
    #                 group_permission: 'ro' # required - accepts ["ro", "rw"]
    #               },
    #               s3_uri: 'S3Uri'
    #             },
    #             sage_maker_machine_learning_model_resource_data: {
    #               destination_path: 'DestinationPath',
    #               sage_maker_job_arn: 'SageMakerJobArn'
    #             },
    #             secrets_manager_secret_resource_data: {
    #               arn: 'ARN',
    #               additional_staging_labels_to_download: [
    #                 'member'
    #               ]
    #             }
    #           } # required
    #         }
    #       ]
    #     },
    #     name: 'Name',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourceDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #
    def create_resource_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourceDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourceDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResourceDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateResourceDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResourceDefinition,
        stubs: @stubs,
        params_class: Params::CreateResourceDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a version of a resource definition that has already been defined.
    #
    # @param [Hash] params
    #   See {Types::CreateResourceDefinitionVersionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    #
    # @option params [Array<Resource>] :resources
    #   A list of resources.
    #
    # @return [Types::CreateResourceDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_definition_version(
    #     amzn_client_token: 'AmznClientToken',
    #     resource_definition_id: 'ResourceDefinitionId', # required
    #     resources: [
    #       {
    #         id: 'Id', # required
    #         name: 'Name', # required
    #         resource_data_container: {
    #           local_device_resource_data: {
    #             group_owner_setting: {
    #               auto_add_group_owner: false,
    #               group_owner: 'GroupOwner'
    #             },
    #             source_path: 'SourcePath'
    #           },
    #           local_volume_resource_data: {
    #             destination_path: 'DestinationPath',
    #             source_path: 'SourcePath'
    #           },
    #           s3_machine_learning_model_resource_data: {
    #             destination_path: 'DestinationPath',
    #             owner_setting: {
    #               group_owner: 'GroupOwner', # required
    #               group_permission: 'ro' # required - accepts ["ro", "rw"]
    #             },
    #             s3_uri: 'S3Uri'
    #           },
    #           sage_maker_machine_learning_model_resource_data: {
    #             destination_path: 'DestinationPath',
    #             sage_maker_job_arn: 'SageMakerJobArn'
    #           },
    #           secrets_manager_secret_resource_data: {
    #             arn: 'ARN',
    #             additional_staging_labels_to_download: [
    #               'member'
    #             ]
    #           }
    #         } # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourceDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def create_resource_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourceDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourceDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResourceDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateResourceDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResourceDefinitionVersion,
        stubs: @stubs,
        params_class: Params::CreateResourceDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.
    #
    # @param [Hash] params
    #   See {Types::CreateSoftwareUpdateJobInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :s3_url_signer_role
    #   The IAM Role that Greengrass will use to create pre-signed URLs pointing towards the update artifact.
    #
    # @option params [String] :software_to_update
    #   The piece of software on the Greengrass core that will be updated.
    #
    # @option params [String] :update_agent_log_level
    #   The minimum level of log statements that should be logged by the OTA Agent during an update.
    #
    # @option params [Array<String>] :update_targets
    #   The ARNs of the targets (IoT things or IoT thing groups) that this update will be applied to.
    #
    # @option params [String] :update_targets_architecture
    #   The architecture of the cores which are the targets of an update.
    #
    # @option params [String] :update_targets_operating_system
    #   The operating system of the cores which are the targets of an update.
    #
    # @return [Types::CreateSoftwareUpdateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_software_update_job(
    #     amzn_client_token: 'AmznClientToken',
    #     s3_url_signer_role: 'S3UrlSignerRole', # required
    #     software_to_update: 'core', # required - accepts ["core", "ota_agent"]
    #     update_agent_log_level: 'NONE', # accepts ["NONE", "TRACE", "DEBUG", "VERBOSE", "INFO", "WARN", "ERROR", "FATAL"]
    #     update_targets: [
    #       'member'
    #     ], # required
    #     update_targets_architecture: 'armv6l', # required - accepts ["armv6l", "armv7l", "x86_64", "aarch64"]
    #     update_targets_operating_system: 'ubuntu' # required - accepts ["ubuntu", "raspbian", "amazon_linux", "openwrt"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSoftwareUpdateJobOutput
    #   resp.data.iot_job_arn #=> String
    #   resp.data.iot_job_id #=> String
    #   resp.data.platform_software_version #=> String
    #
    def create_software_update_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSoftwareUpdateJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSoftwareUpdateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSoftwareUpdateJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::CreateSoftwareUpdateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSoftwareUpdateJob,
        stubs: @stubs,
        params_class: Params::CreateSoftwareUpdateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_software_update_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.
    #
    # @param [Hash] params
    #   See {Types::CreateSubscriptionDefinitionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [SubscriptionDefinitionVersion] :initial_version
    #   Information about the initial version of the subscription definition.
    #
    # @option params [String] :name
    #   The name of the subscription definition.
    #
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    #
    # @return [Types::CreateSubscriptionDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_definition(
    #     amzn_client_token: 'AmznClientToken',
    #     initial_version: {
    #       subscriptions: [
    #         {
    #           id: 'Id', # required
    #           source: 'Source', # required
    #           subject: 'Subject', # required
    #           target: 'Target' # required
    #         }
    #       ]
    #     },
    #     name: 'Name',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSubscriptionDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #
    def create_subscription_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSubscriptionDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSubscriptionDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSubscriptionDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateSubscriptionDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSubscriptionDefinition,
        stubs: @stubs,
        params_class: Params::CreateSubscriptionDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_subscription_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a version of a subscription definition which has already been defined.
    #
    # @param [Hash] params
    #   See {Types::CreateSubscriptionDefinitionVersionInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    #
    # @option params [Array<Subscription>] :subscriptions
    #   A list of subscriptions.
    #
    # @return [Types::CreateSubscriptionDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_definition_version(
    #     amzn_client_token: 'AmznClientToken',
    #     subscription_definition_id: 'SubscriptionDefinitionId', # required
    #     subscriptions: [
    #       {
    #         id: 'Id', # required
    #         source: 'Source', # required
    #         subject: 'Subject', # required
    #         target: 'Target' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSubscriptionDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def create_subscription_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSubscriptionDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSubscriptionDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSubscriptionDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::CreateSubscriptionDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSubscriptionDefinitionVersion,
        stubs: @stubs,
        params_class: Params::CreateSubscriptionDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_subscription_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a connector definition.
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectorDefinitionInput}.
    #
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    #
    # @return [Types::DeleteConnectorDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connector_definition(
    #     connector_definition_id: 'ConnectorDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectorDefinitionOutput
    #
    def delete_connector_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectorDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectorDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnectorDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::DeleteConnectorDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnectorDefinition,
        stubs: @stubs,
        params_class: Params::DeleteConnectorDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connector_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a core definition.
    #
    # @param [Hash] params
    #   See {Types::DeleteCoreDefinitionInput}.
    #
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    #
    # @return [Types::DeleteCoreDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_core_definition(
    #     core_definition_id: 'CoreDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCoreDefinitionOutput
    #
    def delete_core_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCoreDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCoreDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCoreDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::DeleteCoreDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCoreDefinition,
        stubs: @stubs,
        params_class: Params::DeleteCoreDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_core_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a device definition.
    #
    # @param [Hash] params
    #   See {Types::DeleteDeviceDefinitionInput}.
    #
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    #
    # @return [Types::DeleteDeviceDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device_definition(
    #     device_definition_id: 'DeviceDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeviceDefinitionOutput
    #
    def delete_device_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeviceDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeviceDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDeviceDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::DeleteDeviceDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDeviceDefinition,
        stubs: @stubs,
        params_class: Params::DeleteDeviceDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_device_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a Lambda function definition.
    #
    # @param [Hash] params
    #   See {Types::DeleteFunctionDefinitionInput}.
    #
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    #
    # @return [Types::DeleteFunctionDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_definition(
    #     function_definition_id: 'FunctionDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFunctionDefinitionOutput
    #
    def delete_function_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunctionDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::DeleteFunctionDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFunctionDefinition,
        stubs: @stubs,
        params_class: Params::DeleteFunctionDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_function_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a group.
    #
    # @param [Hash] params
    #   See {Types::DeleteGroupInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::DeleteGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group(
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGroupOutput
    #
    def delete_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::DeleteGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGroup,
        stubs: @stubs,
        params_class: Params::DeleteGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a logger definition.
    #
    # @param [Hash] params
    #   See {Types::DeleteLoggerDefinitionInput}.
    #
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    #
    # @return [Types::DeleteLoggerDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_logger_definition(
    #     logger_definition_id: 'LoggerDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLoggerDefinitionOutput
    #
    def delete_logger_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLoggerDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLoggerDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLoggerDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::DeleteLoggerDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLoggerDefinition,
        stubs: @stubs,
        params_class: Params::DeleteLoggerDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_logger_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a resource definition.
    #
    # @param [Hash] params
    #   See {Types::DeleteResourceDefinitionInput}.
    #
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    #
    # @return [Types::DeleteResourceDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_definition(
    #     resource_definition_id: 'ResourceDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourceDefinitionOutput
    #
    def delete_resource_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourceDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourceDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourceDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::DeleteResourceDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourceDefinition,
        stubs: @stubs,
        params_class: Params::DeleteResourceDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a subscription definition.
    #
    # @param [Hash] params
    #   See {Types::DeleteSubscriptionDefinitionInput}.
    #
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    #
    # @return [Types::DeleteSubscriptionDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_definition(
    #     subscription_definition_id: 'SubscriptionDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSubscriptionDefinitionOutput
    #
    def delete_subscription_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSubscriptionDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSubscriptionDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSubscriptionDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::DeleteSubscriptionDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSubscriptionDefinition,
        stubs: @stubs,
        params_class: Params::DeleteSubscriptionDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_subscription_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Disassociates the role from a group.
    #
    # @param [Hash] params
    #   See {Types::DisassociateRoleFromGroupInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::DisassociateRoleFromGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_role_from_group(
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateRoleFromGroupOutput
    #   resp.data.disassociated_at #=> String
    #
    def disassociate_role_from_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateRoleFromGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateRoleFromGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateRoleFromGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::DisassociateRoleFromGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateRoleFromGroup,
        stubs: @stubs,
        params_class: Params::DisassociateRoleFromGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_role_from_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Disassociates the service role from your account. Without a service role, deployments will not work.
    #
    # @param [Hash] params
    #   See {Types::DisassociateServiceRoleFromAccountInput}.
    #
    # @return [Types::DisassociateServiceRoleFromAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_service_role_from_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateServiceRoleFromAccountOutput
    #   resp.data.disassociated_at #=> String
    #
    def disassociate_service_role_from_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateServiceRoleFromAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateServiceRoleFromAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateServiceRoleFromAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException]),
        data_parser: Parsers::DisassociateServiceRoleFromAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateServiceRoleFromAccount,
        stubs: @stubs,
        params_class: Params::DisassociateServiceRoleFromAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_service_role_from_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves the role associated with a particular group.
    #
    # @param [Hash] params
    #   See {Types::GetAssociatedRoleInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::GetAssociatedRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_associated_role(
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssociatedRoleOutput
    #   resp.data.associated_at #=> String
    #   resp.data.role_arn #=> String
    #
    def get_associated_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssociatedRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssociatedRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssociatedRole
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::GetAssociatedRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssociatedRole,
        stubs: @stubs,
        params_class: Params::GetAssociatedRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_associated_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns the status of a bulk deployment.
    #
    # @param [Hash] params
    #   See {Types::GetBulkDeploymentStatusInput}.
    #
    # @option params [String] :bulk_deployment_id
    #   The ID of the bulk deployment.
    #
    # @return [Types::GetBulkDeploymentStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bulk_deployment_status(
    #     bulk_deployment_id: 'BulkDeploymentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBulkDeploymentStatusOutput
    #   resp.data.bulk_deployment_metrics #=> Types::BulkDeploymentMetrics
    #   resp.data.bulk_deployment_metrics.invalid_input_records #=> Integer
    #   resp.data.bulk_deployment_metrics.records_processed #=> Integer
    #   resp.data.bulk_deployment_metrics.retry_attempts #=> Integer
    #   resp.data.bulk_deployment_status #=> String, one of ["Initializing", "Running", "Completed", "Stopping", "Stopped", "Failed"]
    #   resp.data.created_at #=> String
    #   resp.data.error_details #=> Array<ErrorDetail>
    #   resp.data.error_details[0] #=> Types::ErrorDetail
    #   resp.data.error_details[0].detailed_error_code #=> String
    #   resp.data.error_details[0].detailed_error_message #=> String
    #   resp.data.error_message #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_bulk_deployment_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBulkDeploymentStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBulkDeploymentStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBulkDeploymentStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetBulkDeploymentStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBulkDeploymentStatus,
        stubs: @stubs,
        params_class: Params::GetBulkDeploymentStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bulk_deployment_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves the connectivity information for a core.
    #
    # @param [Hash] params
    #   See {Types::GetConnectivityInfoInput}.
    #
    # @option params [String] :thing_name
    #   The thing name.
    #
    # @return [Types::GetConnectivityInfoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connectivity_info(
    #     thing_name: 'ThingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectivityInfoOutput
    #   resp.data.connectivity_info #=> Array<ConnectivityInfo>
    #   resp.data.connectivity_info[0] #=> Types::ConnectivityInfo
    #   resp.data.connectivity_info[0].host_address #=> String
    #   resp.data.connectivity_info[0].id #=> String
    #   resp.data.connectivity_info[0].metadata #=> String
    #   resp.data.connectivity_info[0].port_number #=> Integer
    #   resp.data.message #=> String
    #
    def get_connectivity_info(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectivityInfoInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectivityInfoInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnectivityInfo
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::GetConnectivityInfo
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnectivityInfo,
        stubs: @stubs,
        params_class: Params::GetConnectivityInfoOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connectivity_info
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a connector definition.
    #
    # @param [Hash] params
    #   See {Types::GetConnectorDefinitionInput}.
    #
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    #
    # @return [Types::GetConnectorDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connector_definition(
    #     connector_definition_id: 'ConnectorDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectorDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_connector_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectorDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectorDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnectorDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetConnectorDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnectorDefinition,
        stubs: @stubs,
        params_class: Params::GetConnectorDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connector_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a connector definition version, including the connectors that the version contains. Connectors are prebuilt modules that interact with local infrastructure, device protocols, AWS, and other cloud services.
    #
    # @param [Hash] params
    #   See {Types::GetConnectorDefinitionVersionInput}.
    #
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    #
    # @option params [String] :connector_definition_version_id
    #   The ID of the connector definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListConnectorDefinitionVersions'' requests. If the version is the last one that was associated with a connector definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::GetConnectorDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connector_definition_version(
    #     connector_definition_id: 'ConnectorDefinitionId', # required
    #     connector_definition_version_id: 'ConnectorDefinitionVersionId', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectorDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.definition #=> Types::ConnectorDefinitionVersion
    #   resp.data.definition.connectors #=> Array<Connector>
    #   resp.data.definition.connectors[0] #=> Types::Connector
    #   resp.data.definition.connectors[0].connector_arn #=> String
    #   resp.data.definition.connectors[0].id #=> String
    #   resp.data.definition.connectors[0].parameters #=> Hash<String, String>
    #   resp.data.definition.connectors[0].parameters['key'] #=> String
    #   resp.data.id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.version #=> String
    #
    def get_connector_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectorDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectorDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnectorDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetConnectorDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnectorDefinitionVersion,
        stubs: @stubs,
        params_class: Params::GetConnectorDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connector_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a core definition version.
    #
    # @param [Hash] params
    #   See {Types::GetCoreDefinitionInput}.
    #
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    #
    # @return [Types::GetCoreDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_definition(
    #     core_definition_id: 'CoreDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCoreDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_core_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCoreDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCoreDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCoreDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetCoreDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCoreDefinition,
        stubs: @stubs,
        params_class: Params::GetCoreDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_core_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a core definition version.
    #
    # @param [Hash] params
    #   See {Types::GetCoreDefinitionVersionInput}.
    #
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    #
    # @option params [String] :core_definition_version_id
    #   The ID of the core definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListCoreDefinitionVersions'' requests. If the version is the last one that was associated with a core definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    # @return [Types::GetCoreDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_definition_version(
    #     core_definition_id: 'CoreDefinitionId', # required
    #     core_definition_version_id: 'CoreDefinitionVersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCoreDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.definition #=> Types::CoreDefinitionVersion
    #   resp.data.definition.cores #=> Array<Core>
    #   resp.data.definition.cores[0] #=> Types::Core
    #   resp.data.definition.cores[0].certificate_arn #=> String
    #   resp.data.definition.cores[0].id #=> String
    #   resp.data.definition.cores[0].sync_shadow #=> Boolean
    #   resp.data.definition.cores[0].thing_arn #=> String
    #   resp.data.id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.version #=> String
    #
    def get_core_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCoreDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCoreDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCoreDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetCoreDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCoreDefinitionVersion,
        stubs: @stubs,
        params_class: Params::GetCoreDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_core_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns the status of a deployment.
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentStatusInput}.
    #
    # @option params [String] :deployment_id
    #   The ID of the deployment.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::GetDeploymentStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_status(
    #     deployment_id: 'DeploymentId', # required
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentStatusOutput
    #   resp.data.deployment_status #=> String
    #   resp.data.deployment_type #=> String, one of ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"]
    #   resp.data.error_details #=> Array<ErrorDetail>
    #   resp.data.error_details[0] #=> Types::ErrorDetail
    #   resp.data.error_details[0].detailed_error_code #=> String
    #   resp.data.error_details[0].detailed_error_message #=> String
    #   resp.data.error_message #=> String
    #   resp.data.updated_at #=> String
    #
    def get_deployment_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeploymentStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetDeploymentStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeploymentStatus,
        stubs: @stubs,
        params_class: Params::GetDeploymentStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployment_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a device definition.
    #
    # @param [Hash] params
    #   See {Types::GetDeviceDefinitionInput}.
    #
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    #
    # @return [Types::GetDeviceDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_definition(
    #     device_definition_id: 'DeviceDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeviceDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_device_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeviceDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeviceDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeviceDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetDeviceDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeviceDefinition,
        stubs: @stubs,
        params_class: Params::GetDeviceDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a device definition version.
    #
    # @param [Hash] params
    #   See {Types::GetDeviceDefinitionVersionInput}.
    #
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    #
    # @option params [String] :device_definition_version_id
    #   The ID of the device definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListDeviceDefinitionVersions'' requests. If the version is the last one that was associated with a device definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::GetDeviceDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_definition_version(
    #     device_definition_id: 'DeviceDefinitionId', # required
    #     device_definition_version_id: 'DeviceDefinitionVersionId', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeviceDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.definition #=> Types::DeviceDefinitionVersion
    #   resp.data.definition.devices #=> Array<Device>
    #   resp.data.definition.devices[0] #=> Types::Device
    #   resp.data.definition.devices[0].certificate_arn #=> String
    #   resp.data.definition.devices[0].id #=> String
    #   resp.data.definition.devices[0].sync_shadow #=> Boolean
    #   resp.data.definition.devices[0].thing_arn #=> String
    #   resp.data.id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.version #=> String
    #
    def get_device_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeviceDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeviceDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeviceDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetDeviceDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeviceDefinitionVersion,
        stubs: @stubs,
        params_class: Params::GetDeviceDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a Lambda function definition, including its creation time and latest version.
    #
    # @param [Hash] params
    #   See {Types::GetFunctionDefinitionInput}.
    #
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    #
    # @return [Types::GetFunctionDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_definition(
    #     function_definition_id: 'FunctionDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFunctionDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_function_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetFunctionDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFunctionDefinition,
        stubs: @stubs,
        params_class: Params::GetFunctionDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_function_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.
    #
    # @param [Hash] params
    #   See {Types::GetFunctionDefinitionVersionInput}.
    #
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    #
    # @option params [String] :function_definition_version_id
    #   The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::GetFunctionDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_definition_version(
    #     function_definition_id: 'FunctionDefinitionId', # required
    #     function_definition_version_id: 'FunctionDefinitionVersionId', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFunctionDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.definition #=> Types::FunctionDefinitionVersion
    #   resp.data.definition.default_config #=> Types::FunctionDefaultConfig
    #   resp.data.definition.default_config.execution #=> Types::FunctionDefaultExecutionConfig
    #   resp.data.definition.default_config.execution.isolation_mode #=> String, one of ["GreengrassContainer", "NoContainer"]
    #   resp.data.definition.default_config.execution.run_as #=> Types::FunctionRunAsConfig
    #   resp.data.definition.default_config.execution.run_as.gid #=> Integer
    #   resp.data.definition.default_config.execution.run_as.uid #=> Integer
    #   resp.data.definition.functions #=> Array<Function>
    #   resp.data.definition.functions[0] #=> Types::Function
    #   resp.data.definition.functions[0].function_arn #=> String
    #   resp.data.definition.functions[0].function_configuration #=> Types::FunctionConfiguration
    #   resp.data.definition.functions[0].function_configuration.encoding_type #=> String, one of ["binary", "json"]
    #   resp.data.definition.functions[0].function_configuration.environment #=> Types::FunctionConfigurationEnvironment
    #   resp.data.definition.functions[0].function_configuration.environment.access_sysfs #=> Boolean
    #   resp.data.definition.functions[0].function_configuration.environment.execution #=> Types::FunctionExecutionConfig
    #   resp.data.definition.functions[0].function_configuration.environment.execution.isolation_mode #=> String, one of ["GreengrassContainer", "NoContainer"]
    #   resp.data.definition.functions[0].function_configuration.environment.execution.run_as #=> Types::FunctionRunAsConfig
    #   resp.data.definition.functions[0].function_configuration.environment.resource_access_policies #=> Array<ResourceAccessPolicy>
    #   resp.data.definition.functions[0].function_configuration.environment.resource_access_policies[0] #=> Types::ResourceAccessPolicy
    #   resp.data.definition.functions[0].function_configuration.environment.resource_access_policies[0].permission #=> String, one of ["ro", "rw"]
    #   resp.data.definition.functions[0].function_configuration.environment.resource_access_policies[0].resource_id #=> String
    #   resp.data.definition.functions[0].function_configuration.environment.variables #=> Hash<String, String>
    #   resp.data.definition.functions[0].function_configuration.environment.variables['key'] #=> String
    #   resp.data.definition.functions[0].function_configuration.exec_args #=> String
    #   resp.data.definition.functions[0].function_configuration.executable #=> String
    #   resp.data.definition.functions[0].function_configuration.memory_size #=> Integer
    #   resp.data.definition.functions[0].function_configuration.pinned #=> Boolean
    #   resp.data.definition.functions[0].function_configuration.timeout #=> Integer
    #   resp.data.definition.functions[0].id #=> String
    #   resp.data.id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.version #=> String
    #
    def get_function_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetFunctionDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFunctionDefinitionVersion,
        stubs: @stubs,
        params_class: Params::GetFunctionDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_function_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a group.
    #
    # @param [Hash] params
    #   See {Types::GetGroupInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::GetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group(
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroup,
        stubs: @stubs,
        params_class: Params::GetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retreives the CA associated with a group. Returns the public key of the CA.
    #
    # @param [Hash] params
    #   See {Types::GetGroupCertificateAuthorityInput}.
    #
    # @option params [String] :certificate_authority_id
    #   The ID of the certificate authority.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::GetGroupCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_certificate_authority(
    #     certificate_authority_id: 'CertificateAuthorityId', # required
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupCertificateAuthorityOutput
    #   resp.data.group_certificate_authority_arn #=> String
    #   resp.data.group_certificate_authority_id #=> String
    #   resp.data.pem_encoded_certificate #=> String
    #
    def get_group_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupCertificateAuthorityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroupCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::GetGroupCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroupCertificateAuthority,
        stubs: @stubs,
        params_class: Params::GetGroupCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves the current configuration for the CA used by the group.
    #
    # @param [Hash] params
    #   See {Types::GetGroupCertificateConfigurationInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::GetGroupCertificateConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_certificate_configuration(
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupCertificateConfigurationOutput
    #   resp.data.certificate_authority_expiry_in_milliseconds #=> String
    #   resp.data.certificate_expiry_in_milliseconds #=> String
    #   resp.data.group_id #=> String
    #
    def get_group_certificate_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupCertificateConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupCertificateConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroupCertificateConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::GetGroupCertificateConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroupCertificateConfiguration,
        stubs: @stubs,
        params_class: Params::GetGroupCertificateConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group_certificate_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a group version.
    #
    # @param [Hash] params
    #   See {Types::GetGroupVersionInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @option params [String] :group_version_id
    #   The ID of the group version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListGroupVersions'' requests. If the version is the last one that was associated with a group, the value also maps to the ''LatestVersion'' property of the corresponding ''GroupInformation'' object.
    #
    # @return [Types::GetGroupVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_version(
    #     group_id: 'GroupId', # required
    #     group_version_id: 'GroupVersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.definition #=> Types::GroupVersion
    #   resp.data.definition.connector_definition_version_arn #=> String
    #   resp.data.definition.core_definition_version_arn #=> String
    #   resp.data.definition.device_definition_version_arn #=> String
    #   resp.data.definition.function_definition_version_arn #=> String
    #   resp.data.definition.logger_definition_version_arn #=> String
    #   resp.data.definition.resource_definition_version_arn #=> String
    #   resp.data.definition.subscription_definition_version_arn #=> String
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def get_group_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroupVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetGroupVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroupVersion,
        stubs: @stubs,
        params_class: Params::GetGroupVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a logger definition.
    #
    # @param [Hash] params
    #   See {Types::GetLoggerDefinitionInput}.
    #
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    #
    # @return [Types::GetLoggerDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_logger_definition(
    #     logger_definition_id: 'LoggerDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLoggerDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_logger_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLoggerDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLoggerDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLoggerDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetLoggerDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLoggerDefinition,
        stubs: @stubs,
        params_class: Params::GetLoggerDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_logger_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a logger definition version.
    #
    # @param [Hash] params
    #   See {Types::GetLoggerDefinitionVersionInput}.
    #
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    #
    # @option params [String] :logger_definition_version_id
    #   The ID of the logger definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListLoggerDefinitionVersions'' requests. If the version is the last one that was associated with a logger definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::GetLoggerDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_logger_definition_version(
    #     logger_definition_id: 'LoggerDefinitionId', # required
    #     logger_definition_version_id: 'LoggerDefinitionVersionId', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLoggerDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.definition #=> Types::LoggerDefinitionVersion
    #   resp.data.definition.loggers #=> Array<Logger>
    #   resp.data.definition.loggers[0] #=> Types::Logger
    #   resp.data.definition.loggers[0].component #=> String, one of ["GreengrassSystem", "Lambda"]
    #   resp.data.definition.loggers[0].id #=> String
    #   resp.data.definition.loggers[0].level #=> String, one of ["DEBUG", "INFO", "WARN", "ERROR", "FATAL"]
    #   resp.data.definition.loggers[0].space #=> Integer
    #   resp.data.definition.loggers[0].type #=> String, one of ["FileSystem", "AWSCloudWatch"]
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def get_logger_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLoggerDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLoggerDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLoggerDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetLoggerDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLoggerDefinitionVersion,
        stubs: @stubs,
        params_class: Params::GetLoggerDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_logger_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a resource definition, including its creation time and latest version.
    #
    # @param [Hash] params
    #   See {Types::GetResourceDefinitionInput}.
    #
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    #
    # @return [Types::GetResourceDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_definition(
    #     resource_definition_id: 'ResourceDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_resource_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetResourceDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceDefinition,
        stubs: @stubs,
        params_class: Params::GetResourceDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a resource definition version, including which resources are included in the version.
    #
    # @param [Hash] params
    #   See {Types::GetResourceDefinitionVersionInput}.
    #
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    #
    # @option params [String] :resource_definition_version_id
    #   The ID of the resource definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListResourceDefinitionVersions'' requests. If the version is the last one that was associated with a resource definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    # @return [Types::GetResourceDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_definition_version(
    #     resource_definition_id: 'ResourceDefinitionId', # required
    #     resource_definition_version_id: 'ResourceDefinitionVersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.definition #=> Types::ResourceDefinitionVersion
    #   resp.data.definition.resources #=> Array<Resource>
    #   resp.data.definition.resources[0] #=> Types::Resource
    #   resp.data.definition.resources[0].id #=> String
    #   resp.data.definition.resources[0].name #=> String
    #   resp.data.definition.resources[0].resource_data_container #=> Types::ResourceDataContainer
    #   resp.data.definition.resources[0].resource_data_container.local_device_resource_data #=> Types::LocalDeviceResourceData
    #   resp.data.definition.resources[0].resource_data_container.local_device_resource_data.group_owner_setting #=> Types::GroupOwnerSetting
    #   resp.data.definition.resources[0].resource_data_container.local_device_resource_data.group_owner_setting.auto_add_group_owner #=> Boolean
    #   resp.data.definition.resources[0].resource_data_container.local_device_resource_data.group_owner_setting.group_owner #=> String
    #   resp.data.definition.resources[0].resource_data_container.local_device_resource_data.source_path #=> String
    #   resp.data.definition.resources[0].resource_data_container.local_volume_resource_data #=> Types::LocalVolumeResourceData
    #   resp.data.definition.resources[0].resource_data_container.local_volume_resource_data.destination_path #=> String
    #   resp.data.definition.resources[0].resource_data_container.local_volume_resource_data.group_owner_setting #=> Types::GroupOwnerSetting
    #   resp.data.definition.resources[0].resource_data_container.local_volume_resource_data.source_path #=> String
    #   resp.data.definition.resources[0].resource_data_container.s3_machine_learning_model_resource_data #=> Types::S3MachineLearningModelResourceData
    #   resp.data.definition.resources[0].resource_data_container.s3_machine_learning_model_resource_data.destination_path #=> String
    #   resp.data.definition.resources[0].resource_data_container.s3_machine_learning_model_resource_data.owner_setting #=> Types::ResourceDownloadOwnerSetting
    #   resp.data.definition.resources[0].resource_data_container.s3_machine_learning_model_resource_data.owner_setting.group_owner #=> String
    #   resp.data.definition.resources[0].resource_data_container.s3_machine_learning_model_resource_data.owner_setting.group_permission #=> String, one of ["ro", "rw"]
    #   resp.data.definition.resources[0].resource_data_container.s3_machine_learning_model_resource_data.s3_uri #=> String
    #   resp.data.definition.resources[0].resource_data_container.sage_maker_machine_learning_model_resource_data #=> Types::SageMakerMachineLearningModelResourceData
    #   resp.data.definition.resources[0].resource_data_container.sage_maker_machine_learning_model_resource_data.destination_path #=> String
    #   resp.data.definition.resources[0].resource_data_container.sage_maker_machine_learning_model_resource_data.owner_setting #=> Types::ResourceDownloadOwnerSetting
    #   resp.data.definition.resources[0].resource_data_container.sage_maker_machine_learning_model_resource_data.sage_maker_job_arn #=> String
    #   resp.data.definition.resources[0].resource_data_container.secrets_manager_secret_resource_data #=> Types::SecretsManagerSecretResourceData
    #   resp.data.definition.resources[0].resource_data_container.secrets_manager_secret_resource_data.arn #=> String
    #   resp.data.definition.resources[0].resource_data_container.secrets_manager_secret_resource_data.additional_staging_labels_to_download #=> Array<String>
    #   resp.data.definition.resources[0].resource_data_container.secrets_manager_secret_resource_data.additional_staging_labels_to_download[0] #=> String
    #   resp.data.id #=> String
    #   resp.data.version #=> String
    #
    def get_resource_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetResourceDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceDefinitionVersion,
        stubs: @stubs,
        params_class: Params::GetResourceDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves the service role that is attached to your account.
    #
    # @param [Hash] params
    #   See {Types::GetServiceRoleForAccountInput}.
    #
    # @return [Types::GetServiceRoleForAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_role_for_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceRoleForAccountOutput
    #   resp.data.associated_at #=> String
    #   resp.data.role_arn #=> String
    #
    def get_service_role_for_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceRoleForAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceRoleForAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceRoleForAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException]),
        data_parser: Parsers::GetServiceRoleForAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceRoleForAccount,
        stubs: @stubs,
        params_class: Params::GetServiceRoleForAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_role_for_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a subscription definition.
    #
    # @param [Hash] params
    #   See {Types::GetSubscriptionDefinitionInput}.
    #
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    #
    # @return [Types::GetSubscriptionDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_definition(
    #     subscription_definition_id: 'SubscriptionDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSubscriptionDefinitionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_timestamp #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.latest_version_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_subscription_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSubscriptionDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSubscriptionDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSubscriptionDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetSubscriptionDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSubscriptionDefinition,
        stubs: @stubs,
        params_class: Params::GetSubscriptionDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_subscription_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves information about a subscription definition version.
    #
    # @param [Hash] params
    #   See {Types::GetSubscriptionDefinitionVersionInput}.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    #
    # @option params [String] :subscription_definition_version_id
    #   The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    # @return [Types::GetSubscriptionDefinitionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_definition_version(
    #     next_token: 'NextToken',
    #     subscription_definition_id: 'SubscriptionDefinitionId', # required
    #     subscription_definition_version_id: 'SubscriptionDefinitionVersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSubscriptionDefinitionVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_timestamp #=> String
    #   resp.data.definition #=> Types::SubscriptionDefinitionVersion
    #   resp.data.definition.subscriptions #=> Array<Subscription>
    #   resp.data.definition.subscriptions[0] #=> Types::Subscription
    #   resp.data.definition.subscriptions[0].id #=> String
    #   resp.data.definition.subscriptions[0].source #=> String
    #   resp.data.definition.subscriptions[0].subject #=> String
    #   resp.data.definition.subscriptions[0].target #=> String
    #   resp.data.id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.version #=> String
    #
    def get_subscription_definition_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSubscriptionDefinitionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSubscriptionDefinitionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSubscriptionDefinitionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::GetSubscriptionDefinitionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSubscriptionDefinitionVersion,
        stubs: @stubs,
        params_class: Params::GetSubscriptionDefinitionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_subscription_definition_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Get the runtime configuration of a thing.
    #
    # @param [Hash] params
    #   See {Types::GetThingRuntimeConfigurationInput}.
    #
    # @option params [String] :thing_name
    #   The thing name.
    #
    # @return [Types::GetThingRuntimeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_thing_runtime_configuration(
    #     thing_name: 'ThingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetThingRuntimeConfigurationOutput
    #   resp.data.runtime_configuration #=> Types::RuntimeConfiguration
    #   resp.data.runtime_configuration.telemetry_configuration #=> Types::TelemetryConfiguration
    #   resp.data.runtime_configuration.telemetry_configuration.configuration_sync_status #=> String, one of ["InSync", "OutOfSync"]
    #   resp.data.runtime_configuration.telemetry_configuration.telemetry #=> String, one of ["On", "Off"]
    #
    def get_thing_runtime_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetThingRuntimeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetThingRuntimeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetThingRuntimeConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::GetThingRuntimeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetThingRuntimeConfiguration,
        stubs: @stubs,
        params_class: Params::GetThingRuntimeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_thing_runtime_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Gets a paginated list of the deployments that have been started in a bulk deployment operation, and their current deployment status.
    #
    # @param [Hash] params
    #   See {Types::ListBulkDeploymentDetailedReportsInput}.
    #
    # @option params [String] :bulk_deployment_id
    #   The ID of the bulk deployment.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListBulkDeploymentDetailedReportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bulk_deployment_detailed_reports(
    #     bulk_deployment_id: 'BulkDeploymentId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBulkDeploymentDetailedReportsOutput
    #   resp.data.deployments #=> Array<BulkDeploymentResult>
    #   resp.data.deployments[0] #=> Types::BulkDeploymentResult
    #   resp.data.deployments[0].created_at #=> String
    #   resp.data.deployments[0].deployment_arn #=> String
    #   resp.data.deployments[0].deployment_id #=> String
    #   resp.data.deployments[0].deployment_status #=> String
    #   resp.data.deployments[0].deployment_type #=> String, one of ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"]
    #   resp.data.deployments[0].error_details #=> Array<ErrorDetail>
    #   resp.data.deployments[0].error_details[0] #=> Types::ErrorDetail
    #   resp.data.deployments[0].error_details[0].detailed_error_code #=> String
    #   resp.data.deployments[0].error_details[0].detailed_error_message #=> String
    #   resp.data.deployments[0].error_message #=> String
    #   resp.data.deployments[0].group_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_bulk_deployment_detailed_reports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBulkDeploymentDetailedReportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBulkDeploymentDetailedReportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBulkDeploymentDetailedReports
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListBulkDeploymentDetailedReports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBulkDeploymentDetailedReports,
        stubs: @stubs,
        params_class: Params::ListBulkDeploymentDetailedReportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bulk_deployment_detailed_reports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a list of bulk deployments.
    #
    # @param [Hash] params
    #   See {Types::ListBulkDeploymentsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListBulkDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bulk_deployments(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBulkDeploymentsOutput
    #   resp.data.bulk_deployments #=> Array<BulkDeployment>
    #   resp.data.bulk_deployments[0] #=> Types::BulkDeployment
    #   resp.data.bulk_deployments[0].bulk_deployment_arn #=> String
    #   resp.data.bulk_deployments[0].bulk_deployment_id #=> String
    #   resp.data.bulk_deployments[0].created_at #=> String
    #   resp.data.next_token #=> String
    #
    def list_bulk_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBulkDeploymentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBulkDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBulkDeployments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListBulkDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBulkDeployments,
        stubs: @stubs,
        params_class: Params::ListBulkDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bulk_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Lists the versions of a connector definition, which are containers for connectors. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
    #
    # @param [Hash] params
    #   See {Types::ListConnectorDefinitionVersionsInput}.
    #
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListConnectorDefinitionVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connector_definition_versions(
    #     connector_definition_id: 'ConnectorDefinitionId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConnectorDefinitionVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.versions #=> Array<VersionInformation>
    #   resp.data.versions[0] #=> Types::VersionInformation
    #   resp.data.versions[0].arn #=> String
    #   resp.data.versions[0].creation_timestamp #=> String
    #   resp.data.versions[0].id #=> String
    #   resp.data.versions[0].version #=> String
    #
    def list_connector_definition_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConnectorDefinitionVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConnectorDefinitionVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConnectorDefinitionVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListConnectorDefinitionVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConnectorDefinitionVersions,
        stubs: @stubs,
        params_class: Params::ListConnectorDefinitionVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_connector_definition_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves a list of connector definitions.
    #
    # @param [Hash] params
    #   See {Types::ListConnectorDefinitionsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListConnectorDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connector_definitions(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConnectorDefinitionsOutput
    #   resp.data.definitions #=> Array<DefinitionInformation>
    #   resp.data.definitions[0] #=> Types::DefinitionInformation
    #   resp.data.definitions[0].arn #=> String
    #   resp.data.definitions[0].creation_timestamp #=> String
    #   resp.data.definitions[0].id #=> String
    #   resp.data.definitions[0].last_updated_timestamp #=> String
    #   resp.data.definitions[0].latest_version #=> String
    #   resp.data.definitions[0].latest_version_arn #=> String
    #   resp.data.definitions[0].name #=> String
    #   resp.data.definitions[0].tags #=> Hash<String, String>
    #   resp.data.definitions[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_connector_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConnectorDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConnectorDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConnectorDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListConnectorDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConnectorDefinitions,
        stubs: @stubs,
        params_class: Params::ListConnectorDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_connector_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Lists the versions of a core definition.
    #
    # @param [Hash] params
    #   See {Types::ListCoreDefinitionVersionsInput}.
    #
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListCoreDefinitionVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_core_definition_versions(
    #     core_definition_id: 'CoreDefinitionId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCoreDefinitionVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.versions #=> Array<VersionInformation>
    #   resp.data.versions[0] #=> Types::VersionInformation
    #   resp.data.versions[0].arn #=> String
    #   resp.data.versions[0].creation_timestamp #=> String
    #   resp.data.versions[0].id #=> String
    #   resp.data.versions[0].version #=> String
    #
    def list_core_definition_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCoreDefinitionVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCoreDefinitionVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCoreDefinitionVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListCoreDefinitionVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCoreDefinitionVersions,
        stubs: @stubs,
        params_class: Params::ListCoreDefinitionVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_core_definition_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves a list of core definitions.
    #
    # @param [Hash] params
    #   See {Types::ListCoreDefinitionsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListCoreDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_core_definitions(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCoreDefinitionsOutput
    #   resp.data.definitions #=> Array<DefinitionInformation>
    #   resp.data.definitions[0] #=> Types::DefinitionInformation
    #   resp.data.definitions[0].arn #=> String
    #   resp.data.definitions[0].creation_timestamp #=> String
    #   resp.data.definitions[0].id #=> String
    #   resp.data.definitions[0].last_updated_timestamp #=> String
    #   resp.data.definitions[0].latest_version #=> String
    #   resp.data.definitions[0].latest_version_arn #=> String
    #   resp.data.definitions[0].name #=> String
    #   resp.data.definitions[0].tags #=> Hash<String, String>
    #   resp.data.definitions[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_core_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCoreDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCoreDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCoreDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListCoreDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCoreDefinitions,
        stubs: @stubs,
        params_class: Params::ListCoreDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_core_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a history of deployments for the group.
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentsInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments(
    #     group_id: 'GroupId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentsOutput
    #   resp.data.deployments #=> Array<Deployment>
    #   resp.data.deployments[0] #=> Types::Deployment
    #   resp.data.deployments[0].created_at #=> String
    #   resp.data.deployments[0].deployment_arn #=> String
    #   resp.data.deployments[0].deployment_id #=> String
    #   resp.data.deployments[0].deployment_type #=> String, one of ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"]
    #   resp.data.deployments[0].group_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeploymentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeployments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeployments,
        stubs: @stubs,
        params_class: Params::ListDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Lists the versions of a device definition.
    #
    # @param [Hash] params
    #   See {Types::ListDeviceDefinitionVersionsInput}.
    #
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListDeviceDefinitionVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_definition_versions(
    #     device_definition_id: 'DeviceDefinitionId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeviceDefinitionVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.versions #=> Array<VersionInformation>
    #   resp.data.versions[0] #=> Types::VersionInformation
    #   resp.data.versions[0].arn #=> String
    #   resp.data.versions[0].creation_timestamp #=> String
    #   resp.data.versions[0].id #=> String
    #   resp.data.versions[0].version #=> String
    #
    def list_device_definition_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeviceDefinitionVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeviceDefinitionVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeviceDefinitionVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListDeviceDefinitionVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeviceDefinitionVersions,
        stubs: @stubs,
        params_class: Params::ListDeviceDefinitionVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_device_definition_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves a list of device definitions.
    #
    # @param [Hash] params
    #   See {Types::ListDeviceDefinitionsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListDeviceDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_definitions(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeviceDefinitionsOutput
    #   resp.data.definitions #=> Array<DefinitionInformation>
    #   resp.data.definitions[0] #=> Types::DefinitionInformation
    #   resp.data.definitions[0].arn #=> String
    #   resp.data.definitions[0].creation_timestamp #=> String
    #   resp.data.definitions[0].id #=> String
    #   resp.data.definitions[0].last_updated_timestamp #=> String
    #   resp.data.definitions[0].latest_version #=> String
    #   resp.data.definitions[0].latest_version_arn #=> String
    #   resp.data.definitions[0].name #=> String
    #   resp.data.definitions[0].tags #=> Hash<String, String>
    #   resp.data.definitions[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_device_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeviceDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeviceDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeviceDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListDeviceDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeviceDefinitions,
        stubs: @stubs,
        params_class: Params::ListDeviceDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_device_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Lists the versions of a Lambda function definition.
    #
    # @param [Hash] params
    #   See {Types::ListFunctionDefinitionVersionsInput}.
    #
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListFunctionDefinitionVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_function_definition_versions(
    #     function_definition_id: 'FunctionDefinitionId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFunctionDefinitionVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.versions #=> Array<VersionInformation>
    #   resp.data.versions[0] #=> Types::VersionInformation
    #   resp.data.versions[0].arn #=> String
    #   resp.data.versions[0].creation_timestamp #=> String
    #   resp.data.versions[0].id #=> String
    #   resp.data.versions[0].version #=> String
    #
    def list_function_definition_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFunctionDefinitionVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFunctionDefinitionVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFunctionDefinitionVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListFunctionDefinitionVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFunctionDefinitionVersions,
        stubs: @stubs,
        params_class: Params::ListFunctionDefinitionVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_function_definition_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves a list of Lambda function definitions.
    #
    # @param [Hash] params
    #   See {Types::ListFunctionDefinitionsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListFunctionDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_function_definitions(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFunctionDefinitionsOutput
    #   resp.data.definitions #=> Array<DefinitionInformation>
    #   resp.data.definitions[0] #=> Types::DefinitionInformation
    #   resp.data.definitions[0].arn #=> String
    #   resp.data.definitions[0].creation_timestamp #=> String
    #   resp.data.definitions[0].id #=> String
    #   resp.data.definitions[0].last_updated_timestamp #=> String
    #   resp.data.definitions[0].latest_version #=> String
    #   resp.data.definitions[0].latest_version_arn #=> String
    #   resp.data.definitions[0].name #=> String
    #   resp.data.definitions[0].tags #=> Hash<String, String>
    #   resp.data.definitions[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_function_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFunctionDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFunctionDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFunctionDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListFunctionDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFunctionDefinitions,
        stubs: @stubs,
        params_class: Params::ListFunctionDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_function_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves the current CAs for a group.
    #
    # @param [Hash] params
    #   See {Types::ListGroupCertificateAuthoritiesInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::ListGroupCertificateAuthoritiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_certificate_authorities(
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupCertificateAuthoritiesOutput
    #   resp.data.group_certificate_authorities #=> Array<GroupCertificateAuthorityProperties>
    #   resp.data.group_certificate_authorities[0] #=> Types::GroupCertificateAuthorityProperties
    #   resp.data.group_certificate_authorities[0].group_certificate_authority_arn #=> String
    #   resp.data.group_certificate_authorities[0].group_certificate_authority_id #=> String
    #
    def list_group_certificate_authorities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupCertificateAuthoritiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupCertificateAuthoritiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroupCertificateAuthorities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::ListGroupCertificateAuthorities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroupCertificateAuthorities,
        stubs: @stubs,
        params_class: Params::ListGroupCertificateAuthoritiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_group_certificate_authorities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Lists the versions of a group.
    #
    # @param [Hash] params
    #   See {Types::ListGroupVersionsInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListGroupVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_versions(
    #     group_id: 'GroupId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.versions #=> Array<VersionInformation>
    #   resp.data.versions[0] #=> Types::VersionInformation
    #   resp.data.versions[0].arn #=> String
    #   resp.data.versions[0].creation_timestamp #=> String
    #   resp.data.versions[0].id #=> String
    #   resp.data.versions[0].version #=> String
    #
    def list_group_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroupVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListGroupVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroupVersions,
        stubs: @stubs,
        params_class: Params::ListGroupVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_group_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves a list of groups.
    #
    # @param [Hash] params
    #   See {Types::ListGroupsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupsOutput
    #   resp.data.groups #=> Array<GroupInformation>
    #   resp.data.groups[0] #=> Types::GroupInformation
    #   resp.data.groups[0].arn #=> String
    #   resp.data.groups[0].creation_timestamp #=> String
    #   resp.data.groups[0].id #=> String
    #   resp.data.groups[0].last_updated_timestamp #=> String
    #   resp.data.groups[0].latest_version #=> String
    #   resp.data.groups[0].latest_version_arn #=> String
    #   resp.data.groups[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroups,
        stubs: @stubs,
        params_class: Params::ListGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Lists the versions of a logger definition.
    #
    # @param [Hash] params
    #   See {Types::ListLoggerDefinitionVersionsInput}.
    #
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListLoggerDefinitionVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_logger_definition_versions(
    #     logger_definition_id: 'LoggerDefinitionId', # required
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLoggerDefinitionVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.versions #=> Array<VersionInformation>
    #   resp.data.versions[0] #=> Types::VersionInformation
    #   resp.data.versions[0].arn #=> String
    #   resp.data.versions[0].creation_timestamp #=> String
    #   resp.data.versions[0].id #=> String
    #   resp.data.versions[0].version #=> String
    #
    def list_logger_definition_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLoggerDefinitionVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLoggerDefinitionVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLoggerDefinitionVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListLoggerDefinitionVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLoggerDefinitionVersions,
        stubs: @stubs,
        params_class: Params::ListLoggerDefinitionVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_logger_definition_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves a list of logger definitions.
    #
    # @param [Hash] params
    #   See {Types::ListLoggerDefinitionsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListLoggerDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_logger_definitions(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLoggerDefinitionsOutput
    #   resp.data.definitions #=> Array<DefinitionInformation>
    #   resp.data.definitions[0] #=> Types::DefinitionInformation
    #   resp.data.definitions[0].arn #=> String
    #   resp.data.definitions[0].creation_timestamp #=> String
    #   resp.data.definitions[0].id #=> String
    #   resp.data.definitions[0].last_updated_timestamp #=> String
    #   resp.data.definitions[0].latest_version #=> String
    #   resp.data.definitions[0].latest_version_arn #=> String
    #   resp.data.definitions[0].name #=> String
    #   resp.data.definitions[0].tags #=> Hash<String, String>
    #   resp.data.definitions[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_logger_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLoggerDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLoggerDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLoggerDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListLoggerDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLoggerDefinitions,
        stubs: @stubs,
        params_class: Params::ListLoggerDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_logger_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Lists the versions of a resource definition.
    #
    # @param [Hash] params
    #   See {Types::ListResourceDefinitionVersionsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    #
    # @return [Types::ListResourceDefinitionVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_definition_versions(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken',
    #     resource_definition_id: 'ResourceDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceDefinitionVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.versions #=> Array<VersionInformation>
    #   resp.data.versions[0] #=> Types::VersionInformation
    #   resp.data.versions[0].arn #=> String
    #   resp.data.versions[0].creation_timestamp #=> String
    #   resp.data.versions[0].id #=> String
    #   resp.data.versions[0].version #=> String
    #
    def list_resource_definition_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceDefinitionVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceDefinitionVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceDefinitionVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListResourceDefinitionVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceDefinitionVersions,
        stubs: @stubs,
        params_class: Params::ListResourceDefinitionVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_definition_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves a list of resource definitions.
    #
    # @param [Hash] params
    #   See {Types::ListResourceDefinitionsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListResourceDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_definitions(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceDefinitionsOutput
    #   resp.data.definitions #=> Array<DefinitionInformation>
    #   resp.data.definitions[0] #=> Types::DefinitionInformation
    #   resp.data.definitions[0].arn #=> String
    #   resp.data.definitions[0].creation_timestamp #=> String
    #   resp.data.definitions[0].id #=> String
    #   resp.data.definitions[0].last_updated_timestamp #=> String
    #   resp.data.definitions[0].latest_version #=> String
    #   resp.data.definitions[0].latest_version_arn #=> String
    #   resp.data.definitions[0].name #=> String
    #   resp.data.definitions[0].tags #=> Hash<String, String>
    #   resp.data.definitions[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_resource_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListResourceDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceDefinitions,
        stubs: @stubs,
        params_class: Params::ListResourceDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Lists the versions of a subscription definition.
    #
    # @param [Hash] params
    #   See {Types::ListSubscriptionDefinitionVersionsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    #
    # @return [Types::ListSubscriptionDefinitionVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscription_definition_versions(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken',
    #     subscription_definition_id: 'SubscriptionDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSubscriptionDefinitionVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.versions #=> Array<VersionInformation>
    #   resp.data.versions[0] #=> Types::VersionInformation
    #   resp.data.versions[0].arn #=> String
    #   resp.data.versions[0].creation_timestamp #=> String
    #   resp.data.versions[0].id #=> String
    #   resp.data.versions[0].version #=> String
    #
    def list_subscription_definition_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSubscriptionDefinitionVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSubscriptionDefinitionVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSubscriptionDefinitionVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ListSubscriptionDefinitionVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSubscriptionDefinitionVersions,
        stubs: @stubs,
        params_class: Params::ListSubscriptionDefinitionVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_subscription_definition_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves a list of subscription definitions.
    #
    # @param [Hash] params
    #   See {Types::ListSubscriptionDefinitionsInput}.
    #
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    # @return [Types::ListSubscriptionDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscription_definitions(
    #     max_results: 'MaxResults',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSubscriptionDefinitionsOutput
    #   resp.data.definitions #=> Array<DefinitionInformation>
    #   resp.data.definitions[0] #=> Types::DefinitionInformation
    #   resp.data.definitions[0].arn #=> String
    #   resp.data.definitions[0].creation_timestamp #=> String
    #   resp.data.definitions[0].id #=> String
    #   resp.data.definitions[0].last_updated_timestamp #=> String
    #   resp.data.definitions[0].latest_version #=> String
    #   resp.data.definitions[0].latest_version_arn #=> String
    #   resp.data.definitions[0].name #=> String
    #   resp.data.definitions[0].tags #=> Hash<String, String>
    #   resp.data.definitions[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_subscription_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSubscriptionDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSubscriptionDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSubscriptionDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListSubscriptionDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSubscriptionDefinitions,
        stubs: @stubs,
        params_class: Params::ListSubscriptionDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_subscription_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Retrieves a list of resource tags for a resource arn.
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
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

    # Resets a group's deployments.
    #
    # @param [Hash] params
    #   See {Types::ResetDeploymentsInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [Boolean] :force
    #   If true, performs a best-effort only core reset.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::ResetDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_deployments(
    #     amzn_client_token: 'AmznClientToken',
    #     force: false,
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetDeploymentsOutput
    #   resp.data.deployment_arn #=> String
    #   resp.data.deployment_id #=> String
    #
    def reset_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetDeploymentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetDeployments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::ResetDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetDeployments,
        stubs: @stubs,
        params_class: Params::ResetDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deploys multiple groups in one operation. This action starts the bulk deployment of a specified set of group versions. Each group version deployment will be triggered with an adaptive rate that has a fixed upper limit. We recommend that you include an ''X-Amzn-Client-Token'' token in every ''StartBulkDeployment'' request. These requests are idempotent with respect to the token and the request parameters.
    #
    # @param [Hash] params
    #   See {Types::StartBulkDeploymentInput}.
    #
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    # @option params [String] :execution_role_arn
    #   The ARN of the execution role to associate with the bulk deployment operation. This IAM role must allow the ''greengrass:CreateDeployment'' action for all group versions that are listed in the input file. This IAM role must have access to the S3 bucket containing the input file.
    #
    # @option params [String] :input_file_uri
    #   The URI of the input file contained in the S3 bucket. The execution role must have ''getObject'' permissions on this bucket to access the input file. The input file is a JSON-serialized, line delimited file with UTF-8 encoding that provides a list of group and version IDs and the deployment type. This file must be less than 100 MB. Currently, AWS IoT Greengrass supports only ''NewDeployment'' deployment types.
    #
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    #
    # @return [Types::StartBulkDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_bulk_deployment(
    #     amzn_client_token: 'AmznClientToken',
    #     execution_role_arn: 'ExecutionRoleArn', # required
    #     input_file_uri: 'InputFileUri', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartBulkDeploymentOutput
    #   resp.data.bulk_deployment_arn #=> String
    #   resp.data.bulk_deployment_id #=> String
    #
    def start_bulk_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartBulkDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartBulkDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartBulkDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::StartBulkDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartBulkDeployment,
        stubs: @stubs,
        params_class: Params::StartBulkDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_bulk_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments.
    #
    # @param [Hash] params
    #   See {Types::StopBulkDeploymentInput}.
    #
    # @option params [String] :bulk_deployment_id
    #   The ID of the bulk deployment.
    #
    # @return [Types::StopBulkDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_bulk_deployment(
    #     bulk_deployment_id: 'BulkDeploymentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopBulkDeploymentOutput
    #
    def stop_bulk_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopBulkDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopBulkDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopBulkDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::StopBulkDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopBulkDeployment,
        stubs: @stubs,
        params_class: Params::StopBulkDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_bulk_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Adds tags to a Greengrass resource. Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition', 'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition', 'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [Hash<String, String>] :tags
    #   The key-value pair for the resource tag.
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException]),
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

    # Remove resource tags from a Greengrass Resource.
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [Array<String>] :tag_keys
    #   An array of tag keys to delete
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException]),
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

    # Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectivityInfoInput}.
    #
    # @option params [Array<ConnectivityInfo>] :connectivity_info
    #   A list of connectivity info.
    #
    # @option params [String] :thing_name
    #   The thing name.
    #
    # @return [Types::UpdateConnectivityInfoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connectivity_info(
    #     connectivity_info: [
    #       {
    #         host_address: 'HostAddress',
    #         id: 'Id',
    #         metadata: 'Metadata',
    #         port_number: 1
    #       }
    #     ],
    #     thing_name: 'ThingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectivityInfoOutput
    #   resp.data.message #=> String
    #   resp.data.version #=> String
    #
    def update_connectivity_info(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConnectivityInfoInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConnectivityInfoInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConnectivityInfo
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateConnectivityInfo
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConnectivityInfo,
        stubs: @stubs,
        params_class: Params::UpdateConnectivityInfoOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_connectivity_info
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates a connector definition.
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectorDefinitionInput}.
    #
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    #
    # @option params [String] :name
    #   The name of the definition.
    #
    # @return [Types::UpdateConnectorDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connector_definition(
    #     connector_definition_id: 'ConnectorDefinitionId', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectorDefinitionOutput
    #
    def update_connector_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConnectorDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConnectorDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConnectorDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::UpdateConnectorDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConnectorDefinition,
        stubs: @stubs,
        params_class: Params::UpdateConnectorDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_connector_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates a core definition.
    #
    # @param [Hash] params
    #   See {Types::UpdateCoreDefinitionInput}.
    #
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    #
    # @option params [String] :name
    #   The name of the definition.
    #
    # @return [Types::UpdateCoreDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_core_definition(
    #     core_definition_id: 'CoreDefinitionId', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCoreDefinitionOutput
    #
    def update_core_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCoreDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCoreDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCoreDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::UpdateCoreDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCoreDefinition,
        stubs: @stubs,
        params_class: Params::UpdateCoreDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_core_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates a device definition.
    #
    # @param [Hash] params
    #   See {Types::UpdateDeviceDefinitionInput}.
    #
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    #
    # @option params [String] :name
    #   The name of the definition.
    #
    # @return [Types::UpdateDeviceDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_definition(
    #     device_definition_id: 'DeviceDefinitionId', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeviceDefinitionOutput
    #
    def update_device_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeviceDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeviceDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDeviceDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::UpdateDeviceDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDeviceDefinition,
        stubs: @stubs,
        params_class: Params::UpdateDeviceDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_device_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates a Lambda function definition.
    #
    # @param [Hash] params
    #   See {Types::UpdateFunctionDefinitionInput}.
    #
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    #
    # @option params [String] :name
    #   The name of the definition.
    #
    # @return [Types::UpdateFunctionDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_definition(
    #     function_definition_id: 'FunctionDefinitionId', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFunctionDefinitionOutput
    #
    def update_function_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFunctionDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFunctionDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFunctionDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::UpdateFunctionDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFunctionDefinition,
        stubs: @stubs,
        params_class: Params::UpdateFunctionDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_function_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates a group.
    #
    # @param [Hash] params
    #   See {Types::UpdateGroupInput}.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @option params [String] :name
    #   The name of the definition.
    #
    # @return [Types::UpdateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group(
    #     group_id: 'GroupId', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGroupOutput
    #
    def update_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::UpdateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGroup,
        stubs: @stubs,
        params_class: Params::UpdateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates the Certificate expiry time for a group.
    #
    # @param [Hash] params
    #   See {Types::UpdateGroupCertificateConfigurationInput}.
    #
    # @option params [String] :certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in milliseconds.
    #
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    #
    # @return [Types::UpdateGroupCertificateConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group_certificate_configuration(
    #     certificate_expiry_in_milliseconds: 'CertificateExpiryInMilliseconds',
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGroupCertificateConfigurationOutput
    #   resp.data.certificate_authority_expiry_in_milliseconds #=> String
    #   resp.data.certificate_expiry_in_milliseconds #=> String
    #   resp.data.group_id #=> String
    #
    def update_group_certificate_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGroupCertificateConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGroupCertificateConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGroupCertificateConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateGroupCertificateConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGroupCertificateConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateGroupCertificateConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_group_certificate_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates a logger definition.
    #
    # @param [Hash] params
    #   See {Types::UpdateLoggerDefinitionInput}.
    #
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    #
    # @option params [String] :name
    #   The name of the definition.
    #
    # @return [Types::UpdateLoggerDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_logger_definition(
    #     logger_definition_id: 'LoggerDefinitionId', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLoggerDefinitionOutput
    #
    def update_logger_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLoggerDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLoggerDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLoggerDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::UpdateLoggerDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLoggerDefinition,
        stubs: @stubs,
        params_class: Params::UpdateLoggerDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_logger_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates a resource definition.
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceDefinitionInput}.
    #
    # @option params [String] :name
    #   The name of the definition.
    #
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    #
    # @return [Types::UpdateResourceDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_definition(
    #     name: 'Name',
    #     resource_definition_id: 'ResourceDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceDefinitionOutput
    #
    def update_resource_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourceDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourceDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResourceDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::UpdateResourceDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResourceDefinition,
        stubs: @stubs,
        params_class: Params::UpdateResourceDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates a subscription definition.
    #
    # @param [Hash] params
    #   See {Types::UpdateSubscriptionDefinitionInput}.
    #
    # @option params [String] :name
    #   The name of the definition.
    #
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    #
    # @return [Types::UpdateSubscriptionDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription_definition(
    #     name: 'Name',
    #     subscription_definition_id: 'SubscriptionDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSubscriptionDefinitionOutput
    #
    def update_subscription_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSubscriptionDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSubscriptionDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSubscriptionDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
        data_parser: Parsers::UpdateSubscriptionDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSubscriptionDefinition,
        stubs: @stubs,
        params_class: Params::UpdateSubscriptionDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_subscription_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates the runtime configuration of a thing.
    #
    # @param [Hash] params
    #   See {Types::UpdateThingRuntimeConfigurationInput}.
    #
    # @option params [TelemetryConfigurationUpdate] :telemetry_configuration
    #   Configuration for telemetry service.
    #
    # @option params [String] :thing_name
    #   The thing name.
    #
    # @return [Types::UpdateThingRuntimeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing_runtime_configuration(
    #     telemetry_configuration: {
    #       telemetry: 'On' # required - accepts ["On", "Off"]
    #     },
    #     thing_name: 'ThingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThingRuntimeConfigurationOutput
    #
    def update_thing_runtime_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThingRuntimeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThingRuntimeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateThingRuntimeConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateThingRuntimeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateThingRuntimeConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateThingRuntimeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_thing_runtime_configuration
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
