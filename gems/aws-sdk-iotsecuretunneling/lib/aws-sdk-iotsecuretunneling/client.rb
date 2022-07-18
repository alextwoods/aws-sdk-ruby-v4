# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoTSecureTunneling
  # An API client for IoTSecuredTunneling
  # See {#initialize} for a full list of supported configuration options
  # <fullname>IoT Secure Tunneling</fullname>
  # 		       <p>IoT Secure Tunneling creates remote connections to devices deployed in the
  # 			field.</p>
  # 		       <p>For more information about how IoT Secure Tunneling works, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/secure-tunneling.html">IoT
  # 				Secure Tunneling</a>.</p>
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
    def initialize(config = AWS::SDK::IoTSecureTunneling::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Closes a tunnel identified by the unique tunnel id. When a <code>CloseTunnel</code>
    # 			request is received, we close the WebSocket connections between the client and proxy
    # 			server so no data can be transmitted.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CloseTunnel</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CloseTunnelInput}.
    #
    # @option params [String] :tunnel_id
    #   <p>The ID of the tunnel to close.</p>
    #
    # @option params [Boolean] :delete
    #   <p>When set to true, IoT Secure Tunneling deletes the tunnel data
    #   			immediately.</p>
    #
    # @return [Types::CloseTunnelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.close_tunnel(
    #     tunnel_id: 'tunnelId', # required
    #     delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CloseTunnelOutput
    #
    def close_tunnel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CloseTunnelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CloseTunnelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CloseTunnel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::CloseTunnel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CloseTunnel,
        stubs: @stubs,
        params_class: Params::CloseTunnelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :close_tunnel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a tunnel identified by the unique tunnel id.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeTunnel</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTunnelInput}.
    #
    # @option params [String] :tunnel_id
    #   <p>The tunnel to describe.</p>
    #
    # @return [Types::DescribeTunnelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tunnel(
    #     tunnel_id: 'tunnelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTunnelOutput
    #   resp.data.tunnel #=> Types::Tunnel
    #   resp.data.tunnel.tunnel_id #=> String
    #   resp.data.tunnel.tunnel_arn #=> String
    #   resp.data.tunnel.status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.tunnel.source_connection_state #=> Types::ConnectionState
    #   resp.data.tunnel.source_connection_state.status #=> String, one of ["CONNECTED", "DISCONNECTED"]
    #   resp.data.tunnel.source_connection_state.last_updated_at #=> Time
    #   resp.data.tunnel.destination_connection_state #=> Types::ConnectionState
    #   resp.data.tunnel.description #=> String
    #   resp.data.tunnel.destination_config #=> Types::DestinationConfig
    #   resp.data.tunnel.destination_config.thing_name #=> String
    #   resp.data.tunnel.destination_config.services #=> Array<String>
    #   resp.data.tunnel.destination_config.services[0] #=> String
    #   resp.data.tunnel.timeout_config #=> Types::TimeoutConfig
    #   resp.data.tunnel.timeout_config.max_lifetime_timeout_minutes #=> Integer
    #   resp.data.tunnel.tags #=> Array<Tag>
    #   resp.data.tunnel.tags[0] #=> Types::Tag
    #   resp.data.tunnel.tags[0].key #=> String
    #   resp.data.tunnel.tags[0].value #=> String
    #   resp.data.tunnel.created_at #=> Time
    #   resp.data.tunnel.last_updated_at #=> Time
    #
    def describe_tunnel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTunnelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTunnelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTunnel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeTunnel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTunnel,
        stubs: @stubs,
        params_class: Params::DescribeTunnelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tunnel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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

    # <p>List all tunnels for an Amazon Web Services account. Tunnels are listed by creation time in
    # 			descending order, newer tunnels will be listed before older tunnels.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTunnels</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTunnelsInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the IoT thing associated with the destination device.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at once.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the nextToken value from a previous response;
    #   			otherwise null to receive the first set of results.</p>
    #
    # @return [Types::ListTunnelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tunnels(
    #     thing_name: 'thingName',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTunnelsOutput
    #   resp.data.tunnel_summaries #=> Array<TunnelSummary>
    #   resp.data.tunnel_summaries[0] #=> Types::TunnelSummary
    #   resp.data.tunnel_summaries[0].tunnel_id #=> String
    #   resp.data.tunnel_summaries[0].tunnel_arn #=> String
    #   resp.data.tunnel_summaries[0].status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.tunnel_summaries[0].description #=> String
    #   resp.data.tunnel_summaries[0].created_at #=> Time
    #   resp.data.tunnel_summaries[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_tunnels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTunnelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTunnelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTunnels
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
        data_parser: Parsers::ListTunnels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTunnels,
        stubs: @stubs,
        params_class: Params::ListTunnelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tunnels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new tunnel, and returns two client access tokens for clients to use to
    # 			connect to the IoT Secure Tunneling proxy server.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">OpenTunnel</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::OpenTunnelInput}.
    #
    # @option params [String] :description
    #   <p>A short text description of the tunnel. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of tag metadata.</p>
    #
    # @option params [DestinationConfig] :destination_config
    #   <p>The destination configuration for the OpenTunnel request.</p>
    #
    # @option params [TimeoutConfig] :timeout_config
    #   <p>Timeout configuration for a tunnel.</p>
    #
    # @return [Types::OpenTunnelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.open_tunnel(
    #     description: 'description',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     destination_config: {
    #       thing_name: 'thingName',
    #       services: [
    #         'member'
    #       ] # required
    #     },
    #     timeout_config: {
    #       max_lifetime_timeout_minutes: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::OpenTunnelOutput
    #   resp.data.tunnel_id #=> String
    #   resp.data.tunnel_arn #=> String
    #   resp.data.source_access_token #=> String
    #   resp.data.destination_access_token #=> String
    #
    def open_tunnel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::OpenTunnelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::OpenTunnelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::OpenTunnel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException]),
        data_parser: Parsers::OpenTunnel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::OpenTunnel,
        stubs: @stubs,
        params_class: Params::OpenTunnelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :open_tunnel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes the current client access token (CAT) and returns new CAT for clients to
    # 			use when reconnecting to secure tunneling to access the same tunnel.</p>
    # 		       <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RotateTunnelAccessToken</a> action.</p>
    # 		       <note>
    # 			         <p>Rotating the CAT doesn't extend the tunnel duration. For example, say the tunnel
    # 				duration is 12 hours and the tunnel has already been open for 4 hours. When you
    # 				rotate the access tokens, the new tokens that are generated can only be used for the
    # 				remaining 8 hours.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::RotateTunnelAccessTokenInput}.
    #
    # @option params [String] :tunnel_id
    #   <p>The tunnel for which you want to rotate the access tokens.</p>
    #
    # @option params [String] :client_mode
    #   <p>The mode of the client that will use the client token, which can be either the source
    #   			or destination, or both source and destination.</p>
    #
    # @option params [DestinationConfig] :destination_config
    #   <p>The destination configuration.</p>
    #
    # @return [Types::RotateTunnelAccessTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_tunnel_access_token(
    #     tunnel_id: 'tunnelId', # required
    #     client_mode: 'SOURCE', # required - accepts ["SOURCE", "DESTINATION", "ALL"]
    #     destination_config: {
    #       thing_name: 'thingName',
    #       services: [
    #         'member'
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RotateTunnelAccessTokenOutput
    #   resp.data.tunnel_arn #=> String
    #   resp.data.source_access_token #=> String
    #   resp.data.destination_access_token #=> String
    #
    def rotate_tunnel_access_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RotateTunnelAccessTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RotateTunnelAccessTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RotateTunnelAccessToken
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::RotateTunnelAccessToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RotateTunnelAccessToken,
        stubs: @stubs,
        params_class: Params::RotateTunnelAccessTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rotate_tunnel_access_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A resource tag.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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

    # <p>Removes a tag from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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
