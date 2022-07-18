# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Proton
  # An API client for AwsProton20200720
  # See {#initialize} for a full list of supported configuration options
  # <p>This is the Proton Service API Reference. It provides descriptions, syntax and usage examples for each of the <a href="https://docs.aws.amazon.com/proton/latest/APIReference/API_Operations.html">actions</a> and <a href="https://docs.aws.amazon.com/proton/latest/APIReference/API_Types.html">data types</a> for the Proton service.</p>
  #          <p>The documentation for each action shows the Query API request parameters and the XML response.</p>
  #          <p>Alternatively, you can use the Amazon Web Services CLI to access an API. For more information, see the <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html">Amazon Web Services Command Line Interface User Guide</a>.</p>
  #          <p>The Proton service is a two-pronged automation framework. Administrators create service templates to provide standardized infrastructure
  #    and deployment tooling for serverless and container based applications. Developers, in turn, select from the available service templates to
  #    automate their application or service deployments.</p>
  #          <p>Because administrators define the infrastructure and tooling that Proton deploys and manages, they need permissions to use all of the
  #    listed API operations.</p>
  #          <p>When developers select a specific infrastructure and tooling set, Proton deploys their applications. To monitor their applications that are
  #    running on Proton, developers need permissions to the service <i>create</i>, <i>list</i>,
  #     <i>update</i> and <i>delete</i> API operations and the service instance <i>list</i> and
  #     <i>update</i> API operations.</p>
  #          <p>To learn more about Proton administration, see the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/Welcome.html">Proton
  #     Administrator Guide</a>.</p>
  #          <p>To learn more about deploying serverless and containerized applications on Proton, see the <a href="https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html">Proton User Guide</a>.</p>
  #          <p>
  #             <b>Ensuring Idempotency</b>
  #          </p>
  #          <p>When you make a mutating API request, the request typically returns a result before the asynchronous workflows of the operation are complete.
  #    Operations might also time out or encounter other server issues before they're complete, even if the request already returned a result. This might
  #    make it difficult to determine whether the request succeeded. Moreover, you might need to retry the request multiple times to ensure that the
  #    operation completes successfully. However, if the original request and the subsequent retries are successful, the operation occurs multiple times.
  #    This means that you might create more resources than you intended.</p>
  #          <p>
  #             <i>Idempotency</i> ensures that an API request action completes no more than one time. With an idempotent request, if the
  #    original request action completes successfully, any subsequent retries complete successfully without performing any further actions. However, the
  #    result might contain updated information, such as the current creation status.</p>
  #          <p>The following lists of APIs are grouped according to methods that ensure idempotency.</p>
  #          <p>
  #             <b>Idempotent create APIs with a client token</b>
  #          </p>
  #          <p>The API actions in this list support idempotency with the use of a <i>client token</i>. The corresponding Amazon Web Services CLI commands
  #    also support idempotency using a client token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. To make an
  #    idempotent API request using one of these actions, specify a client token in the request. We recommend that you <i>don't</i> reuse
  #    the same client token for other API requests. If you don’t provide a client token for these APIs, a default client token is automatically provided
  #    by SDKs.</p>
  #          <p>Given a request action that has succeeded:</p>
  #          <p>If you retry the request using the same client token and the same parameters, the retry succeeds without performing any further actions other
  #    than returning the original resource detail data in the response.</p>
  #          <p>If you retry the request using the same client token, but one or more of the parameters are different, the retry throws a
  #     <code>ValidationException</code> with an <code>IdempotentParameterMismatch</code> error.</p>
  #          <p>Client tokens expire eight hours after a request is made. If you retry the request with the expired token, a new resource is created.</p>
  #          <p>If the original resource is deleted and you retry the request, a new resource is created.</p>
  #          <p>Idempotent create APIs with a client token:</p>
  #          <ul>
  #             <li>
  #                <p>CreateEnvironmentTemplateVersion</p>
  #             </li>
  #             <li>
  #                <p>CreateServiceTemplateVersion</p>
  #             </li>
  #             <li>
  #                <p>CreateEnvironmentAccountConnection</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Idempotent create APIs</b>
  #          </p>
  #          <p>Given a request action that has succeeded:</p>
  #          <p>If you retry the request with an API from this group, and the original resource <i>hasn't</i> been modified, the retry succeeds
  #    without performing any further actions other than returning the original resource detail data in the response.</p>
  #          <p>If the original resource has been modified, the retry throws a <code>ConflictException</code>.</p>
  #          <p>If you retry with different input parameters, the retry throws a <code>ValidationException</code> with an
  #     <code>IdempotentParameterMismatch</code> error.</p>
  #          <p>Idempotent create APIs:</p>
  #          <ul>
  #             <li>
  #                <p>CreateEnvironmentTemplate</p>
  #             </li>
  #             <li>
  #                <p>CreateServiceTemplate</p>
  #             </li>
  #             <li>
  #                <p>CreateEnvironment</p>
  #             </li>
  #             <li>
  #                <p>CreateService</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Idempotent delete APIs</b>
  #          </p>
  #          <p>Given a request action that has succeeded:</p>
  #          <p>When you retry the request with an API from this group and the resource was deleted, its metadata is returned in the response.</p>
  #          <p>If you retry and the resource doesn't exist, the response is empty.</p>
  #          <p>In both cases, the retry succeeds.</p>
  #          <p>Idempotent delete APIs:</p>
  #          <ul>
  #             <li>
  #                <p>DeleteEnvironmentTemplate</p>
  #             </li>
  #             <li>
  #                <p>DeleteEnvironmentTemplateVersion</p>
  #             </li>
  #             <li>
  #                <p>DeleteServiceTemplate</p>
  #             </li>
  #             <li>
  #                <p>DeleteServiceTemplateVersion</p>
  #             </li>
  #             <li>
  #                <p>DeleteEnvironmentAccountConnection</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Asynchronous idempotent delete APIs</b>
  #          </p>
  #          <p>Given a request action that has succeeded:</p>
  #          <p>If you retry the request with an API from this group, if the original request delete operation status is <code>DELETE_IN_PROGRESS</code>, the
  #    retry returns the resource detail data in the response without performing any further actions.</p>
  #          <p>If the original request delete operation is complete, a retry returns an empty response.</p>
  #          <p>Asynchronous idempotent delete APIs:</p>
  #          <ul>
  #             <li>
  #                <p>DeleteEnvironment</p>
  #             </li>
  #             <li>
  #                <p>DeleteService</p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::Proton::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>In a management account, an environment account connection request is accepted. When the environment account connection request is accepted, Proton
    #       can use the associated IAM role to provision environment infrastructure resources in the associated environment account.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton Administrator guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptEnvironmentAccountConnectionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the environment account connection.</p>
    #
    # @return [Types::AcceptEnvironmentAccountConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_environment_account_connection(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptEnvironmentAccountConnectionOutput
    #   resp.data.environment_account_connection #=> Types::EnvironmentAccountConnection
    #   resp.data.environment_account_connection.id #=> String
    #   resp.data.environment_account_connection.arn #=> String
    #   resp.data.environment_account_connection.management_account_id #=> String
    #   resp.data.environment_account_connection.environment_account_id #=> String
    #   resp.data.environment_account_connection.role_arn #=> String
    #   resp.data.environment_account_connection.environment_name #=> String
    #   resp.data.environment_account_connection.requested_at #=> Time
    #   resp.data.environment_account_connection.last_modified_at #=> Time
    #   resp.data.environment_account_connection.status #=> String, one of ["PENDING", "CONNECTED", "REJECTED"]
    #   resp.data.environment_account_connection.component_role_arn #=> String
    #
    def accept_environment_account_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptEnvironmentAccountConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptEnvironmentAccountConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptEnvironmentAccountConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::AcceptEnvironmentAccountConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptEnvironmentAccountConnection,
        stubs: @stubs,
        params_class: Params::AcceptEnvironmentAccountConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_environment_account_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to cancel a component deployment (for a component that is in the <code>IN_PROGRESS</code> deployment status).</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelComponentDeploymentInput}.
    #
    # @option params [String] :component_name
    #   <p>The name of the component with the deployment to cancel.</p>
    #
    # @return [Types::CancelComponentDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_component_deployment(
    #     component_name: 'componentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelComponentDeploymentOutput
    #   resp.data.component #=> Types::Component
    #   resp.data.component.name #=> String
    #   resp.data.component.description #=> String
    #   resp.data.component.arn #=> String
    #   resp.data.component.environment_name #=> String
    #   resp.data.component.service_name #=> String
    #   resp.data.component.service_instance_name #=> String
    #   resp.data.component.created_at #=> Time
    #   resp.data.component.last_modified_at #=> Time
    #   resp.data.component.last_deployment_attempted_at #=> Time
    #   resp.data.component.last_deployment_succeeded_at #=> Time
    #   resp.data.component.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.component.deployment_status_message #=> String
    #   resp.data.component.service_spec #=> String
    #
    def cancel_component_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelComponentDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelComponentDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelComponentDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CancelComponentDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelComponentDeployment,
        stubs: @stubs,
        params_class: Params::CancelComponentDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_component_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to cancel an environment deployment on an <a>UpdateEnvironment</a> action, if the deployment is <code>IN_PROGRESS</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-update.html">Update an environment</a> in the <i>Proton
    #         Administrator guide</i>.</p>
    #          <p>The following list includes potential cancellation scenarios.</p>
    #          <ul>
    #             <li>
    #                <p>If the cancellation attempt succeeds, the resulting deployment state is <code>CANCELLED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the cancellation attempt fails, the resulting deployment state is <code>FAILED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the current <a>UpdateEnvironment</a> action succeeds before the cancellation attempt starts, the resulting deployment state is
    #             <code>SUCCEEDED</code> and the cancellation attempt has no effect.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CancelEnvironmentDeploymentInput}.
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment with the deployment to cancel.</p>
    #
    # @return [Types::CancelEnvironmentDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_environment_deployment(
    #     environment_name: 'environmentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelEnvironmentDeploymentOutput
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.name #=> String
    #   resp.data.environment.description #=> String
    #   resp.data.environment.created_at #=> Time
    #   resp.data.environment.last_deployment_attempted_at #=> Time
    #   resp.data.environment.last_deployment_succeeded_at #=> Time
    #   resp.data.environment.arn #=> String
    #   resp.data.environment.template_name #=> String
    #   resp.data.environment.template_major_version #=> String
    #   resp.data.environment.template_minor_version #=> String
    #   resp.data.environment.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.environment.deployment_status_message #=> String
    #   resp.data.environment.proton_service_role_arn #=> String
    #   resp.data.environment.environment_account_connection_id #=> String
    #   resp.data.environment.environment_account_id #=> String
    #   resp.data.environment.spec #=> String
    #   resp.data.environment.provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #   resp.data.environment.provisioning_repository #=> Types::RepositoryBranch
    #   resp.data.environment.provisioning_repository.arn #=> String
    #   resp.data.environment.provisioning_repository.provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.environment.provisioning_repository.name #=> String
    #   resp.data.environment.provisioning_repository.branch #=> String
    #   resp.data.environment.component_role_arn #=> String
    #
    def cancel_environment_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelEnvironmentDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelEnvironmentDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelEnvironmentDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CancelEnvironmentDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelEnvironmentDeployment,
        stubs: @stubs,
        params_class: Params::CancelEnvironmentDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_environment_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to cancel a service instance deployment on an <a>UpdateServiceInstance</a> action, if the deployment is <code>IN_PROGRESS</code>.
    #       For more information, see <i>Update a service instance</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-instance-update.html">Proton Administrator guide</a> or the <a href="https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-instance-update.html">Proton User guide</a>.</p>
    #          <p>The following list includes potential cancellation scenarios.</p>
    #          <ul>
    #             <li>
    #                <p>If the cancellation attempt succeeds, the resulting deployment state is <code>CANCELLED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the cancellation attempt fails, the resulting deployment state is <code>FAILED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the current <a>UpdateServiceInstance</a> action succeeds before the cancellation attempt starts, the resulting deployment state is
    #             <code>SUCCEEDED</code> and the cancellation attempt has no effect.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CancelServiceInstanceDeploymentInput}.
    #
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance with the deployment to cancel.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the service with the service instance deployment to cancel.</p>
    #
    # @return [Types::CancelServiceInstanceDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_service_instance_deployment(
    #     service_instance_name: 'serviceInstanceName', # required
    #     service_name: 'serviceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelServiceInstanceDeploymentOutput
    #   resp.data.service_instance #=> Types::ServiceInstance
    #   resp.data.service_instance.name #=> String
    #   resp.data.service_instance.arn #=> String
    #   resp.data.service_instance.created_at #=> Time
    #   resp.data.service_instance.last_deployment_attempted_at #=> Time
    #   resp.data.service_instance.last_deployment_succeeded_at #=> Time
    #   resp.data.service_instance.service_name #=> String
    #   resp.data.service_instance.environment_name #=> String
    #   resp.data.service_instance.template_name #=> String
    #   resp.data.service_instance.template_major_version #=> String
    #   resp.data.service_instance.template_minor_version #=> String
    #   resp.data.service_instance.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.service_instance.deployment_status_message #=> String
    #   resp.data.service_instance.spec #=> String
    #
    def cancel_service_instance_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelServiceInstanceDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelServiceInstanceDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelServiceInstanceDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CancelServiceInstanceDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelServiceInstanceDeployment,
        stubs: @stubs,
        params_class: Params::CancelServiceInstanceDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_service_instance_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to cancel a service pipeline deployment on an <a>UpdateServicePipeline</a> action, if the deployment is <code>IN_PROGRESS</code>.
    #       For more information, see <i>Update a service pipeline</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-pipeline-update.html">Proton Administrator guide</a> or the <a href="https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-pipeline-update.html">Proton User guide</a>.</p>
    #          <p>The following list includes potential cancellation scenarios.</p>
    #          <ul>
    #             <li>
    #                <p>If the cancellation attempt succeeds, the resulting deployment state is <code>CANCELLED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the cancellation attempt fails, the resulting deployment state is <code>FAILED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the current <a>UpdateServicePipeline</a> action succeeds before the cancellation attempt starts, the resulting deployment state is
    #             <code>SUCCEEDED</code> and the cancellation attempt has no effect.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CancelServicePipelineDeploymentInput}.
    #
    # @option params [String] :service_name
    #   <p>The name of the service with the service pipeline deployment to cancel.</p>
    #
    # @return [Types::CancelServicePipelineDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_service_pipeline_deployment(
    #     service_name: 'serviceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelServicePipelineDeploymentOutput
    #   resp.data.pipeline #=> Types::ServicePipeline
    #   resp.data.pipeline.arn #=> String
    #   resp.data.pipeline.created_at #=> Time
    #   resp.data.pipeline.last_deployment_attempted_at #=> Time
    #   resp.data.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.data.pipeline.template_name #=> String
    #   resp.data.pipeline.template_major_version #=> String
    #   resp.data.pipeline.template_minor_version #=> String
    #   resp.data.pipeline.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.pipeline.deployment_status_message #=> String
    #   resp.data.pipeline.spec #=> String
    #
    def cancel_service_pipeline_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelServicePipelineDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelServicePipelineDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelServicePipelineDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CancelServicePipelineDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelServicePipelineDeployment,
        stubs: @stubs,
        params_class: Params::CancelServicePipelineDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_service_pipeline_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an Proton component. A component is an infrastructure extension for a service instance.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateComponentInput}.
    #
    # @option params [String] :name
    #   <p>The customer-provided name of the component.</p>
    #
    # @option params [String] :description
    #   <p>An optional customer-provided description of the component.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. If you don't specify this, the component isn't attached to any
    #         service instance. Specify both <code>serviceInstanceName</code> and <code>serviceName</code> or neither of them.</p>
    #
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance that you want to attach this component to. If you don't specify this, the component isn't attached to any service
    #         instance. Specify both <code>serviceInstanceName</code> and <code>serviceName</code> or neither of them.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the Proton environment that you want to associate this component with. You must specify this when you don't specify
    #           <code>serviceInstanceName</code> and <code>serviceName</code>.</p>
    #
    # @option params [String] :template_file
    #   <p>A path to the Infrastructure as Code (IaC) file describing infrastructure that a custom component provisions.</p>
    #            <note>
    #               <p>Components support a single IaC file, even if you use Terraform as your template language.</p>
    #            </note>
    #
    # @option params [String] :manifest
    #   <p>A path to a manifest file that lists the Infrastructure as Code (IaC) file, template language, and rendering engine for infrastructure that a custom
    #         component provisions.</p>
    #
    # @option params [String] :service_spec
    #   <p>The service spec that you want the component to use to access service inputs. Set this only when you attach the component to a service
    #         instance.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton component. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @return [Types::CreateComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component(
    #     name: 'name', # required
    #     description: 'description',
    #     service_name: 'serviceName',
    #     service_instance_name: 'serviceInstanceName',
    #     environment_name: 'environmentName',
    #     template_file: 'templateFile', # required
    #     manifest: 'manifest', # required
    #     service_spec: 'serviceSpec',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateComponentOutput
    #   resp.data.component #=> Types::Component
    #   resp.data.component.name #=> String
    #   resp.data.component.description #=> String
    #   resp.data.component.arn #=> String
    #   resp.data.component.environment_name #=> String
    #   resp.data.component.service_name #=> String
    #   resp.data.component.service_instance_name #=> String
    #   resp.data.component.created_at #=> Time
    #   resp.data.component.last_modified_at #=> Time
    #   resp.data.component.last_deployment_attempted_at #=> Time
    #   resp.data.component.last_deployment_succeeded_at #=> Time
    #   resp.data.component.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.component.deployment_status_message #=> String
    #   resp.data.component.service_spec #=> String
    #
    def create_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateComponent,
        stubs: @stubs,
        params_class: Params::CreateComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deploy a new environment. An Proton environment is created from an environment template that defines infrastructure and resources that can be
    #       shared across services.</p>
    #          <p class="title">
    #             <b>You can provision environments using the following methods:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Amazon Web Services-managed provisioning: Proton makes direct calls to provision your resources.</p>
    #             </li>
    #             <li>
    #                <p>Self-managed provisioning: Proton makes pull requests on your repository to provide compiled infrastructure as code (IaC) files that your IaC
    #           engine uses to provision resources.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-environments.html">Environments</a> and <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-works-prov-methods.html">Provisioning methods</a> in the <i>Proton Administrator
    #         Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the environment.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the environment template. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-templates.html">Environment Templates</a> in the <i>Proton Administrator Guide</i>.</p>
    #
    # @option params [String] :template_major_version
    #   <p>The major version of the environment template.</p>
    #
    # @option params [String] :template_minor_version
    #   <p>The minor version of the environment template.</p>
    #
    # @option params [String] :description
    #   <p>A description of the environment that's being created and deployed.</p>
    #
    # @option params [String] :spec
    #   <p>A YAML formatted string that provides inputs as defined in the environment template bundle schema file. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-environments.html">Environments</a> in the <i>Proton Administrator
    #         Guide</i>.</p>
    #
    # @option params [String] :proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>
    #            <p>To use Amazon Web Services-managed provisioning for the environment, specify either the <code>environmentAccountConnectionId</code> or
    #           <code>protonServiceRoleArn</code> parameter and omit the <code>provisioningRepository</code> parameter.</p>
    #
    # @option params [String] :environment_account_connection_id
    #   <p>The ID of the environment account connection that you provide if you're provisioning your environment infrastructure resources to an environment
    #         account. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    #           connections</a> in the <i>Proton Administrator guide</i>.</p>
    #            <p>To use Amazon Web Services-managed provisioning for the environment, specify either the <code>environmentAccountConnectionId</code> or
    #           <code>protonServiceRoleArn</code> parameter and omit the <code>provisioningRepository</code> parameter.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @option params [RepositoryBranchInput] :provisioning_repository
    #   <p>The infrastructure repository that you use to host your rendered infrastructure templates for self-managed provisioning.</p>
    #            <p>To use self-managed provisioning for the environment, specify this parameter and omit the <code>environmentAccountConnectionId</code> and
    #           <code>protonServiceRoleArn</code> parameters.</p>
    #
    # @option params [String] :component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>You must specify <code>componentRoleArn</code> to allow directly defined components to be associated with this environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    # @return [Types::CreateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment(
    #     name: 'name', # required
    #     template_name: 'templateName', # required
    #     template_major_version: 'templateMajorVersion', # required
    #     template_minor_version: 'templateMinorVersion',
    #     description: 'description',
    #     spec: 'spec', # required
    #     proton_service_role_arn: 'protonServiceRoleArn',
    #     environment_account_connection_id: 'environmentAccountConnectionId',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     provisioning_repository: {
    #       provider: 'GITHUB', # required - accepts ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #       name: 'name', # required
    #       branch: 'branch' # required
    #     },
    #     component_role_arn: 'componentRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentOutput
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.name #=> String
    #   resp.data.environment.description #=> String
    #   resp.data.environment.created_at #=> Time
    #   resp.data.environment.last_deployment_attempted_at #=> Time
    #   resp.data.environment.last_deployment_succeeded_at #=> Time
    #   resp.data.environment.arn #=> String
    #   resp.data.environment.template_name #=> String
    #   resp.data.environment.template_major_version #=> String
    #   resp.data.environment.template_minor_version #=> String
    #   resp.data.environment.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.environment.deployment_status_message #=> String
    #   resp.data.environment.proton_service_role_arn #=> String
    #   resp.data.environment.environment_account_connection_id #=> String
    #   resp.data.environment.environment_account_id #=> String
    #   resp.data.environment.spec #=> String
    #   resp.data.environment.provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #   resp.data.environment.provisioning_repository #=> Types::RepositoryBranch
    #   resp.data.environment.provisioning_repository.arn #=> String
    #   resp.data.environment.provisioning_repository.provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.environment.provisioning_repository.name #=> String
    #   resp.data.environment.provisioning_repository.branch #=> String
    #   resp.data.environment.component_role_arn #=> String
    #
    def create_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEnvironment,
        stubs: @stubs,
        params_class: Params::CreateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an environment account connection in an environment account so that environment infrastructure resources can be provisioned in the environment
    #       account from a management account.</p>
    #          <p>An environment account connection is a secure bi-directional connection between a <i>management account</i> and an <i>environment
    #         account</i> that maintains authorization and permissions. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account connections</a> in the <i>Proton Administrator
    #         guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentAccountConnectionInput}.
    #
    # @option params [String] :client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton returns the environment account connection that the first
    #         request created.</p>
    #
    # @option params [String] :management_account_id
    #   <p>The ID of the management account that accepts or rejects the environment account connection. You create and manage the Proton environment in this
    #         account. If the management account accepts the environment account connection, Proton can use the associated IAM role to provision environment
    #         infrastructure resources in the associated environment account.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that's created in the environment account. Proton uses this role to provision infrastructure
    #         resources in the associated environment account.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the Proton environment that's created in the associated management account.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment account connection. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton Administrator Guide</i>.</p>
    #
    # @option params [String] :component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>You must specify <code>componentRoleArn</code> to allow directly defined components to be associated with any environments running in this
    #         account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    # @return [Types::CreateEnvironmentAccountConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_account_connection(
    #     client_token: 'clientToken',
    #     management_account_id: 'managementAccountId', # required
    #     role_arn: 'roleArn', # required
    #     environment_name: 'environmentName', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     component_role_arn: 'componentRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentAccountConnectionOutput
    #   resp.data.environment_account_connection #=> Types::EnvironmentAccountConnection
    #   resp.data.environment_account_connection.id #=> String
    #   resp.data.environment_account_connection.arn #=> String
    #   resp.data.environment_account_connection.management_account_id #=> String
    #   resp.data.environment_account_connection.environment_account_id #=> String
    #   resp.data.environment_account_connection.role_arn #=> String
    #   resp.data.environment_account_connection.environment_name #=> String
    #   resp.data.environment_account_connection.requested_at #=> Time
    #   resp.data.environment_account_connection.last_modified_at #=> Time
    #   resp.data.environment_account_connection.status #=> String, one of ["PENDING", "CONNECTED", "REJECTED"]
    #   resp.data.environment_account_connection.component_role_arn #=> String
    #
    def create_environment_account_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEnvironmentAccountConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEnvironmentAccountConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEnvironmentAccountConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateEnvironmentAccountConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEnvironmentAccountConnection,
        stubs: @stubs,
        params_class: Params::CreateEnvironmentAccountConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_environment_account_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an environment template for Proton. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-templates.html">Environment Templates</a> in the <i>Proton Administrator Guide</i>.</p>
    #          <p>You can create an environment template in one of the two following ways:</p>
    #          <ul>
    #             <li>
    #                <p>Register and publish a <i>standard</i> environment template that instructs Proton to deploy and manage environment
    #           infrastructure.</p>
    #             </li>
    #             <li>
    #                <p>Register and publish a <i>customer managed</i> environment template that connects Proton to your existing provisioned
    #           infrastructure that you manage. Proton <i>doesn't</i> manage your existing provisioned infrastructure. To create an environment
    #           template for customer provisioned and managed infrastructure, include the <code>provisioning</code> parameter and set the value to
    #             <code>CUSTOMER_MANAGED</code>. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/template-create.html">Register
    #             and publish an environment template</a> in the <i>Proton Administrator Guide</i>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentTemplateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the environment template.</p>
    #
    # @option params [String] :display_name
    #   <p>The environment template name as displayed in the developer interface.</p>
    #
    # @option params [String] :description
    #   <p>A description of the environment template.</p>
    #
    # @option params [String] :encryption_key
    #   <p>A customer provided encryption key that Proton uses to encrypt data.</p>
    #
    # @option params [String] :provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment template. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @return [Types::CreateEnvironmentTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_template(
    #     name: 'name', # required
    #     display_name: 'displayName',
    #     description: 'description',
    #     encryption_key: 'encryptionKey',
    #     provisioning: 'CUSTOMER_MANAGED', # accepts ["CUSTOMER_MANAGED"]
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentTemplateOutput
    #   resp.data.environment_template #=> Types::EnvironmentTemplate
    #   resp.data.environment_template.name #=> String
    #   resp.data.environment_template.arn #=> String
    #   resp.data.environment_template.created_at #=> Time
    #   resp.data.environment_template.last_modified_at #=> Time
    #   resp.data.environment_template.display_name #=> String
    #   resp.data.environment_template.description #=> String
    #   resp.data.environment_template.recommended_version #=> String
    #   resp.data.environment_template.encryption_key #=> String
    #   resp.data.environment_template.provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #
    def create_environment_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEnvironmentTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEnvironmentTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEnvironmentTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateEnvironmentTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEnvironmentTemplate,
        stubs: @stubs,
        params_class: Params::CreateEnvironmentTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_environment_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a new major or minor version of an environment template. A major version of an environment template is a version that
    #         <i>isn't</i> backwards compatible. A minor version of an environment template is a version that's backwards compatible within its major
    #       version.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentTemplateVersionInput}.
    #
    # @option params [String] :client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton returns the environment template version that the first
    #         request created.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the environment template.</p>
    #
    # @option params [String] :description
    #   <p>A description of the new version of an environment template.</p>
    #
    # @option params [String] :major_version
    #   <p>To create a new minor version of the environment template, include <code>major Version</code>.</p>
    #            <p>To create a new major and minor version of the environment template, exclude <code>major Version</code>.</p>
    #
    # @option params [TemplateVersionSourceInput] :source
    #   <p>An object that includes the template bundle S3 bucket path and name for the new version of an template.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment template version. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @return [Types::CreateEnvironmentTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_template_version(
    #     client_token: 'clientToken',
    #     template_name: 'templateName', # required
    #     description: 'description',
    #     major_version: 'majorVersion',
    #     source: {
    #       # One of:
    #       s3: {
    #         bucket: 'bucket', # required
    #         key: 'key' # required
    #       }
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentTemplateVersionOutput
    #   resp.data.environment_template_version #=> Types::EnvironmentTemplateVersion
    #   resp.data.environment_template_version.template_name #=> String
    #   resp.data.environment_template_version.major_version #=> String
    #   resp.data.environment_template_version.minor_version #=> String
    #   resp.data.environment_template_version.recommended_minor_version #=> String
    #   resp.data.environment_template_version.status #=> String, one of ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   resp.data.environment_template_version.status_message #=> String
    #   resp.data.environment_template_version.description #=> String
    #   resp.data.environment_template_version.arn #=> String
    #   resp.data.environment_template_version.created_at #=> Time
    #   resp.data.environment_template_version.last_modified_at #=> Time
    #   resp.data.environment_template_version.schema #=> String
    #
    def create_environment_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEnvironmentTemplateVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEnvironmentTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEnvironmentTemplateVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateEnvironmentTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEnvironmentTemplateVersion,
        stubs: @stubs,
        params_class: Params::CreateEnvironmentTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_environment_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create and register a link to a repository that can be used with self-managed provisioning (infrastructure or pipelines) or for template sync
    #       configurations. When you create a repository link, Proton creates a <a href="https://docs.aws.amazon.com/proton/latest/adminguide/using-service-linked-roles.html">service-linked role</a> for you.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-works-prov-methods.html#ag-works-prov-methods-self">Self-managed provisioning</a>, <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-template-bundles.html">Template bundles</a>, and
    #         <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-template-sync-configs.html">Template sync configurations</a> in the <i>Proton
    #         Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRepositoryInput}.
    #
    # @option params [String] :provider
    #   <p>The repository provider.</p>
    #
    # @option params [String] :name
    #   <p>The repository name (for example, <code>myrepos/myrepo</code>).</p>
    #
    # @option params [String] :connection_arn
    #   <p>The Amazon Resource Name (ARN) of your Amazon Web Services CodeStar connection. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html">Setting up for Proton</a> in the <i>Proton Administrator
    #         Guide</i>.</p>
    #
    # @option params [String] :encryption_key
    #   <p>The ARN of your customer Amazon Web Services Key Management Service (Amazon Web Services KMS) key.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton repository. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @return [Types::CreateRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository(
    #     provider: 'GITHUB', # required - accepts ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #     name: 'name', # required
    #     connection_arn: 'connectionArn', # required
    #     encryption_key: 'encryptionKey',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRepositoryOutput
    #   resp.data.repository #=> Types::Repository
    #   resp.data.repository.arn #=> String
    #   resp.data.repository.provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.repository.name #=> String
    #   resp.data.repository.connection_arn #=> String
    #   resp.data.repository.encryption_key #=> String
    #
    def create_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRepositoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRepository
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRepository,
        stubs: @stubs,
        params_class: Params::CreateRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an Proton service. An Proton service is an instantiation of a service template and often includes several service instances and pipeline.
    #       For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-services.html">Services</a> in the <i>Proton
    #         Administrator Guide</i> and <a href="https://docs.aws.amazon.com/proton/latest/userguide/ug-service.html">Services</a> in the <i>Proton
    #         User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceInput}.
    #
    # @option params [String] :name
    #   <p>The service name.</p>
    #
    # @option params [String] :description
    #   <p>A description of the Proton service.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the service template that's used to create the service.</p>
    #
    # @option params [String] :template_major_version
    #   <p>The major version of the service template that was used to create the service.</p>
    #
    # @option params [String] :template_minor_version
    #   <p>The minor version of the service template that was used to create the service.</p>
    #
    # @option params [String] :spec
    #   <p>A link to a spec file that provides inputs as defined in the service template bundle schema file. The spec file is in YAML format.
    #           <i>Don’t</i> include pipeline inputs in the spec if your service template <i>doesn’t</i> include a service pipeline. For
    #         more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-create-svc.html.html">Create a service</a> in the
    #           <i>Proton Administrator Guide</i> and <a href="https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-create.html">Create a
    #           service</a> in the <i>Proton User Guide</i>.</p>
    #
    # @option params [String] :repository_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the repository connection. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html#setting-up-vcontrol">Set up repository connection</a> in the <i>Proton
    #           Administrator Guide</i> and <a href="https://docs.aws.amazon.com/proton/latest/userguide/proton-setup.html#setup-repo-connection">Setting up with
    #           Proton</a> in the <i>Proton User Guide</i>. <i>Don't</i> include this parameter if your service template
    #           <i>doesn't</i> include a service pipeline.</p>
    #
    # @option params [String] :repository_id
    #   <p>The ID of the code repository. <i>Don't</i> include this parameter if your service template <i>doesn't</i> include a
    #         service pipeline.</p>
    #
    # @option params [String] :branch_name
    #   <p>The name of the code repository branch that holds the code that's deployed in Proton. <i>Don't</i> include this parameter if your
    #         service template <i>doesn't</i> include a service pipeline.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton service. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @return [Types::CreateServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service(
    #     name: 'name', # required
    #     description: 'description',
    #     template_name: 'templateName', # required
    #     template_major_version: 'templateMajorVersion', # required
    #     template_minor_version: 'templateMinorVersion',
    #     spec: 'spec', # required
    #     repository_connection_arn: 'repositoryConnectionArn',
    #     repository_id: 'repositoryId',
    #     branch_name: 'branchName',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.name #=> String
    #   resp.data.service.description #=> String
    #   resp.data.service.arn #=> String
    #   resp.data.service.template_name #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.last_modified_at #=> Time
    #   resp.data.service.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"]
    #   resp.data.service.status_message #=> String
    #   resp.data.service.spec #=> String
    #   resp.data.service.pipeline #=> Types::ServicePipeline
    #   resp.data.service.pipeline.arn #=> String
    #   resp.data.service.pipeline.created_at #=> Time
    #   resp.data.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.data.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.data.service.pipeline.template_name #=> String
    #   resp.data.service.pipeline.template_major_version #=> String
    #   resp.data.service.pipeline.template_minor_version #=> String
    #   resp.data.service.pipeline.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.service.pipeline.deployment_status_message #=> String
    #   resp.data.service.pipeline.spec #=> String
    #   resp.data.service.repository_connection_arn #=> String
    #   resp.data.service.repository_id #=> String
    #   resp.data.service.branch_name #=> String
    #
    def create_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateService
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateService,
        stubs: @stubs,
        params_class: Params::CreateServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a service template. The administrator creates a service template to define standardized infrastructure and an optional CI/CD service pipeline.
    #       Developers, in turn, select the service template from Proton. If the selected service template includes a service pipeline definition, they provide a
    #       link to their source code repository. Proton then deploys and manages the infrastructure defined by the selected service template. For more
    #       information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/managing-svc-templates.html">Service Templates</a> in the
    #         <i>Proton Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceTemplateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the service template.</p>
    #
    # @option params [String] :display_name
    #   <p>The name of the service template as displayed in the developer interface.</p>
    #
    # @option params [String] :description
    #   <p>A description of the service template.</p>
    #
    # @option params [String] :encryption_key
    #   <p>A customer provided encryption key that's used to encrypt data.</p>
    #
    # @option params [String] :pipeline_provisioning
    #   <p>By default, Proton provides a service pipeline for your service. When this parameter is included, it indicates that an Proton service pipeline
    #           <i>isn't</i> provided for your service. After it's included, it <i>can't</i> be changed. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-template-bundles.html">Service template bundles</a> in the <i>Proton Administrator
    #           Guide</i>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton service template. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @return [Types::CreateServiceTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_template(
    #     name: 'name', # required
    #     display_name: 'displayName',
    #     description: 'description',
    #     encryption_key: 'encryptionKey',
    #     pipeline_provisioning: 'CUSTOMER_MANAGED', # accepts ["CUSTOMER_MANAGED"]
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceTemplateOutput
    #   resp.data.service_template #=> Types::ServiceTemplate
    #   resp.data.service_template.name #=> String
    #   resp.data.service_template.arn #=> String
    #   resp.data.service_template.created_at #=> Time
    #   resp.data.service_template.last_modified_at #=> Time
    #   resp.data.service_template.display_name #=> String
    #   resp.data.service_template.description #=> String
    #   resp.data.service_template.recommended_version #=> String
    #   resp.data.service_template.encryption_key #=> String
    #   resp.data.service_template.pipeline_provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #
    def create_service_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateServiceTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateServiceTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateServiceTemplate,
        stubs: @stubs,
        params_class: Params::CreateServiceTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a new major or minor version of a service template. A major version of a service template is a version that <i>isn't</i> backward
    #       compatible. A minor version of a service template is a version that's backward compatible within its major version.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceTemplateVersionInput}.
    #
    # @option params [String] :client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton returns the service template version that the first request
    #         created.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the service template.</p>
    #
    # @option params [String] :description
    #   <p>A description of the new version of a service template.</p>
    #
    # @option params [String] :major_version
    #   <p>To create a new minor version of the service template, include a <code>major Version</code>.</p>
    #            <p>To create a new major and minor version of the service template, <i>exclude</i>
    #               <code>major Version</code>.</p>
    #
    # @option params [TemplateVersionSourceInput] :source
    #   <p>An object that includes the template bundle S3 bucket path and name for the new version of a service template.</p>
    #
    # @option params [Array<CompatibleEnvironmentTemplateInput>] :compatible_environment_templates
    #   <p>An array of environment template objects that are compatible with the new service template version. A service instance based on this service template
    #         version can run in environments based on compatible templates.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton service template version. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @option params [Array<String>] :supported_component_sources
    #   <p>An array of supported component sources. Components with supported sources can be attached to service instances based on this service template
    #         version.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    # @return [Types::CreateServiceTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_template_version(
    #     client_token: 'clientToken',
    #     template_name: 'templateName', # required
    #     description: 'description',
    #     major_version: 'majorVersion',
    #     source: {
    #       # One of:
    #       s3: {
    #         bucket: 'bucket', # required
    #         key: 'key' # required
    #       }
    #     }, # required
    #     compatible_environment_templates: [
    #       {
    #         template_name: 'templateName', # required
    #         major_version: 'majorVersion' # required
    #       }
    #     ], # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     supported_component_sources: [
    #       'DIRECTLY_DEFINED' # accepts ["DIRECTLY_DEFINED"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceTemplateVersionOutput
    #   resp.data.service_template_version #=> Types::ServiceTemplateVersion
    #   resp.data.service_template_version.template_name #=> String
    #   resp.data.service_template_version.major_version #=> String
    #   resp.data.service_template_version.minor_version #=> String
    #   resp.data.service_template_version.recommended_minor_version #=> String
    #   resp.data.service_template_version.status #=> String, one of ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   resp.data.service_template_version.status_message #=> String
    #   resp.data.service_template_version.description #=> String
    #   resp.data.service_template_version.arn #=> String
    #   resp.data.service_template_version.created_at #=> Time
    #   resp.data.service_template_version.last_modified_at #=> Time
    #   resp.data.service_template_version.compatible_environment_templates #=> Array<CompatibleEnvironmentTemplate>
    #   resp.data.service_template_version.compatible_environment_templates[0] #=> Types::CompatibleEnvironmentTemplate
    #   resp.data.service_template_version.compatible_environment_templates[0].template_name #=> String
    #   resp.data.service_template_version.compatible_environment_templates[0].major_version #=> String
    #   resp.data.service_template_version.schema #=> String
    #   resp.data.service_template_version.supported_component_sources #=> Array<String>
    #   resp.data.service_template_version.supported_component_sources[0] #=> String, one of ["DIRECTLY_DEFINED"]
    #
    def create_service_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceTemplateVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateServiceTemplateVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateServiceTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateServiceTemplateVersion,
        stubs: @stubs,
        params_class: Params::CreateServiceTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Set up a template to create new template versions automatically. When a commit is pushed to your registered <a href="https://docs.aws.amazon.com/proton/latest/APIReference/API_Repository.html">repository</a>, Proton checks for changes to your repository template bundles. If it detects
    #       a template bundle change, a new major or minor version of its template is created, if the version doesn’t already exist. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-template-sync-configs.html">Template sync configurations</a> in the <i>Proton
    #         Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTemplateSyncConfigInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of your registered template.</p>
    #
    # @option params [String] :template_type
    #   <p>The type of the registered template.</p>
    #
    # @option params [String] :repository_provider
    #   <p>The provider type for your repository.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of your repository (for example, <code>myrepos/myrepo</code>).</p>
    #
    # @option params [String] :branch
    #   <p>The branch of the registered repository for your template.</p>
    #
    # @option params [String] :subdirectory
    #   <p>A repository subdirectory path to your template bundle directory. When included, Proton limits the template bundle search to this repository
    #         directory.</p>
    #
    # @return [Types::CreateTemplateSyncConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template_sync_config(
    #     template_name: 'templateName', # required
    #     template_type: 'ENVIRONMENT', # required - accepts ["ENVIRONMENT", "SERVICE"]
    #     repository_provider: 'GITHUB', # required - accepts ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #     repository_name: 'repositoryName', # required
    #     branch: 'branch', # required
    #     subdirectory: 'subdirectory'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTemplateSyncConfigOutput
    #   resp.data.template_sync_config #=> Types::TemplateSyncConfig
    #   resp.data.template_sync_config.template_name #=> String
    #   resp.data.template_sync_config.template_type #=> String, one of ["ENVIRONMENT", "SERVICE"]
    #   resp.data.template_sync_config.repository_provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.template_sync_config.repository_name #=> String
    #   resp.data.template_sync_config.branch #=> String
    #   resp.data.template_sync_config.subdirectory #=> String
    #
    def create_template_sync_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTemplateSyncConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTemplateSyncConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTemplateSyncConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateTemplateSyncConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTemplateSyncConfig,
        stubs: @stubs,
        params_class: Params::CreateTemplateSyncConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_template_sync_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an Proton component resource.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteComponentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the component to delete.</p>
    #
    # @return [Types::DeleteComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteComponentOutput
    #   resp.data.component #=> Types::Component
    #   resp.data.component.name #=> String
    #   resp.data.component.description #=> String
    #   resp.data.component.arn #=> String
    #   resp.data.component.environment_name #=> String
    #   resp.data.component.service_name #=> String
    #   resp.data.component.service_instance_name #=> String
    #   resp.data.component.created_at #=> Time
    #   resp.data.component.last_modified_at #=> Time
    #   resp.data.component.last_deployment_attempted_at #=> Time
    #   resp.data.component.last_deployment_succeeded_at #=> Time
    #   resp.data.component.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.component.deployment_status_message #=> String
    #   resp.data.component.service_spec #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Delete an environment.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the environment to delete.</p>
    #
    # @return [Types::DeleteEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentOutput
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.name #=> String
    #   resp.data.environment.description #=> String
    #   resp.data.environment.created_at #=> Time
    #   resp.data.environment.last_deployment_attempted_at #=> Time
    #   resp.data.environment.last_deployment_succeeded_at #=> Time
    #   resp.data.environment.arn #=> String
    #   resp.data.environment.template_name #=> String
    #   resp.data.environment.template_major_version #=> String
    #   resp.data.environment.template_minor_version #=> String
    #   resp.data.environment.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.environment.deployment_status_message #=> String
    #   resp.data.environment.proton_service_role_arn #=> String
    #   resp.data.environment.environment_account_connection_id #=> String
    #   resp.data.environment.environment_account_id #=> String
    #   resp.data.environment.spec #=> String
    #   resp.data.environment.provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #   resp.data.environment.provisioning_repository #=> Types::RepositoryBranch
    #   resp.data.environment.provisioning_repository.arn #=> String
    #   resp.data.environment.provisioning_repository.provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.environment.provisioning_repository.name #=> String
    #   resp.data.environment.provisioning_repository.branch #=> String
    #   resp.data.environment.component_role_arn #=> String
    #
    def delete_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironment,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>In an environment account, delete an environment account connection.</p>
    #          <p>After you delete an environment account connection that’s in use by an Proton environment, Proton <i>can’t</i> manage the
    #       environment infrastructure resources until a new environment account connection is accepted for the environment account and associated environment. You're
    #       responsible for cleaning up provisioned resources that remain without an environment connection.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton Administrator guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentAccountConnectionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the environment account connection to delete.</p>
    #
    # @return [Types::DeleteEnvironmentAccountConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_account_connection(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentAccountConnectionOutput
    #   resp.data.environment_account_connection #=> Types::EnvironmentAccountConnection
    #   resp.data.environment_account_connection.id #=> String
    #   resp.data.environment_account_connection.arn #=> String
    #   resp.data.environment_account_connection.management_account_id #=> String
    #   resp.data.environment_account_connection.environment_account_id #=> String
    #   resp.data.environment_account_connection.role_arn #=> String
    #   resp.data.environment_account_connection.environment_name #=> String
    #   resp.data.environment_account_connection.requested_at #=> Time
    #   resp.data.environment_account_connection.last_modified_at #=> Time
    #   resp.data.environment_account_connection.status #=> String, one of ["PENDING", "CONNECTED", "REJECTED"]
    #   resp.data.environment_account_connection.component_role_arn #=> String
    #
    def delete_environment_account_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentAccountConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentAccountConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironmentAccountConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteEnvironmentAccountConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironmentAccountConnection,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentAccountConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment_account_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>If no other major or minor versions of an environment template exist, delete the environment template.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentTemplateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the environment template to delete.</p>
    #
    # @return [Types::DeleteEnvironmentTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_template(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentTemplateOutput
    #   resp.data.environment_template #=> Types::EnvironmentTemplate
    #   resp.data.environment_template.name #=> String
    #   resp.data.environment_template.arn #=> String
    #   resp.data.environment_template.created_at #=> Time
    #   resp.data.environment_template.last_modified_at #=> Time
    #   resp.data.environment_template.display_name #=> String
    #   resp.data.environment_template.description #=> String
    #   resp.data.environment_template.recommended_version #=> String
    #   resp.data.environment_template.encryption_key #=> String
    #   resp.data.environment_template.provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #
    def delete_environment_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironmentTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteEnvironmentTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironmentTemplate,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>If no other minor versions of an environment template exist, delete a major version of the environment template if it's not the
    #         <code>Recommended</code> version. Delete the <code>Recommended</code> version of the environment template if no other major versions or minor versions
    #       of the environment template exist. A major version of an environment template is a version that's not backward compatible.</p>
    #          <p>Delete a minor version of an environment template if it <i>isn't</i> the <code>Recommended</code> version. Delete a
    #         <code>Recommended</code> minor version of the environment template if no other minor versions of the environment template exist. A minor version of an
    #       environment template is a version that's backward compatible.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentTemplateVersionInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the environment template.</p>
    #
    # @option params [String] :major_version
    #   <p>The environment template major version to delete.</p>
    #
    # @option params [String] :minor_version
    #   <p>The environment template minor version to delete.</p>
    #
    # @return [Types::DeleteEnvironmentTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_template_version(
    #     template_name: 'templateName', # required
    #     major_version: 'majorVersion', # required
    #     minor_version: 'minorVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentTemplateVersionOutput
    #   resp.data.environment_template_version #=> Types::EnvironmentTemplateVersion
    #   resp.data.environment_template_version.template_name #=> String
    #   resp.data.environment_template_version.major_version #=> String
    #   resp.data.environment_template_version.minor_version #=> String
    #   resp.data.environment_template_version.recommended_minor_version #=> String
    #   resp.data.environment_template_version.status #=> String, one of ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   resp.data.environment_template_version.status_message #=> String
    #   resp.data.environment_template_version.description #=> String
    #   resp.data.environment_template_version.arn #=> String
    #   resp.data.environment_template_version.created_at #=> Time
    #   resp.data.environment_template_version.last_modified_at #=> Time
    #   resp.data.environment_template_version.schema #=> String
    #
    def delete_environment_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentTemplateVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironmentTemplateVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteEnvironmentTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironmentTemplateVersion,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>De-register and unlink your repository.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRepositoryInput}.
    #
    # @option params [String] :provider
    #   <p>The repository provider.</p>
    #
    # @option params [String] :name
    #   <p>The name of the repository.</p>
    #
    # @return [Types::DeleteRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository(
    #     provider: 'GITHUB', # required - accepts ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRepositoryOutput
    #   resp.data.repository #=> Types::Repository
    #   resp.data.repository.arn #=> String
    #   resp.data.repository.provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.repository.name #=> String
    #   resp.data.repository.connection_arn #=> String
    #   resp.data.repository.encryption_key #=> String
    #
    def delete_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRepositoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRepository
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRepository,
        stubs: @stubs,
        params_class: Params::DeleteRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a service, with its instances and pipeline.</p>
    #          <note>
    #             <p>You can't delete a service if it has any service instances that have components attached to them.</p>
    #             <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the service to delete.</p>
    #
    # @return [Types::DeleteServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.name #=> String
    #   resp.data.service.description #=> String
    #   resp.data.service.arn #=> String
    #   resp.data.service.template_name #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.last_modified_at #=> Time
    #   resp.data.service.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"]
    #   resp.data.service.status_message #=> String
    #   resp.data.service.spec #=> String
    #   resp.data.service.pipeline #=> Types::ServicePipeline
    #   resp.data.service.pipeline.arn #=> String
    #   resp.data.service.pipeline.created_at #=> Time
    #   resp.data.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.data.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.data.service.pipeline.template_name #=> String
    #   resp.data.service.pipeline.template_major_version #=> String
    #   resp.data.service.pipeline.template_minor_version #=> String
    #   resp.data.service.pipeline.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.service.pipeline.deployment_status_message #=> String
    #   resp.data.service.pipeline.spec #=> String
    #   resp.data.service.repository_connection_arn #=> String
    #   resp.data.service.repository_id #=> String
    #   resp.data.service.branch_name #=> String
    #
    def delete_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteService
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteService,
        stubs: @stubs,
        params_class: Params::DeleteServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>If no other major or minor versions of the service template exist, delete the service template.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceTemplateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the service template to delete.</p>
    #
    # @return [Types::DeleteServiceTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_template(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceTemplateOutput
    #   resp.data.service_template #=> Types::ServiceTemplate
    #   resp.data.service_template.name #=> String
    #   resp.data.service_template.arn #=> String
    #   resp.data.service_template.created_at #=> Time
    #   resp.data.service_template.last_modified_at #=> Time
    #   resp.data.service_template.display_name #=> String
    #   resp.data.service_template.description #=> String
    #   resp.data.service_template.recommended_version #=> String
    #   resp.data.service_template.encryption_key #=> String
    #   resp.data.service_template.pipeline_provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #
    def delete_service_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteServiceTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteServiceTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteServiceTemplate,
        stubs: @stubs,
        params_class: Params::DeleteServiceTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>If no other minor versions of a service template exist, delete a major version of the service template if it's not the <code>Recommended</code>
    #       version. Delete the <code>Recommended</code> version of the service template if no other major versions or minor versions of the service template exist. A
    #       major version of a service template is a version that <i>isn't</i> backwards compatible.</p>
    #          <p>Delete a minor version of a service template if it's not the <code>Recommended</code> version. Delete a <code>Recommended</code> minor version of the
    #       service template if no other minor versions of the service template exist. A minor version of a service template is a version that's backwards
    #       compatible.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceTemplateVersionInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the service template.</p>
    #
    # @option params [String] :major_version
    #   <p>The service template major version to delete.</p>
    #
    # @option params [String] :minor_version
    #   <p>The service template minor version to delete.</p>
    #
    # @return [Types::DeleteServiceTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_template_version(
    #     template_name: 'templateName', # required
    #     major_version: 'majorVersion', # required
    #     minor_version: 'minorVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceTemplateVersionOutput
    #   resp.data.service_template_version #=> Types::ServiceTemplateVersion
    #   resp.data.service_template_version.template_name #=> String
    #   resp.data.service_template_version.major_version #=> String
    #   resp.data.service_template_version.minor_version #=> String
    #   resp.data.service_template_version.recommended_minor_version #=> String
    #   resp.data.service_template_version.status #=> String, one of ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   resp.data.service_template_version.status_message #=> String
    #   resp.data.service_template_version.description #=> String
    #   resp.data.service_template_version.arn #=> String
    #   resp.data.service_template_version.created_at #=> Time
    #   resp.data.service_template_version.last_modified_at #=> Time
    #   resp.data.service_template_version.compatible_environment_templates #=> Array<CompatibleEnvironmentTemplate>
    #   resp.data.service_template_version.compatible_environment_templates[0] #=> Types::CompatibleEnvironmentTemplate
    #   resp.data.service_template_version.compatible_environment_templates[0].template_name #=> String
    #   resp.data.service_template_version.compatible_environment_templates[0].major_version #=> String
    #   resp.data.service_template_version.schema #=> String
    #   resp.data.service_template_version.supported_component_sources #=> Array<String>
    #   resp.data.service_template_version.supported_component_sources[0] #=> String, one of ["DIRECTLY_DEFINED"]
    #
    def delete_service_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceTemplateVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteServiceTemplateVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteServiceTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteServiceTemplateVersion,
        stubs: @stubs,
        params_class: Params::DeleteServiceTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a template sync configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTemplateSyncConfigInput}.
    #
    # @option params [String] :template_name
    #   <p>The template name.</p>
    #
    # @option params [String] :template_type
    #   <p>The template type.</p>
    #
    # @return [Types::DeleteTemplateSyncConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template_sync_config(
    #     template_name: 'templateName', # required
    #     template_type: 'ENVIRONMENT' # required - accepts ["ENVIRONMENT", "SERVICE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTemplateSyncConfigOutput
    #   resp.data.template_sync_config #=> Types::TemplateSyncConfig
    #   resp.data.template_sync_config.template_name #=> String
    #   resp.data.template_sync_config.template_type #=> String, one of ["ENVIRONMENT", "SERVICE"]
    #   resp.data.template_sync_config.repository_provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.template_sync_config.repository_name #=> String
    #   resp.data.template_sync_config.branch #=> String
    #   resp.data.template_sync_config.subdirectory #=> String
    #
    def delete_template_sync_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTemplateSyncConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTemplateSyncConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTemplateSyncConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteTemplateSyncConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTemplateSyncConfig,
        stubs: @stubs,
        params_class: Params::DeleteTemplateSyncConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_template_sync_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detail data for the Proton pipeline service role.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountSettingsInput}.
    #
    # @return [Types::GetAccountSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_settings()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountSettingsOutput
    #   resp.data.account_settings #=> Types::AccountSettings
    #   resp.data.account_settings.pipeline_service_role_arn #=> String
    #   resp.data.account_settings.pipeline_provisioning_repository #=> Types::RepositoryBranch
    #   resp.data.account_settings.pipeline_provisioning_repository.arn #=> String
    #   resp.data.account_settings.pipeline_provisioning_repository.provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.account_settings.pipeline_provisioning_repository.name #=> String
    #   resp.data.account_settings.pipeline_provisioning_repository.branch #=> String
    #
    def get_account_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetAccountSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountSettings,
        stubs: @stubs,
        params_class: Params::GetAccountSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detailed data for a component.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComponentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the component that you want to get the detailed data for.</p>
    #
    # @return [Types::GetComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComponentOutput
    #   resp.data.component #=> Types::Component
    #   resp.data.component.name #=> String
    #   resp.data.component.description #=> String
    #   resp.data.component.arn #=> String
    #   resp.data.component.environment_name #=> String
    #   resp.data.component.service_name #=> String
    #   resp.data.component.service_instance_name #=> String
    #   resp.data.component.created_at #=> Time
    #   resp.data.component.last_modified_at #=> Time
    #   resp.data.component.last_deployment_attempted_at #=> Time
    #   resp.data.component.last_deployment_succeeded_at #=> Time
    #   resp.data.component.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.component.deployment_status_message #=> String
    #   resp.data.component.service_spec #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Get detailed data for an environment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnvironmentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the environment that you want to get the detailed data for.</p>
    #
    # @return [Types::GetEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnvironmentOutput
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.name #=> String
    #   resp.data.environment.description #=> String
    #   resp.data.environment.created_at #=> Time
    #   resp.data.environment.last_deployment_attempted_at #=> Time
    #   resp.data.environment.last_deployment_succeeded_at #=> Time
    #   resp.data.environment.arn #=> String
    #   resp.data.environment.template_name #=> String
    #   resp.data.environment.template_major_version #=> String
    #   resp.data.environment.template_minor_version #=> String
    #   resp.data.environment.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.environment.deployment_status_message #=> String
    #   resp.data.environment.proton_service_role_arn #=> String
    #   resp.data.environment.environment_account_connection_id #=> String
    #   resp.data.environment.environment_account_id #=> String
    #   resp.data.environment.spec #=> String
    #   resp.data.environment.provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #   resp.data.environment.provisioning_repository #=> Types::RepositoryBranch
    #   resp.data.environment.provisioning_repository.arn #=> String
    #   resp.data.environment.provisioning_repository.provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.environment.provisioning_repository.name #=> String
    #   resp.data.environment.provisioning_repository.branch #=> String
    #   resp.data.environment.component_role_arn #=> String
    #
    def get_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnvironment,
        stubs: @stubs,
        params_class: Params::GetEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>In an environment account, get the detailed data for an environment account connection.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton Administrator guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnvironmentAccountConnectionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the environment account connection that you want to get the detailed data for.</p>
    #
    # @return [Types::GetEnvironmentAccountConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_account_connection(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnvironmentAccountConnectionOutput
    #   resp.data.environment_account_connection #=> Types::EnvironmentAccountConnection
    #   resp.data.environment_account_connection.id #=> String
    #   resp.data.environment_account_connection.arn #=> String
    #   resp.data.environment_account_connection.management_account_id #=> String
    #   resp.data.environment_account_connection.environment_account_id #=> String
    #   resp.data.environment_account_connection.role_arn #=> String
    #   resp.data.environment_account_connection.environment_name #=> String
    #   resp.data.environment_account_connection.requested_at #=> Time
    #   resp.data.environment_account_connection.last_modified_at #=> Time
    #   resp.data.environment_account_connection.status #=> String, one of ["PENDING", "CONNECTED", "REJECTED"]
    #   resp.data.environment_account_connection.component_role_arn #=> String
    #
    def get_environment_account_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnvironmentAccountConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnvironmentAccountConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnvironmentAccountConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetEnvironmentAccountConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnvironmentAccountConnection,
        stubs: @stubs,
        params_class: Params::GetEnvironmentAccountConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_environment_account_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detailed data for an environment template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnvironmentTemplateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the environment template that you want to get the detailed data for.</p>
    #
    # @return [Types::GetEnvironmentTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_template(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnvironmentTemplateOutput
    #   resp.data.environment_template #=> Types::EnvironmentTemplate
    #   resp.data.environment_template.name #=> String
    #   resp.data.environment_template.arn #=> String
    #   resp.data.environment_template.created_at #=> Time
    #   resp.data.environment_template.last_modified_at #=> Time
    #   resp.data.environment_template.display_name #=> String
    #   resp.data.environment_template.description #=> String
    #   resp.data.environment_template.recommended_version #=> String
    #   resp.data.environment_template.encryption_key #=> String
    #   resp.data.environment_template.provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #
    def get_environment_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnvironmentTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnvironmentTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnvironmentTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetEnvironmentTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnvironmentTemplate,
        stubs: @stubs,
        params_class: Params::GetEnvironmentTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_environment_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detailed data for a major or minor version of an environment template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnvironmentTemplateVersionInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the environment template a version of which you want to get detailed data for..</p>
    #
    # @option params [String] :major_version
    #   <p>To get environment template major version detail data, include <code>major Version</code>.</p>
    #
    # @option params [String] :minor_version
    #   <p>To get environment template minor version detail data, include <code>minorVersion</code>.</p>
    #
    # @return [Types::GetEnvironmentTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_template_version(
    #     template_name: 'templateName', # required
    #     major_version: 'majorVersion', # required
    #     minor_version: 'minorVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnvironmentTemplateVersionOutput
    #   resp.data.environment_template_version #=> Types::EnvironmentTemplateVersion
    #   resp.data.environment_template_version.template_name #=> String
    #   resp.data.environment_template_version.major_version #=> String
    #   resp.data.environment_template_version.minor_version #=> String
    #   resp.data.environment_template_version.recommended_minor_version #=> String
    #   resp.data.environment_template_version.status #=> String, one of ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   resp.data.environment_template_version.status_message #=> String
    #   resp.data.environment_template_version.description #=> String
    #   resp.data.environment_template_version.arn #=> String
    #   resp.data.environment_template_version.created_at #=> Time
    #   resp.data.environment_template_version.last_modified_at #=> Time
    #   resp.data.environment_template_version.schema #=> String
    #
    def get_environment_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnvironmentTemplateVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnvironmentTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnvironmentTemplateVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetEnvironmentTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnvironmentTemplateVersion,
        stubs: @stubs,
        params_class: Params::GetEnvironmentTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_environment_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detail data for a repository.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRepositoryInput}.
    #
    # @option params [String] :provider
    #   <p>The repository provider.</p>
    #
    # @option params [String] :name
    #   <p>The repository name, for example <code>myrepos/myrepo</code>.</p>
    #
    # @return [Types::GetRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository(
    #     provider: 'GITHUB', # required - accepts ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRepositoryOutput
    #   resp.data.repository #=> Types::Repository
    #   resp.data.repository.arn #=> String
    #   resp.data.repository.provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.repository.name #=> String
    #   resp.data.repository.connection_arn #=> String
    #   resp.data.repository.encryption_key #=> String
    #
    def get_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRepositoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRepository
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRepository,
        stubs: @stubs,
        params_class: Params::GetRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the sync status of a repository used for Proton template sync. For more information about template sync, see .</p>
    #          <note>
    #             <p>A repository sync status isn't tied to the Proton Repository resource (or any other Proton resource). Therefore, tags on an Proton Repository resource
    #         have no effect on this action. Specifically, you can't use these tags to control access to this action using Attribute-based access control
    #         (ABAC).</p>
    #             <p>For more information about ABAC, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/security_iam_service-with-iam.html#security_iam_service-with-iam-tags">ABAC</a> in the <i>Proton
    #           Administrator Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetRepositorySyncStatusInput}.
    #
    # @option params [String] :repository_name
    #   <p>The repository name.</p>
    #
    # @option params [String] :repository_provider
    #   <p>The repository provider.</p>
    #
    # @option params [String] :branch
    #   <p>The repository branch.</p>
    #
    # @option params [String] :sync_type
    #   <p>The repository sync type.</p>
    #
    # @return [Types::GetRepositorySyncStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_sync_status(
    #     repository_name: 'repositoryName', # required
    #     repository_provider: 'GITHUB', # required - accepts ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #     branch: 'branch', # required
    #     sync_type: 'TEMPLATE_SYNC' # required - accepts ["TEMPLATE_SYNC"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRepositorySyncStatusOutput
    #   resp.data.latest_sync #=> Types::RepositorySyncAttempt
    #   resp.data.latest_sync.started_at #=> Time
    #   resp.data.latest_sync.status #=> String, one of ["INITIATED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "QUEUED"]
    #   resp.data.latest_sync.events #=> Array<RepositorySyncEvent>
    #   resp.data.latest_sync.events[0] #=> Types::RepositorySyncEvent
    #   resp.data.latest_sync.events[0].type #=> String
    #   resp.data.latest_sync.events[0].external_id #=> String
    #   resp.data.latest_sync.events[0].time #=> Time
    #   resp.data.latest_sync.events[0].event #=> String
    #
    def get_repository_sync_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRepositorySyncStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRepositorySyncStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRepositorySyncStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetRepositorySyncStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRepositorySyncStatus,
        stubs: @stubs,
        params_class: Params::GetRepositorySyncStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_repository_sync_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detailed data for a service.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the service that you want to get the detailed data for.</p>
    #
    # @return [Types::GetServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.name #=> String
    #   resp.data.service.description #=> String
    #   resp.data.service.arn #=> String
    #   resp.data.service.template_name #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.last_modified_at #=> Time
    #   resp.data.service.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"]
    #   resp.data.service.status_message #=> String
    #   resp.data.service.spec #=> String
    #   resp.data.service.pipeline #=> Types::ServicePipeline
    #   resp.data.service.pipeline.arn #=> String
    #   resp.data.service.pipeline.created_at #=> Time
    #   resp.data.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.data.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.data.service.pipeline.template_name #=> String
    #   resp.data.service.pipeline.template_major_version #=> String
    #   resp.data.service.pipeline.template_minor_version #=> String
    #   resp.data.service.pipeline.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.service.pipeline.deployment_status_message #=> String
    #   resp.data.service.pipeline.spec #=> String
    #   resp.data.service.repository_connection_arn #=> String
    #   resp.data.service.repository_id #=> String
    #   resp.data.service.branch_name #=> String
    #
    def get_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetService
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetService,
        stubs: @stubs,
        params_class: Params::GetServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detailed data for a service instance. A service instance is an instantiation of service template and it runs in a specific environment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceInstanceInput}.
    #
    # @option params [String] :name
    #   <p>The name of a service instance that you want to get the detailed data for.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #
    # @return [Types::GetServiceInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_instance(
    #     name: 'name', # required
    #     service_name: 'serviceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceInstanceOutput
    #   resp.data.service_instance #=> Types::ServiceInstance
    #   resp.data.service_instance.name #=> String
    #   resp.data.service_instance.arn #=> String
    #   resp.data.service_instance.created_at #=> Time
    #   resp.data.service_instance.last_deployment_attempted_at #=> Time
    #   resp.data.service_instance.last_deployment_succeeded_at #=> Time
    #   resp.data.service_instance.service_name #=> String
    #   resp.data.service_instance.environment_name #=> String
    #   resp.data.service_instance.template_name #=> String
    #   resp.data.service_instance.template_major_version #=> String
    #   resp.data.service_instance.template_minor_version #=> String
    #   resp.data.service_instance.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.service_instance.deployment_status_message #=> String
    #   resp.data.service_instance.spec #=> String
    #
    def get_service_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetServiceInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceInstance,
        stubs: @stubs,
        params_class: Params::GetServiceInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detailed data for a service template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceTemplateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the service template that you want to get detailed data for.</p>
    #
    # @return [Types::GetServiceTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_template(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceTemplateOutput
    #   resp.data.service_template #=> Types::ServiceTemplate
    #   resp.data.service_template.name #=> String
    #   resp.data.service_template.arn #=> String
    #   resp.data.service_template.created_at #=> Time
    #   resp.data.service_template.last_modified_at #=> Time
    #   resp.data.service_template.display_name #=> String
    #   resp.data.service_template.description #=> String
    #   resp.data.service_template.recommended_version #=> String
    #   resp.data.service_template.encryption_key #=> String
    #   resp.data.service_template.pipeline_provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #
    def get_service_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetServiceTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceTemplate,
        stubs: @stubs,
        params_class: Params::GetServiceTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detailed data for a major or minor version of a service template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceTemplateVersionInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the service template a version of which you want to get detailed data for.</p>
    #
    # @option params [String] :major_version
    #   <p>To get service template major version detail data, include <code>major Version</code>.</p>
    #
    # @option params [String] :minor_version
    #   <p>To get service template minor version detail data, include <code>minorVersion</code>.</p>
    #
    # @return [Types::GetServiceTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_template_version(
    #     template_name: 'templateName', # required
    #     major_version: 'majorVersion', # required
    #     minor_version: 'minorVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceTemplateVersionOutput
    #   resp.data.service_template_version #=> Types::ServiceTemplateVersion
    #   resp.data.service_template_version.template_name #=> String
    #   resp.data.service_template_version.major_version #=> String
    #   resp.data.service_template_version.minor_version #=> String
    #   resp.data.service_template_version.recommended_minor_version #=> String
    #   resp.data.service_template_version.status #=> String, one of ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   resp.data.service_template_version.status_message #=> String
    #   resp.data.service_template_version.description #=> String
    #   resp.data.service_template_version.arn #=> String
    #   resp.data.service_template_version.created_at #=> Time
    #   resp.data.service_template_version.last_modified_at #=> Time
    #   resp.data.service_template_version.compatible_environment_templates #=> Array<CompatibleEnvironmentTemplate>
    #   resp.data.service_template_version.compatible_environment_templates[0] #=> Types::CompatibleEnvironmentTemplate
    #   resp.data.service_template_version.compatible_environment_templates[0].template_name #=> String
    #   resp.data.service_template_version.compatible_environment_templates[0].major_version #=> String
    #   resp.data.service_template_version.schema #=> String
    #   resp.data.service_template_version.supported_component_sources #=> Array<String>
    #   resp.data.service_template_version.supported_component_sources[0] #=> String, one of ["DIRECTLY_DEFINED"]
    #
    def get_service_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceTemplateVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceTemplateVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetServiceTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceTemplateVersion,
        stubs: @stubs,
        params_class: Params::GetServiceTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detail data for a template sync configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTemplateSyncConfigInput}.
    #
    # @option params [String] :template_name
    #   <p>The template name.</p>
    #
    # @option params [String] :template_type
    #   <p>The template type.</p>
    #
    # @return [Types::GetTemplateSyncConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_sync_config(
    #     template_name: 'templateName', # required
    #     template_type: 'ENVIRONMENT' # required - accepts ["ENVIRONMENT", "SERVICE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTemplateSyncConfigOutput
    #   resp.data.template_sync_config #=> Types::TemplateSyncConfig
    #   resp.data.template_sync_config.template_name #=> String
    #   resp.data.template_sync_config.template_type #=> String, one of ["ENVIRONMENT", "SERVICE"]
    #   resp.data.template_sync_config.repository_provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.template_sync_config.repository_name #=> String
    #   resp.data.template_sync_config.branch #=> String
    #   resp.data.template_sync_config.subdirectory #=> String
    #
    def get_template_sync_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTemplateSyncConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTemplateSyncConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTemplateSyncConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetTemplateSyncConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTemplateSyncConfig,
        stubs: @stubs,
        params_class: Params::GetTemplateSyncConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_template_sync_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the status of a template sync.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTemplateSyncStatusInput}.
    #
    # @option params [String] :template_name
    #   <p>The template name.</p>
    #
    # @option params [String] :template_type
    #   <p>The template type.</p>
    #
    # @option params [String] :template_version
    #   <p>The template major version.</p>
    #
    # @return [Types::GetTemplateSyncStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_sync_status(
    #     template_name: 'templateName', # required
    #     template_type: 'ENVIRONMENT', # required - accepts ["ENVIRONMENT", "SERVICE"]
    #     template_version: 'templateVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTemplateSyncStatusOutput
    #   resp.data.latest_sync #=> Types::ResourceSyncAttempt
    #   resp.data.latest_sync.initial_revision #=> Types::Revision
    #   resp.data.latest_sync.initial_revision.repository_name #=> String
    #   resp.data.latest_sync.initial_revision.repository_provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.latest_sync.initial_revision.sha #=> String
    #   resp.data.latest_sync.initial_revision.directory #=> String
    #   resp.data.latest_sync.initial_revision.branch #=> String
    #   resp.data.latest_sync.target_revision #=> Types::Revision
    #   resp.data.latest_sync.target #=> String
    #   resp.data.latest_sync.started_at #=> Time
    #   resp.data.latest_sync.status #=> String, one of ["INITIATED", "IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.latest_sync.events #=> Array<ResourceSyncEvent>
    #   resp.data.latest_sync.events[0] #=> Types::ResourceSyncEvent
    #   resp.data.latest_sync.events[0].type #=> String
    #   resp.data.latest_sync.events[0].external_id #=> String
    #   resp.data.latest_sync.events[0].time #=> Time
    #   resp.data.latest_sync.events[0].event #=> String
    #   resp.data.latest_successful_sync #=> Types::ResourceSyncAttempt
    #   resp.data.desired_state #=> Types::Revision
    #
    def get_template_sync_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTemplateSyncStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTemplateSyncStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTemplateSyncStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetTemplateSyncStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTemplateSyncStatus,
        stubs: @stubs,
        params_class: Params::GetTemplateSyncStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_template_sync_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a list of component Infrastructure as Code (IaC) outputs.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListComponentOutputsInput}.
    #
    # @option params [String] :component_name
    #   <p>The name of the component whose outputs you want.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>
    #
    # @return [Types::ListComponentOutputsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_outputs(
    #     component_name: 'componentName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComponentOutputsOutput
    #   resp.data.next_token #=> String
    #   resp.data.outputs #=> Array<Output>
    #   resp.data.outputs[0] #=> Types::Output
    #   resp.data.outputs[0].key #=> String
    #   resp.data.outputs[0].value_string #=> String
    #
    def list_component_outputs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComponentOutputsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComponentOutputsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComponentOutputs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListComponentOutputs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComponentOutputs,
        stubs: @stubs,
        params_class: Params::ListComponentOutputsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_component_outputs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List provisioned resources for a component with details.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListComponentProvisionedResourcesInput}.
    #
    # @option params [String] :component_name
    #   <p>The name of the component whose provisioned resources you want.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned resources
    #         that was previously requested.</p>
    #
    # @return [Types::ListComponentProvisionedResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_provisioned_resources(
    #     component_name: 'componentName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComponentProvisionedResourcesOutput
    #   resp.data.next_token #=> String
    #   resp.data.provisioned_resources #=> Array<ProvisionedResource>
    #   resp.data.provisioned_resources[0] #=> Types::ProvisionedResource
    #   resp.data.provisioned_resources[0].name #=> String
    #   resp.data.provisioned_resources[0].identifier #=> String
    #   resp.data.provisioned_resources[0].provisioning_engine #=> String, one of ["CLOUDFORMATION", "TERRAFORM"]
    #
    def list_component_provisioned_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComponentProvisionedResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComponentProvisionedResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComponentProvisionedResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListComponentProvisionedResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComponentProvisionedResources,
        stubs: @stubs,
        params_class: Params::ListComponentProvisionedResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_component_provisioned_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List components with summary data. You can filter the result list by environment, service, or a single service instance.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListComponentsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next component in the array of components, after the list of components that was previously
    #         requested.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of an environment for result list filtering. Proton returns components associated with the environment or attached to service instances
    #         running in it.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of a service for result list filtering. Proton returns components attached to service instances of the service.</p>
    #
    # @option params [String] :service_instance_name
    #   <p>The name of a service instance for result list filtering. Proton returns the component attached to the service instance, if any.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of components to list.</p>
    #
    # @return [Types::ListComponentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components(
    #     next_token: 'nextToken',
    #     environment_name: 'environmentName',
    #     service_name: 'serviceName',
    #     service_instance_name: 'serviceInstanceName',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComponentsOutput
    #   resp.data.next_token #=> String
    #   resp.data.components #=> Array<ComponentSummary>
    #   resp.data.components[0] #=> Types::ComponentSummary
    #   resp.data.components[0].name #=> String
    #   resp.data.components[0].arn #=> String
    #   resp.data.components[0].environment_name #=> String
    #   resp.data.components[0].service_name #=> String
    #   resp.data.components[0].service_instance_name #=> String
    #   resp.data.components[0].created_at #=> Time
    #   resp.data.components[0].last_modified_at #=> Time
    #   resp.data.components[0].last_deployment_attempted_at #=> Time
    #   resp.data.components[0].last_deployment_succeeded_at #=> Time
    #   resp.data.components[0].deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.components[0].deployment_status_message #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>View a list of environment account connections.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton Administrator guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentAccountConnectionsInput}.
    #
    # @option params [String] :requested_by
    #   <p>The type of account making the <code>ListEnvironmentAccountConnections</code> request.</p>
    #
    # @option params [String] :environment_name
    #   <p>The environment name that's associated with each listed environment account connection.</p>
    #
    # @option params [Array<String>] :statuses
    #   <p>The status details for each listed environment account connection.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next environment account connection in the array of environment account connections, after the list of
    #         environment account connections that was previously requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of environment account connections to list.</p>
    #
    # @return [Types::ListEnvironmentAccountConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_account_connections(
    #     requested_by: 'MANAGEMENT_ACCOUNT', # required - accepts ["MANAGEMENT_ACCOUNT", "ENVIRONMENT_ACCOUNT"]
    #     environment_name: 'environmentName',
    #     statuses: [
    #       'PENDING' # accepts ["PENDING", "CONNECTED", "REJECTED"]
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentAccountConnectionsOutput
    #   resp.data.environment_account_connections #=> Array<EnvironmentAccountConnectionSummary>
    #   resp.data.environment_account_connections[0] #=> Types::EnvironmentAccountConnectionSummary
    #   resp.data.environment_account_connections[0].id #=> String
    #   resp.data.environment_account_connections[0].arn #=> String
    #   resp.data.environment_account_connections[0].management_account_id #=> String
    #   resp.data.environment_account_connections[0].environment_account_id #=> String
    #   resp.data.environment_account_connections[0].role_arn #=> String
    #   resp.data.environment_account_connections[0].environment_name #=> String
    #   resp.data.environment_account_connections[0].requested_at #=> Time
    #   resp.data.environment_account_connections[0].last_modified_at #=> Time
    #   resp.data.environment_account_connections[0].status #=> String, one of ["PENDING", "CONNECTED", "REJECTED"]
    #   resp.data.environment_account_connections[0].component_role_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_environment_account_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentAccountConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentAccountConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironmentAccountConnections
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListEnvironmentAccountConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironmentAccountConnections,
        stubs: @stubs,
        params_class: Params::ListEnvironmentAccountConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environment_account_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the infrastructure as code outputs for your environment.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentOutputsInput}.
    #
    # @option params [String] :environment_name
    #   <p>The environment name.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next environment output in the array of environment outputs, after the list of environment outputs that was
    #         previously requested.</p>
    #
    # @return [Types::ListEnvironmentOutputsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_outputs(
    #     environment_name: 'environmentName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentOutputsOutput
    #   resp.data.next_token #=> String
    #   resp.data.outputs #=> Array<Output>
    #   resp.data.outputs[0] #=> Types::Output
    #   resp.data.outputs[0].key #=> String
    #   resp.data.outputs[0].value_string #=> String
    #
    def list_environment_outputs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentOutputsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentOutputsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironmentOutputs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListEnvironmentOutputs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironmentOutputs,
        stubs: @stubs,
        params_class: Params::ListEnvironmentOutputsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environment_outputs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the provisioned resources for your environment.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentProvisionedResourcesInput}.
    #
    # @option params [String] :environment_name
    #   <p>The environment name.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next environment provisioned resource in the array of environment provisioned resources, after the list of
    #         environment provisioned resources that was previously requested.</p>
    #
    # @return [Types::ListEnvironmentProvisionedResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_provisioned_resources(
    #     environment_name: 'environmentName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentProvisionedResourcesOutput
    #   resp.data.next_token #=> String
    #   resp.data.provisioned_resources #=> Array<ProvisionedResource>
    #   resp.data.provisioned_resources[0] #=> Types::ProvisionedResource
    #   resp.data.provisioned_resources[0].name #=> String
    #   resp.data.provisioned_resources[0].identifier #=> String
    #   resp.data.provisioned_resources[0].provisioning_engine #=> String, one of ["CLOUDFORMATION", "TERRAFORM"]
    #
    def list_environment_provisioned_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentProvisionedResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentProvisionedResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironmentProvisionedResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListEnvironmentProvisionedResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironmentProvisionedResources,
        stubs: @stubs,
        params_class: Params::ListEnvironmentProvisionedResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environment_provisioned_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List major or minor versions of an environment template with detail data.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentTemplateVersionsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of major or minor versions of an environment template, after the
    #         list of major or minor versions that was previously requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of major or minor versions of an environment template to list.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the environment template.</p>
    #
    # @option params [String] :major_version
    #   <p>To view a list of minor of versions under a major version of an environment template, include <code>major Version</code>.</p>
    #            <p>To view a list of major versions of an environment template, <i>exclude</i>
    #               <code>major Version</code>.</p>
    #
    # @return [Types::ListEnvironmentTemplateVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_template_versions(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     template_name: 'templateName', # required
    #     major_version: 'majorVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentTemplateVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.template_versions #=> Array<EnvironmentTemplateVersionSummary>
    #   resp.data.template_versions[0] #=> Types::EnvironmentTemplateVersionSummary
    #   resp.data.template_versions[0].template_name #=> String
    #   resp.data.template_versions[0].major_version #=> String
    #   resp.data.template_versions[0].minor_version #=> String
    #   resp.data.template_versions[0].recommended_minor_version #=> String
    #   resp.data.template_versions[0].status #=> String, one of ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   resp.data.template_versions[0].status_message #=> String
    #   resp.data.template_versions[0].description #=> String
    #   resp.data.template_versions[0].arn #=> String
    #   resp.data.template_versions[0].created_at #=> Time
    #   resp.data.template_versions[0].last_modified_at #=> Time
    #
    def list_environment_template_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentTemplateVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentTemplateVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironmentTemplateVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListEnvironmentTemplateVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironmentTemplateVersions,
        stubs: @stubs,
        params_class: Params::ListEnvironmentTemplateVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environment_template_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List environment templates.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next environment template in the array of environment templates, after the list of environment templates
    #         that was previously requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of environment templates to list.</p>
    #
    # @return [Types::ListEnvironmentTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_templates(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentTemplatesOutput
    #   resp.data.next_token #=> String
    #   resp.data.templates #=> Array<EnvironmentTemplateSummary>
    #   resp.data.templates[0] #=> Types::EnvironmentTemplateSummary
    #   resp.data.templates[0].name #=> String
    #   resp.data.templates[0].arn #=> String
    #   resp.data.templates[0].created_at #=> Time
    #   resp.data.templates[0].last_modified_at #=> Time
    #   resp.data.templates[0].display_name #=> String
    #   resp.data.templates[0].description #=> String
    #   resp.data.templates[0].recommended_version #=> String
    #   resp.data.templates[0].provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #
    def list_environment_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironmentTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListEnvironmentTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironmentTemplates,
        stubs: @stubs,
        params_class: Params::ListEnvironmentTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environment_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List environments with detail data summaries.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next environment in the array of environments, after the list of environments that was previously
    #         requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of environments to list.</p>
    #
    # @option params [Array<EnvironmentTemplateFilter>] :environment_templates
    #   <p>An array of the versions of the environment template.</p>
    #
    # @return [Types::ListEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     environment_templates: [
    #       {
    #         template_name: 'templateName', # required
    #         major_version: 'majorVersion' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentsOutput
    #   resp.data.next_token #=> String
    #   resp.data.environments #=> Array<EnvironmentSummary>
    #   resp.data.environments[0] #=> Types::EnvironmentSummary
    #   resp.data.environments[0].name #=> String
    #   resp.data.environments[0].description #=> String
    #   resp.data.environments[0].created_at #=> Time
    #   resp.data.environments[0].last_deployment_attempted_at #=> Time
    #   resp.data.environments[0].last_deployment_succeeded_at #=> Time
    #   resp.data.environments[0].arn #=> String
    #   resp.data.environments[0].template_name #=> String
    #   resp.data.environments[0].template_major_version #=> String
    #   resp.data.environments[0].template_minor_version #=> String
    #   resp.data.environments[0].deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.environments[0].deployment_status_message #=> String
    #   resp.data.environments[0].proton_service_role_arn #=> String
    #   resp.data.environments[0].environment_account_connection_id #=> String
    #   resp.data.environments[0].environment_account_id #=> String
    #   resp.data.environments[0].provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #   resp.data.environments[0].component_role_arn #=> String
    #
    def list_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironments,
        stubs: @stubs,
        params_class: Params::ListEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List repositories with detail data.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRepositoriesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next repository in the array of repositories, after the list of repositories previously requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of repositories to list.</p>
    #
    # @return [Types::ListRepositoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repositories(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRepositoriesOutput
    #   resp.data.next_token #=> String
    #   resp.data.repositories #=> Array<RepositorySummary>
    #   resp.data.repositories[0] #=> Types::RepositorySummary
    #   resp.data.repositories[0].arn #=> String
    #   resp.data.repositories[0].provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.repositories[0].name #=> String
    #
    def list_repositories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRepositoriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRepositoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRepositories
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListRepositories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRepositories,
        stubs: @stubs,
        params_class: Params::ListRepositoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_repositories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List repository sync definitions with detail data.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRepositorySyncDefinitionsInput}.
    #
    # @option params [String] :repository_name
    #   <p>The repository name.</p>
    #
    # @option params [String] :repository_provider
    #   <p>The repository provider.</p>
    #
    # @option params [String] :sync_type
    #   <p>The sync type. The only supported value is <code>TEMPLATE_SYNC</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next repository sync definition in the array of repository sync definitions, after the list of repository
    #         sync definitions previously requested.</p>
    #
    # @return [Types::ListRepositorySyncDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repository_sync_definitions(
    #     repository_name: 'repositoryName', # required
    #     repository_provider: 'GITHUB', # required - accepts ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #     sync_type: 'TEMPLATE_SYNC', # required - accepts ["TEMPLATE_SYNC"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRepositorySyncDefinitionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.sync_definitions #=> Array<RepositorySyncDefinition>
    #   resp.data.sync_definitions[0] #=> Types::RepositorySyncDefinition
    #   resp.data.sync_definitions[0].target #=> String
    #   resp.data.sync_definitions[0].parent #=> String
    #   resp.data.sync_definitions[0].branch #=> String
    #   resp.data.sync_definitions[0].directory #=> String
    #
    def list_repository_sync_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRepositorySyncDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRepositorySyncDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRepositorySyncDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListRepositorySyncDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRepositorySyncDefinitions,
        stubs: @stubs,
        params_class: Params::ListRepositorySyncDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_repository_sync_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a list service of instance Infrastructure as Code (IaC) outputs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceInstanceOutputsInput}.
    #
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance whose outputs you want.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated to.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>
    #
    # @return [Types::ListServiceInstanceOutputsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_instance_outputs(
    #     service_instance_name: 'serviceInstanceName', # required
    #     service_name: 'serviceName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceInstanceOutputsOutput
    #   resp.data.next_token #=> String
    #   resp.data.outputs #=> Array<Output>
    #   resp.data.outputs[0] #=> Types::Output
    #   resp.data.outputs[0].key #=> String
    #   resp.data.outputs[0].value_string #=> String
    #
    def list_service_instance_outputs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceInstanceOutputsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceInstanceOutputsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceInstanceOutputs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListServiceInstanceOutputs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceInstanceOutputs,
        stubs: @stubs,
        params_class: Params::ListServiceInstanceOutputsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_instance_outputs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List provisioned resources for a service instance with details.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceInstanceProvisionedResourcesInput}.
    #
    # @option params [String] :service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated to.</p>
    #
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance whose provisioned resources you want.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned resources
    #         that was previously requested.</p>
    #
    # @return [Types::ListServiceInstanceProvisionedResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_instance_provisioned_resources(
    #     service_name: 'serviceName', # required
    #     service_instance_name: 'serviceInstanceName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceInstanceProvisionedResourcesOutput
    #   resp.data.next_token #=> String
    #   resp.data.provisioned_resources #=> Array<ProvisionedResource>
    #   resp.data.provisioned_resources[0] #=> Types::ProvisionedResource
    #   resp.data.provisioned_resources[0].name #=> String
    #   resp.data.provisioned_resources[0].identifier #=> String
    #   resp.data.provisioned_resources[0].provisioning_engine #=> String, one of ["CLOUDFORMATION", "TERRAFORM"]
    #
    def list_service_instance_provisioned_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceInstanceProvisionedResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceInstanceProvisionedResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceInstanceProvisionedResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListServiceInstanceProvisionedResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceInstanceProvisionedResources,
        stubs: @stubs,
        params_class: Params::ListServiceInstanceProvisionedResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_instance_provisioned_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List service instances with summary data.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceInstancesInput}.
    #
    # @option params [String] :service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next service in the array of service instances, after the list of service instances that was previously
    #         requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of service instances to list.</p>
    #
    # @return [Types::ListServiceInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_instances(
    #     service_name: 'serviceName',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceInstancesOutput
    #   resp.data.next_token #=> String
    #   resp.data.service_instances #=> Array<ServiceInstanceSummary>
    #   resp.data.service_instances[0] #=> Types::ServiceInstanceSummary
    #   resp.data.service_instances[0].name #=> String
    #   resp.data.service_instances[0].arn #=> String
    #   resp.data.service_instances[0].created_at #=> Time
    #   resp.data.service_instances[0].last_deployment_attempted_at #=> Time
    #   resp.data.service_instances[0].last_deployment_succeeded_at #=> Time
    #   resp.data.service_instances[0].service_name #=> String
    #   resp.data.service_instances[0].environment_name #=> String
    #   resp.data.service_instances[0].template_name #=> String
    #   resp.data.service_instances[0].template_major_version #=> String
    #   resp.data.service_instances[0].template_minor_version #=> String
    #   resp.data.service_instances[0].deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.service_instances[0].deployment_status_message #=> String
    #
    def list_service_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListServiceInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceInstances,
        stubs: @stubs,
        params_class: Params::ListServiceInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a list of service pipeline Infrastructure as Code (IaC) outputs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServicePipelineOutputsInput}.
    #
    # @option params [String] :service_name
    #   <p>The name of the service whose pipeline's outputs you want.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>
    #
    # @return [Types::ListServicePipelineOutputsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_pipeline_outputs(
    #     service_name: 'serviceName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServicePipelineOutputsOutput
    #   resp.data.next_token #=> String
    #   resp.data.outputs #=> Array<Output>
    #   resp.data.outputs[0] #=> Types::Output
    #   resp.data.outputs[0].key #=> String
    #   resp.data.outputs[0].value_string #=> String
    #
    def list_service_pipeline_outputs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServicePipelineOutputsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServicePipelineOutputsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServicePipelineOutputs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListServicePipelineOutputs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServicePipelineOutputs,
        stubs: @stubs,
        params_class: Params::ListServicePipelineOutputsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_pipeline_outputs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List provisioned resources for a service and pipeline with details.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServicePipelineProvisionedResourcesInput}.
    #
    # @option params [String] :service_name
    #   <p>The name of the service whose pipeline's provisioned resources you want.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned resources
    #         that was previously requested.</p>
    #
    # @return [Types::ListServicePipelineProvisionedResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_pipeline_provisioned_resources(
    #     service_name: 'serviceName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServicePipelineProvisionedResourcesOutput
    #   resp.data.next_token #=> String
    #   resp.data.provisioned_resources #=> Array<ProvisionedResource>
    #   resp.data.provisioned_resources[0] #=> Types::ProvisionedResource
    #   resp.data.provisioned_resources[0].name #=> String
    #   resp.data.provisioned_resources[0].identifier #=> String
    #   resp.data.provisioned_resources[0].provisioning_engine #=> String, one of ["CLOUDFORMATION", "TERRAFORM"]
    #
    def list_service_pipeline_provisioned_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServicePipelineProvisionedResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServicePipelineProvisionedResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServicePipelineProvisionedResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListServicePipelineProvisionedResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServicePipelineProvisionedResources,
        stubs: @stubs,
        params_class: Params::ListServicePipelineProvisionedResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_pipeline_provisioned_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List major or minor versions of a service template with detail data.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceTemplateVersionsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of major or minor versions of a service template, after the list
    #         of major or minor versions that was previously requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of major or minor versions of a service template to list.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the service template.</p>
    #
    # @option params [String] :major_version
    #   <p>To view a list of minor of versions under a major version of a service template, include <code>major Version</code>.</p>
    #            <p>To view a list of major versions of a service template, <i>exclude</i>
    #               <code>major Version</code>.</p>
    #
    # @return [Types::ListServiceTemplateVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_template_versions(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     template_name: 'templateName', # required
    #     major_version: 'majorVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceTemplateVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.template_versions #=> Array<ServiceTemplateVersionSummary>
    #   resp.data.template_versions[0] #=> Types::ServiceTemplateVersionSummary
    #   resp.data.template_versions[0].template_name #=> String
    #   resp.data.template_versions[0].major_version #=> String
    #   resp.data.template_versions[0].minor_version #=> String
    #   resp.data.template_versions[0].recommended_minor_version #=> String
    #   resp.data.template_versions[0].status #=> String, one of ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   resp.data.template_versions[0].status_message #=> String
    #   resp.data.template_versions[0].description #=> String
    #   resp.data.template_versions[0].arn #=> String
    #   resp.data.template_versions[0].created_at #=> Time
    #   resp.data.template_versions[0].last_modified_at #=> Time
    #
    def list_service_template_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceTemplateVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceTemplateVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceTemplateVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListServiceTemplateVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceTemplateVersions,
        stubs: @stubs,
        params_class: Params::ListServiceTemplateVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_template_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List service templates with detail data.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next service template in the array of service templates, after the list of service templates previously
    #         requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of service templates to list.</p>
    #
    # @return [Types::ListServiceTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_templates(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceTemplatesOutput
    #   resp.data.next_token #=> String
    #   resp.data.templates #=> Array<ServiceTemplateSummary>
    #   resp.data.templates[0] #=> Types::ServiceTemplateSummary
    #   resp.data.templates[0].name #=> String
    #   resp.data.templates[0].arn #=> String
    #   resp.data.templates[0].created_at #=> Time
    #   resp.data.templates[0].last_modified_at #=> Time
    #   resp.data.templates[0].display_name #=> String
    #   resp.data.templates[0].description #=> String
    #   resp.data.templates[0].recommended_version #=> String
    #   resp.data.templates[0].pipeline_provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #
    def list_service_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListServiceTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceTemplates,
        stubs: @stubs,
        params_class: Params::ListServiceTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List services with summaries of detail data.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServicesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next service in the array of services, after the list of services that was previously requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of services to list.</p>
    #
    # @return [Types::ListServicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServicesOutput
    #   resp.data.next_token #=> String
    #   resp.data.services #=> Array<ServiceSummary>
    #   resp.data.services[0] #=> Types::ServiceSummary
    #   resp.data.services[0].name #=> String
    #   resp.data.services[0].description #=> String
    #   resp.data.services[0].arn #=> String
    #   resp.data.services[0].template_name #=> String
    #   resp.data.services[0].created_at #=> Time
    #   resp.data.services[0].last_modified_at #=> Time
    #   resp.data.services[0].status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"]
    #   resp.data.services[0].status_message #=> String
    #
    def list_services(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListServices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServices,
        stubs: @stubs,
        params_class: Params::ListServicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_services
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List tags for a resource. For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for the listed tags.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next resource tag in the array of resource tags, after the list of resource tags that was previously
    #         requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags to list.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Notify Proton of status changes to a provisioned resource when you use self-managed provisioning.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-works-prov-methods.html#ag-works-prov-methods-self">Self-managed provisioning</a> in the <i>Proton Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::NotifyResourceDeploymentStatusChangeInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The provisioned resource Amazon Resource Name (ARN).</p>
    #
    # @option params [String] :status
    #   <p>The status of your provisioned resource.</p>
    #
    # @option params [Array<Output>] :outputs
    #   <p>The provisioned resource state change detail data that's returned by Proton.</p>
    #
    # @option params [String] :deployment_id
    #   <p>The deployment ID for your provisioned resource.</p>
    #
    # @option params [String] :status_message
    #   <p>The deployment status message for your provisioned resource.</p>
    #
    # @return [Types::NotifyResourceDeploymentStatusChangeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_resource_deployment_status_change(
    #     resource_arn: 'resourceArn', # required
    #     status: 'IN_PROGRESS', # required - accepts ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #     outputs: [
    #       {
    #         key: 'key',
    #         value_string: 'valueString'
    #       }
    #     ],
    #     deployment_id: 'deploymentId',
    #     status_message: 'statusMessage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::NotifyResourceDeploymentStatusChangeOutput
    #
    def notify_resource_deployment_status_change(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::NotifyResourceDeploymentStatusChangeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::NotifyResourceDeploymentStatusChangeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::NotifyResourceDeploymentStatusChange
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::NotifyResourceDeploymentStatusChange
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::NotifyResourceDeploymentStatusChange,
        stubs: @stubs,
        params_class: Params::NotifyResourceDeploymentStatusChangeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :notify_resource_deployment_status_change
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>In a management account, reject an environment account connection from another environment account.</p>
    #          <p>After you reject an environment account connection request, you <i>can't</i> accept or use the rejected environment account
    #       connection.</p>
    #          <p>You <i>can’t</i> reject an environment account connection that's connected to an environment.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton Administrator guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectEnvironmentAccountConnectionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the environment account connection to reject.</p>
    #
    # @return [Types::RejectEnvironmentAccountConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_environment_account_connection(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectEnvironmentAccountConnectionOutput
    #   resp.data.environment_account_connection #=> Types::EnvironmentAccountConnection
    #   resp.data.environment_account_connection.id #=> String
    #   resp.data.environment_account_connection.arn #=> String
    #   resp.data.environment_account_connection.management_account_id #=> String
    #   resp.data.environment_account_connection.environment_account_id #=> String
    #   resp.data.environment_account_connection.role_arn #=> String
    #   resp.data.environment_account_connection.environment_name #=> String
    #   resp.data.environment_account_connection.requested_at #=> Time
    #   resp.data.environment_account_connection.last_modified_at #=> Time
    #   resp.data.environment_account_connection.status #=> String, one of ["PENDING", "CONNECTED", "REJECTED"]
    #   resp.data.environment_account_connection.component_role_arn #=> String
    #
    def reject_environment_account_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectEnvironmentAccountConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectEnvironmentAccountConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectEnvironmentAccountConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::RejectEnvironmentAccountConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectEnvironmentAccountConnection,
        stubs: @stubs,
        params_class: Params::RejectEnvironmentAccountConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_environment_account_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tag a resource. A tag is a key-value pair of metadata that you associate with an Proton resource.</p>
    #          <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton resource to apply customer tags to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of customer tags to apply to the Proton resource.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Remove a customer tag from a resource. A tag is a key-value pair of metadata associated with an Proton resource.</p>
    #          <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove customer tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of customer tag keys that indicate the customer tags to be removed from the resource.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Update the Proton service pipeline role or repository settings.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccountSettingsInput}.
    #
    # @option params [String] :pipeline_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Assumed by Proton for Amazon Web Services-managed provisioning, and by
    #         customer-owned automation for self-managed provisioning.</p>
    #
    # @option params [RepositoryBranchInput] :pipeline_provisioning_repository
    #   <p>A repository for pipeline provisioning. Specify it if you have environments configured for self-managed provisioning with services that include
    #         pipelines.</p>
    #
    # @return [Types::UpdateAccountSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings(
    #     pipeline_service_role_arn: 'pipelineServiceRoleArn',
    #     pipeline_provisioning_repository: {
    #       provider: 'GITHUB', # required - accepts ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #       name: 'name', # required
    #       branch: 'branch' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccountSettingsOutput
    #   resp.data.account_settings #=> Types::AccountSettings
    #   resp.data.account_settings.pipeline_service_role_arn #=> String
    #   resp.data.account_settings.pipeline_provisioning_repository #=> Types::RepositoryBranch
    #   resp.data.account_settings.pipeline_provisioning_repository.arn #=> String
    #   resp.data.account_settings.pipeline_provisioning_repository.provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.account_settings.pipeline_provisioning_repository.name #=> String
    #   resp.data.account_settings.pipeline_provisioning_repository.branch #=> String
    #
    def update_account_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccountSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccountSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccountSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateAccountSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccountSettings,
        stubs: @stubs,
        params_class: Params::UpdateAccountSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_account_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a component.</p>
    #          <p>There are a few modes for updating a component. The <code>deploymentType</code> field defines the mode.</p>
    #          <note>
    #             <p>You can't update a component while its deployment status, or the deployment status of a service instance attached to it, is
    #         <code>IN_PROGRESS</code>.</p>
    #          </note>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateComponentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the component to update.</p>
    #
    # @option params [String] :deployment_type
    #   <p>The deployment type. It defines the mode for updating a component, as follows:</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated. You can only specify
    #                 <code>description</code> in this mode.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the component is deployed and updated with the new <code>serviceSpec</code>, <code>templateSource</code>, and/or <code>type</code>
    #               that you provide. Only requested parameters are updated.</p>
    #               </dd>
    #            </dl>
    #
    # @option params [String] :description
    #   <p>An optional customer-provided description of the component.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. Don't specify to keep the component's current service instance
    #         attachment. Specify an empty string to detach the component from the service instance it's attached to. Specify non-empty values for both
    #           <code>serviceInstanceName</code> and <code>serviceName</code> or for neither of them.</p>
    #
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance that you want to attach this component to. Don't specify to keep the component's current service instance attachment.
    #         Specify an empty string to detach the component from the service instance it's attached to. Specify non-empty values for both
    #           <code>serviceInstanceName</code> and <code>serviceName</code> or for neither of them.</p>
    #
    # @option params [String] :service_spec
    #   <p>The service spec that you want the component to use to access service inputs. Set this only when the component is attached to a service
    #         instance.</p>
    #
    # @option params [String] :template_file
    #   <p>A path to the Infrastructure as Code (IaC) file describing infrastructure that a custom component provisions.</p>
    #            <note>
    #               <p>Components support a single IaC file, even if you use Terraform as your template language.</p>
    #            </note>
    #
    # @return [Types::UpdateComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_component(
    #     name: 'name', # required
    #     deployment_type: 'NONE', # required - accepts ["NONE", "CURRENT_VERSION"]
    #     description: 'description',
    #     service_name: 'serviceName',
    #     service_instance_name: 'serviceInstanceName',
    #     service_spec: 'serviceSpec',
    #     template_file: 'templateFile'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateComponentOutput
    #   resp.data.component #=> Types::Component
    #   resp.data.component.name #=> String
    #   resp.data.component.description #=> String
    #   resp.data.component.arn #=> String
    #   resp.data.component.environment_name #=> String
    #   resp.data.component.service_name #=> String
    #   resp.data.component.service_instance_name #=> String
    #   resp.data.component.created_at #=> Time
    #   resp.data.component.last_modified_at #=> Time
    #   resp.data.component.last_deployment_attempted_at #=> Time
    #   resp.data.component.last_deployment_succeeded_at #=> Time
    #   resp.data.component.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.component.deployment_status_message #=> String
    #   resp.data.component.service_spec #=> String
    #
    def update_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateComponent,
        stubs: @stubs,
        params_class: Params::UpdateComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update an environment.</p>
    #          <p>If the environment is associated with an environment account connection, <i>don't</i> update or include the
    #         <code>protonServiceRoleArn</code> and <code>provisioningRepository</code> parameter to update or connect to an environment account connection.</p>
    #          <p>You can only update to a new environment account connection if that connection was created in the same environment account that the current
    #       environment account connection was created in. The account connection must also be associated with the current environment.</p>
    #          <p>If the environment <i>isn't</i> associated with an environment account connection, <i>don't</i> update or include the
    #         <code>environmentAccountConnectionId</code> parameter. You <i>can't</i> update or connect the environment to an environment account
    #       connection if it <i>isn't</i> already associated with an environment connection.</p>
    #          <p>You can update either the <code>environmentAccountConnectionId</code> or <code>protonServiceRoleArn</code> parameter and value. You can’t update
    #       both.</p>
    #          <p>If the environment was configured for Amazon Web Services-managed provisioning, omit the <code>provisioningRepository</code> parameter.</p>
    #          <p>If the environment was configured for self-managed provisioning, specify the <code>provisioningRepository</code> parameter and omit the
    #         <code>protonServiceRoleArn</code> and <code>environmentAccountConnectionId</code> parameters.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-environments.html">Environments</a> and <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-works-prov-methods.html">Provisioning methods</a> in the <i>Proton Administrator
    #         Guide</i>.</p>
    #          <p>There are four modes for updating an environment. The <code>deploymentType</code> field defines the mode.</p>
    #          <dl>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>NONE</code>
    #                </p>
    #                <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>CURRENT_VERSION</code>
    #                </p>
    #                <p>In this mode, the environment is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #               <i>Don’t</i> include minor or major version parameters when you use this <code>deployment-type</code>.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>MINOR_VERSION</code>
    #                </p>
    #                <p>In this mode, the environment is deployed and updated with the published, recommended (latest) minor version of the current major version in
    #             use, by default. You can also specify a different minor version of the current major version in use.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>MAJOR_VERSION</code>
    #                </p>
    #                <p>In this mode, the environment is deployed and updated with the published, recommended (latest) major and minor version of the current template,
    #             by default. You can also specify a different major version that's higher than the major version in use and a minor version.</p>
    #             </dd>
    #          </dl>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnvironmentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the environment to update.</p>
    #
    # @option params [String] :description
    #   <p>A description of the environment update.</p>
    #
    # @option params [String] :spec
    #   <p>The formatted specification that defines the update.</p>
    #
    # @option params [String] :template_major_version
    #   <p>The major version of the environment to update.</p>
    #
    # @option params [String] :template_minor_version
    #   <p>The minor version of the environment to update.</p>
    #
    # @option params [String] :proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make API calls to other services your behalf.</p>
    #
    # @option params [String] :deployment_type
    #   <p>There are four modes for updating an environment. The <code>deploymentType</code> field defines the mode.</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #                 <i>Don’t</i> include major or minor version parameters when you use this <code>deployment-type</code>.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the published, recommended (latest) minor version of the current major version in
    #               use, by default. You can also specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the published, recommended (latest) major and minor version of the current template,
    #               by default. You can also specify a different major version that is higher than the major version in use and a minor version (optional).</p>
    #               </dd>
    #            </dl>
    #
    # @option params [String] :environment_account_connection_id
    #   <p>The ID of the environment account connection.</p>
    #            <p>You can only update to a new environment account connection if it was created in the same environment account that the current environment account
    #         connection was created in and is associated with the current environment.</p>
    #
    # @option params [RepositoryBranchInput] :provisioning_repository
    #   <p>The infrastructure repository that you use to host your rendered infrastructure templates for self-managed provisioning.</p>
    #
    # @option params [String] :component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    # @return [Types::UpdateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment(
    #     name: 'name', # required
    #     description: 'description',
    #     spec: 'spec',
    #     template_major_version: 'templateMajorVersion',
    #     template_minor_version: 'templateMinorVersion',
    #     proton_service_role_arn: 'protonServiceRoleArn',
    #     deployment_type: 'NONE', # required - accepts ["NONE", "CURRENT_VERSION", "MINOR_VERSION", "MAJOR_VERSION"]
    #     environment_account_connection_id: 'environmentAccountConnectionId',
    #     provisioning_repository: {
    #       provider: 'GITHUB', # required - accepts ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #       name: 'name', # required
    #       branch: 'branch' # required
    #     },
    #     component_role_arn: 'componentRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnvironmentOutput
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.name #=> String
    #   resp.data.environment.description #=> String
    #   resp.data.environment.created_at #=> Time
    #   resp.data.environment.last_deployment_attempted_at #=> Time
    #   resp.data.environment.last_deployment_succeeded_at #=> Time
    #   resp.data.environment.arn #=> String
    #   resp.data.environment.template_name #=> String
    #   resp.data.environment.template_major_version #=> String
    #   resp.data.environment.template_minor_version #=> String
    #   resp.data.environment.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.environment.deployment_status_message #=> String
    #   resp.data.environment.proton_service_role_arn #=> String
    #   resp.data.environment.environment_account_connection_id #=> String
    #   resp.data.environment.environment_account_id #=> String
    #   resp.data.environment.spec #=> String
    #   resp.data.environment.provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #   resp.data.environment.provisioning_repository #=> Types::RepositoryBranch
    #   resp.data.environment.provisioning_repository.arn #=> String
    #   resp.data.environment.provisioning_repository.provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.environment.provisioning_repository.name #=> String
    #   resp.data.environment.provisioning_repository.branch #=> String
    #   resp.data.environment.component_role_arn #=> String
    #
    def update_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEnvironment,
        stubs: @stubs,
        params_class: Params::UpdateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>In an environment account, update an environment account connection to use a new IAM role.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton Administrator guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnvironmentAccountConnectionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the environment account connection to update.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that's associated with the environment account connection to update.</p>
    #
    # @option params [String] :component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any
    #         environments running in the account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    # @return [Types::UpdateEnvironmentAccountConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_account_connection(
    #     id: 'id', # required
    #     role_arn: 'roleArn',
    #     component_role_arn: 'componentRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnvironmentAccountConnectionOutput
    #   resp.data.environment_account_connection #=> Types::EnvironmentAccountConnection
    #   resp.data.environment_account_connection.id #=> String
    #   resp.data.environment_account_connection.arn #=> String
    #   resp.data.environment_account_connection.management_account_id #=> String
    #   resp.data.environment_account_connection.environment_account_id #=> String
    #   resp.data.environment_account_connection.role_arn #=> String
    #   resp.data.environment_account_connection.environment_name #=> String
    #   resp.data.environment_account_connection.requested_at #=> Time
    #   resp.data.environment_account_connection.last_modified_at #=> Time
    #   resp.data.environment_account_connection.status #=> String, one of ["PENDING", "CONNECTED", "REJECTED"]
    #   resp.data.environment_account_connection.component_role_arn #=> String
    #
    def update_environment_account_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEnvironmentAccountConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEnvironmentAccountConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEnvironmentAccountConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateEnvironmentAccountConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEnvironmentAccountConnection,
        stubs: @stubs,
        params_class: Params::UpdateEnvironmentAccountConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_environment_account_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update an environment template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnvironmentTemplateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the environment template to update.</p>
    #
    # @option params [String] :display_name
    #   <p>The name of the environment template to update as displayed in the developer interface.</p>
    #
    # @option params [String] :description
    #   <p>A description of the environment template update.</p>
    #
    # @return [Types::UpdateEnvironmentTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_template(
    #     name: 'name', # required
    #     display_name: 'displayName',
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnvironmentTemplateOutput
    #   resp.data.environment_template #=> Types::EnvironmentTemplate
    #   resp.data.environment_template.name #=> String
    #   resp.data.environment_template.arn #=> String
    #   resp.data.environment_template.created_at #=> Time
    #   resp.data.environment_template.last_modified_at #=> Time
    #   resp.data.environment_template.display_name #=> String
    #   resp.data.environment_template.description #=> String
    #   resp.data.environment_template.recommended_version #=> String
    #   resp.data.environment_template.encryption_key #=> String
    #   resp.data.environment_template.provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #
    def update_environment_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEnvironmentTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEnvironmentTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEnvironmentTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateEnvironmentTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEnvironmentTemplate,
        stubs: @stubs,
        params_class: Params::UpdateEnvironmentTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_environment_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a major or minor version of an environment template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnvironmentTemplateVersionInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the environment template.</p>
    #
    # @option params [String] :major_version
    #   <p>To update a major version of an environment template, include <code>major Version</code>.</p>
    #
    # @option params [String] :minor_version
    #   <p>To update a minor version of an environment template, include <code>minorVersion</code>.</p>
    #
    # @option params [String] :description
    #   <p>A description of environment template version to update.</p>
    #
    # @option params [String] :status
    #   <p>The status of the environment template minor version to update.</p>
    #
    # @return [Types::UpdateEnvironmentTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_template_version(
    #     template_name: 'templateName', # required
    #     major_version: 'majorVersion', # required
    #     minor_version: 'minorVersion', # required
    #     description: 'description',
    #     status: 'REGISTRATION_IN_PROGRESS' # accepts ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnvironmentTemplateVersionOutput
    #   resp.data.environment_template_version #=> Types::EnvironmentTemplateVersion
    #   resp.data.environment_template_version.template_name #=> String
    #   resp.data.environment_template_version.major_version #=> String
    #   resp.data.environment_template_version.minor_version #=> String
    #   resp.data.environment_template_version.recommended_minor_version #=> String
    #   resp.data.environment_template_version.status #=> String, one of ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   resp.data.environment_template_version.status_message #=> String
    #   resp.data.environment_template_version.description #=> String
    #   resp.data.environment_template_version.arn #=> String
    #   resp.data.environment_template_version.created_at #=> Time
    #   resp.data.environment_template_version.last_modified_at #=> Time
    #   resp.data.environment_template_version.schema #=> String
    #
    def update_environment_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEnvironmentTemplateVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEnvironmentTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEnvironmentTemplateVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateEnvironmentTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEnvironmentTemplateVersion,
        stubs: @stubs,
        params_class: Params::UpdateEnvironmentTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_environment_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Edit a service description or use a spec to add and delete service instances.</p>
    #          <note>
    #             <p>Existing service instances and the service pipeline <i>can't</i> be edited using this API. They can only be deleted.</p>
    #          </note>
    #          <p>Use the <code>description</code> parameter to modify the description.</p>
    #          <p>Edit the <code>spec</code> parameter to add or delete instances.</p>
    #          <note>
    #             <p>You can't delete a service instance (remove it from the spec) if it has an attached component.</p>
    #             <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the service to edit.</p>
    #
    # @option params [String] :description
    #   <p>The edited service description.</p>
    #
    # @option params [String] :spec
    #   <p>Lists the service instances to add and the existing service instances to remain. Omit the existing service instances to delete from the list.
    #           <i>Don't</i> include edits to the existing service instances or pipeline. For more information, see <i>Edit a service</i> in
    #         the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-update.html">Proton Administrator Guide</a> or the <a href="https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-update.html">Proton User Guide</a>.</p>
    #
    # @return [Types::UpdateServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service(
    #     name: 'name', # required
    #     description: 'description',
    #     spec: 'spec'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.name #=> String
    #   resp.data.service.description #=> String
    #   resp.data.service.arn #=> String
    #   resp.data.service.template_name #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.last_modified_at #=> Time
    #   resp.data.service.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"]
    #   resp.data.service.status_message #=> String
    #   resp.data.service.spec #=> String
    #   resp.data.service.pipeline #=> Types::ServicePipeline
    #   resp.data.service.pipeline.arn #=> String
    #   resp.data.service.pipeline.created_at #=> Time
    #   resp.data.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.data.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.data.service.pipeline.template_name #=> String
    #   resp.data.service.pipeline.template_major_version #=> String
    #   resp.data.service.pipeline.template_minor_version #=> String
    #   resp.data.service.pipeline.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.service.pipeline.deployment_status_message #=> String
    #   resp.data.service.pipeline.spec #=> String
    #   resp.data.service.repository_connection_arn #=> String
    #   resp.data.service.repository_id #=> String
    #   resp.data.service.branch_name #=> String
    #
    def update_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateService
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateService,
        stubs: @stubs,
        params_class: Params::UpdateServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a service instance.</p>
    #          <p>There are a few modes for updating a service instance. The <code>deploymentType</code> field defines the mode.</p>
    #          <note>
    #             <p>You can't update a service instance while its deployment status, or the deployment status of a component attached to it, is
    #         <code>IN_PROGRESS</code>.</p>
    #             <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceInstanceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the service instance to update.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #
    # @option params [String] :deployment_type
    #   <p>The deployment type. It defines the mode for updating a service instance, as follows:</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #                 <i>Don’t</i> include major or minor version parameters when you use this deployment type.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the published, recommended (latest) minor version of the current major version
    #               in use, by default. You can also specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the published, recommended (latest) major and minor version of the current
    #               template, by default. You can specify a different major version that's higher than the major version in use and a minor version.</p>
    #               </dd>
    #            </dl>
    #
    # @option params [String] :spec
    #   <p>The formatted specification that defines the service instance update.</p>
    #
    # @option params [String] :template_major_version
    #   <p>The major version of the service template to update.</p>
    #
    # @option params [String] :template_minor_version
    #   <p>The minor version of the service template to update.</p>
    #
    # @return [Types::UpdateServiceInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_instance(
    #     name: 'name', # required
    #     service_name: 'serviceName', # required
    #     deployment_type: 'NONE', # required - accepts ["NONE", "CURRENT_VERSION", "MINOR_VERSION", "MAJOR_VERSION"]
    #     spec: 'spec',
    #     template_major_version: 'templateMajorVersion',
    #     template_minor_version: 'templateMinorVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceInstanceOutput
    #   resp.data.service_instance #=> Types::ServiceInstance
    #   resp.data.service_instance.name #=> String
    #   resp.data.service_instance.arn #=> String
    #   resp.data.service_instance.created_at #=> Time
    #   resp.data.service_instance.last_deployment_attempted_at #=> Time
    #   resp.data.service_instance.last_deployment_succeeded_at #=> Time
    #   resp.data.service_instance.service_name #=> String
    #   resp.data.service_instance.environment_name #=> String
    #   resp.data.service_instance.template_name #=> String
    #   resp.data.service_instance.template_major_version #=> String
    #   resp.data.service_instance.template_minor_version #=> String
    #   resp.data.service_instance.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.service_instance.deployment_status_message #=> String
    #   resp.data.service_instance.spec #=> String
    #
    def update_service_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServiceInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateServiceInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServiceInstance,
        stubs: @stubs,
        params_class: Params::UpdateServiceInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update the service pipeline.</p>
    #          <p>There are four modes for updating a service pipeline. The <code>deploymentType</code> field defines the mode.</p>
    #          <dl>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>NONE</code>
    #                </p>
    #                <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>CURRENT_VERSION</code>
    #                </p>
    #                <p>In this mode, the service pipeline is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #               <i>Don’t</i> include major or minor version parameters when you use this <code>deployment-type</code>.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>MINOR_VERSION</code>
    #                </p>
    #                <p>In this mode, the service pipeline is deployed and updated with the published, recommended (latest) minor version of the current major version
    #             in use, by default. You can specify a different minor version of the current major version in use.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>MAJOR_VERSION</code>
    #                </p>
    #                <p>In this mode, the service pipeline is deployed and updated with the published, recommended (latest) major and minor version of the current
    #             template by default. You can specify a different major version that's higher than the major version in use and a minor version.</p>
    #             </dd>
    #          </dl>
    #
    # @param [Hash] params
    #   See {Types::UpdateServicePipelineInput}.
    #
    # @option params [String] :service_name
    #   <p>The name of the service to that the pipeline is associated with.</p>
    #
    # @option params [String] :spec
    #   <p>The spec for the service pipeline to update.</p>
    #
    # @option params [String] :deployment_type
    #   <p>The deployment type.</p>
    #            <p>There are four modes for updating a service pipeline. The <code>deploymentType</code> field defines the mode.</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #                 <i>Don’t</i> include major or minor version parameters when you use this <code>deployment-type</code>.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the published, recommended (latest) minor version of the current major version
    #               in use, by default. You can specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the published, recommended (latest) major and minor version of the current
    #               template, by default. You can specify a different major version that's higher than the major version in use and a minor version.</p>
    #               </dd>
    #            </dl>
    #
    # @option params [String] :template_major_version
    #   <p>The major version of the service template that was used to create the service that the pipeline is associated with.</p>
    #
    # @option params [String] :template_minor_version
    #   <p>The minor version of the service template that was used to create the service that the pipeline is associated with.</p>
    #
    # @return [Types::UpdateServicePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_pipeline(
    #     service_name: 'serviceName', # required
    #     spec: 'spec', # required
    #     deployment_type: 'NONE', # required - accepts ["NONE", "CURRENT_VERSION", "MINOR_VERSION", "MAJOR_VERSION"]
    #     template_major_version: 'templateMajorVersion',
    #     template_minor_version: 'templateMinorVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServicePipelineOutput
    #   resp.data.pipeline #=> Types::ServicePipeline
    #   resp.data.pipeline.arn #=> String
    #   resp.data.pipeline.created_at #=> Time
    #   resp.data.pipeline.last_deployment_attempted_at #=> Time
    #   resp.data.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.data.pipeline.template_name #=> String
    #   resp.data.pipeline.template_major_version #=> String
    #   resp.data.pipeline.template_minor_version #=> String
    #   resp.data.pipeline.deployment_status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #   resp.data.pipeline.deployment_status_message #=> String
    #   resp.data.pipeline.spec #=> String
    #
    def update_service_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServicePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServicePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServicePipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateServicePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServicePipeline,
        stubs: @stubs,
        params_class: Params::UpdateServicePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a service template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceTemplateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the service template to update.</p>
    #
    # @option params [String] :display_name
    #   <p>The name of the service template to update that's displayed in the developer interface.</p>
    #
    # @option params [String] :description
    #   <p>A description of the service template update.</p>
    #
    # @return [Types::UpdateServiceTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_template(
    #     name: 'name', # required
    #     display_name: 'displayName',
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceTemplateOutput
    #   resp.data.service_template #=> Types::ServiceTemplate
    #   resp.data.service_template.name #=> String
    #   resp.data.service_template.arn #=> String
    #   resp.data.service_template.created_at #=> Time
    #   resp.data.service_template.last_modified_at #=> Time
    #   resp.data.service_template.display_name #=> String
    #   resp.data.service_template.description #=> String
    #   resp.data.service_template.recommended_version #=> String
    #   resp.data.service_template.encryption_key #=> String
    #   resp.data.service_template.pipeline_provisioning #=> String, one of ["CUSTOMER_MANAGED"]
    #
    def update_service_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServiceTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateServiceTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServiceTemplate,
        stubs: @stubs,
        params_class: Params::UpdateServiceTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a major or minor version of a service template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceTemplateVersionInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the service template.</p>
    #
    # @option params [String] :major_version
    #   <p>To update a major version of a service template, include <code>major Version</code>.</p>
    #
    # @option params [String] :minor_version
    #   <p>To update a minor version of a service template, include <code>minorVersion</code>.</p>
    #
    # @option params [String] :description
    #   <p>A description of a service template version to update.</p>
    #
    # @option params [String] :status
    #   <p>The status of the service template minor version to update.</p>
    #
    # @option params [Array<CompatibleEnvironmentTemplateInput>] :compatible_environment_templates
    #   <p>An array of environment template objects that are compatible with this service template version. A service instance based on this service template
    #         version can run in environments based on compatible templates.</p>
    #
    # @option params [Array<String>] :supported_component_sources
    #   <p>An array of supported component sources. Components with supported sources can be attached to service instances based on this service template
    #         version.</p>
    #            <note>
    #               <p>A change to <code>supportedComponentSources</code> doesn't impact existing component attachments to instances based on this template version. A
    #           change only affects later associations.</p>
    #            </note>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    # @return [Types::UpdateServiceTemplateVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_template_version(
    #     template_name: 'templateName', # required
    #     major_version: 'majorVersion', # required
    #     minor_version: 'minorVersion', # required
    #     description: 'description',
    #     status: 'REGISTRATION_IN_PROGRESS', # accepts ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #     compatible_environment_templates: [
    #       {
    #         template_name: 'templateName', # required
    #         major_version: 'majorVersion' # required
    #       }
    #     ],
    #     supported_component_sources: [
    #       'DIRECTLY_DEFINED' # accepts ["DIRECTLY_DEFINED"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceTemplateVersionOutput
    #   resp.data.service_template_version #=> Types::ServiceTemplateVersion
    #   resp.data.service_template_version.template_name #=> String
    #   resp.data.service_template_version.major_version #=> String
    #   resp.data.service_template_version.minor_version #=> String
    #   resp.data.service_template_version.recommended_minor_version #=> String
    #   resp.data.service_template_version.status #=> String, one of ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #   resp.data.service_template_version.status_message #=> String
    #   resp.data.service_template_version.description #=> String
    #   resp.data.service_template_version.arn #=> String
    #   resp.data.service_template_version.created_at #=> Time
    #   resp.data.service_template_version.last_modified_at #=> Time
    #   resp.data.service_template_version.compatible_environment_templates #=> Array<CompatibleEnvironmentTemplate>
    #   resp.data.service_template_version.compatible_environment_templates[0] #=> Types::CompatibleEnvironmentTemplate
    #   resp.data.service_template_version.compatible_environment_templates[0].template_name #=> String
    #   resp.data.service_template_version.compatible_environment_templates[0].major_version #=> String
    #   resp.data.service_template_version.schema #=> String
    #   resp.data.service_template_version.supported_component_sources #=> Array<String>
    #   resp.data.service_template_version.supported_component_sources[0] #=> String, one of ["DIRECTLY_DEFINED"]
    #
    def update_service_template_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceTemplateVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceTemplateVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServiceTemplateVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateServiceTemplateVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServiceTemplateVersion,
        stubs: @stubs,
        params_class: Params::UpdateServiceTemplateVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_template_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update template sync configuration parameters, except for the <code>templateName</code> and <code>templateType</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTemplateSyncConfigInput}.
    #
    # @option params [String] :template_name
    #   <p>The synced template name.</p>
    #
    # @option params [String] :template_type
    #   <p>The synced template type.</p>
    #
    # @option params [String] :repository_provider
    #   <p>The repository provider.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository (for example, <code>myrepos/myrepo</code>).</p>
    #
    # @option params [String] :branch
    #   <p>The repository branch.</p>
    #
    # @option params [String] :subdirectory
    #   <p>A subdirectory path to your template bundle version. When included, limits the template bundle search to this repository directory.</p>
    #
    # @return [Types::UpdateTemplateSyncConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_sync_config(
    #     template_name: 'templateName', # required
    #     template_type: 'ENVIRONMENT', # required - accepts ["ENVIRONMENT", "SERVICE"]
    #     repository_provider: 'GITHUB', # required - accepts ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #     repository_name: 'repositoryName', # required
    #     branch: 'branch', # required
    #     subdirectory: 'subdirectory'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTemplateSyncConfigOutput
    #   resp.data.template_sync_config #=> Types::TemplateSyncConfig
    #   resp.data.template_sync_config.template_name #=> String
    #   resp.data.template_sync_config.template_type #=> String, one of ["ENVIRONMENT", "SERVICE"]
    #   resp.data.template_sync_config.repository_provider #=> String, one of ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #   resp.data.template_sync_config.repository_name #=> String
    #   resp.data.template_sync_config.branch #=> String
    #   resp.data.template_sync_config.subdirectory #=> String
    #
    def update_template_sync_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTemplateSyncConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTemplateSyncConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTemplateSyncConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateTemplateSyncConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTemplateSyncConfig,
        stubs: @stubs,
        params_class: Params::UpdateTemplateSyncConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_template_sync_config
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
