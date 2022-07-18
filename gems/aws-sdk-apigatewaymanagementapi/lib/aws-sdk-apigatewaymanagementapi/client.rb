# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ApiGatewayManagementApi
  # An API client for ApiGatewayManagementApi
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amazon API Gateway Management API allows you to directly manage runtime aspects of your deployed APIs. To use it, you must explicitly set the SDK's endpoint to point to the endpoint of your deployed API. The endpoint will be of the form https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be the endpoint corresponding to your API's custom domain and base path, if applicable.</p>
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
    def initialize(config = AWS::SDK::ApiGatewayManagementApi::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Delete the connection with the provided id.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectionInput}.
    #
    # @return [Types::DeleteConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection(
    #     connection_id: 'ConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectionOutput
    #
    def delete_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ForbiddenException, Errors::LimitExceededException, Errors::GoneException]),
        data_parser: Parsers::DeleteConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnection,
        stubs: @stubs,
        params_class: Params::DeleteConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get information about the connection with the provided id.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConnectionInput}.
    #
    # @return [Types::GetConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection(
    #     connection_id: 'ConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectionOutput
    #   resp.data.connected_at #=> Time
    #   resp.data.identity #=> Types::Identity
    #   resp.data.identity.source_ip #=> String
    #   resp.data.identity.user_agent #=> String
    #   resp.data.last_active_at #=> Time
    #
    def get_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::LimitExceededException, Errors::GoneException]),
        data_parser: Parsers::GetConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnection,
        stubs: @stubs,
        params_class: Params::GetConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends the provided data to the specified connection.</p>
    #
    # @param [Hash] params
    #   See {Types::PostToConnectionInput}.
    #
    # @option params [String] :data
    #   <p>The data to be sent to the client specified by its connection id.</p>
    #
    # @option params [String] :connection_id
    #   <p>The identifier of the connection that a specific client is using.</p>
    #
    # @return [Types::PostToConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_to_connection(
    #     data: 'Data', # required
    #     connection_id: 'ConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PostToConnectionOutput
    #
    def post_to_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PostToConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PostToConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PostToConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::PayloadTooLargeException, Errors::LimitExceededException, Errors::GoneException]),
        data_parser: Parsers::PostToConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PostToConnection,
        stubs: @stubs,
        params_class: Params::PostToConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :post_to_connection
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
