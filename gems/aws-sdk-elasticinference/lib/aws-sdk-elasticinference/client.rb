# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::ElasticInference
  # An API client for EC2MatterhornCfSoothsayerApiGatewayLambda
  # See {#initialize} for a full list of supported configuration options
  # <p>
  #             Elastic Inference public APIs.
  #         </p>
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
    def initialize(config = AWS::SDK::ElasticInference::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>
    #             Describes the locations in which a given accelerator type or set of types is present in a given region.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAcceleratorOfferingsInput}.
    #
    # @option params [String] :location_type
    #   <p>
    #               The location type that you want to describe accelerator type offerings for. It can assume the following values:
    #               region: will return the accelerator type offering at the regional level.
    #               availability-zone: will return the accelerator type offering at the availability zone level.
    #               availability-zone-id: will return the accelerator type offering at the availability zone level returning the availability zone id.
    #           </p>
    #
    # @option params [Array<String>] :accelerator_types
    #   <p>
    #               The list of accelerator types to describe.
    #           </p>
    #
    # @return [Types::DescribeAcceleratorOfferingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_accelerator_offerings(
    #     location_type: 'region', # required - accepts ["region", "availability-zone", "availability-zone-id"]
    #     accelerator_types: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAcceleratorOfferingsOutput
    #   resp.data.accelerator_type_offerings #=> Array<AcceleratorTypeOffering>
    #   resp.data.accelerator_type_offerings[0] #=> Types::AcceleratorTypeOffering
    #   resp.data.accelerator_type_offerings[0].accelerator_type #=> String
    #   resp.data.accelerator_type_offerings[0].location_type #=> String, one of ["region", "availability-zone", "availability-zone-id"]
    #   resp.data.accelerator_type_offerings[0].location #=> String
    #
    def describe_accelerator_offerings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAcceleratorOfferingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAcceleratorOfferingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAcceleratorOfferings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::BadRequestException]),
        data_parser: Parsers::DescribeAcceleratorOfferings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAcceleratorOfferings,
        stubs: @stubs,
        params_class: Params::DescribeAcceleratorOfferingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_accelerator_offerings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Describes the accelerator types available in a given region, as well as their characteristics, such as memory and throughput.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAcceleratorTypesInput}.
    #
    # @return [Types::DescribeAcceleratorTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_accelerator_types()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAcceleratorTypesOutput
    #   resp.data.accelerator_types #=> Array<AcceleratorType>
    #   resp.data.accelerator_types[0] #=> Types::AcceleratorType
    #   resp.data.accelerator_types[0].accelerator_type_name #=> String
    #   resp.data.accelerator_types[0].memory_info #=> Types::MemoryInfo
    #   resp.data.accelerator_types[0].memory_info.size_in_mi_b #=> Integer
    #   resp.data.accelerator_types[0].throughput_info #=> Array<KeyValuePair>
    #   resp.data.accelerator_types[0].throughput_info[0] #=> Types::KeyValuePair
    #   resp.data.accelerator_types[0].throughput_info[0].key #=> String
    #   resp.data.accelerator_types[0].throughput_info[0].value #=> Integer
    #
    def describe_accelerator_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAcceleratorTypesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAcceleratorTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAcceleratorTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException]),
        data_parser: Parsers::DescribeAcceleratorTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAcceleratorTypes,
        stubs: @stubs,
        params_class: Params::DescribeAcceleratorTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_accelerator_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Describes information over a provided set of accelerators belonging to an account.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAcceleratorsInput}.
    #
    # @option params [Array<String>] :accelerator_ids
    #   <p>
    #               The IDs of the accelerators to describe.
    #           </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>
    #               One or more filters. Filter names and values are case-sensitive. Valid filter names are:
    #               accelerator-types: can provide a list of accelerator type names to filter for.
    #               instance-id: can provide a list of EC2 instance ids to filter for.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #               The total number of items to return in the command's output. If the total number of items available is more than the value specified, a NextToken is provided in the command's output.
    #               To resume pagination, provide the NextToken value in the starting-token argument of a subsequent command.
    #               Do not use the NextToken response element directly outside of the AWS CLI.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>
    #               A token to specify where to start paginating. This is the NextToken from a previously truncated response.
    #           </p>
    #
    # @return [Types::DescribeAcceleratorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_accelerators(
    #     accelerator_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAcceleratorsOutput
    #   resp.data.accelerator_set #=> Array<ElasticInferenceAccelerator>
    #   resp.data.accelerator_set[0] #=> Types::ElasticInferenceAccelerator
    #   resp.data.accelerator_set[0].accelerator_health #=> Types::ElasticInferenceAcceleratorHealth
    #   resp.data.accelerator_set[0].accelerator_health.status #=> String
    #   resp.data.accelerator_set[0].accelerator_type #=> String
    #   resp.data.accelerator_set[0].accelerator_id #=> String
    #   resp.data.accelerator_set[0].availability_zone #=> String
    #   resp.data.accelerator_set[0].attached_resource #=> String
    #   resp.data.next_token #=> String
    #
    def describe_accelerators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAcceleratorsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAcceleratorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccelerators
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::BadRequestException]),
        data_parser: Parsers::DescribeAccelerators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccelerators,
        stubs: @stubs,
        params_class: Params::DescribeAcceleratorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_accelerators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Returns all tags of an Elastic Inference Accelerator.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #               The ARN of the Elastic Inference Accelerator to list the tags for.
    #           </p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::BadRequestException]),
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

    # <p>
    #             Adds the specified tags to an Elastic Inference Accelerator.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #               The ARN of the Elastic Inference Accelerator to tag.
    #           </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #               The tags to add to the Elastic Inference Accelerator.
    #           </p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::BadRequestException]),
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

    # <p>
    #             Removes the specified tags from an Elastic Inference Accelerator.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #               The ARN of the Elastic Inference Accelerator to untag.
    #           </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>
    #               The list of tags to remove from the Elastic Inference Accelerator.
    #           </p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::BadRequestException]),
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
