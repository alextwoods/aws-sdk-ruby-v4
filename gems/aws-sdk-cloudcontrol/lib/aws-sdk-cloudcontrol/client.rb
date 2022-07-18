# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CloudControl
  # An API client for CloudApiService
  # See {#initialize} for a full list of supported configuration options
  # <p>For more information about Amazon Web Services Cloud Control API, see the <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/what-is-cloudcontrolapi.html">Amazon Web Services Cloud Control API User
  #         Guide</a>.</p>
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
    def initialize(config = AWS::SDK::CloudControl::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels the specified resource operation request. For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-cancel">Canceling resource operation requests</a> in the
    #         <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <p>Only resource operations requests with a status of <code>PENDING</code> or
    #         <code>IN_PROGRESS</code> can be canceled.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelResourceRequestInput}.
    #
    # @option params [String] :request_token
    #   <p>The <code>RequestToken</code> of the <code>ProgressEvent</code> object returned by the
    #         resource operation request.</p>
    #
    # @return [Types::CancelResourceRequestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_resource_request(
    #     request_token: 'RequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelResourceRequestOutput
    #   resp.data.progress_event #=> Types::ProgressEvent
    #   resp.data.progress_event.type_name #=> String
    #   resp.data.progress_event.identifier #=> String
    #   resp.data.progress_event.request_token #=> String
    #   resp.data.progress_event.operation #=> String, one of ["CREATE", "DELETE", "UPDATE"]
    #   resp.data.progress_event.operation_status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"]
    #   resp.data.progress_event.event_time #=> Time
    #   resp.data.progress_event.resource_model #=> String
    #   resp.data.progress_event.status_message #=> String
    #   resp.data.progress_event.error_code #=> String, one of ["NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"]
    #   resp.data.progress_event.retry_after #=> Time
    #
    def cancel_resource_request(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelResourceRequestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelResourceRequestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelResourceRequest
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::RequestTokenNotFoundException]),
        data_parser: Parsers::CancelResourceRequest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelResourceRequest,
        stubs: @stubs,
        params_class: Params::CancelResourceRequestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_resource_request
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the specified resource. For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html">Creating a
    #         resource</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <p>After you have initiated a resource creation request, you can monitor the progress of your
    #       request by calling <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html">GetResourceRequestStatus</a> using the <code>RequestToken</code> of the
    #         <code>ProgressEvent</code> type returned by <code>CreateResource</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResourceInput}.
    #
    # @option params [String] :type_name
    #   <p>The name of the resource type.</p>
    #
    # @option params [String] :type_version_id
    #   <p>For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code> section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier to ensure the idempotency of the resource request. As a best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can accurately distinguish between request retries and new resource requests. You might retry a resource request to ensure that it was successfully received.</p>
    #            <p>A client token is valid for 36 hours once used. After that, a resource request with the same client token is treated as a new request.</p>
    #            <p>If you do not specify a client token, one is generated for inclusion in the request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency">Ensuring resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @option params [String] :desired_state
    #   <p>Structured data format representing the desired state of the resource, consisting of that
    #         resource's properties and their desired values.</p>
    #            <note>
    #               <p>Cloud Control API currently supports JSON as a structured data format.</p>
    #            </note>
    #
    #            <p>Specify the desired state as one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>A JSON blob</p>
    #               </li>
    #               <li>
    #                  <p>A local path containing the desired state in JSON data format</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html#resource-operations-create-desiredstate">Composing the desired state of the resource</a> in the <i>Amazon Web Services Cloud Control API User
    #           Guide</i>.</p>
    #            <p>For more information about the properties of a specific resource, refer to the related
    #         topic for the resource in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Resource and property types reference</a> in the <i>CloudFormation Users Guide</i>.</p>
    #
    # @return [Types::CreateResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource(
    #     type_name: 'TypeName', # required
    #     type_version_id: 'TypeVersionId',
    #     role_arn: 'RoleArn',
    #     client_token: 'ClientToken',
    #     desired_state: 'DesiredState' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourceOutput
    #   resp.data.progress_event #=> Types::ProgressEvent
    #   resp.data.progress_event.type_name #=> String
    #   resp.data.progress_event.identifier #=> String
    #   resp.data.progress_event.request_token #=> String
    #   resp.data.progress_event.operation #=> String, one of ["CREATE", "DELETE", "UPDATE"]
    #   resp.data.progress_event.operation_status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"]
    #   resp.data.progress_event.event_time #=> Time
    #   resp.data.progress_event.resource_model #=> String
    #   resp.data.progress_event.status_message #=> String
    #   resp.data.progress_event.error_code #=> String, one of ["NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"]
    #   resp.data.progress_event.retry_after #=> Time
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::ClientTokenConflictException, Errors::ConcurrentOperationException, Errors::GeneralServiceException, Errors::HandlerFailureException, Errors::HandlerInternalFailureException, Errors::InvalidCredentialsException, Errors::InvalidRequestException, Errors::NetworkFailureException, Errors::NotStabilizedException, Errors::NotUpdatableException, Errors::PrivateTypeException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceInternalErrorException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::TypeNotFoundException, Errors::UnsupportedActionException]),
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

    # <p>Deletes the specified resource. For details, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-delete.html">Deleting a
    #         resource</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <p>After you have initiated a resource deletion request, you can monitor the progress of your
    #       request by calling <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html">GetResourceRequestStatus</a> using the <code>RequestToken</code> of the
    #         <code>ProgressEvent</code> returned by <code>DeleteResource</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourceInput}.
    #
    # @option params [String] :type_name
    #   <p>The name of the resource type.</p>
    #
    # @option params [String] :type_version_id
    #   <p>For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code> section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier to ensure the idempotency of the resource request. As a best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can accurately distinguish between request retries and new resource requests. You might retry a resource request to ensure that it was successfully received.</p>
    #            <p>A client token is valid for 36 hours once used. After that, a resource request with the same client token is treated as a new request.</p>
    #            <p>If you do not specify a client token, one is generated for inclusion in the request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency">Ensuring resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @option params [String] :identifier
    #   <p>The identifier for the resource.</p>
    #            <p>You can specify the primary identifier, or any secondary identifier defined for the resource type in its resource schema. You can only specify one identifier. Primary identifiers can be specified as a string or JSON; secondary identifiers must be specified as JSON.</p>
    #            <p>For compound primary identifiers (that is, one that consists of multiple resource properties strung together), to specify the primary identifier as a string, list the property values <i>in the order they are specified</i> in the primary identifier definition, separated by <code>|</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @return [Types::DeleteResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource(
    #     type_name: 'TypeName', # required
    #     type_version_id: 'TypeVersionId',
    #     role_arn: 'RoleArn',
    #     client_token: 'ClientToken',
    #     identifier: 'Identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourceOutput
    #   resp.data.progress_event #=> Types::ProgressEvent
    #   resp.data.progress_event.type_name #=> String
    #   resp.data.progress_event.identifier #=> String
    #   resp.data.progress_event.request_token #=> String
    #   resp.data.progress_event.operation #=> String, one of ["CREATE", "DELETE", "UPDATE"]
    #   resp.data.progress_event.operation_status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"]
    #   resp.data.progress_event.event_time #=> Time
    #   resp.data.progress_event.resource_model #=> String
    #   resp.data.progress_event.status_message #=> String
    #   resp.data.progress_event.error_code #=> String, one of ["NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"]
    #   resp.data.progress_event.retry_after #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::ClientTokenConflictException, Errors::ConcurrentOperationException, Errors::GeneralServiceException, Errors::HandlerFailureException, Errors::HandlerInternalFailureException, Errors::InvalidCredentialsException, Errors::InvalidRequestException, Errors::NetworkFailureException, Errors::NotStabilizedException, Errors::NotUpdatableException, Errors::PrivateTypeException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceInternalErrorException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::TypeNotFoundException, Errors::UnsupportedActionException]),
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

    # <p>Returns information about the current state of the specified resource. For details, see
    #         <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-read.html">Reading a resource's current state</a>.</p>
    #          <p>You can use this action to return information about an existing resource in your account
    #       and Amazon Web Services Region, whether those resources were provisioned using Cloud Control API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceInput}.
    #
    # @option params [String] :type_name
    #   <p>The name of the resource type.</p>
    #
    # @option params [String] :type_version_id
    #   <p>For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code> section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @option params [String] :identifier
    #   <p>The identifier for the resource.</p>
    #            <p>You can specify the primary identifier, or any secondary identifier defined for the resource type in its resource schema. You can only specify one identifier. Primary identifiers can be specified as a string or JSON; secondary identifiers must be specified as JSON.</p>
    #            <p>For compound primary identifiers (that is, one that consists of multiple resource properties strung together), to specify the primary identifier as a string, list the property values <i>in the order they are specified</i> in the primary identifier definition, separated by <code>|</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @return [Types::GetResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource(
    #     type_name: 'TypeName', # required
    #     type_version_id: 'TypeVersionId',
    #     role_arn: 'RoleArn',
    #     identifier: 'Identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceOutput
    #   resp.data.type_name #=> String
    #   resp.data.resource_description #=> Types::ResourceDescription
    #   resp.data.resource_description.identifier #=> String
    #   resp.data.resource_description.properties #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::GeneralServiceException, Errors::HandlerFailureException, Errors::HandlerInternalFailureException, Errors::InvalidCredentialsException, Errors::InvalidRequestException, Errors::NetworkFailureException, Errors::NotStabilizedException, Errors::NotUpdatableException, Errors::PrivateTypeException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceInternalErrorException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::TypeNotFoundException, Errors::UnsupportedActionException]),
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

    # <p>Returns the current status of a resource operation request. For more information, see
    #         <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track">Tracking the progress of resource operation requests</a> in the
    #         <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceRequestStatusInput}.
    #
    # @option params [String] :request_token
    #   <p>A unique token used to track the progress of the resource operation request.</p>
    #            <p>Request tokens are included in the <code>ProgressEvent</code> type returned by a resource
    #         operation request.</p>
    #
    # @return [Types::GetResourceRequestStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_request_status(
    #     request_token: 'RequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceRequestStatusOutput
    #   resp.data.progress_event #=> Types::ProgressEvent
    #   resp.data.progress_event.type_name #=> String
    #   resp.data.progress_event.identifier #=> String
    #   resp.data.progress_event.request_token #=> String
    #   resp.data.progress_event.operation #=> String, one of ["CREATE", "DELETE", "UPDATE"]
    #   resp.data.progress_event.operation_status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"]
    #   resp.data.progress_event.event_time #=> Time
    #   resp.data.progress_event.resource_model #=> String
    #   resp.data.progress_event.status_message #=> String
    #   resp.data.progress_event.error_code #=> String, one of ["NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"]
    #   resp.data.progress_event.retry_after #=> Time
    #
    def get_resource_request_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceRequestStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceRequestStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceRequestStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestTokenNotFoundException]),
        data_parser: Parsers::GetResourceRequestStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceRequestStatus,
        stubs: @stubs,
        params_class: Params::GetResourceRequestStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_request_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns existing resource operation requests. This includes requests of all status types.
    #       For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-list">Listing active resource operation requests</a> in the
    #         <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <note>
    #             <p>Resource operation requests expire after 7 days.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListResourceRequestsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #            <p>The default is <code>20</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    # @option params [ResourceRequestStatusFilter] :resource_request_status_filter
    #   <p>The filter criteria to apply to the requests returned.</p>
    #
    # @return [Types::ListResourceRequestsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_requests(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     resource_request_status_filter: {
    #       operations: [
    #         'CREATE' # accepts ["CREATE", "DELETE", "UPDATE"]
    #       ],
    #       operation_statuses: [
    #         'PENDING' # accepts ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"]
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceRequestsOutput
    #   resp.data.resource_request_status_summaries #=> Array<ProgressEvent>
    #   resp.data.resource_request_status_summaries[0] #=> Types::ProgressEvent
    #   resp.data.resource_request_status_summaries[0].type_name #=> String
    #   resp.data.resource_request_status_summaries[0].identifier #=> String
    #   resp.data.resource_request_status_summaries[0].request_token #=> String
    #   resp.data.resource_request_status_summaries[0].operation #=> String, one of ["CREATE", "DELETE", "UPDATE"]
    #   resp.data.resource_request_status_summaries[0].operation_status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"]
    #   resp.data.resource_request_status_summaries[0].event_time #=> Time
    #   resp.data.resource_request_status_summaries[0].resource_model #=> String
    #   resp.data.resource_request_status_summaries[0].status_message #=> String
    #   resp.data.resource_request_status_summaries[0].error_code #=> String, one of ["NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"]
    #   resp.data.resource_request_status_summaries[0].retry_after #=> Time
    #   resp.data.next_token #=> String
    #
    def list_resource_requests(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceRequestsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceRequestsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceRequests
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListResourceRequests
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceRequests,
        stubs: @stubs,
        params_class: Params::ListResourceRequestsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_requests
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified resources. For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-list.html">Discovering resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <p>You can use this action to return information about existing resources in your account and
    #       Amazon Web Services Region, whether those resources were provisioned using Cloud Control API.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourcesInput}.
    #
    # @option params [String] :type_name
    #   <p>The name of the resource type.</p>
    #
    # @option params [String] :type_version_id
    #   <p>For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code> section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Reserved.</p>
    #
    # @option params [String] :resource_model
    #   <p>The resource model to use to select the resources to return.</p>
    #
    # @return [Types::ListResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources(
    #     type_name: 'TypeName', # required
    #     type_version_id: 'TypeVersionId',
    #     role_arn: 'RoleArn',
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     resource_model: 'ResourceModel'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourcesOutput
    #   resp.data.type_name #=> String
    #   resp.data.resource_descriptions #=> Array<ResourceDescription>
    #   resp.data.resource_descriptions[0] #=> Types::ResourceDescription
    #   resp.data.resource_descriptions[0].identifier #=> String
    #   resp.data.resource_descriptions[0].properties #=> String
    #   resp.data.next_token #=> String
    #
    def list_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::GeneralServiceException, Errors::HandlerFailureException, Errors::HandlerInternalFailureException, Errors::InvalidCredentialsException, Errors::InvalidRequestException, Errors::NetworkFailureException, Errors::NotStabilizedException, Errors::NotUpdatableException, Errors::PrivateTypeException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceInternalErrorException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::TypeNotFoundException, Errors::UnsupportedActionException]),
        data_parser: Parsers::ListResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResources,
        stubs: @stubs,
        params_class: Params::ListResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified property values in the resource.</p>
    #          <p>You specify your resource property updates as a list of patch operations contained in a
    #       JSON patch document that adheres to the <a href="https://datatracker.ietf.org/doc/html/rfc6902">
    #                <i>RFC 6902 - JavaScript Object
    #           Notation (JSON) Patch</i>
    #             </a> standard.</p>
    #          <p>For details on how Cloud Control API performs resource update operations, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html">Updating a resource</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #          <p>After you have initiated a resource update request, you can monitor the progress of your
    #       request by calling <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html">GetResourceRequestStatus</a> using the <code>RequestToken</code> of the
    #         <code>ProgressEvent</code> returned by <code>UpdateResource</code>.</p>
    #          <p>For more information about the properties of a specific resource, refer to the related
    #       topic for the resource in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Resource and property types reference</a> in the <i>CloudFormation Users Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceInput}.
    #
    # @option params [String] :type_name
    #   <p>The name of the resource type.</p>
    #
    # @option params [String] :type_version_id
    #   <p>For private resource types, the type version to use in this resource operation. If you do not specify a resource version, CloudFormation uses the default version.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role for Cloud Control API to use when performing this resource operation. The role specified must have the permissions required for this operation. The necessary permissions for each event handler are defined in the <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code> section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier to ensure the idempotency of the resource request. As a best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can accurately distinguish between request retries and new resource requests. You might retry a resource request to ensure that it was successfully received.</p>
    #            <p>A client token is valid for 36 hours once used. After that, a resource request with the same client token is treated as a new request.</p>
    #            <p>If you do not specify a client token, one is generated for inclusion in the request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency">Ensuring resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @option params [String] :identifier
    #   <p>The identifier for the resource.</p>
    #            <p>You can specify the primary identifier, or any secondary identifier defined for the resource type in its resource schema. You can only specify one identifier. Primary identifiers can be specified as a string or JSON; secondary identifiers must be specified as JSON.</p>
    #            <p>For compound primary identifiers (that is, one that consists of multiple resource properties strung together), to specify the primary identifier as a string, list the property values <i>in the order they are specified</i> in the primary identifier definition, separated by <code>|</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #
    # @option params [String] :patch_document
    #   <p>A JavaScript Object Notation (JSON) document listing the patch operations that represent
    #         the updates to apply to the current resource properties. For details, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html#resource-operations-update-patch">Composing the patch document</a> in the <i>Amazon Web Services Cloud Control API User
    #         Guide</i>.</p>
    #
    # @return [Types::UpdateResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource(
    #     type_name: 'TypeName', # required
    #     type_version_id: 'TypeVersionId',
    #     role_arn: 'RoleArn',
    #     client_token: 'ClientToken',
    #     identifier: 'Identifier', # required
    #     patch_document: 'PatchDocument' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceOutput
    #   resp.data.progress_event #=> Types::ProgressEvent
    #   resp.data.progress_event.type_name #=> String
    #   resp.data.progress_event.identifier #=> String
    #   resp.data.progress_event.request_token #=> String
    #   resp.data.progress_event.operation #=> String, one of ["CREATE", "DELETE", "UPDATE"]
    #   resp.data.progress_event.operation_status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETE"]
    #   resp.data.progress_event.event_time #=> Time
    #   resp.data.progress_event.resource_model #=> String
    #   resp.data.progress_event.status_message #=> String
    #   resp.data.progress_event.error_code #=> String, one of ["NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "ServiceTimeout", "NetworkFailure", "InternalFailure"]
    #   resp.data.progress_event.retry_after #=> Time
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::ClientTokenConflictException, Errors::ConcurrentOperationException, Errors::GeneralServiceException, Errors::HandlerFailureException, Errors::HandlerInternalFailureException, Errors::InvalidCredentialsException, Errors::InvalidRequestException, Errors::NetworkFailureException, Errors::NotStabilizedException, Errors::NotUpdatableException, Errors::PrivateTypeException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceInternalErrorException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::TypeNotFoundException, Errors::UnsupportedActionException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
