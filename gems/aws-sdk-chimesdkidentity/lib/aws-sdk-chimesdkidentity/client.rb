# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ChimeSDKIdentity
  # An API client for ChimeIdentityService
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amazon Chime SDK Identity APIs in this section allow software developers to create
  #          and manage unique instances of their messaging applications. These APIs provide the
  #          overarching framework for creating and sending messages. For more information about the
  #          identity APIs, refer to <a href="https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html">Amazon Chime SDK identity</a>.</p>
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
    def initialize(config = AWS::SDK::ChimeSDKIdentity::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an Amazon Chime SDK messaging <code>AppInstance</code> under an AWS account.
    #          Only SDK messaging customers use this API. <code>CreateAppInstance</code> supports
    #          idempotency behavior as described in the AWS API Standard.</p>
    #          <p>identity</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInstanceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the <code>AppInstance</code>.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata of the <code>AppInstance</code>. Limited to a 1KB string in UTF-8.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The <code>ClientRequestToken</code> of the <code>AppInstance</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags assigned to the <code>AppInstanceUser</code>.</p>
    #
    # @return [Types::CreateAppInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance(
    #     name: 'Name', # required
    #     metadata: 'Metadata',
    #     client_request_token: 'ClientRequestToken', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppInstanceOutput
    #   resp.data.app_instance_arn #=> String
    #
    def create_app_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAppInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ConflictException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateAppInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAppInstance,
        stubs: @stubs,
        params_class: Params::CreateAppInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Promotes an <code>AppInstanceUser</code> to an <code>AppInstanceAdmin</code>. The
    #          promoted user can perform the following actions. </p>
    #
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ChannelModerator</code> actions across all channels in the
    #                   <code>AppInstance</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteChannelMessage</code> actions.</p>
    #             </li>
    #          </ul>
    #
    #          <p>Only an <code>AppInstanceUser</code> can be promoted to an <code>AppInstanceAdmin</code>
    #          role.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInstanceAdminInput}.
    #
    # @option params [String] :app_instance_admin_arn
    #   <p>The ARN of the administrator of the current <code>AppInstance</code>.</p>
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::CreateAppInstanceAdminOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance_admin(
    #     app_instance_admin_arn: 'AppInstanceAdminArn', # required
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppInstanceAdminOutput
    #   resp.data.app_instance_admin #=> Types::Identity
    #   resp.data.app_instance_admin.arn #=> String
    #   resp.data.app_instance_admin.name #=> String
    #   resp.data.app_instance_arn #=> String
    #
    def create_app_instance_admin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppInstanceAdminInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppInstanceAdminInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAppInstanceAdmin
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ConflictException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateAppInstanceAdmin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAppInstanceAdmin,
        stubs: @stubs,
        params_class: Params::CreateAppInstanceAdminOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app_instance_admin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a user under an Amazon Chime <code>AppInstance</code>. The request consists of a
    #          unique <code>appInstanceUserId</code> and <code>Name</code> for that user.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> request.</p>
    #
    # @option params [String] :app_instance_user_id
    #   <p>The user ID of the <code>AppInstance</code>.</p>
    #
    # @option params [String] :name
    #   <p>The user's name.</p>
    #
    # @option params [String] :metadata
    #   <p>The request's metadata. Limited to a 1KB string in UTF-8.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The token assigned to the user requesting an <code>AppInstance</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags assigned to the <code>AppInstanceUser</code>.</p>
    #
    # @return [Types::CreateAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance_user(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     app_instance_user_id: 'AppInstanceUserId', # required
    #     name: 'Name', # required
    #     metadata: 'Metadata',
    #     client_request_token: 'ClientRequestToken', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppInstanceUserOutput
    #   resp.data.app_instance_user_arn #=> String
    #
    def create_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAppInstanceUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ConflictException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAppInstanceUser,
        stubs: @stubs,
        params_class: Params::CreateAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an <code>AppInstance</code> and all associated data asynchronously.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInstanceInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::DeleteAppInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance(
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppInstanceOutput
    #
    def delete_app_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteAppInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppInstance,
        stubs: @stubs,
        params_class: Params::DeleteAppInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Demotes an <code>AppInstanceAdmin</code> to an <code>AppInstanceUser</code>. This action
    #          does not delete the user.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInstanceAdminInput}.
    #
    # @option params [String] :app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstance</code>'s administrator.</p>
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::DeleteAppInstanceAdminOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_admin(
    #     app_instance_admin_arn: 'AppInstanceAdminArn', # required
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppInstanceAdminOutput
    #
    def delete_app_instance_admin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInstanceAdminInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInstanceAdminInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppInstanceAdmin
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ConflictException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteAppInstanceAdmin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppInstanceAdmin,
        stubs: @stubs,
        params_class: Params::DeleteAppInstanceAdminOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_instance_admin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an <code>AppInstanceUser</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user request being deleted.</p>
    #
    # @return [Types::DeleteAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_user(
    #     app_instance_user_arn: 'AppInstanceUserArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppInstanceUserOutput
    #
    def delete_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppInstanceUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ConflictException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppInstanceUser,
        stubs: @stubs,
        params_class: Params::DeleteAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters an <code>AppInstanceUserEndpoint</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterAppInstanceUserEndpointInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    # @option params [String] :endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    # @return [Types::DeregisterAppInstanceUserEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_app_instance_user_endpoint(
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     endpoint_id: 'EndpointId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterAppInstanceUserEndpointOutput
    #
    def deregister_app_instance_user_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterAppInstanceUserEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterAppInstanceUserEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterAppInstanceUserEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeregisterAppInstanceUserEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterAppInstanceUserEndpoint,
        stubs: @stubs,
        params_class: Params::DeregisterAppInstanceUserEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_app_instance_user_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of an <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppInstanceInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::DescribeAppInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance(
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppInstanceOutput
    #   resp.data.app_instance #=> Types::AppInstance
    #   resp.data.app_instance.app_instance_arn #=> String
    #   resp.data.app_instance.name #=> String
    #   resp.data.app_instance.created_timestamp #=> Time
    #   resp.data.app_instance.last_updated_timestamp #=> Time
    #   resp.data.app_instance.metadata #=> String
    #
    def describe_app_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeAppInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppInstance,
        stubs: @stubs,
        params_class: Params::DescribeAppInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of an <code>AppInstanceAdmin</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppInstanceAdminInput}.
    #
    # @option params [String] :app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstanceAdmin</code>.</p>
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::DescribeAppInstanceAdminOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_admin(
    #     app_instance_admin_arn: 'AppInstanceAdminArn', # required
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppInstanceAdminOutput
    #   resp.data.app_instance_admin #=> Types::AppInstanceAdmin
    #   resp.data.app_instance_admin.admin #=> Types::Identity
    #   resp.data.app_instance_admin.admin.arn #=> String
    #   resp.data.app_instance_admin.admin.name #=> String
    #   resp.data.app_instance_admin.app_instance_arn #=> String
    #   resp.data.app_instance_admin.created_timestamp #=> Time
    #
    def describe_app_instance_admin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppInstanceAdminInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppInstanceAdminInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppInstanceAdmin
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeAppInstanceAdmin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppInstanceAdmin,
        stubs: @stubs,
        params_class: Params::DescribeAppInstanceAdminOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_instance_admin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of an <code>AppInstanceUser</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    # @return [Types::DescribeAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_user(
    #     app_instance_user_arn: 'AppInstanceUserArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppInstanceUserOutput
    #   resp.data.app_instance_user #=> Types::AppInstanceUser
    #   resp.data.app_instance_user.app_instance_user_arn #=> String
    #   resp.data.app_instance_user.name #=> String
    #   resp.data.app_instance_user.metadata #=> String
    #   resp.data.app_instance_user.created_timestamp #=> Time
    #   resp.data.app_instance_user.last_updated_timestamp #=> Time
    #
    def describe_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppInstanceUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppInstanceUser,
        stubs: @stubs,
        params_class: Params::DescribeAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of an <code>AppInstanceUserEndpoint</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppInstanceUserEndpointInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    # @option params [String] :endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    # @return [Types::DescribeAppInstanceUserEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_user_endpoint(
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     endpoint_id: 'EndpointId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppInstanceUserEndpointOutput
    #   resp.data.app_instance_user_endpoint #=> Types::AppInstanceUserEndpoint
    #   resp.data.app_instance_user_endpoint.app_instance_user_arn #=> String
    #   resp.data.app_instance_user_endpoint.endpoint_id #=> String
    #   resp.data.app_instance_user_endpoint.name #=> String
    #   resp.data.app_instance_user_endpoint.type #=> String, one of ["APNS", "APNS_SANDBOX", "GCM"]
    #   resp.data.app_instance_user_endpoint.resource_arn #=> String
    #   resp.data.app_instance_user_endpoint.endpoint_attributes #=> Types::EndpointAttributes
    #   resp.data.app_instance_user_endpoint.endpoint_attributes.device_token #=> String
    #   resp.data.app_instance_user_endpoint.endpoint_attributes.voip_device_token #=> String
    #   resp.data.app_instance_user_endpoint.created_timestamp #=> Time
    #   resp.data.app_instance_user_endpoint.last_updated_timestamp #=> Time
    #   resp.data.app_instance_user_endpoint.allow_messages #=> String, one of ["ALL", "NONE"]
    #   resp.data.app_instance_user_endpoint.endpoint_state #=> Types::EndpointState
    #   resp.data.app_instance_user_endpoint.endpoint_state.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.app_instance_user_endpoint.endpoint_state.status_reason #=> String, one of ["INVALID_DEVICE_TOKEN", "INVALID_PINPOINT_ARN"]
    #
    def describe_app_instance_user_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppInstanceUserEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppInstanceUserEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppInstanceUserEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeAppInstanceUserEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppInstanceUserEndpoint,
        stubs: @stubs,
        params_class: Params::DescribeAppInstanceUserEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_instance_user_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the retention settings for an <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppInstanceRetentionSettingsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @return [Types::GetAppInstanceRetentionSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_instance_retention_settings(
    #     app_instance_arn: 'AppInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppInstanceRetentionSettingsOutput
    #   resp.data.app_instance_retention_settings #=> Types::AppInstanceRetentionSettings
    #   resp.data.app_instance_retention_settings.channel_retention_settings #=> Types::ChannelRetentionSettings
    #   resp.data.app_instance_retention_settings.channel_retention_settings.retention_days #=> Integer
    #   resp.data.initiate_deletion_timestamp #=> Time
    #
    def get_app_instance_retention_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppInstanceRetentionSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppInstanceRetentionSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppInstanceRetentionSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetAppInstanceRetentionSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppInstanceRetentionSettings,
        stubs: @stubs,
        params_class: Params::GetAppInstanceRetentionSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app_instance_retention_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the administrators in the <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppInstanceAdminsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of administrators that you want to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of administrators is
    #            reached.</p>
    #
    # @return [Types::ListAppInstanceAdminsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_admins(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppInstanceAdminsOutput
    #   resp.data.app_instance_arn #=> String
    #   resp.data.app_instance_admins #=> Array<AppInstanceAdminSummary>
    #   resp.data.app_instance_admins[0] #=> Types::AppInstanceAdminSummary
    #   resp.data.app_instance_admins[0].admin #=> Types::Identity
    #   resp.data.app_instance_admins[0].admin.arn #=> String
    #   resp.data.app_instance_admins[0].admin.name #=> String
    #   resp.data.next_token #=> String
    #
    def list_app_instance_admins(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppInstanceAdminsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppInstanceAdminsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppInstanceAdmins
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListAppInstanceAdmins
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppInstanceAdmins,
        stubs: @stubs,
        params_class: Params::ListAppInstanceAdminsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_instance_admins
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the <code>AppInstanceUserEndpoints</code> created under a single <code>AppInstanceUser</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppInstanceUserEndpointsInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of endpoints that you want to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested endpoints are returned.</p>
    #
    # @return [Types::ListAppInstanceUserEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_user_endpoints(
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppInstanceUserEndpointsOutput
    #   resp.data.app_instance_user_endpoints #=> Array<AppInstanceUserEndpointSummary>
    #   resp.data.app_instance_user_endpoints[0] #=> Types::AppInstanceUserEndpointSummary
    #   resp.data.app_instance_user_endpoints[0].app_instance_user_arn #=> String
    #   resp.data.app_instance_user_endpoints[0].endpoint_id #=> String
    #   resp.data.app_instance_user_endpoints[0].name #=> String
    #   resp.data.app_instance_user_endpoints[0].type #=> String, one of ["APNS", "APNS_SANDBOX", "GCM"]
    #   resp.data.app_instance_user_endpoints[0].allow_messages #=> String, one of ["ALL", "NONE"]
    #   resp.data.app_instance_user_endpoints[0].endpoint_state #=> Types::EndpointState
    #   resp.data.app_instance_user_endpoints[0].endpoint_state.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.app_instance_user_endpoints[0].endpoint_state.status_reason #=> String, one of ["INVALID_DEVICE_TOKEN", "INVALID_PINPOINT_ARN"]
    #   resp.data.next_token #=> String
    #
    def list_app_instance_user_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppInstanceUserEndpointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppInstanceUserEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppInstanceUserEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListAppInstanceUserEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppInstanceUserEndpoints,
        stubs: @stubs,
        params_class: Params::ListAppInstanceUserEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_instance_user_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all <code>AppInstanceUsers</code> created under a single
    #          <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppInstanceUsersInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of requests that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    #
    # @return [Types::ListAppInstanceUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_users(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppInstanceUsersOutput
    #   resp.data.app_instance_arn #=> String
    #   resp.data.app_instance_users #=> Array<AppInstanceUserSummary>
    #   resp.data.app_instance_users[0] #=> Types::AppInstanceUserSummary
    #   resp.data.app_instance_users[0].app_instance_user_arn #=> String
    #   resp.data.app_instance_users[0].name #=> String
    #   resp.data.app_instance_users[0].metadata #=> String
    #   resp.data.next_token #=> String
    #
    def list_app_instance_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppInstanceUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppInstanceUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppInstanceUsers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListAppInstanceUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppInstanceUsers,
        stubs: @stubs,
        params_class: Params::ListAppInstanceUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_instance_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all Amazon Chime <code>AppInstance</code>s created under a single AWS
    #          account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppInstancesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of <code>AppInstance</code>s that you want to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API requests until you reach the maximum number of
    #               <code>AppInstances</code>.</p>
    #
    # @return [Types::ListAppInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instances(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppInstancesOutput
    #   resp.data.app_instances #=> Array<AppInstanceSummary>
    #   resp.data.app_instances[0] #=> Types::AppInstanceSummary
    #   resp.data.app_instances[0].app_instance_arn #=> String
    #   resp.data.app_instances[0].name #=> String
    #   resp.data.app_instances[0].metadata #=> String
    #   resp.data.next_token #=> String
    #
    def list_app_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListAppInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppInstances,
        stubs: @stubs,
        params_class: Params::ListAppInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags applied to an Amazon Chime SDK identity resource.</p>
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
    #     resource_arn: 'ResourceARN' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
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

    # <p>Sets the amount of time in days that a given <code>AppInstance</code> retains
    #          data.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAppInstanceRetentionSettingsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [AppInstanceRetentionSettings] :app_instance_retention_settings
    #   <p>The time in days to retain data. Data type: number.</p>
    #
    # @return [Types::PutAppInstanceRetentionSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_instance_retention_settings(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     app_instance_retention_settings: {
    #       channel_retention_settings: {
    #         retention_days: 1
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAppInstanceRetentionSettingsOutput
    #   resp.data.app_instance_retention_settings #=> Types::AppInstanceRetentionSettings
    #   resp.data.app_instance_retention_settings.channel_retention_settings #=> Types::ChannelRetentionSettings
    #   resp.data.app_instance_retention_settings.channel_retention_settings.retention_days #=> Integer
    #   resp.data.initiate_deletion_timestamp #=> Time
    #
    def put_app_instance_retention_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAppInstanceRetentionSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAppInstanceRetentionSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAppInstanceRetentionSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::PutAppInstanceRetentionSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAppInstanceRetentionSettings,
        stubs: @stubs,
        params_class: Params::PutAppInstanceRetentionSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_app_instance_retention_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers an endpoint under an Amazon Chime <code>AppInstanceUser</code>. The endpoint receives messages for a user. For push notifications, the endpoint is a mobile device used to receive mobile push notifications for a user.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterAppInstanceUserEndpointInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    # @option params [String] :type
    #   <p>The type of the <code>AppInstanceUserEndpoint</code>. Supported types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>APNS</code>: The mobile notification service for an Apple device.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APNS_SANDBOX</code>: The sandbox environment of the mobile notification service for an Apple device.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GCM</code>: The mobile notification service for an Android device.</p>
    #               </li>
    #            </ul>
    #            <p>Populate the <code>ResourceArn</code> value of each type as <code>PinpointAppArn</code>.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to which the endpoint belongs.</p>
    #
    # @option params [EndpointAttributes] :endpoint_attributes
    #   <p>The attributes of an <code>Endpoint</code>.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The idempotency token for each client request. </p>
    #
    # @option params [String] :allow_messages
    #   <p>Boolean that controls whether the AppInstanceUserEndpoint is opted in to receive messages. <code>ALL</code> indicates the endpoint receives all messages.
    #            <code>NONE</code> indicates the endpoint receives no messages.</p>
    #
    # @return [Types::RegisterAppInstanceUserEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_app_instance_user_endpoint(
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     name: 'Name',
    #     type: 'APNS', # required - accepts ["APNS", "APNS_SANDBOX", "GCM"]
    #     resource_arn: 'ResourceArn', # required
    #     endpoint_attributes: {
    #       device_token: 'DeviceToken', # required
    #       voip_device_token: 'VoipDeviceToken'
    #     }, # required
    #     client_request_token: 'ClientRequestToken', # required
    #     allow_messages: 'ALL' # accepts ["ALL", "NONE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterAppInstanceUserEndpointOutput
    #   resp.data.app_instance_user_arn #=> String
    #   resp.data.endpoint_id #=> String
    #
    def register_app_instance_user_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterAppInstanceUserEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterAppInstanceUserEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterAppInstanceUserEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ConflictException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::RegisterAppInstanceUserEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterAppInstanceUserEndpoint,
        stubs: @stubs,
        params_class: Params::RegisterAppInstanceUserEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_app_instance_user_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies the specified tags to the specified Amazon Chime SDK identity resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
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

    # <p>Removes the specified tags from the specified Amazon Chime SDK identity resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
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

    # <p>Updates <code>AppInstance</code> metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAppInstanceInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [String] :name
    #   <p>The name that you want to change.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata that you want to change.</p>
    #
    # @return [Types::UpdateAppInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     name: 'Name', # required
    #     metadata: 'Metadata' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAppInstanceOutput
    #   resp.data.app_instance_arn #=> String
    #
    def update_app_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAppInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAppInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAppInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ConflictException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateAppInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAppInstance,
        stubs: @stubs,
        params_class: Params::UpdateAppInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_app_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details of an <code>AppInstanceUser</code>. You can update names and
    #          metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #
    # @return [Types::UpdateAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance_user(
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     name: 'Name', # required
    #     metadata: 'Metadata' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAppInstanceUserOutput
    #   resp.data.app_instance_user_arn #=> String
    #
    def update_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAppInstanceUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAppInstanceUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ConflictException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAppInstanceUser,
        stubs: @stubs,
        params_class: Params::UpdateAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details of an <code>AppInstanceUserEndpoint</code>. You can update the name and <code>AllowMessage</code> values.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAppInstanceUserEndpointInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    # @option params [String] :endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    #
    # @option params [String] :allow_messages
    #   <p>Boolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages.
    #            <code>NONE</code> indicates the endpoint will receive no messages.</p>
    #
    # @return [Types::UpdateAppInstanceUserEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance_user_endpoint(
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     endpoint_id: 'EndpointId', # required
    #     name: 'Name',
    #     allow_messages: 'ALL' # accepts ["ALL", "NONE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAppInstanceUserEndpointOutput
    #   resp.data.app_instance_user_arn #=> String
    #   resp.data.endpoint_id #=> String
    #
    def update_app_instance_user_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAppInstanceUserEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAppInstanceUserEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAppInstanceUserEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ConflictException, Errors::ForbiddenException, Errors::UnauthorizedClientException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateAppInstanceUserEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAppInstanceUserEndpoint,
        stubs: @stubs,
        params_class: Params::UpdateAppInstanceUserEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_app_instance_user_endpoint
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
