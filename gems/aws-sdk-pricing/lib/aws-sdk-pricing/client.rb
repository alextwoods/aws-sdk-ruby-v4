# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Pricing
  # An API client for AWSPriceListService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services Price List Service API (Amazon Web Services Price List Service) is a centralized and convenient way to
  #          programmatically query Amazon Web Services for services, products, and pricing information. The Amazon Web Services Price List Service
  #          uses standardized product attributes such as <code>Location</code>, <code>Storage
  #             Class</code>, and <code>Operating System</code>, and provides prices at the SKU
  #          level. You can use the Amazon Web Services Price List Service to build cost control and scenario planning tools, reconcile
  #          billing data, forecast future spend for budgeting purposes, and provide cost benefit
  #          analysis that compare your internal workloads with Amazon Web Services.</p>
  #          <p>Use <code>GetServices</code> without a service code to retrieve the service codes for all AWS services, then
  #          <code>GetServices</code> with a service code to retrieve the attribute names for
  #          that service. After you have the service code and attribute names, you can use <code>GetAttributeValues</code>
  #          to see what values are available for an attribute. With the service code and an attribute name and value,
  #          you can use <code>GetProducts</code> to find specific products that you're interested in, such as
  #          an <code>AmazonEC2</code> instance, with a <code>Provisioned IOPS</code>
  #             <code>volumeType</code>.</p>
  #          <p>Service Endpoint</p>
  #          <p>Amazon Web Services Price List Service API provides the following two endpoints:</p>
  #          <ul>
  #             <li>
  #                <p>https://api.pricing.us-east-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>https://api.pricing.ap-south-1.amazonaws.com</p>
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
    def initialize(config = AWS::SDK::Pricing::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Returns the metadata for one service or a list of the metadata for all services. Use
    #          this without a service code to get the service codes for all services.
    #          Use it with a service code, such as <code>AmazonEC2</code>, to get information specific to
    #          that service, such as the attribute
    #          names available for that service. For example, some of the attribute names available for EC2 are
    #          <code>volumeType</code>, <code>maxIopsVolume</code>, <code>operation</code>,
    #          <code>locationType</code>, and <code>instanceCapacity10xlarge</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServicesInput}.
    #
    # @option params [String] :service_code
    #   <p>The code for the service whose information you want to retrieve, such as <code>AmazonEC2</code>.
    #             You can use
    #            the <code>ServiceCode</code> to filter the results in a <code>GetProducts</code> call.
    #         To retrieve a list of all services, leave this blank.</p>
    #
    # @option params [String] :format_version
    #   <p>The format version that you want the response to be in.</p>
    #            <p>Valid values are: <code>aws_v1</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want returned in the response.</p>
    #
    # @return [Types::DescribeServicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_services(
    #     service_code: 'ServiceCode',
    #     format_version: 'FormatVersion',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServicesOutput
    #   resp.data.services #=> Array<Service>
    #   resp.data.services[0] #=> Types::Service
    #   resp.data.services[0].service_code #=> String
    #   resp.data.services[0].attribute_names #=> Array<String>
    #   resp.data.services[0].attribute_names[0] #=> String
    #   resp.data.format_version #=> String
    #   resp.data.next_token #=> String
    #
    def describe_services(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServicesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::InternalErrorException, Errors::ExpiredNextTokenException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeServices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServices,
        stubs: @stubs,
        params_class: Params::DescribeServicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_services
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of attribute values. Attributes are similar to the details
    #           in a Price List API offer file. For a list of available attributes, see
    #          <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs">Offer File Definitions</a>
    #          in the <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html">Amazon Web Services Billing and Cost Management User Guide</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAttributeValuesInput}.
    #
    # @option params [String] :service_code
    #   <p>The service code for the service whose attributes you want to retrieve. For example, if you want
    #             the retrieve an EC2 attribute, use <code>AmazonEC2</code>.</p>
    #
    # @option params [String] :attribute_name
    #   <p>The name of the attribute that you want to retrieve the values for, such as <code>volumeType</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in response.</p>
    #
    # @return [Types::GetAttributeValuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attribute_values(
    #     service_code: 'ServiceCode', # required
    #     attribute_name: 'AttributeName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAttributeValuesOutput
    #   resp.data.attribute_values #=> Array<AttributeValue>
    #   resp.data.attribute_values[0] #=> Types::AttributeValue
    #   resp.data.attribute_values[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def get_attribute_values(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAttributeValuesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAttributeValuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAttributeValues
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::InternalErrorException, Errors::ExpiredNextTokenException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetAttributeValues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAttributeValues,
        stubs: @stubs,
        params_class: Params::GetAttributeValuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_attribute_values
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all products that match the filter criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProductsInput}.
    #
    # @option params [String] :service_code
    #   <p>The code for the service whose products you want to retrieve. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>The list of filters that limit the returned products. only products that match all filters
    #            are returned.</p>
    #
    # @option params [String] :format_version
    #   <p>The format version that you want the response to be in.</p>
    #            <p>Valid values are: <code>aws_v1</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::GetProductsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_products(
    #     service_code: 'ServiceCode',
    #     filters: [
    #       {
    #         type: 'TERM_MATCH', # required - accepts ["TERM_MATCH"]
    #         field: 'Field', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     format_version: 'FormatVersion',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProductsOutput
    #   resp.data.format_version #=> String
    #   resp.data.price_list #=> Array<String>
    #   resp.data.price_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def get_products(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProductsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProductsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProducts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidParameterException, Errors::InternalErrorException, Errors::ExpiredNextTokenException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::GetProducts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProducts,
        stubs: @stubs,
        params_class: Params::GetProductsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_products
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
