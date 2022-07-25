# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MediaStore
  # An API client for MediaStore_20170901
  # See {#initialize} for a full list of supported configuration options
  # <p>An AWS Elemental MediaStore container is a namespace that holds folders and objects.
  #          You use a container endpoint to create, read, and delete objects. </p>
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
    def initialize(config = AWS::SDK::MediaStore::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a storage container to hold objects. A container is similar to a bucket in
    #          the Amazon S3 service.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateContainerInput}.
    #
    # @option params [String] :container_name
    #   <p>The name for the container. The name must be from 1 to 255 characters. Container
    #            names must be unique to your AWS account within a specific region. As an example, you could
    #            create a container named <code>movies</code> in every region, as long as you don’t have an
    #            existing container with that name.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as
    #              "environment") and the tag value represents a specific value within that category (such as "test," "development," or "production"). You can add up to 50
    #              tags to each container. For more information about tagging, including naming and usage conventions, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html">Tagging Resources in MediaStore</a>.</p>
    #
    # @return [Types::CreateContainerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_container(
    #     container_name: 'ContainerName', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateContainerOutput
    #   resp.data.container #=> Types::Container
    #   resp.data.container.endpoint #=> String
    #   resp.data.container.creation_time #=> Time
    #   resp.data.container.arn #=> String
    #   resp.data.container.name #=> String
    #   resp.data.container.status #=> String, one of ["ACTIVE", "CREATING", "DELETING"]
    #   resp.data.container.access_logging_enabled #=> Boolean
    #
    def create_container(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateContainerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateContainerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateContainer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::InternalServerError, Errors::LimitExceededException]),
        data_parser: Parsers::CreateContainer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateContainer,
        stubs: @stubs,
        params_class: Params::CreateContainerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_container
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified container. Before you make a <code>DeleteContainer</code>
    #          request, delete any objects in the container or in any folders in the container. You can
    #          delete only empty containers. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContainerInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container to delete. </p>
    #
    # @return [Types::DeleteContainerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_container(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteContainerOutput
    #
    def delete_container(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteContainerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteContainerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteContainer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteContainer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteContainer,
        stubs: @stubs,
        params_class: Params::DeleteContainerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_container
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the access policy that is associated with the specified container.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContainerPolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that holds the policy.</p>
    #
    # @return [Types::DeleteContainerPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_container_policy(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteContainerPolicyOutput
    #
    def delete_container_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteContainerPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteContainerPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteContainerPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError, Errors::PolicyNotFoundException]),
        data_parser: Parsers::DeleteContainerPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteContainerPolicy,
        stubs: @stubs,
        params_class: Params::DeleteContainerPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_container_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the cross-origin resource sharing (CORS) configuration information that is
    #          set for the container.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>MediaStore:DeleteCorsPolicy</code> action. The container owner has this permission
    #          by default and can grant this permission to others.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCorsPolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container to remove the policy from.</p>
    #
    # @return [Types::DeleteCorsPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cors_policy(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCorsPolicyOutput
    #
    def delete_cors_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCorsPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCorsPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCorsPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::CorsPolicyNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteCorsPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCorsPolicy,
        stubs: @stubs,
        params_class: Params::DeleteCorsPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cors_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an object lifecycle policy from a container. It takes up to 20 minutes for the change to take effect.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLifecyclePolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that holds the object lifecycle policy.</p>
    #
    # @return [Types::DeleteLifecyclePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_policy(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLifecyclePolicyOutput
    #
    def delete_lifecycle_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLifecyclePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLifecyclePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLifecyclePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError, Errors::PolicyNotFoundException]),
        data_parser: Parsers::DeleteLifecyclePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLifecyclePolicy,
        stubs: @stubs,
        params_class: Params::DeleteLifecyclePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_lifecycle_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the metric policy that is associated with the specified container. If there is no metric policy associated with the container, MediaStore doesn't send metrics to CloudWatch.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMetricPolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that is associated with the metric policy that you want to delete.</p>
    #
    # @return [Types::DeleteMetricPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_metric_policy(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMetricPolicyOutput
    #
    def delete_metric_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMetricPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMetricPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMetricPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError, Errors::PolicyNotFoundException]),
        data_parser: Parsers::DeleteMetricPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMetricPolicy,
        stubs: @stubs,
        params_class: Params::DeleteMetricPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_metric_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the properties of the requested container. This request is commonly used to
    #          retrieve the endpoint of a container. An endpoint is a value assigned by the service when a
    #          new container is created. A container's endpoint does not change after it has been
    #          assigned. The <code>DescribeContainer</code> request returns a single
    #             <code>Container</code> object based on <code>ContainerName</code>. To return all
    #             <code>Container</code> objects that are associated with a specified AWS account, use
    #             <a>ListContainers</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeContainerInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container to query.</p>
    #
    # @return [Types::DescribeContainerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_container(
    #     container_name: 'ContainerName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeContainerOutput
    #   resp.data.container #=> Types::Container
    #   resp.data.container.endpoint #=> String
    #   resp.data.container.creation_time #=> Time
    #   resp.data.container.arn #=> String
    #   resp.data.container.name #=> String
    #   resp.data.container.status #=> String, one of ["ACTIVE", "CREATING", "DELETING"]
    #   resp.data.container.access_logging_enabled #=> Boolean
    #
    def describe_container(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContainerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContainerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContainer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeContainer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeContainer,
        stubs: @stubs,
        params_class: Params::DescribeContainerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_container
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the access policy for the specified container. For information about the
    #          data that is included in an access policy, see the <a href="https://aws.amazon.com/documentation/iam/">AWS Identity and Access Management User
    #             Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContainerPolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container. </p>
    #
    # @return [Types::GetContainerPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_container_policy(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContainerPolicyOutput
    #   resp.data.policy #=> String
    #
    def get_container_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContainerPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContainerPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContainerPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError, Errors::PolicyNotFoundException]),
        data_parser: Parsers::GetContainerPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContainerPolicy,
        stubs: @stubs,
        params_class: Params::GetContainerPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_container_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the cross-origin resource sharing (CORS) configuration information that is
    #          set for the container.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>MediaStore:GetCorsPolicy</code> action. By default, the container owner has this
    #          permission and can grant it to others.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCorsPolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that the policy is assigned to.</p>
    #
    # @return [Types::GetCorsPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cors_policy(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCorsPolicyOutput
    #   resp.data.cors_policy #=> Array<CorsRule>
    #   resp.data.cors_policy[0] #=> Types::CorsRule
    #   resp.data.cors_policy[0].allowed_origins #=> Array<String>
    #   resp.data.cors_policy[0].allowed_origins[0] #=> String
    #   resp.data.cors_policy[0].allowed_methods #=> Array<String>
    #   resp.data.cors_policy[0].allowed_methods[0] #=> String, one of ["PUT", "GET", "DELETE", "HEAD"]
    #   resp.data.cors_policy[0].allowed_headers #=> Array<String>
    #   resp.data.cors_policy[0].allowed_headers[0] #=> String
    #   resp.data.cors_policy[0].max_age_seconds #=> Integer
    #   resp.data.cors_policy[0].expose_headers #=> Array<String>
    #   resp.data.cors_policy[0].expose_headers[0] #=> String
    #
    def get_cors_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCorsPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCorsPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCorsPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::CorsPolicyNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::GetCorsPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCorsPolicy,
        stubs: @stubs,
        params_class: Params::GetCorsPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cors_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the object lifecycle policy that is assigned to a container.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLifecyclePolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that the object lifecycle policy is assigned to.</p>
    #
    # @return [Types::GetLifecyclePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLifecyclePolicyOutput
    #   resp.data.lifecycle_policy #=> String
    #
    def get_lifecycle_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLifecyclePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLifecyclePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLifecyclePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError, Errors::PolicyNotFoundException]),
        data_parser: Parsers::GetLifecyclePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLifecyclePolicy,
        stubs: @stubs,
        params_class: Params::GetLifecyclePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lifecycle_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the metric policy for the specified container. </p>
    #
    # @param [Hash] params
    #   See {Types::GetMetricPolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that is associated with the metric policy.</p>
    #
    # @return [Types::GetMetricPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_policy(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMetricPolicyOutput
    #   resp.data.metric_policy #=> Types::MetricPolicy
    #   resp.data.metric_policy.container_level_metrics #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.metric_policy.metric_policy_rules #=> Array<MetricPolicyRule>
    #   resp.data.metric_policy.metric_policy_rules[0] #=> Types::MetricPolicyRule
    #   resp.data.metric_policy.metric_policy_rules[0].object_group #=> String
    #   resp.data.metric_policy.metric_policy_rules[0].object_group_name #=> String
    #
    def get_metric_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMetricPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMetricPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMetricPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError, Errors::PolicyNotFoundException]),
        data_parser: Parsers::GetMetricPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMetricPolicy,
        stubs: @stubs,
        params_class: Params::GetMetricPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_metric_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the properties of all containers in AWS Elemental MediaStore. </p>
    #          <p>You can query to receive all the containers in one response. Or you can include the
    #             <code>MaxResults</code> parameter to receive a limited number of containers in each
    #          response. In this case, the response includes a token. To get the next set of containers,
    #          send the command again, this time with the <code>NextToken</code> parameter (with the
    #          returned token as its value). The next set of responses appears, with a token if there are
    #          still more containers to receive. </p>
    #          <p>See also <a>DescribeContainer</a>, which gets the properties of one
    #          container. </p>
    #
    # @param [Hash] params
    #   See {Types::ListContainersInput}.
    #
    # @option params [String] :next_token
    #   <p>Only if you used <code>MaxResults</code> in the first command, enter the token (which
    #            was included in the previous response) to obtain the next set of containers. This token is
    #            included in a response only if there actually are more containers to list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Enter the maximum number of containers in the response. Use from 1 to 255 characters.
    #         </p>
    #
    # @return [Types::ListContainersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_containers(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContainersOutput
    #   resp.data.containers #=> Array<Container>
    #   resp.data.containers[0] #=> Types::Container
    #   resp.data.containers[0].endpoint #=> String
    #   resp.data.containers[0].creation_time #=> Time
    #   resp.data.containers[0].arn #=> String
    #   resp.data.containers[0].name #=> String
    #   resp.data.containers[0].status #=> String, one of ["ACTIVE", "CREATING", "DELETING"]
    #   resp.data.containers[0].access_logging_enabled #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_containers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContainersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContainersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContainers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::ListContainers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContainers,
        stubs: @stubs,
        params_class: Params::ListContainersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_containers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the tags assigned to the specified container. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) for the container.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource: 'Resource' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError]),
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

    # <p>Creates an access policy for the specified container to restrict the users and
    #          clients that can access it. For information about the data that is included in an access
    #          policy, see the <a href="https://aws.amazon.com/documentation/iam/">AWS Identity and
    #             Access Management User Guide</a>.</p>
    #          <p>For this release of the REST API, you can create only one policy for a container. If
    #          you enter <code>PutContainerPolicy</code> twice, the second command modifies the existing
    #          policy. </p>
    #
    # @param [Hash] params
    #   See {Types::PutContainerPolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container.</p>
    #
    # @option params [String] :policy
    #   <p>The contents of the policy, which includes the following: </p>
    #            <ul>
    #               <li>
    #                  <p>One <code>Version</code> tag</p>
    #               </li>
    #               <li>
    #                  <p>One <code>Statement</code> tag that contains the standard tags for the
    #                  policy.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PutContainerPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_container_policy(
    #     container_name: 'ContainerName', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutContainerPolicyOutput
    #
    def put_container_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutContainerPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutContainerPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutContainerPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::PutContainerPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutContainerPolicy,
        stubs: @stubs,
        params_class: Params::PutContainerPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_container_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the cross-origin resource sharing (CORS) configuration on a container so that
    #          the container can service cross-origin requests. For example, you might want to enable a
    #          request whose origin is http://www.example.com to access your AWS Elemental MediaStore
    #          container at my.example.container.com by using the browser's XMLHttpRequest
    #          capability.</p>
    #          <p>To enable CORS on a container, you attach a CORS policy to the container. In the CORS
    #          policy, you configure rules that identify origins and the HTTP methods that can be executed
    #          on your container. The policy can contain up to 398,000 characters. You can add up to 100
    #          rules to a CORS policy. If more than one rule applies, the service uses the first
    #          applicable rule listed.</p>
    #          <p>To learn more about CORS, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/cors-policy.html">Cross-Origin Resource Sharing (CORS) in AWS Elemental MediaStore</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutCorsPolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that you want to assign the CORS policy to.</p>
    #
    # @option params [Array<CorsRule>] :cors_policy
    #   <p>The CORS policy to apply to the container.  </p>
    #
    # @return [Types::PutCorsPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_cors_policy(
    #     container_name: 'ContainerName', # required
    #     cors_policy: [
    #       {
    #         allowed_origins: [
    #           'member'
    #         ], # required
    #         allowed_methods: [
    #           'PUT' # accepts ["PUT", "GET", "DELETE", "HEAD"]
    #         ],
    #         allowed_headers: [
    #           'member'
    #         ], # required
    #         max_age_seconds: 1,
    #         expose_headers: [
    #           'member'
    #         ]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutCorsPolicyOutput
    #
    def put_cors_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutCorsPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutCorsPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutCorsPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::PutCorsPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutCorsPolicy,
        stubs: @stubs,
        params_class: Params::PutCorsPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_cors_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect.</p>
    #          <p>For information about how to construct an object lifecycle policy, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html">Components of an Object Lifecycle Policy</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutLifecyclePolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that you want to assign the object lifecycle policy to.</p>
    #
    # @option params [String] :lifecycle_policy
    #   <p>The object lifecycle policy to apply to the container.</p>
    #
    # @return [Types::PutLifecyclePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_policy(
    #     container_name: 'ContainerName', # required
    #     lifecycle_policy: 'LifecyclePolicy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLifecyclePolicyOutput
    #
    def put_lifecycle_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLifecyclePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLifecyclePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLifecyclePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::PutLifecyclePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLifecyclePolicy,
        stubs: @stubs,
        params_class: Params::PutLifecyclePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_lifecycle_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The metric policy that you want to add to the container. A metric policy allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. It takes up to 20 minutes for the new policy to take effect.</p>
    #
    # @param [Hash] params
    #   See {Types::PutMetricPolicyInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that you want to add the metric policy to.</p>
    #
    # @option params [MetricPolicy] :metric_policy
    #   <p>The metric policy that you want to associate with the container. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include up to five rules to define groups of objects that you want MediaStore to send object-level metrics for.  If you include rules in the policy, construct each rule with both of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>An object group that defines which objects to include in the group. The definition can be a path or a file name, but it can't have more than 900 characters. Valid characters are: a-z, A-Z, 0-9, _ (underscore), = (equal), : (colon), . (period), - (hyphen), ~ (tilde), / (forward slash), and * (asterisk). Wildcards (*) are acceptable.</p>
    #               </li>
    #               <li>
    #                  <p>An object group name that allows you to refer to the object group. The name can't have more than 30 characters. Valid characters are: a-z, A-Z, 0-9, and _ (underscore).</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PutMetricPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metric_policy(
    #     container_name: 'ContainerName', # required
    #     metric_policy: {
    #       container_level_metrics: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #       metric_policy_rules: [
    #         {
    #           object_group: 'ObjectGroup', # required
    #           object_group_name: 'ObjectGroupName' # required
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutMetricPolicyOutput
    #
    def put_metric_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMetricPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMetricPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMetricPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::PutMetricPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutMetricPolicy,
        stubs: @stubs,
        params_class: Params::PutMetricPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_metric_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts access logging on the specified container. When you enable access logging on a container, MediaStore delivers access logs for objects stored in that container to Amazon CloudWatch Logs.</p>
    #
    # @param [Hash] params
    #   See {Types::StartAccessLoggingInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that you want to start access logging on.</p>
    #
    # @return [Types::StartAccessLoggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_access_logging(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAccessLoggingOutput
    #
    def start_access_logging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAccessLoggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAccessLoggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAccessLogging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::StartAccessLogging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAccessLogging,
        stubs: @stubs,
        params_class: Params::StartAccessLoggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_access_logging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops access logging on the specified container. When you stop access logging on a container, MediaStore stops sending access logs to Amazon CloudWatch Logs. These access logs are not saved and are not retrievable.</p>
    #
    # @param [Hash] params
    #   See {Types::StopAccessLoggingInput}.
    #
    # @option params [String] :container_name
    #   <p>The name of the container that you want to stop access logging on.</p>
    #
    # @return [Types::StopAccessLoggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_access_logging(
    #     container_name: 'ContainerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopAccessLoggingOutput
    #
    def stop_access_logging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopAccessLoggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopAccessLoggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopAccessLogging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::StopAccessLogging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopAccessLogging,
        stubs: @stubs,
        params_class: Params::StopAccessLoggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_access_logging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to the specified AWS Elemental MediaStore container. Tags are key:value pairs that you can associate with AWS resources. For example, the
    #             tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50
    #             tags to each container. For more information about tagging, including naming and usage conventions, see <a href="https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html">Tagging Resources in MediaStore</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) for the container. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of key:value pairs that you want to add to the container. You need to specify only the tags that you want to add or update. For example,
    #               suppose a container already has two tags (customer:CompanyA and priority:High). You want to change the priority tag and also add a third tag
    #               (type:Contract). For TagResource, you specify the following tags: priority:Medium, type:Contract. The result is that your container has three tags:
    #               customer:CompanyA, priority:Medium, and type:Contract.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource: 'Resource', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError]),
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

    # <p>Removes tags from the specified container. You can specify one or more tags to remove. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) for the container.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A comma-separated list of keys for tags that you want to remove from the container. For example, if your container has two tags (customer:CompanyA
    #               and priority:High) and you want to remove one of the tags (priority:High), you specify the key for the tag that you want to remove
    #               (priority).</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource: 'Resource', # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ContainerInUseException, Errors::ContainerNotFoundException, Errors::InternalServerError]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
