# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::S3Outposts
  # An API client for S3Outposts
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon S3 on Outposts provides access to S3 on Outposts operations.</p>
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
    def initialize(config = AWS::SDK::S3Outposts::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an endpoint and associates it with the specified Outpost.</p>
    #         <note>
    #             <p>It can take up to 5 minutes for this action to finish.</p>
    #          </note>
    #         <p></p>
    #         <p>Related actions include:</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html">DeleteEndpoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html">ListEndpoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateEndpointInput}.
    #
    # @option params [String] :outpost_id
    #   <p>The ID of the Outposts. </p>
    #
    # @option params [String] :subnet_id
    #   <p>The ID of the subnet in the selected VPC. The endpoint subnet must belong to the Outpost
    #               that has Amazon S3 on Outposts provisioned.</p>
    #
    # @option params [String] :security_group_id
    #   <p>The ID of the security group to use with the endpoint.</p>
    #
    # @option params [String] :access_type
    #   <p>The type of access for the network connectivity for the Amazon S3 on Outposts endpoint. To use
    #               the Amazon Web Services VPC, choose <code>Private</code>. To use the endpoint with an on-premises
    #               network, choose <code>CustomerOwnedIp</code>.  If you choose
    #                   <code>CustomerOwnedIp</code>, you must also provide the customer-owned IP address
    #               pool (CoIP pool).</p>
    #           <note>
    #               <p>
    #                  <code>Private</code> is the default access type value.</p>
    #            </note>
    #
    # @option params [String] :customer_owned_ipv4_pool
    #   <p>The ID of the customer-owned IPv4 address pool (CoIP pool) for the endpoint. IP addresses
    #               are allocated from this pool for the endpoint.</p>
    #
    # @return [Types::CreateEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint(
    #     outpost_id: 'OutpostId', # required
    #     subnet_id: 'SubnetId', # required
    #     security_group_id: 'SecurityGroupId', # required
    #     access_type: 'Private', # accepts ["Private", "CustomerOwnedIp"]
    #     customer_owned_ipv4_pool: 'CustomerOwnedIpv4Pool'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEndpointOutput
    #   resp.data.endpoint_arn #=> String
    #
    def create_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::CreateEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEndpoint,
        stubs: @stubs,
        params_class: Params::CreateEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an endpoint.</p>
    #             <note>
    #             <p>It can take up to 5 minutes for this action to finish.</p>
    #          </note>
    #         <p></p>
    #         <p>Related actions include:</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html">CreateEndpoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html">ListEndpoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteEndpointInput}.
    #
    # @option params [String] :endpoint_id
    #   <p>The ID of the endpoint.</p>
    #
    # @option params [String] :outpost_id
    #   <p>The ID of the Outposts. </p>
    #
    # @return [Types::DeleteEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint(
    #     endpoint_id: 'EndpointId', # required
    #     outpost_id: 'OutpostId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEndpointOutput
    #
    def delete_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists endpoints associated with the specified Outpost. </p>
    #         <p>Related actions include:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html">CreateEndpoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html">DeleteEndpoint</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListEndpointsInput}.
    #
    # @option params [String] :next_token
    #   <p>If a previous response from this operation included a <code>NextToken</code> value,
    #               provide that value here to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of endpoints that will be returned in the response.</p>
    #
    # @return [Types::ListEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoints(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEndpointsOutput
    #   resp.data.endpoints #=> Array<Endpoint>
    #   resp.data.endpoints[0] #=> Types::Endpoint
    #   resp.data.endpoints[0].endpoint_arn #=> String
    #   resp.data.endpoints[0].outposts_id #=> String
    #   resp.data.endpoints[0].cidr_block #=> String
    #   resp.data.endpoints[0].status #=> String, one of ["Pending", "Available", "Deleting"]
    #   resp.data.endpoints[0].creation_time #=> Time
    #   resp.data.endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.endpoints[0].vpc_id #=> String
    #   resp.data.endpoints[0].subnet_id #=> String
    #   resp.data.endpoints[0].security_group_id #=> String
    #   resp.data.endpoints[0].access_type #=> String, one of ["Private", "CustomerOwnedIp"]
    #   resp.data.endpoints[0].customer_owned_ipv4_pool #=> String
    #   resp.data.next_token #=> String
    #
    def list_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEndpointsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::ListEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEndpoints,
        stubs: @stubs,
        params_class: Params::ListEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all endpoints associated with an Outpost that has been shared by Amazon Web Services Resource Access Manager (RAM).</p>
    #         <p>Related actions include:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html">CreateEndpoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html">DeleteEndpoint</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListSharedEndpointsInput}.
    #
    # @option params [String] :next_token
    #   <p>If a previous response from this operation included a <code>NextToken</code> value, you
    #               can provide that value here to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of endpoints that will be returned in the response.</p>
    #
    # @option params [String] :outpost_id
    #   <p>The ID of the Amazon Web Services Outpost.</p>
    #
    # @return [Types::ListSharedEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_shared_endpoints(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     outpost_id: 'OutpostId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSharedEndpointsOutput
    #   resp.data.endpoints #=> Array<Endpoint>
    #   resp.data.endpoints[0] #=> Types::Endpoint
    #   resp.data.endpoints[0].endpoint_arn #=> String
    #   resp.data.endpoints[0].outposts_id #=> String
    #   resp.data.endpoints[0].cidr_block #=> String
    #   resp.data.endpoints[0].status #=> String, one of ["Pending", "Available", "Deleting"]
    #   resp.data.endpoints[0].creation_time #=> Time
    #   resp.data.endpoints[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.endpoints[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.data.endpoints[0].vpc_id #=> String
    #   resp.data.endpoints[0].subnet_id #=> String
    #   resp.data.endpoints[0].security_group_id #=> String
    #   resp.data.endpoints[0].access_type #=> String, one of ["Private", "CustomerOwnedIp"]
    #   resp.data.endpoints[0].customer_owned_ipv4_pool #=> String
    #   resp.data.next_token #=> String
    #
    def list_shared_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSharedEndpointsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSharedEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSharedEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::ListSharedEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSharedEndpoints,
        stubs: @stubs,
        params_class: Params::ListSharedEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_shared_endpoints
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
