# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::GreengrassV2
  # An API client for GreengrassV2
  # See {#initialize} for a full list of supported configuration options
  # <p>IoT Greengrass brings local compute, messaging, data management, sync, and ML inference capabilities
  #       to edge devices. This enables devices to collect and analyze data closer to the source of
  #       information, react autonomously to local events, and communicate securely with each other on
  #       local networks. Local devices can also communicate securely with Amazon Web Services IoT Core and export IoT data
  #       to the Amazon Web Services Cloud. IoT Greengrass developers can use Lambda functions and components to create and
  #       deploy applications to fleets of edge devices for local operation.</p>
  #          <p>IoT Greengrass Version 2 provides a new major version of the IoT Greengrass Core software, new APIs, and a new console.
  #       Use this API reference to learn how to use the IoT Greengrass V2 API operations to manage components,
  #       manage deployments, and core devices.</p>
  #          <p>For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/what-is-iot-greengrass.html">What is IoT Greengrass?</a> in
  #       the <i>IoT Greengrass V2 Developer Guide</i>.</p>
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
    def initialize(config = AWS::SDK::GreengrassV2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a Greengrass service role with IoT Greengrass for your Amazon Web Services account in this Amazon Web Services Region. IoT Greengrass
    #       uses this role to verify the identity of client devices and manage core device connectivity
    #       information. The role must include the <a href="https://console.aws.amazon.com/iam/home#/policies/arn:awsiam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy">AWSGreengrassResourceAccessRolePolicy</a> managed policy or a custom policy that
    #       defines equivalent permissions for the IoT Greengrass features that you use. For more information, see
    #         <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html">Greengrass service role</a> in the <i>IoT Greengrass Version 2 Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateServiceRoleToAccountInput}.
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role to associate with IoT Greengrass for your
    #         Amazon Web Services account in this Amazon Web Services Region.</p>
    #
    # @return [Types::AssociateServiceRoleToAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_service_role_to_account(
    #     role_arn: 'roleArn' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Associates a list of client devices with a core device. Use this API operation to specify
    #       which client devices can discover a core device through cloud discovery. With cloud discovery,
    #       client devices connect to IoT Greengrass to retrieve associated core devices' connectivity information
    #       and certificates. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-cloud-discovery.html">Configure cloud
    #         discovery</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    #          <note>
    #             <p>Client devices are local IoT devices that connect to and communicate with an IoT Greengrass core
    #         device over MQTT. You can connect client devices to a core device to sync MQTT messages and
    #         data to Amazon Web Services IoT Core and interact with client devices in Greengrass components. For more information,
    #         see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/interact-with-local-iot-devices.html">Interact with
    #           local IoT devices</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::BatchAssociateClientDeviceWithCoreDeviceInput}.
    #
    # @option params [Array<AssociateClientDeviceWithCoreDeviceEntry>] :entries
    #   <p>The list of client devices to associate.</p>
    #
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    # @return [Types::BatchAssociateClientDeviceWithCoreDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_client_device_with_core_device(
    #     entries: [
    #       {
    #         thing_name: 'thingName' # required
    #       }
    #     ],
    #     core_device_thing_name: 'coreDeviceThingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchAssociateClientDeviceWithCoreDeviceOutput
    #   resp.data.error_entries #=> Array<AssociateClientDeviceWithCoreDeviceErrorEntry>
    #   resp.data.error_entries[0] #=> Types::AssociateClientDeviceWithCoreDeviceErrorEntry
    #   resp.data.error_entries[0].thing_name #=> String
    #   resp.data.error_entries[0].code #=> String
    #   resp.data.error_entries[0].message #=> String
    #
    def batch_associate_client_device_with_core_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchAssociateClientDeviceWithCoreDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchAssociateClientDeviceWithCoreDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchAssociateClientDeviceWithCoreDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::BatchAssociateClientDeviceWithCoreDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchAssociateClientDeviceWithCoreDevice,
        stubs: @stubs,
        params_class: Params::BatchAssociateClientDeviceWithCoreDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_associate_client_device_with_core_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a list of client devices from a core device. After you disassociate a client
    #       device from a core device, the client device won't be able to use cloud discovery to retrieve
    #       the core device's connectivity information and certificates.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDisassociateClientDeviceFromCoreDeviceInput}.
    #
    # @option params [Array<DisassociateClientDeviceFromCoreDeviceEntry>] :entries
    #   <p>The list of client devices to disassociate.</p>
    #
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    # @return [Types::BatchDisassociateClientDeviceFromCoreDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_client_device_from_core_device(
    #     entries: [
    #       {
    #         thing_name: 'thingName' # required
    #       }
    #     ],
    #     core_device_thing_name: 'coreDeviceThingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDisassociateClientDeviceFromCoreDeviceOutput
    #   resp.data.error_entries #=> Array<DisassociateClientDeviceFromCoreDeviceErrorEntry>
    #   resp.data.error_entries[0] #=> Types::DisassociateClientDeviceFromCoreDeviceErrorEntry
    #   resp.data.error_entries[0].thing_name #=> String
    #   resp.data.error_entries[0].code #=> String
    #   resp.data.error_entries[0].message #=> String
    #
    def batch_disassociate_client_device_from_core_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDisassociateClientDeviceFromCoreDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDisassociateClientDeviceFromCoreDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDisassociateClientDeviceFromCoreDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::BatchDisassociateClientDeviceFromCoreDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDisassociateClientDeviceFromCoreDevice,
        stubs: @stubs,
        params_class: Params::BatchDisassociateClientDeviceFromCoreDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_disassociate_client_device_from_core_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a deployment. This operation cancels the deployment for devices that haven't yet
    #       received it. If a device already received the deployment, this operation doesn't change
    #       anything for that device.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelDeploymentInput}.
    #
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment.</p>
    #
    # @return [Types::CancelDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_deployment(
    #     deployment_id: 'deploymentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelDeploymentOutput
    #   resp.data.message #=> String
    #
    def cancel_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CancelDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelDeployment,
        stubs: @stubs,
        params_class: Params::CancelDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a component. Components are software that run on Greengrass core devices. After you
    #       develop and test a component on your core device, you can use this operation to upload your
    #       component to IoT Greengrass. Then, you can deploy the component to other core devices.</p>
    #          <p>You can use this operation to do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Create components from recipes</b>
    #                </p>
    #                <p>Create a component from a recipe, which is a file that defines the component's
    #           metadata, parameters, dependencies, lifecycle, artifacts, and platform capability. For
    #           more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/component-recipe-reference.html">IoT Greengrass component recipe
    #             reference</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #                <p>To create a component from a recipe, specify <code>inlineRecipe</code> when you call
    #           this operation.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Create components from Lambda functions</b>
    #                </p>
    #                <p>Create a component from an Lambda function that runs on IoT Greengrass. This creates a recipe
    #           and artifacts from the Lambda function's deployment package. You can use this operation to
    #           migrate Lambda functions from IoT Greengrass V1 to IoT Greengrass V2.</p>
    #                <p>This function only accepts Lambda functions that use the following runtimes:</p>
    #                <ul>
    #                   <li>
    #                      <p>Python 2.7 – <code>python2.7</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Python 3.7 – <code>python3.7</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Python 3.8 – <code>python3.8</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Python 3.9 – <code>python3.9</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Java 8 – <code>java8</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Java 11 – <code>java11</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Node.js 10 – <code>nodejs10.x</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Node.js 12 – <code>nodejs12.x</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Node.js 14 – <code>nodejs14.x</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #                <p>To create a component from a Lambda function, specify <code>lambdaFunction</code>
    #           when you call this operation.</p>
    #                <note>
    #                   <p>IoT Greengrass currently supports Lambda functions on only Linux core devices.</p>
    #                </note>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateComponentVersionInput}.
    #
    # @option params [String] :inline_recipe
    #   <p>The recipe to use to create the component. The recipe defines the component's metadata,
    #         parameters, dependencies, lifecycle, artifacts, and platform compatibility.</p>
    #            <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>
    #
    # @option params [LambdaFunctionRecipeSource] :lambda_function
    #   <p>The parameters to create a component from a Lambda function.</p>
    #            <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent.
    #       Idempotency means that the request is successfully processed only once, even if you send the request multiple times.
    #       When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service
    #       returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for
    #       idempotent requests for up to 8 hours.</p>
    #
    # @return [Types::CreateComponentVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component_version(
    #     inline_recipe: 'inlineRecipe',
    #     lambda_function: {
    #       lambda_arn: 'lambdaArn', # required
    #       component_name: 'componentName',
    #       component_version: 'componentVersion',
    #       component_platforms: [
    #         {
    #           name: 'name',
    #           attributes: {
    #             'key' => 'value'
    #           }
    #         }
    #       ],
    #       component_dependencies: {
    #         'key' => {
    #           version_requirement: 'versionRequirement',
    #           dependency_type: 'HARD' # accepts ["HARD", "SOFT"]
    #         }
    #       },
    #       component_lambda_parameters: {
    #         event_sources: [
    #           {
    #             topic: 'topic', # required
    #             type: 'PUB_SUB' # required - accepts ["PUB_SUB", "IOT_CORE"]
    #           }
    #         ],
    #         max_queue_size: 1,
    #         max_instances_count: 1,
    #         max_idle_time_in_seconds: 1,
    #         timeout_in_seconds: 1,
    #         status_timeout_in_seconds: 1,
    #         pinned: false,
    #         input_payload_encoding_type: 'json', # accepts ["json", "binary"]
    #         exec_args: [
    #           'member'
    #         ],
    #         environment_variables: {
    #           'key' => 'value'
    #         },
    #         linux_process_params: {
    #           isolation_mode: 'GreengrassContainer', # accepts ["GreengrassContainer", "NoContainer"]
    #           container_params: {
    #             memory_size_in_kb: 1,
    #             mount_ro_sysfs: false,
    #             volumes: [
    #               {
    #                 source_path: 'sourcePath', # required
    #                 destination_path: 'destinationPath', # required
    #                 permission: 'ro', # accepts ["ro", "rw"]
    #                 add_group_owner: false
    #               }
    #             ],
    #             devices: [
    #               {
    #                 path: 'path', # required
    #                 permission: 'ro', # accepts ["ro", "rw"]
    #                 add_group_owner: false
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateComponentVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.component_name #=> String
    #   resp.data.component_version #=> String
    #   resp.data.creation_timestamp #=> Time
    #   resp.data.status #=> Types::CloudComponentStatus
    #   resp.data.status.component_state #=> String, one of ["REQUESTED", "INITIATED", "DEPLOYABLE", "FAILED", "DEPRECATED"]
    #   resp.data.status.message #=> String
    #   resp.data.status.errors #=> Hash<String, String>
    #   resp.data.status.errors['key'] #=> String
    #   resp.data.status.vendor_guidance #=> String, one of ["ACTIVE", "DISCONTINUED", "DELETED"]
    #   resp.data.status.vendor_guidance_message #=> String
    #
    def create_component_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateComponentVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateComponentVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateComponentVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::RequestAlreadyInProgressException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateComponentVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateComponentVersion,
        stubs: @stubs,
        params_class: Params::CreateComponentVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_component_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a continuous deployment for a target, which is a Greengrass core device or group of core
    #       devices. When you add a new core device to a group of core devices that has a deployment, IoT Greengrass
    #       deploys that group's deployment to the new device.</p>
    #          <p>You can define one deployment for each target. When you create a new deployment for a
    #       target that has an existing deployment, you replace the previous deployment. IoT Greengrass applies the
    #       new deployment to the target devices.</p>
    #          <p>Every deployment has a revision number that indicates how many deployment revisions you
    #       define for a target. Use this operation to create a new revision of an existing
    #       deployment.</p>
    #          <p>For more information, see the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html">Create deployments</a> in the
    #         <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentInput}.
    #
    # @option params [String] :target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    #
    # @option params [String] :deployment_name
    #   <p>The name of the deployment.</p>
    #
    # @option params [Hash<String, ComponentDeploymentSpecification>] :components
    #   <p>The components to deploy. This is a dictionary, where each key is the name of a component,
    #           and each key's value is the version and configuration to deploy for that component.</p>
    #
    # @option params [DeploymentIoTJobConfiguration] :iot_job_configuration
    #   <p>The job configuration for the deployment configuration. The job configuration specifies
    #         the rollout, timeout, and stop configurations for the deployment configuration.</p>
    #
    # @option params [DeploymentPolicies] :deployment_policies
    #   <p>The deployment policies for the deployment. These policies define how the deployment
    #         updates components and handles failure.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent.
    #       Idempotency means that the request is successfully processed only once, even if you send the request multiple times.
    #       When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service
    #       returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for
    #       idempotent requests for up to 8 hours.</p>
    #
    # @return [Types::CreateDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment(
    #     target_arn: 'targetArn', # required
    #     deployment_name: 'deploymentName',
    #     components: {
    #       'key' => {
    #         component_version: 'componentVersion',
    #         configuration_update: {
    #           merge: 'merge',
    #           reset: [
    #             'member'
    #           ]
    #         },
    #         run_with: {
    #           posix_user: 'posixUser',
    #           system_resource_limits: {
    #             memory: 1,
    #             cpus: 1.0
    #           },
    #           windows_user: 'windowsUser'
    #         }
    #       }
    #     },
    #     iot_job_configuration: {
    #       job_executions_rollout_config: {
    #         exponential_rate: {
    #           base_rate_per_minute: 1, # required
    #           increment_factor: 1.0, # required
    #           rate_increase_criteria: {
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1
    #           } # required
    #         },
    #         maximum_per_minute: 1
    #       },
    #       abort_config: {
    #         criteria_list: [
    #           {
    #             failure_type: 'FAILED', # required - accepts ["FAILED", "REJECTED", "TIMED_OUT", "ALL"]
    #             action: 'CANCEL', # required - accepts ["CANCEL"]
    #             threshold_percentage: 1.0, # required
    #             min_number_of_executed_things: 1 # required
    #           }
    #         ] # required
    #       },
    #       timeout_config: {
    #         in_progress_timeout_in_minutes: 1
    #       }
    #     },
    #     deployment_policies: {
    #       failure_handling_policy: 'ROLLBACK', # accepts ["ROLLBACK", "DO_NOTHING"]
    #       component_update_policy: {
    #         timeout_in_seconds: 1,
    #         action: 'NOTIFY_COMPONENTS' # accepts ["NOTIFY_COMPONENTS", "SKIP_NOTIFY_COMPONENTS"]
    #       },
    #       configuration_validation_policy: {
    #         timeout_in_seconds: 1
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentOutput
    #   resp.data.deployment_id #=> String
    #   resp.data.iot_job_id #=> String
    #   resp.data.iot_job_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::RequestAlreadyInProgressException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Deletes a version of a component from IoT Greengrass.</p>
    #          <note>
    #             <p>This operation deletes the component's recipe and artifacts. As a result, deployments
    #         that refer to this component version will fail. If you have deployments that use this
    #         component version, you can remove the component from the deployment or update the deployment
    #         to use a valid version.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteComponentInput}.
    #
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    # @return [Types::DeleteComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteComponentOutput
    #
    def delete_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteComponent,
        stubs: @stubs,
        params_class: Params::DeleteComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Greengrass core device, which is an IoT thing. This operation removes the core
    #       device from the list of core devices. This operation doesn't delete the IoT thing. For more
    #       information about how to delete the IoT thing, see <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_DeleteThing.html">DeleteThing</a> in the
    #         <i>IoT API Reference</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCoreDeviceInput}.
    #
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    # @return [Types::DeleteCoreDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_core_device(
    #     core_device_thing_name: 'coreDeviceThingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCoreDeviceOutput
    #
    def delete_core_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCoreDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCoreDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCoreDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteCoreDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCoreDevice,
        stubs: @stubs,
        params_class: Params::DeleteCoreDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_core_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a deployment. To delete an active deployment, you must first cancel it. For more
    #       information, see <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CancelDeployment.html">CancelDeployment</a>.</p>
    #          <p>Deleting a deployment doesn't affect core devices that run that deployment, because core
    #       devices store the deployment's configuration on the device. Additionally, core devices can
    #       roll back to a previous deployment that has been deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeploymentInput}.
    #
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment.</p>
    #
    # @return [Types::DeleteDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment(
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Retrieves metadata for a version of a component.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeComponentInput}.
    #
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    # @return [Types::DescribeComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_component(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeComponentOutput
    #   resp.data.arn #=> String
    #   resp.data.component_name #=> String
    #   resp.data.component_version #=> String
    #   resp.data.creation_timestamp #=> Time
    #   resp.data.publisher #=> String
    #   resp.data.description #=> String
    #   resp.data.status #=> Types::CloudComponentStatus
    #   resp.data.status.component_state #=> String, one of ["REQUESTED", "INITIATED", "DEPLOYABLE", "FAILED", "DEPRECATED"]
    #   resp.data.status.message #=> String
    #   resp.data.status.errors #=> Hash<String, String>
    #   resp.data.status.errors['key'] #=> String
    #   resp.data.status.vendor_guidance #=> String, one of ["ACTIVE", "DISCONTINUED", "DELETED"]
    #   resp.data.status.vendor_guidance_message #=> String
    #   resp.data.platforms #=> Array<ComponentPlatform>
    #   resp.data.platforms[0] #=> Types::ComponentPlatform
    #   resp.data.platforms[0].name #=> String
    #   resp.data.platforms[0].attributes #=> Hash<String, String>
    #   resp.data.platforms[0].attributes['key'] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeComponent,
        stubs: @stubs,
        params_class: Params::DescribeComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the Greengrass service role from IoT Greengrass for your Amazon Web Services account in this Amazon Web Services Region.
    #       Without a service role, IoT Greengrass can't verify the identity of client devices or manage core device
    #       connectivity information. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html">Greengrass service role</a> in
    #       the <i>IoT Greengrass Version 2 Developer Guide</i>.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException]),
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

    # <p>Gets the recipe for a version of a component. Core devices can call this operation to
    #       identify the artifacts and requirements to install a component.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComponentInput}.
    #
    # @option params [String] :recipe_output_format
    #   <p>The format of the recipe.</p>
    #
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #
    # @return [Types::GetComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component(
    #     recipe_output_format: 'JSON', # accepts ["JSON", "YAML"]
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComponentOutput
    #   resp.data.recipe_output_format #=> String, one of ["JSON", "YAML"]
    #   resp.data.recipe #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComponent,
        stubs: @stubs,
        params_class: Params::GetComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the pre-signed URL to download a public or a Lambda component artifact. Core devices call this
    #       operation to identify the URL that they can use to download an artifact to install.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComponentVersionArtifactInput}.
    #
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version. Specify the ARN of a public or a Lambda component version.</p>
    #
    # @option params [String] :artifact_name
    #   <p>The name of the artifact.</p>
    #            <p>You can use the <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html">GetComponent</a> operation to
    #         download the component recipe, which includes the URI of the artifact. The artifact name is
    #         the section of the URI after the scheme. For example, in the artifact URI
    #           <code>greengrass:SomeArtifact.zip</code>, the artifact name is
    #         <code>SomeArtifact.zip</code>.</p>
    #
    # @return [Types::GetComponentVersionArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component_version_artifact(
    #     arn: 'arn', # required
    #     artifact_name: 'artifactName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComponentVersionArtifactOutput
    #   resp.data.pre_signed_url #=> String
    #
    def get_component_version_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComponentVersionArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComponentVersionArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComponentVersionArtifact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetComponentVersionArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComponentVersionArtifact,
        stubs: @stubs,
        params_class: Params::GetComponentVersionArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_component_version_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves connectivity information for a Greengrass core device.</p>
    #          <p>Connectivity information includes endpoints and ports where client devices
    #       can connect to an MQTT broker on the core device. When a client device
    #       calls the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html">IoT Greengrass discovery API</a>,
    #       IoT Greengrass returns connectivity information for all of the core devices where the client device can
    #       connect. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html">Connect client devices to
    #         core devices</a> in the <i>IoT Greengrass Version 2 Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConnectivityInfoInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    # @return [Types::GetConnectivityInfoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connectivity_info(
    #     thing_name: 'thingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectivityInfoOutput
    #   resp.data.connectivity_info #=> Array<ConnectivityInfo>
    #   resp.data.connectivity_info[0] #=> Types::ConnectivityInfo
    #   resp.data.connectivity_info[0].id #=> String
    #   resp.data.connectivity_info[0].host_address #=> String
    #   resp.data.connectivity_info[0].port_number #=> Integer
    #   resp.data.connectivity_info[0].metadata #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Retrieves metadata for a Greengrass core device.</p>
    #          <note>
    #             <p>IoT Greengrass relies on individual devices to send status updates to the Amazon Web Services Cloud. If the IoT Greengrass Core
    #         software isn't running on the device, or if device isn't connected to the Amazon Web Services Cloud, then
    #         the reported status of that device might not reflect its current status. The status timestamp
    #         indicates when the device status was last updated.</p>
    #             <p>Core devices send status updates at the following times:</p>
    #             <ul>
    #                <li>
    #                   <p>When the IoT Greengrass Core software starts</p>
    #                </li>
    #                <li>
    #                   <p>When the core device receives a deployment from the Amazon Web Services Cloud</p>
    #                </li>
    #                <li>
    #                   <p>When the status of any component on the core device becomes <code>BROKEN</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>At a <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss">regular interval
    #             that you can configure</a>, which defaults to 24 hours</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetCoreDeviceInput}.
    #
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    # @return [Types::GetCoreDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_device(
    #     core_device_thing_name: 'coreDeviceThingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCoreDeviceOutput
    #   resp.data.core_device_thing_name #=> String
    #   resp.data.core_version #=> String
    #   resp.data.platform #=> String
    #   resp.data.architecture #=> String
    #   resp.data.status #=> String, one of ["HEALTHY", "UNHEALTHY"]
    #   resp.data.last_status_update_timestamp #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_core_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCoreDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCoreDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCoreDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetCoreDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCoreDevice,
        stubs: @stubs,
        params_class: Params::GetCoreDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_core_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a deployment. Deployments define the components that run on Greengrass core devices.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentInput}.
    #
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment.</p>
    #
    # @return [Types::GetDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment(
    #     deployment_id: 'deploymentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentOutput
    #   resp.data.target_arn #=> String
    #   resp.data.revision_id #=> String
    #   resp.data.deployment_id #=> String
    #   resp.data.deployment_name #=> String
    #   resp.data.deployment_status #=> String, one of ["ACTIVE", "COMPLETED", "CANCELED", "FAILED", "INACTIVE"]
    #   resp.data.iot_job_id #=> String
    #   resp.data.iot_job_arn #=> String
    #   resp.data.components #=> Hash<String, ComponentDeploymentSpecification>
    #   resp.data.components['key'] #=> Types::ComponentDeploymentSpecification
    #   resp.data.components['key'].component_version #=> String
    #   resp.data.components['key'].configuration_update #=> Types::ComponentConfigurationUpdate
    #   resp.data.components['key'].configuration_update.merge #=> String
    #   resp.data.components['key'].configuration_update.reset #=> Array<String>
    #   resp.data.components['key'].configuration_update.reset[0] #=> String
    #   resp.data.components['key'].run_with #=> Types::ComponentRunWith
    #   resp.data.components['key'].run_with.posix_user #=> String
    #   resp.data.components['key'].run_with.system_resource_limits #=> Types::SystemResourceLimits
    #   resp.data.components['key'].run_with.system_resource_limits.memory #=> Integer
    #   resp.data.components['key'].run_with.system_resource_limits.cpus #=> Float
    #   resp.data.components['key'].run_with.windows_user #=> String
    #   resp.data.deployment_policies #=> Types::DeploymentPolicies
    #   resp.data.deployment_policies.failure_handling_policy #=> String, one of ["ROLLBACK", "DO_NOTHING"]
    #   resp.data.deployment_policies.component_update_policy #=> Types::DeploymentComponentUpdatePolicy
    #   resp.data.deployment_policies.component_update_policy.timeout_in_seconds #=> Integer
    #   resp.data.deployment_policies.component_update_policy.action #=> String, one of ["NOTIFY_COMPONENTS", "SKIP_NOTIFY_COMPONENTS"]
    #   resp.data.deployment_policies.configuration_validation_policy #=> Types::DeploymentConfigurationValidationPolicy
    #   resp.data.deployment_policies.configuration_validation_policy.timeout_in_seconds #=> Integer
    #   resp.data.iot_job_configuration #=> Types::DeploymentIoTJobConfiguration
    #   resp.data.iot_job_configuration.job_executions_rollout_config #=> Types::IoTJobExecutionsRolloutConfig
    #   resp.data.iot_job_configuration.job_executions_rollout_config.exponential_rate #=> Types::IoTJobExponentialRolloutRate
    #   resp.data.iot_job_configuration.job_executions_rollout_config.exponential_rate.base_rate_per_minute #=> Integer
    #   resp.data.iot_job_configuration.job_executions_rollout_config.exponential_rate.increment_factor #=> Float
    #   resp.data.iot_job_configuration.job_executions_rollout_config.exponential_rate.rate_increase_criteria #=> Types::IoTJobRateIncreaseCriteria
    #   resp.data.iot_job_configuration.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_notified_things #=> Integer
    #   resp.data.iot_job_configuration.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_succeeded_things #=> Integer
    #   resp.data.iot_job_configuration.job_executions_rollout_config.maximum_per_minute #=> Integer
    #   resp.data.iot_job_configuration.abort_config #=> Types::IoTJobAbortConfig
    #   resp.data.iot_job_configuration.abort_config.criteria_list #=> Array<IoTJobAbortCriteria>
    #   resp.data.iot_job_configuration.abort_config.criteria_list[0] #=> Types::IoTJobAbortCriteria
    #   resp.data.iot_job_configuration.abort_config.criteria_list[0].failure_type #=> String, one of ["FAILED", "REJECTED", "TIMED_OUT", "ALL"]
    #   resp.data.iot_job_configuration.abort_config.criteria_list[0].action #=> String, one of ["CANCEL"]
    #   resp.data.iot_job_configuration.abort_config.criteria_list[0].threshold_percentage #=> Float
    #   resp.data.iot_job_configuration.abort_config.criteria_list[0].min_number_of_executed_things #=> Integer
    #   resp.data.iot_job_configuration.timeout_config #=> Types::IoTJobTimeoutConfig
    #   resp.data.iot_job_configuration.timeout_config.in_progress_timeout_in_minutes #=> Integer
    #   resp.data.creation_timestamp #=> Time
    #   resp.data.is_latest_for_target #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Gets the service role associated with IoT Greengrass for your Amazon Web Services account in this Amazon Web Services Region.
    #       IoT Greengrass uses this role to verify the identity of client devices and manage core device
    #       connectivity information. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html">Greengrass service role</a> in
    #       the <i>IoT Greengrass Version 2 Developer Guide</i>.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException]),
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

    # <p>Retrieves a paginated list of client devices that are associated with a core
    #       device.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClientDevicesAssociatedWithCoreDeviceInput}.
    #
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @return [Types::ListClientDevicesAssociatedWithCoreDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_client_devices_associated_with_core_device(
    #     core_device_thing_name: 'coreDeviceThingName', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClientDevicesAssociatedWithCoreDeviceOutput
    #   resp.data.associated_client_devices #=> Array<AssociatedClientDevice>
    #   resp.data.associated_client_devices[0] #=> Types::AssociatedClientDevice
    #   resp.data.associated_client_devices[0].thing_name #=> String
    #   resp.data.associated_client_devices[0].association_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_client_devices_associated_with_core_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClientDevicesAssociatedWithCoreDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClientDevicesAssociatedWithCoreDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClientDevicesAssociatedWithCoreDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListClientDevicesAssociatedWithCoreDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClientDevicesAssociatedWithCoreDevice,
        stubs: @stubs,
        params_class: Params::ListClientDevicesAssociatedWithCoreDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_client_devices_associated_with_core_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of all versions for a component. Greater versions are listed first.</p>
    #
    # @param [Hash] params
    #   See {Types::ListComponentVersionsInput}.
    #
    # @option params [String] :arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @return [Types::ListComponentVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_versions(
    #     arn: 'arn', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComponentVersionsOutput
    #   resp.data.component_versions #=> Array<ComponentVersionListItem>
    #   resp.data.component_versions[0] #=> Types::ComponentVersionListItem
    #   resp.data.component_versions[0].component_name #=> String
    #   resp.data.component_versions[0].component_version #=> String
    #   resp.data.component_versions[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_component_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComponentVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComponentVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComponentVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListComponentVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComponentVersions,
        stubs: @stubs,
        params_class: Params::ListComponentVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_component_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of component summaries. This list includes components that you
    #       have permission to view.</p>
    #
    # @param [Hash] params
    #   See {Types::ListComponentsInput}.
    #
    # @option params [String] :scope
    #   <p>The scope of the components to list.</p>
    #            <p>Default: <code>PRIVATE</code>
    #            </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @return [Types::ListComponentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components(
    #     scope: 'PRIVATE', # accepts ["PRIVATE", "PUBLIC"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComponentsOutput
    #   resp.data.components #=> Array<Component>
    #   resp.data.components[0] #=> Types::Component
    #   resp.data.components[0].arn #=> String
    #   resp.data.components[0].component_name #=> String
    #   resp.data.components[0].latest_version #=> Types::ComponentLatestVersion
    #   resp.data.components[0].latest_version.arn #=> String
    #   resp.data.components[0].latest_version.component_version #=> String
    #   resp.data.components[0].latest_version.creation_timestamp #=> Time
    #   resp.data.components[0].latest_version.description #=> String
    #   resp.data.components[0].latest_version.publisher #=> String
    #   resp.data.components[0].latest_version.platforms #=> Array<ComponentPlatform>
    #   resp.data.components[0].latest_version.platforms[0] #=> Types::ComponentPlatform
    #   resp.data.components[0].latest_version.platforms[0].name #=> String
    #   resp.data.components[0].latest_version.platforms[0].attributes #=> Hash<String, String>
    #   resp.data.components[0].latest_version.platforms[0].attributes['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_components(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComponentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComponentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComponents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListComponents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComponents,
        stubs: @stubs,
        params_class: Params::ListComponentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_components
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of Greengrass core devices.</p>
    #          <note>
    #             <p>IoT Greengrass relies on individual devices to send status updates to the Amazon Web Services Cloud. If the IoT Greengrass Core
    #         software isn't running on the device, or if device isn't connected to the Amazon Web Services Cloud, then
    #         the reported status of that device might not reflect its current status. The status timestamp
    #         indicates when the device status was last updated.</p>
    #             <p>Core devices send status updates at the following times:</p>
    #             <ul>
    #                <li>
    #                   <p>When the IoT Greengrass Core software starts</p>
    #                </li>
    #                <li>
    #                   <p>When the core device receives a deployment from the Amazon Web Services Cloud</p>
    #                </li>
    #                <li>
    #                   <p>When the status of any component on the core device becomes <code>BROKEN</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>At a <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss">regular interval
    #             that you can configure</a>, which defaults to 24 hours</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListCoreDevicesInput}.
    #
    # @option params [String] :thing_group_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IoT thing group by which to filter. If you specify this parameter,
    #         the list includes only core devices that have successfully deployed a deployment that targets
    #         the thing group. When you remove a core device from a thing group, the list continues to
    #         include that core device.</p>
    #
    # @option params [String] :status
    #   <p>The core device status by which to filter. If you specify this parameter, the list
    #         includes only core devices that have this status. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
    #             on the core device.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @return [Types::ListCoreDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_core_devices(
    #     thing_group_arn: 'thingGroupArn',
    #     status: 'HEALTHY', # accepts ["HEALTHY", "UNHEALTHY"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCoreDevicesOutput
    #   resp.data.core_devices #=> Array<CoreDevice>
    #   resp.data.core_devices[0] #=> Types::CoreDevice
    #   resp.data.core_devices[0].core_device_thing_name #=> String
    #   resp.data.core_devices[0].status #=> String, one of ["HEALTHY", "UNHEALTHY"]
    #   resp.data.core_devices[0].last_status_update_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_core_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCoreDevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCoreDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCoreDevices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListCoreDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCoreDevices,
        stubs: @stubs,
        params_class: Params::ListCoreDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_core_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of deployments.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentsInput}.
    #
    # @option params [String] :target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    #
    # @option params [String] :history_filter
    #   <p>The filter for the list of deployments. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LATEST_ONLY</code> – The list includes only the latest revision of each
    #             deployment.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>LATEST_ONLY</code>
    #            </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @return [Types::ListDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments(
    #     target_arn: 'targetArn',
    #     history_filter: 'ALL', # accepts ["ALL", "LATEST_ONLY"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentsOutput
    #   resp.data.deployments #=> Array<Deployment>
    #   resp.data.deployments[0] #=> Types::Deployment
    #   resp.data.deployments[0].target_arn #=> String
    #   resp.data.deployments[0].revision_id #=> String
    #   resp.data.deployments[0].deployment_id #=> String
    #   resp.data.deployments[0].deployment_name #=> String
    #   resp.data.deployments[0].creation_timestamp #=> Time
    #   resp.data.deployments[0].deployment_status #=> String, one of ["ACTIVE", "COMPLETED", "CANCELED", "FAILED", "INACTIVE"]
    #   resp.data.deployments[0].is_latest_for_target #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Retrieves a paginated list of deployment jobs that IoT Greengrass sends to Greengrass core
    #       devices.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEffectiveDeploymentsInput}.
    #
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @return [Types::ListEffectiveDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_effective_deployments(
    #     core_device_thing_name: 'coreDeviceThingName', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEffectiveDeploymentsOutput
    #   resp.data.effective_deployments #=> Array<EffectiveDeployment>
    #   resp.data.effective_deployments[0] #=> Types::EffectiveDeployment
    #   resp.data.effective_deployments[0].deployment_id #=> String
    #   resp.data.effective_deployments[0].deployment_name #=> String
    #   resp.data.effective_deployments[0].iot_job_id #=> String
    #   resp.data.effective_deployments[0].iot_job_arn #=> String
    #   resp.data.effective_deployments[0].description #=> String
    #   resp.data.effective_deployments[0].target_arn #=> String
    #   resp.data.effective_deployments[0].core_device_execution_status #=> String, one of ["IN_PROGRESS", "QUEUED", "FAILED", "COMPLETED", "TIMED_OUT", "CANCELED", "REJECTED"]
    #   resp.data.effective_deployments[0].reason #=> String
    #   resp.data.effective_deployments[0].creation_timestamp #=> Time
    #   resp.data.effective_deployments[0].modified_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_effective_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEffectiveDeploymentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEffectiveDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEffectiveDeployments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListEffectiveDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEffectiveDeployments,
        stubs: @stubs,
        params_class: Params::ListEffectiveDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_effective_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of the components that a Greengrass core device runs.
    #       This list doesn't include components that are deployed from local deployments or
    #       components that are deployed as dependencies of other components.</p>
    #          <note>
    #             <p>IoT Greengrass relies on individual devices to send status updates to the Amazon Web Services Cloud. If the IoT Greengrass Core
    #         software isn't running on the device, or if device isn't connected to the Amazon Web Services Cloud, then
    #         the reported status of that device might not reflect its current status. The status timestamp
    #         indicates when the device status was last updated.</p>
    #             <p>Core devices send status updates at the following times:</p>
    #             <ul>
    #                <li>
    #                   <p>When the IoT Greengrass Core software starts</p>
    #                </li>
    #                <li>
    #                   <p>When the core device receives a deployment from the Amazon Web Services Cloud</p>
    #                </li>
    #                <li>
    #                   <p>When the status of any component on the core device becomes <code>BROKEN</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>At a <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss">regular interval
    #             that you can configure</a>, which defaults to 24 hours</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListInstalledComponentsInput}.
    #
    # @option params [String] :core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @return [Types::ListInstalledComponentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_installed_components(
    #     core_device_thing_name: 'coreDeviceThingName', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstalledComponentsOutput
    #   resp.data.installed_components #=> Array<InstalledComponent>
    #   resp.data.installed_components[0] #=> Types::InstalledComponent
    #   resp.data.installed_components[0].component_name #=> String
    #   resp.data.installed_components[0].component_version #=> String
    #   resp.data.installed_components[0].lifecycle_state #=> String, one of ["NEW", "INSTALLED", "STARTING", "RUNNING", "STOPPING", "ERRORED", "BROKEN", "FINISHED"]
    #   resp.data.installed_components[0].lifecycle_state_details #=> String
    #   resp.data.installed_components[0].is_root #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_installed_components(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstalledComponentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstalledComponentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstalledComponents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListInstalledComponents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstalledComponents,
        stubs: @stubs,
        params_class: Params::ListInstalledComponentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_installed_components
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the list of tags for an IoT Greengrass resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Retrieves a list of components that meet the component, version, and platform requirements
    #       of a deployment. Greengrass core devices call this operation when they receive a deployment to
    #       identify the components to install.</p>
    #          <p>This operation identifies components that meet all dependency requirements for a
    #       deployment. If the requirements conflict, then this operation returns an error and the
    #       deployment fails. For example, this occurs if component <code>A</code> requires version
    #         <code>>2.0.0</code> and component <code>B</code> requires version <code><2.0.0</code>
    #       of a component dependency.</p>
    #          <p>When you specify the component candidates to resolve, IoT Greengrass compares each component's
    #       digest from the core device with the component's digest in the Amazon Web Services Cloud. If the digests don't
    #       match, then IoT Greengrass specifies to use the version from the Amazon Web Services Cloud.</p>
    #          <important>
    #             <p>To use this operation, you must use the data plane API endpoint and authenticate with an
    #         IoT device certificate. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/greengrass.html">IoT Greengrass endpoints and quotas</a>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::ResolveComponentCandidatesInput}.
    #
    # @option params [ComponentPlatform] :platform
    #   <p>The platform to use to resolve compatible components.</p>
    #
    # @option params [Array<ComponentCandidate>] :component_candidates
    #   <p>The list of components to resolve.</p>
    #
    # @return [Types::ResolveComponentCandidatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_component_candidates(
    #     platform: {
    #       name: 'name',
    #       attributes: {
    #         'key' => 'value'
    #       }
    #     },
    #     component_candidates: [
    #       {
    #         component_name: 'componentName',
    #         component_version: 'componentVersion',
    #         version_requirements: {
    #           'key' => 'value'
    #         }
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResolveComponentCandidatesOutput
    #   resp.data.resolved_component_versions #=> Array<ResolvedComponentVersion>
    #   resp.data.resolved_component_versions[0] #=> Types::ResolvedComponentVersion
    #   resp.data.resolved_component_versions[0].arn #=> String
    #   resp.data.resolved_component_versions[0].component_name #=> String
    #   resp.data.resolved_component_versions[0].component_version #=> String
    #   resp.data.resolved_component_versions[0].recipe #=> String
    #   resp.data.resolved_component_versions[0].vendor_guidance #=> String, one of ["ACTIVE", "DISCONTINUED", "DELETED"]
    #   resp.data.resolved_component_versions[0].message #=> String
    #
    def resolve_component_candidates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResolveComponentCandidatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResolveComponentCandidatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResolveComponentCandidates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ResolveComponentCandidates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResolveComponentCandidates,
        stubs: @stubs,
        params_class: Params::ResolveComponentCandidatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resolve_component_candidates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to an IoT Greengrass resource. If a tag already exists for the resource, this operation
    #       updates the tag's value.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to tag.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Removes a tag from an IoT Greengrass resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to untag.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys for tags to remove from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Updates connectivity information for a Greengrass core device.</p>
    #          <p>Connectivity information includes endpoints and ports where client devices
    #       can connect to an MQTT broker on the core device. When a client device
    #       calls the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html">IoT Greengrass discovery API</a>,
    #       IoT Greengrass returns connectivity information for all of the core devices where the client device can
    #       connect. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html">Connect client devices to
    #         core devices</a> in the <i>IoT Greengrass Version 2 Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectivityInfoInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #
    # @option params [Array<ConnectivityInfo>] :connectivity_info
    #   <p>The connectivity information for the core device.</p>
    #
    # @return [Types::UpdateConnectivityInfoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connectivity_info(
    #     thing_name: 'thingName', # required
    #     connectivity_info: [
    #       {
    #         id: 'id',
    #         host_address: 'hostAddress',
    #         port_number: 1,
    #         metadata: 'metadata'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectivityInfoOutput
    #   resp.data.version #=> String
    #   resp.data.message #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
