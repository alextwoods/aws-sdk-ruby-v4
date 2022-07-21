# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoTThingsGraph
  # An API client for IotThingsGraphFrontEndService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS IoT Things Graph</fullname>
  #          <p>AWS IoT Things Graph provides an integrated set of tools that enable developers to connect devices and services that use different standards,
  #        such as units of measure and communication protocols. AWS IoT Things Graph makes it possible to build IoT applications with little to no code by connecting devices and services
  #        and defining how they interact at an abstract level.</p>
  #          <p>For more information about how AWS IoT Things Graph works, see the <a href="https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-whatis.html">User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::IoTThingsGraph::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a device with a concrete thing that is in the user's registry.</p>
    #          <p>A thing can be associated with only one device at a time. If you associate a thing with a new device id, its previous association will be removed.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateEntityToThingInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing to which the entity is to be associated.</p>
    #
    # @option params [String] :entity_id
    #   <p>The ID of the device to be associated with the thing.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    #
    # @option params [Integer] :namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #
    # @return [Types::AssociateEntityToThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_entity_to_thing(
    #     thing_name: 'thingName', # required
    #     entity_id: 'entityId', # required
    #     namespace_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateEntityToThingOutput
    #
    def associate_entity_to_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateEntityToThingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateEntityToThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateEntityToThing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::AssociateEntityToThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateEntityToThing,
        stubs: @stubs,
        params_class: Params::AssociateEntityToThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_entity_to_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a workflow template. Workflows can be created only in the user's namespace. (The public namespace contains only
    #          entities.) The workflow can contain only entities in the specified namespace. The workflow is validated against the entities in the
    #       latest version of the user's namespace unless another namespace version is specified in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFlowTemplateInput}.
    #
    # @option params [DefinitionDocument] :definition
    #   <p>The workflow <code>DefinitionDocument</code>.</p>
    #
    # @option params [Integer] :compatible_namespace_version
    #   <p>The namespace version in which the workflow is to be created.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    #
    # @return [Types::CreateFlowTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow_template(
    #     definition: {
    #       language: 'GRAPHQL', # required - accepts ["GRAPHQL"]
    #       text: 'text' # required
    #     }, # required
    #     compatible_namespace_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFlowTemplateOutput
    #   resp.data.summary #=> Types::FlowTemplateSummary
    #   resp.data.summary.id #=> String
    #   resp.data.summary.arn #=> String
    #   resp.data.summary.revision_number #=> Integer
    #   resp.data.summary.created_at #=> Time
    #
    def create_flow_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFlowTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFlowTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFlowTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::InternalFailureException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateFlowTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFlowTemplate,
        stubs: @stubs,
        params_class: Params::CreateFlowTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_flow_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a system instance. </p>
    #          <p>This action validates the system instance, prepares the deployment-related resources. For Greengrass deployments, it updates the Greengrass group that is
    #             specified by the <code>greengrassGroupName</code> parameter. It also adds a file to the S3 bucket specified by the <code>s3BucketName</code> parameter. You need to
    #             call <code>DeploySystemInstance</code> after running this action.</p>
    #          <p>For Greengrass deployments, since this action modifies and adds resources to a Greengrass group and an S3 bucket on the caller's behalf, the calling identity must have write permissions
    #          to both the specified Greengrass group and S3 bucket. Otherwise, the call will fail with an authorization error.</p>
    #          <p>For cloud deployments, this action requires a <code>flowActionsRoleArn</code> value. This is an IAM role
    #       that has permissions to access AWS services, such as AWS Lambda and AWS IoT, that the flow uses when it executes.</p>
    #          <p>If the definition document doesn't specify a version of the user's namespace, the latest version will be used by default.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSystemInstanceInput}.
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata, consisting of key-value pairs, that can be used to categorize your system instances.</p>
    #
    # @option params [DefinitionDocument] :definition
    #   <p>A document that defines an entity. </p>
    #
    # @option params [String] :target
    #   <p>The target type of the deployment. Valid values are <code>GREENGRASS</code> and <code>CLOUD</code>.</p>
    #
    # @option params [String] :greengrass_group_name
    #   <p>The name of the Greengrass group where the system instance will be deployed. This value is required if
    #         the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>
    #
    # @option params [String] :s3_bucket_name
    #   <p>The name of the Amazon Simple Storage Service bucket that will be used to store and deploy the system instance's resource file. This value is required if
    #            the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>
    #
    # @option params [MetricsConfiguration] :metrics_configuration
    #   <p>An object that specifies whether cloud metrics are collected in a deployment and, if so, what role is used to collect metrics.</p>
    #
    # @option params [String] :flow_actions_role_arn
    #   <p>The ARN of the IAM role that AWS IoT Things Graph will assume when it executes the flow. This role must have
    #         read and write access to AWS Lambda and AWS IoT and any other AWS services that the flow uses when it executes.  This
    #         value is required if the value of the <code>target</code> parameter is <code>CLOUD</code>.</p>
    #
    # @return [Types::CreateSystemInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_system_instance(
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     definition: {
    #       language: 'GRAPHQL', # required - accepts ["GRAPHQL"]
    #       text: 'text' # required
    #     }, # required
    #     target: 'GREENGRASS', # required - accepts ["GREENGRASS", "CLOUD"]
    #     greengrass_group_name: 'greengrassGroupName',
    #     s3_bucket_name: 's3BucketName',
    #     metrics_configuration: {
    #       cloud_metric_enabled: false,
    #       metric_rule_role_arn: 'metricRuleRoleArn'
    #     },
    #     flow_actions_role_arn: 'flowActionsRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSystemInstanceOutput
    #   resp.data.summary #=> Types::SystemInstanceSummary
    #   resp.data.summary.id #=> String
    #   resp.data.summary.arn #=> String
    #   resp.data.summary.status #=> String, one of ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"]
    #   resp.data.summary.target #=> String, one of ["GREENGRASS", "CLOUD"]
    #   resp.data.summary.greengrass_group_name #=> String
    #   resp.data.summary.created_at #=> Time
    #   resp.data.summary.updated_at #=> Time
    #   resp.data.summary.greengrass_group_id #=> String
    #   resp.data.summary.greengrass_group_version_id #=> String
    #
    def create_system_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSystemInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSystemInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSystemInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::InternalFailureException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateSystemInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSystemInstance,
        stubs: @stubs,
        params_class: Params::CreateSystemInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_system_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a system. The system is validated against the entities in the
    #          latest version of the user's namespace unless another namespace version is specified in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSystemTemplateInput}.
    #
    # @option params [DefinitionDocument] :definition
    #   <p>The <code>DefinitionDocument</code> used to create the system.</p>
    #
    # @option params [Integer] :compatible_namespace_version
    #   <p>The namespace version in which the system is to be created.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    #
    # @return [Types::CreateSystemTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_system_template(
    #     definition: {
    #       language: 'GRAPHQL', # required - accepts ["GRAPHQL"]
    #       text: 'text' # required
    #     }, # required
    #     compatible_namespace_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSystemTemplateOutput
    #   resp.data.summary #=> Types::SystemTemplateSummary
    #   resp.data.summary.id #=> String
    #   resp.data.summary.arn #=> String
    #   resp.data.summary.revision_number #=> Integer
    #   resp.data.summary.created_at #=> Time
    #
    def create_system_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSystemTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSystemTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSystemTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateSystemTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSystemTemplate,
        stubs: @stubs,
        params_class: Params::CreateSystemTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_system_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a workflow. Any new system or deployment that contains this workflow will fail to update or deploy.
    #          Existing deployments that contain the workflow will continue to run (since they use a snapshot of the workflow taken at the time of deployment).</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFlowTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the workflow to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #
    # @return [Types::DeleteFlowTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow_template(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFlowTemplateOutput
    #
    def delete_flow_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFlowTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFlowTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFlowTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteFlowTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFlowTemplate,
        stubs: @stubs,
        params_class: Params::DeleteFlowTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_flow_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified namespace. This action deletes all of the entities in the namespace. Delete the systems and flows that use entities in the namespace before performing this action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNamespaceInput}.
    #
    # @return [Types::DeleteNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_namespace()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNamespaceOutput
    #   resp.data.namespace_arn #=> String
    #   resp.data.namespace_name #=> String
    #
    def delete_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNamespaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNamespace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNamespace,
        stubs: @stubs,
        params_class: Params::DeleteNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a system instance.
    #          Only system instances that have never been deployed, or that have been undeployed can be deleted.</p>
    #          <p>Users can create a new system instance that has the same ID as a deleted system instance.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSystemInstanceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the system instance to be deleted.</p>
    #
    # @return [Types::DeleteSystemInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_system_instance(
    #     id: 'id'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSystemInstanceOutput
    #
    def delete_system_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSystemInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSystemInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSystemInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteSystemInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSystemInstance,
        stubs: @stubs,
        params_class: Params::DeleteSystemInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_system_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a system. New deployments can't contain the system after its deletion.
    #       Existing deployments that contain the system will continue to work because they use a snapshot of the system that is taken when it is deployed.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSystemTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the system to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #
    # @return [Types::DeleteSystemTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_system_template(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSystemTemplateOutput
    #
    def delete_system_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSystemTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSystemTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSystemTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteSystemTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSystemTemplate,
        stubs: @stubs,
        params_class: Params::DeleteSystemTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_system_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>Greengrass and Cloud Deployments</b>
    #          </p>
    #          <p>Deploys the system instance to the target specified in <code>CreateSystemInstance</code>. </p>
    #          <p>
    #             <b>Greengrass Deployments</b>
    #          </p>
    #          <p>If the system or any workflows and entities have been updated before this action is called, then the deployment will create a new Amazon Simple Storage Service
    #          resource file and then deploy it.</p>
    #          <p>Since this action creates a Greengrass deployment on the caller's behalf, the calling identity must have write permissions
    #          to the specified Greengrass group. Otherwise, the call will fail with an authorization error.</p>
    #          <p>For information about the artifacts that get added to your Greengrass core device when you use this API, see <a href="https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-greengrass.html">AWS IoT Things Graph and AWS IoT Greengrass</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeploySystemInstanceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the system instance. This value is returned by the <code>CreateSystemInstance</code> action.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code>
    #            </p>
    #
    # @return [Types::DeploySystemInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deploy_system_instance(
    #     id: 'id'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeploySystemInstanceOutput
    #   resp.data.summary #=> Types::SystemInstanceSummary
    #   resp.data.summary.id #=> String
    #   resp.data.summary.arn #=> String
    #   resp.data.summary.status #=> String, one of ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"]
    #   resp.data.summary.target #=> String, one of ["GREENGRASS", "CLOUD"]
    #   resp.data.summary.greengrass_group_name #=> String
    #   resp.data.summary.created_at #=> Time
    #   resp.data.summary.updated_at #=> Time
    #   resp.data.summary.greengrass_group_id #=> String
    #   resp.data.summary.greengrass_group_version_id #=> String
    #   resp.data.greengrass_deployment_id #=> String
    #
    def deploy_system_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeploySystemInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeploySystemInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeploySystemInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::DeploySystemInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeploySystemInstance,
        stubs: @stubs,
        params_class: Params::DeploySystemInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deploy_system_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecates the specified workflow. This action marks the workflow for deletion. Deprecated flows can't be deployed, but existing deployments will continue to run.</p>
    #
    # @param [Hash] params
    #   See {Types::DeprecateFlowTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the workflow to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #
    # @return [Types::DeprecateFlowTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprecate_flow_template(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeprecateFlowTemplateOutput
    #
    def deprecate_flow_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeprecateFlowTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeprecateFlowTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeprecateFlowTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::DeprecateFlowTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeprecateFlowTemplate,
        stubs: @stubs,
        params_class: Params::DeprecateFlowTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deprecate_flow_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecates the specified system.</p>
    #
    # @param [Hash] params
    #   See {Types::DeprecateSystemTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the system to delete.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #
    # @return [Types::DeprecateSystemTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprecate_system_template(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeprecateSystemTemplateOutput
    #
    def deprecate_system_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeprecateSystemTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeprecateSystemTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeprecateSystemTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::DeprecateSystemTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeprecateSystemTemplate,
        stubs: @stubs,
        params_class: Params::DeprecateSystemTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deprecate_system_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the latest version of the user's namespace and the public version that it is tracking.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNamespaceInput}.
    #
    # @option params [String] :namespace_name
    #   <p>The name of the user's namespace. Set this to <code>aws</code> to get the public namespace.</p>
    #
    # @return [Types::DescribeNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_namespace(
    #     namespace_name: 'namespaceName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNamespaceOutput
    #   resp.data.namespace_arn #=> String
    #   resp.data.namespace_name #=> String
    #   resp.data.tracking_namespace_name #=> String
    #   resp.data.tracking_namespace_version #=> Integer
    #   resp.data.namespace_version #=> Integer
    #
    def describe_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNamespaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNamespace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNamespace,
        stubs: @stubs,
        params_class: Params::DescribeNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Dissociates a device entity from a concrete thing. The action takes only the type of the entity that you need to dissociate because only
    #          one entity of a particular type can be associated with a thing.</p>
    #
    # @param [Hash] params
    #   See {Types::DissociateEntityFromThingInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing to disassociate.</p>
    #
    # @option params [String] :entity_type
    #   <p>The entity type from which to disassociate the thing.</p>
    #
    # @return [Types::DissociateEntityFromThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.dissociate_entity_from_thing(
    #     thing_name: 'thingName', # required
    #     entity_type: 'DEVICE' # required - accepts ["DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DissociateEntityFromThingOutput
    #
    def dissociate_entity_from_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DissociateEntityFromThingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DissociateEntityFromThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DissociateEntityFromThing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::DissociateEntityFromThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DissociateEntityFromThing,
        stubs: @stubs,
        params_class: Params::DissociateEntityFromThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :dissociate_entity_from_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets definitions of the specified entities. Uses the latest version of the user's namespace by default. This API returns the
    #       following TDM entities.</p>
    #          <ul>
    #             <li>
    #                <p>Properties</p>
    #             </li>
    #             <li>
    #                <p>States</p>
    #             </li>
    #             <li>
    #                <p>Events</p>
    #             </li>
    #             <li>
    #                <p>Actions</p>
    #             </li>
    #             <li>
    #                <p>Capabilities</p>
    #             </li>
    #             <li>
    #                <p>Mappings</p>
    #             </li>
    #             <li>
    #                <p>Devices</p>
    #             </li>
    #             <li>
    #                <p>Device Models</p>
    #             </li>
    #             <li>
    #                <p>Services</p>
    #             </li>
    #          </ul>
    #          <p>This action doesn't return definitions for systems, flows, and deployments.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEntitiesInput}.
    #
    # @option params [Array<String>] :ids
    #   <p>An array of entity IDs.</p>
    #            <p>The IDs should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    #
    # @option params [Integer] :namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #
    # @return [Types::GetEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_entities(
    #     ids: [
    #       'member'
    #     ], # required
    #     namespace_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEntitiesOutput
    #   resp.data.descriptions #=> Array<EntityDescription>
    #   resp.data.descriptions[0] #=> Types::EntityDescription
    #   resp.data.descriptions[0].id #=> String
    #   resp.data.descriptions[0].arn #=> String
    #   resp.data.descriptions[0].type #=> String, one of ["DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"]
    #   resp.data.descriptions[0].created_at #=> Time
    #   resp.data.descriptions[0].definition #=> Types::DefinitionDocument
    #   resp.data.descriptions[0].definition.language #=> String, one of ["GRAPHQL"]
    #   resp.data.descriptions[0].definition.text #=> String
    #
    def get_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEntities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::GetEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEntities,
        stubs: @stubs,
        params_class: Params::GetEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the latest version of the <code>DefinitionDocument</code> and <code>FlowTemplateSummary</code> for the specified workflow.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFlowTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the workflow.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #
    # @option params [Integer] :revision_number
    #   <p>The number of the workflow revision to retrieve.</p>
    #
    # @return [Types::GetFlowTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_flow_template(
    #     id: 'id', # required
    #     revision_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFlowTemplateOutput
    #   resp.data.description #=> Types::FlowTemplateDescription
    #   resp.data.description.summary #=> Types::FlowTemplateSummary
    #   resp.data.description.summary.id #=> String
    #   resp.data.description.summary.arn #=> String
    #   resp.data.description.summary.revision_number #=> Integer
    #   resp.data.description.summary.created_at #=> Time
    #   resp.data.description.definition #=> Types::DefinitionDocument
    #   resp.data.description.definition.language #=> String, one of ["GRAPHQL"]
    #   resp.data.description.definition.text #=> String
    #   resp.data.description.validated_namespace_version #=> Integer
    #
    def get_flow_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFlowTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFlowTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFlowTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::GetFlowTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFlowTemplate,
        stubs: @stubs,
        params_class: Params::GetFlowTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_flow_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated,
    #       this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFlowTemplateRevisionsInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the workflow.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::GetFlowTemplateRevisionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_flow_template_revisions(
    #     id: 'id', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFlowTemplateRevisionsOutput
    #   resp.data.summaries #=> Array<FlowTemplateSummary>
    #   resp.data.summaries[0] #=> Types::FlowTemplateSummary
    #   resp.data.summaries[0].id #=> String
    #   resp.data.summaries[0].arn #=> String
    #   resp.data.summaries[0].revision_number #=> Integer
    #   resp.data.summaries[0].created_at #=> Time
    #   resp.data.next_token #=> String
    #
    def get_flow_template_revisions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFlowTemplateRevisionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFlowTemplateRevisionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFlowTemplateRevisions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::GetFlowTemplateRevisions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFlowTemplateRevisions,
        stubs: @stubs,
        params_class: Params::GetFlowTemplateRevisionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_flow_template_revisions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the status of a namespace deletion task.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNamespaceDeletionStatusInput}.
    #
    # @return [Types::GetNamespaceDeletionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_namespace_deletion_status()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNamespaceDeletionStatusOutput
    #   resp.data.namespace_arn #=> String
    #   resp.data.namespace_name #=> String
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.error_code #=> String, one of ["VALIDATION_FAILED"]
    #   resp.data.error_message #=> String
    #
    def get_namespace_deletion_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNamespaceDeletionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNamespaceDeletionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNamespaceDeletionStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetNamespaceDeletionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNamespaceDeletionStatus,
        stubs: @stubs,
        params_class: Params::GetNamespaceDeletionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_namespace_deletion_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a system instance.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSystemInstanceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the system deployment instance. This value is returned by <code>CreateSystemInstance</code>.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code>
    #            </p>
    #
    # @return [Types::GetSystemInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_system_instance(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSystemInstanceOutput
    #   resp.data.description #=> Types::SystemInstanceDescription
    #   resp.data.description.summary #=> Types::SystemInstanceSummary
    #   resp.data.description.summary.id #=> String
    #   resp.data.description.summary.arn #=> String
    #   resp.data.description.summary.status #=> String, one of ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"]
    #   resp.data.description.summary.target #=> String, one of ["GREENGRASS", "CLOUD"]
    #   resp.data.description.summary.greengrass_group_name #=> String
    #   resp.data.description.summary.created_at #=> Time
    #   resp.data.description.summary.updated_at #=> Time
    #   resp.data.description.summary.greengrass_group_id #=> String
    #   resp.data.description.summary.greengrass_group_version_id #=> String
    #   resp.data.description.definition #=> Types::DefinitionDocument
    #   resp.data.description.definition.language #=> String, one of ["GRAPHQL"]
    #   resp.data.description.definition.text #=> String
    #   resp.data.description.s3_bucket_name #=> String
    #   resp.data.description.metrics_configuration #=> Types::MetricsConfiguration
    #   resp.data.description.metrics_configuration.cloud_metric_enabled #=> Boolean
    #   resp.data.description.metrics_configuration.metric_rule_role_arn #=> String
    #   resp.data.description.validated_namespace_version #=> Integer
    #   resp.data.description.validated_dependency_revisions #=> Array<DependencyRevision>
    #   resp.data.description.validated_dependency_revisions[0] #=> Types::DependencyRevision
    #   resp.data.description.validated_dependency_revisions[0].id #=> String
    #   resp.data.description.validated_dependency_revisions[0].revision_number #=> Integer
    #   resp.data.description.flow_actions_role_arn #=> String
    #
    def get_system_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSystemInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSystemInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSystemInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::GetSystemInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSystemInstance,
        stubs: @stubs,
        params_class: Params::GetSystemInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_system_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a system.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSystemTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the system to get. This ID must be in the user's namespace.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #
    # @option params [Integer] :revision_number
    #   <p>The number that specifies the revision of the system to get.</p>
    #
    # @return [Types::GetSystemTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_system_template(
    #     id: 'id', # required
    #     revision_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSystemTemplateOutput
    #   resp.data.description #=> Types::SystemTemplateDescription
    #   resp.data.description.summary #=> Types::SystemTemplateSummary
    #   resp.data.description.summary.id #=> String
    #   resp.data.description.summary.arn #=> String
    #   resp.data.description.summary.revision_number #=> Integer
    #   resp.data.description.summary.created_at #=> Time
    #   resp.data.description.definition #=> Types::DefinitionDocument
    #   resp.data.description.definition.language #=> String, one of ["GRAPHQL"]
    #   resp.data.description.definition.text #=> String
    #   resp.data.description.validated_namespace_version #=> Integer
    #
    def get_system_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSystemTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSystemTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSystemTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::GetSystemTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSystemTemplate,
        stubs: @stubs,
        params_class: Params::GetSystemTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_system_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return
    #       the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSystemTemplateRevisionsInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the system template.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::GetSystemTemplateRevisionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_system_template_revisions(
    #     id: 'id', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSystemTemplateRevisionsOutput
    #   resp.data.summaries #=> Array<SystemTemplateSummary>
    #   resp.data.summaries[0] #=> Types::SystemTemplateSummary
    #   resp.data.summaries[0].id #=> String
    #   resp.data.summaries[0].arn #=> String
    #   resp.data.summaries[0].revision_number #=> Integer
    #   resp.data.summaries[0].created_at #=> Time
    #   resp.data.next_token #=> String
    #
    def get_system_template_revisions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSystemTemplateRevisionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSystemTemplateRevisionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSystemTemplateRevisions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::GetSystemTemplateRevisions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSystemTemplateRevisions,
        stubs: @stubs,
        params_class: Params::GetSystemTemplateRevisionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_system_template_revisions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the status of the specified upload.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUploadStatusInput}.
    #
    # @option params [String] :upload_id
    #   <p>The ID of the upload. This value is returned by the <code>UploadEntityDefinitions</code> action.</p>
    #
    # @return [Types::GetUploadStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upload_status(
    #     upload_id: 'uploadId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUploadStatusOutput
    #   resp.data.upload_id #=> String
    #   resp.data.upload_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.namespace_arn #=> String
    #   resp.data.namespace_name #=> String
    #   resp.data.namespace_version #=> Integer
    #   resp.data.failure_reason #=> Array<String>
    #   resp.data.failure_reason[0] #=> String
    #   resp.data.created_date #=> Time
    #
    def get_upload_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUploadStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUploadStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUploadStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::GetUploadStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUploadStatus,
        stubs: @stubs,
        params_class: Params::GetUploadStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_upload_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of objects that contain information about events in a flow execution.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFlowExecutionMessagesInput}.
    #
    # @option params [String] :flow_execution_id
    #   <p>The ID of the flow execution.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::ListFlowExecutionMessagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flow_execution_messages(
    #     flow_execution_id: 'flowExecutionId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFlowExecutionMessagesOutput
    #   resp.data.messages #=> Array<FlowExecutionMessage>
    #   resp.data.messages[0] #=> Types::FlowExecutionMessage
    #   resp.data.messages[0].message_id #=> String
    #   resp.data.messages[0].event_type #=> String, one of ["EXECUTION_STARTED", "EXECUTION_FAILED", "EXECUTION_ABORTED", "EXECUTION_SUCCEEDED", "STEP_STARTED", "STEP_FAILED", "STEP_SUCCEEDED", "ACTIVITY_SCHEDULED", "ACTIVITY_STARTED", "ACTIVITY_FAILED", "ACTIVITY_SUCCEEDED", "START_FLOW_EXECUTION_TASK", "SCHEDULE_NEXT_READY_STEPS_TASK", "THING_ACTION_TASK", "THING_ACTION_TASK_FAILED", "THING_ACTION_TASK_SUCCEEDED", "ACKNOWLEDGE_TASK_MESSAGE"]
    #   resp.data.messages[0].timestamp #=> Time
    #   resp.data.messages[0].payload #=> String
    #   resp.data.next_token #=> String
    #
    def list_flow_execution_messages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFlowExecutionMessagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFlowExecutionMessagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFlowExecutionMessages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::ListFlowExecutionMessages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFlowExecutionMessages,
        stubs: @stubs,
        params_class: Params::ListFlowExecutionMessagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_flow_execution_messages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags on an AWS IoT Things Graph resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags to return.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are to be returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     max_results: 1,
    #     resource_arn: 'resourceArn', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceAlreadyExistsException]),
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

    # <p>Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchEntitiesInput}.
    #
    # @option params [Array<String>] :entity_types
    #   <p>The entity types for which to search.</p>
    #
    # @option params [Array<EntityFilter>] :filters
    #   <p>Optional filter to apply to the search. Valid filters are <code>NAME</code>
    #               <code>NAMESPACE</code>, <code>SEMANTIC_TYPE_PATH</code> and <code>REFERENCED_ENTITY_ID</code>.
    #            <code>REFERENCED_ENTITY_ID</code> filters on entities that are used by the entity in the result set. For example,
    #         you can filter on the ID of a property that is used in a state.</p>
    #            <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [Integer] :namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #
    # @return [Types::SearchEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_entities(
    #     entity_types: [
    #       'DEVICE' # accepts ["DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"]
    #     ], # required
    #     filters: [
    #       {
    #         name: 'NAME', # accepts ["NAME", "NAMESPACE", "SEMANTIC_TYPE_PATH", "REFERENCED_ENTITY_ID"]
    #         value: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     namespace_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchEntitiesOutput
    #   resp.data.descriptions #=> Array<EntityDescription>
    #   resp.data.descriptions[0] #=> Types::EntityDescription
    #   resp.data.descriptions[0].id #=> String
    #   resp.data.descriptions[0].arn #=> String
    #   resp.data.descriptions[0].type #=> String, one of ["DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"]
    #   resp.data.descriptions[0].created_at #=> Time
    #   resp.data.descriptions[0].definition #=> Types::DefinitionDocument
    #   resp.data.descriptions[0].definition.language #=> String, one of ["GRAPHQL"]
    #   resp.data.descriptions[0].definition.text #=> String
    #   resp.data.next_token #=> String
    #
    def search_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchEntities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::SearchEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchEntities,
        stubs: @stubs,
        params_class: Params::SearchEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for AWS IoT Things Graph workflow execution instances.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchFlowExecutionsInput}.
    #
    # @option params [String] :system_instance_id
    #   <p>The ID of the system instance that contains the flow.</p>
    #
    # @option params [String] :flow_execution_id
    #   <p>The ID of a flow execution.</p>
    #
    # @option params [Time] :start_time
    #   <p>The date and time of the earliest flow execution to return.</p>
    #
    # @option params [Time] :end_time
    #   <p>The date and time of the latest flow execution to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::SearchFlowExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_flow_executions(
    #     system_instance_id: 'systemInstanceId', # required
    #     flow_execution_id: 'flowExecutionId',
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchFlowExecutionsOutput
    #   resp.data.summaries #=> Array<FlowExecutionSummary>
    #   resp.data.summaries[0] #=> Types::FlowExecutionSummary
    #   resp.data.summaries[0].flow_execution_id #=> String
    #   resp.data.summaries[0].status #=> String, one of ["RUNNING", "ABORTED", "SUCCEEDED", "FAILED"]
    #   resp.data.summaries[0].system_instance_id #=> String
    #   resp.data.summaries[0].flow_template_id #=> String
    #   resp.data.summaries[0].created_at #=> Time
    #   resp.data.summaries[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def search_flow_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchFlowExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchFlowExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchFlowExecutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::SearchFlowExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchFlowExecutions,
        stubs: @stubs,
        params_class: Params::SearchFlowExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_flow_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for summary information about workflows.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchFlowTemplatesInput}.
    #
    # @option params [Array<FlowTemplateFilter>] :filters
    #   <p>An array of objects that limit the result set. The only valid filter is <code>DEVICE_MODEL_ID</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::SearchFlowTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_flow_templates(
    #     filters: [
    #       {
    #         name: 'DEVICE_MODEL_ID', # required - accepts ["DEVICE_MODEL_ID"]
    #         value: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchFlowTemplatesOutput
    #   resp.data.summaries #=> Array<FlowTemplateSummary>
    #   resp.data.summaries[0] #=> Types::FlowTemplateSummary
    #   resp.data.summaries[0].id #=> String
    #   resp.data.summaries[0].arn #=> String
    #   resp.data.summaries[0].revision_number #=> Integer
    #   resp.data.summaries[0].created_at #=> Time
    #   resp.data.next_token #=> String
    #
    def search_flow_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchFlowTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchFlowTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchFlowTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::SearchFlowTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchFlowTemplates,
        stubs: @stubs,
        params_class: Params::SearchFlowTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_flow_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for system instances in the user's account.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchSystemInstancesInput}.
    #
    # @option params [Array<SystemInstanceFilter>] :filters
    #   <p>Optional filter to apply to the search. Valid filters are <code>SYSTEM_TEMPLATE_ID</code>, <code>STATUS</code>, and
    #            <code>GREENGRASS_GROUP_NAME</code>.</p>
    #            <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::SearchSystemInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_system_instances(
    #     filters: [
    #       {
    #         name: 'SYSTEM_TEMPLATE_ID', # accepts ["SYSTEM_TEMPLATE_ID", "STATUS", "GREENGRASS_GROUP_NAME"]
    #         value: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchSystemInstancesOutput
    #   resp.data.summaries #=> Array<SystemInstanceSummary>
    #   resp.data.summaries[0] #=> Types::SystemInstanceSummary
    #   resp.data.summaries[0].id #=> String
    #   resp.data.summaries[0].arn #=> String
    #   resp.data.summaries[0].status #=> String, one of ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"]
    #   resp.data.summaries[0].target #=> String, one of ["GREENGRASS", "CLOUD"]
    #   resp.data.summaries[0].greengrass_group_name #=> String
    #   resp.data.summaries[0].created_at #=> Time
    #   resp.data.summaries[0].updated_at #=> Time
    #   resp.data.summaries[0].greengrass_group_id #=> String
    #   resp.data.summaries[0].greengrass_group_version_id #=> String
    #   resp.data.next_token #=> String
    #
    def search_system_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchSystemInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchSystemInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchSystemInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::SearchSystemInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchSystemInstances,
        stubs: @stubs,
        params_class: Params::SearchSystemInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_system_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchSystemTemplatesInput}.
    #
    # @option params [Array<SystemTemplateFilter>] :filters
    #   <p>An array of filters that limit the result set. The only valid filter is <code>FLOW_TEMPLATE_ID</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::SearchSystemTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_system_templates(
    #     filters: [
    #       {
    #         name: 'FLOW_TEMPLATE_ID', # required - accepts ["FLOW_TEMPLATE_ID"]
    #         value: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchSystemTemplatesOutput
    #   resp.data.summaries #=> Array<SystemTemplateSummary>
    #   resp.data.summaries[0] #=> Types::SystemTemplateSummary
    #   resp.data.summaries[0].id #=> String
    #   resp.data.summaries[0].arn #=> String
    #   resp.data.summaries[0].revision_number #=> Integer
    #   resp.data.summaries[0].created_at #=> Time
    #   resp.data.next_token #=> String
    #
    def search_system_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchSystemTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchSystemTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchSystemTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::SearchSystemTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchSystemTemplates,
        stubs: @stubs,
        params_class: Params::SearchSystemTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_system_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for things associated with the specified entity. You can search by both device and device model.</p>
    #          <p>For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2.
    #          <code>SearchThings(camera2)</code> will return only thing2, but <code>SearchThings(camera)</code> will return both thing1 and thing2.</p>
    #          <p>This action searches for exact matches and doesn't perform partial text matching.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchThingsInput}.
    #
    # @option params [String] :entity_id
    #   <p>The ID of the entity to which the things are associated.</p>
    #            <p>The IDs should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [Integer] :namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #
    # @return [Types::SearchThingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_things(
    #     entity_id: 'entityId', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     namespace_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchThingsOutput
    #   resp.data.things #=> Array<Thing>
    #   resp.data.things[0] #=> Types::Thing
    #   resp.data.things[0].thing_arn #=> String
    #   resp.data.things[0].thing_name #=> String
    #   resp.data.next_token #=> String
    #
    def search_things(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchThingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchThingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchThings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::SearchThings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchThings,
        stubs: @stubs,
        params_class: Params::SearchThingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_things
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a tag for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are returned.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to add to the resource.></p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ] # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceAlreadyExistsException]),
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

    # <p>Removes a system instance from its target (Cloud or Greengrass).</p>
    #
    # @param [Hash] params
    #   See {Types::UndeploySystemInstanceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the system instance to remove from its target.</p>
    #
    # @return [Types::UndeploySystemInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.undeploy_system_instance(
    #     id: 'id'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UndeploySystemInstanceOutput
    #   resp.data.summary #=> Types::SystemInstanceSummary
    #   resp.data.summary.id #=> String
    #   resp.data.summary.arn #=> String
    #   resp.data.summary.status #=> String, one of ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"]
    #   resp.data.summary.target #=> String, one of ["GREENGRASS", "CLOUD"]
    #   resp.data.summary.greengrass_group_name #=> String
    #   resp.data.summary.created_at #=> Time
    #   resp.data.summary.updated_at #=> Time
    #   resp.data.summary.greengrass_group_id #=> String
    #   resp.data.summary.greengrass_group_version_id #=> String
    #
    def undeploy_system_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UndeploySystemInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UndeploySystemInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UndeploySystemInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::UndeploySystemInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UndeploySystemInstance,
        stubs: @stubs,
        params_class: Params::UndeploySystemInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :undeploy_system_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a tag from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are to be removed.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed. </p>
    #            <p>This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceAlreadyExistsException]),
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

    # <p>Updates the specified workflow. All deployed systems and system instances that use the workflow will see the changes in the flow when it is redeployed. If you don't want this
    #          behavior, copy the workflow (creating a new workflow with a different ID), and update the copy. The workflow can contain only entities in the specified namespace. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFlowTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the workflow to be updated.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #
    # @option params [DefinitionDocument] :definition
    #   <p>The <code>DefinitionDocument</code> that contains the updated workflow definition.</p>
    #
    # @option params [Integer] :compatible_namespace_version
    #   <p>The version of the user's namespace.</p>
    #            <p>If no value is specified, the latest version is used by default. Use the <code>GetFlowTemplateRevisions</code> if you want to find earlier revisions of the flow
    #         to update.</p>
    #
    # @return [Types::UpdateFlowTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_template(
    #     id: 'id', # required
    #     definition: {
    #       language: 'GRAPHQL', # required - accepts ["GRAPHQL"]
    #       text: 'text' # required
    #     }, # required
    #     compatible_namespace_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFlowTemplateOutput
    #   resp.data.summary #=> Types::FlowTemplateSummary
    #   resp.data.summary.id #=> String
    #   resp.data.summary.arn #=> String
    #   resp.data.summary.revision_number #=> Integer
    #   resp.data.summary.created_at #=> Time
    #
    def update_flow_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFlowTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFlowTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFlowTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateFlowTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFlowTemplate,
        stubs: @stubs,
        params_class: Params::UpdateFlowTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_flow_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified system. You don't need to run this action after updating a workflow. Any deployment that uses the system will see the changes in the system when it is redeployed.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSystemTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the system to be updated.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #
    # @option params [DefinitionDocument] :definition
    #   <p>The <code>DefinitionDocument</code> that contains the updated system definition.</p>
    #
    # @option params [Integer] :compatible_namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    #
    # @return [Types::UpdateSystemTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_system_template(
    #     id: 'id', # required
    #     definition: {
    #       language: 'GRAPHQL', # required - accepts ["GRAPHQL"]
    #       text: 'text' # required
    #     }, # required
    #     compatible_namespace_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSystemTemplateOutput
    #   resp.data.summary #=> Types::SystemTemplateSummary
    #   resp.data.summary.id #=> String
    #   resp.data.summary.arn #=> String
    #   resp.data.summary.revision_number #=> Integer
    #   resp.data.summary.created_at #=> Time
    #
    def update_system_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSystemTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSystemTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSystemTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateSystemTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSystemTemplate,
        stubs: @stubs,
        params_class: Params::UpdateSystemTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_system_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Asynchronously uploads one or more entity definitions to the user's namespace. The <code>document</code> parameter is required if
    #       <code>syncWithPublicNamespace</code> and <code>deleteExistingEntites</code> are false. If the <code>syncWithPublicNamespace</code> parameter  is set to
    #          <code>true</code>, the user's namespace will synchronize with the latest version of the public namespace. If <code>deprecateExistingEntities</code> is set to true,
    #       all entities in the latest version will be deleted before the new <code>DefinitionDocument</code> is uploaded.</p>
    #          <p>When a user uploads entity definitions for the first time, the service creates a new namespace for the user. The new namespace tracks the public namespace. Currently users
    #       can have only one namespace. The namespace version increments whenever a user uploads entity definitions that are backwards-incompatible and whenever a user sets the
    #          <code>syncWithPublicNamespace</code> parameter or the <code>deprecateExistingEntities</code> parameter to <code>true</code>.</p>
    #          <p>The IDs for all of the entities should be in URN format. Each entity must be in the user's namespace. Users can't create entities in the public namespace, but entity definitions can refer to entities in the public namespace.</p>
    #          <p>Valid entities are <code>Device</code>, <code>DeviceModel</code>, <code>Service</code>, <code>Capability</code>, <code>State</code>, <code>Action</code>, <code>Event</code>, <code>Property</code>,
    #          <code>Mapping</code>, <code>Enum</code>.
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UploadEntityDefinitionsInput}.
    #
    # @option params [DefinitionDocument] :document
    #   <p>The <code>DefinitionDocument</code> that defines the updated entities.</p>
    #
    # @option params [Boolean] :sync_with_public_namespace
    #   <p>A Boolean that specifies whether to synchronize with the latest version of the public namespace. If set to <code>true</code>, the upload will create a new namespace version.</p>
    #
    # @option params [Boolean] :deprecate_existing_entities
    #   <p>A Boolean that specifies whether to deprecate all entities in the latest version before uploading the new <code>DefinitionDocument</code>.
    #            If set to <code>true</code>, the upload will create a new namespace version.</p>
    #
    # @return [Types::UploadEntityDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_entity_definitions(
    #     document: {
    #       language: 'GRAPHQL', # required - accepts ["GRAPHQL"]
    #       text: 'text' # required
    #     },
    #     sync_with_public_namespace: false,
    #     deprecate_existing_entities: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UploadEntityDefinitionsOutput
    #   resp.data.upload_id #=> String
    #
    def upload_entity_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UploadEntityDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UploadEntityDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UploadEntityDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::UploadEntityDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UploadEntityDefinitions,
        stubs: @stubs,
        params_class: Params::UploadEntityDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upload_entity_definitions
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
