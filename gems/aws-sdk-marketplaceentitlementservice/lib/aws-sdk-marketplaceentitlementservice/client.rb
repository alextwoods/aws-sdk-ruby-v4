# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::MarketplaceEntitlementService
  # An API client for AWSMPEntitlementService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Marketplace Entitlement Service</fullname>
  #          <p>This reference provides descriptions of the AWS Marketplace Entitlement Service
  #    API.</p>
  #          <p>AWS Marketplace Entitlement Service is used to determine the entitlement of a customer to
  #       a given product. An entitlement represents capacity in a product owned by the customer. For
  #       example, a customer might own some number of users or seats in an SaaS application or some
  #       amount of data capacity in a multi-tenant database.</p>
  #          <p>
  #             <b>Getting Entitlement Records</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <i>GetEntitlements</i>- Gets the entitlements for a Marketplace
  #      product.</p>
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
    def initialize(config = AWS::SDK::MarketplaceEntitlementService::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>GetEntitlements retrieves entitlement values for a given product. The results can be
    #       filtered based on customer identifier or product dimensions.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEntitlementsInput}.
    #
    # @option params [String] :product_code
    #   <p>Product code is used to uniquely identify a product in AWS Marketplace. The product code
    #      will be provided by AWS Marketplace when the product listing is created.</p>
    #
    # @option params [Hash<String, Array<String>>] :filter
    #   <p>Filter is used to return entitlements for a specific customer or for a specific
    #         dimension. Filters are described as keys mapped to a lists of values. Filtered requests are
    #           <i>unioned</i> for each value in the value list, and then
    #           <i>intersected</i> for each filter key.</p>
    #
    # @option params [String] :next_token
    #   <p>For paginated calls to GetEntitlements, pass the NextToken from the previous
    #      GetEntitlementsResult.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to retrieve from the GetEntitlements operation. For
    #      pagination, use the NextToken field in subsequent calls to GetEntitlements.</p>
    #
    # @return [Types::GetEntitlementsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_entitlements(
    #     product_code: 'ProductCode', # required
    #     filter: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEntitlementsOutput
    #   resp.data.entitlements #=> Array<Entitlement>
    #   resp.data.entitlements[0] #=> Types::Entitlement
    #   resp.data.entitlements[0].product_code #=> String
    #   resp.data.entitlements[0].dimension #=> String
    #   resp.data.entitlements[0].customer_identifier #=> String
    #   resp.data.entitlements[0].value #=> EntitlementValue
    #   resp.data.entitlements[0].expiration_date #=> Time
    #   resp.data.next_token #=> String
    #
    def get_entitlements(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEntitlementsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEntitlementsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEntitlements
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InternalServiceErrorException, Errors::ThrottlingException]),
        data_parser: Parsers::GetEntitlements
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEntitlements,
        stubs: @stubs,
        params_class: Params::GetEntitlementsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_entitlements
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
