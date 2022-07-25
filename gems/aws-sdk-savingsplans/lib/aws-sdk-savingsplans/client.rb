# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Savingsplans
  # An API client for AWSSavingsPlan
  # See {#initialize} for a full list of supported configuration options
  # <p>Savings Plans are a pricing model that offer significant savings on AWS usage (for
  #         example, on Amazon EC2 instances). You commit to a consistent amount of usage, in USD
  #         per hour, for a term of 1 or 3 years, and receive a lower price for that usage. For
  #         more information, see the <a href="https://docs.aws.amazon.com/savingsplans/latest/userguide/">AWS Savings Plans User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::Savingsplans::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a Savings Plan.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSavingsPlanInput}.
    #
    # @option params [String] :savings_plan_offering_id
    #   <p>The ID of the offering.</p>
    #
    # @option params [String] :commitment
    #   <p>The hourly commitment, in USD. This is a value between 0.001 and 1 million. You cannot specify more
    #           than five digits after the decimal point.</p>
    #
    # @option params [String] :upfront_payment_amount
    #   <p>The up-front payment amount. This is a whole number between 50 and 99 percent of the total value of the Savings Plan.
    #          This parameter is supported only if the payment option is <code>Partial Upfront</code>.</p>
    #
    # @option params [Time] :purchase_time
    #   <p>The time at which to purchase the Savings Plan, in UTC format (YYYY-MM-DDTHH:MM:SSZ).</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags.</p>
    #
    # @return [Types::CreateSavingsPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_savings_plan(
    #     savings_plan_offering_id: 'savingsPlanOfferingId', # required
    #     commitment: 'commitment', # required
    #     upfront_payment_amount: 'upfrontPaymentAmount',
    #     purchase_time: Time.now,
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSavingsPlanOutput
    #   resp.data.savings_plan_id #=> String
    #
    def create_savings_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSavingsPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSavingsPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSavingsPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::CreateSavingsPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSavingsPlan,
        stubs: @stubs,
        params_class: Params::CreateSavingsPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_savings_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the queued purchase for the specified Savings Plan.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteQueuedSavingsPlanInput}.
    #
    # @option params [String] :savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #
    # @return [Types::DeleteQueuedSavingsPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queued_savings_plan(
    #     savings_plan_id: 'savingsPlanId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteQueuedSavingsPlanOutput
    #
    def delete_queued_savings_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteQueuedSavingsPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteQueuedSavingsPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteQueuedSavingsPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteQueuedSavingsPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteQueuedSavingsPlan,
        stubs: @stubs,
        params_class: Params::DeleteQueuedSavingsPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_queued_savings_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified Savings Plans rates.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSavingsPlanRatesInput}.
    #
    # @option params [String] :savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #
    # @option params [Array<SavingsPlanRateFilter>] :filters
    #   <p>The filters.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional results, make another
    #            call with the returned token value.</p>
    #
    # @return [Types::DescribeSavingsPlanRatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plan_rates(
    #     savings_plan_id: 'savingsPlanId', # required
    #     filters: [
    #       {
    #         name: 'region', # accepts ["region", "instanceType", "productDescription", "tenancy", "productType", "serviceCode", "usageType", "operation"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSavingsPlanRatesOutput
    #   resp.data.savings_plan_id #=> String
    #   resp.data.search_results #=> Array<SavingsPlanRate>
    #   resp.data.search_results[0] #=> Types::SavingsPlanRate
    #   resp.data.search_results[0].rate #=> String
    #   resp.data.search_results[0].currency #=> String, one of ["CNY", "USD"]
    #   resp.data.search_results[0].unit #=> String, one of ["Hrs", "Lambda-GB-Second", "Request"]
    #   resp.data.search_results[0].product_type #=> String, one of ["EC2", "Fargate", "Lambda", "SageMaker"]
    #   resp.data.search_results[0].service_code #=> String, one of ["AmazonEC2", "AmazonECS", "AmazonEKS", "AWSLambda", "AmazonSageMaker"]
    #   resp.data.search_results[0].usage_type #=> String
    #   resp.data.search_results[0].operation #=> String
    #   resp.data.search_results[0].properties #=> Array<SavingsPlanRateProperty>
    #   resp.data.search_results[0].properties[0] #=> Types::SavingsPlanRateProperty
    #   resp.data.search_results[0].properties[0].name #=> String, one of ["region", "instanceType", "instanceFamily", "productDescription", "tenancy"]
    #   resp.data.search_results[0].properties[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def describe_savings_plan_rates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSavingsPlanRatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSavingsPlanRatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSavingsPlanRates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeSavingsPlanRates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSavingsPlanRates,
        stubs: @stubs,
        params_class: Params::DescribeSavingsPlanRatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_savings_plan_rates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified Savings Plans.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSavingsPlansInput}.
    #
    # @option params [Array<String>] :savings_plan_arns
    #   <p>The Amazon Resource Names (ARN) of the Savings Plans.</p>
    #
    # @option params [Array<String>] :savings_plan_ids
    #   <p>The IDs of the Savings Plans.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional results, make another
    #          call with the returned token value.</p>
    #
    # @option params [Array<String>] :states
    #   <p>The states.</p>
    #
    # @option params [Array<SavingsPlanFilter>] :filters
    #   <p>The filters.</p>
    #
    # @return [Types::DescribeSavingsPlansOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plans(
    #     savings_plan_arns: [
    #       'member'
    #     ],
    #     savings_plan_ids: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     states: [
    #       'payment-pending' # accepts ["payment-pending", "payment-failed", "active", "retired", "queued", "queued-deleted"]
    #     ],
    #     filters: [
    #       {
    #         name: 'region', # accepts ["region", "ec2-instance-family", "commitment", "upfront", "term", "savings-plan-type", "payment-option", "start", "end"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSavingsPlansOutput
    #   resp.data.savings_plans #=> Array<SavingsPlan>
    #   resp.data.savings_plans[0] #=> Types::SavingsPlan
    #   resp.data.savings_plans[0].offering_id #=> String
    #   resp.data.savings_plans[0].savings_plan_id #=> String
    #   resp.data.savings_plans[0].savings_plan_arn #=> String
    #   resp.data.savings_plans[0].description #=> String
    #   resp.data.savings_plans[0].start #=> String
    #   resp.data.savings_plans[0].end #=> String
    #   resp.data.savings_plans[0].state #=> String, one of ["payment-pending", "payment-failed", "active", "retired", "queued", "queued-deleted"]
    #   resp.data.savings_plans[0].region #=> String
    #   resp.data.savings_plans[0].ec2_instance_family #=> String
    #   resp.data.savings_plans[0].savings_plan_type #=> String, one of ["Compute", "EC2Instance", "SageMaker"]
    #   resp.data.savings_plans[0].payment_option #=> String, one of ["All Upfront", "Partial Upfront", "No Upfront"]
    #   resp.data.savings_plans[0].product_types #=> Array<String>
    #   resp.data.savings_plans[0].product_types[0] #=> String, one of ["EC2", "Fargate", "Lambda", "SageMaker"]
    #   resp.data.savings_plans[0].currency #=> String, one of ["CNY", "USD"]
    #   resp.data.savings_plans[0].commitment #=> String
    #   resp.data.savings_plans[0].upfront_payment_amount #=> String
    #   resp.data.savings_plans[0].recurring_payment_amount #=> String
    #   resp.data.savings_plans[0].term_duration_in_seconds #=> Integer
    #   resp.data.savings_plans[0].tags #=> Hash<String, String>
    #   resp.data.savings_plans[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_savings_plans(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSavingsPlansInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSavingsPlansInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSavingsPlans
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeSavingsPlans
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSavingsPlans,
        stubs: @stubs,
        params_class: Params::DescribeSavingsPlansOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_savings_plans
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified Savings Plans offering rates.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSavingsPlansOfferingRatesInput}.
    #
    # @option params [Array<String>] :savings_plan_offering_ids
    #   <p>The IDs of the offerings.</p>
    #
    # @option params [Array<String>] :savings_plan_payment_options
    #   <p>The payment options.</p>
    #
    # @option params [Array<String>] :savings_plan_types
    #   <p>The plan types.</p>
    #
    # @option params [Array<String>] :products
    #   <p>The AWS products.</p>
    #
    # @option params [Array<String>] :service_codes
    #   <p>The services.</p>
    #
    # @option params [Array<String>] :usage_types
    #   <p>The usage details of the line item in the billing report.</p>
    #
    # @option params [Array<String>] :operations
    #   <p>The specific AWS operation for the line item in the billing report.</p>
    #
    # @option params [Array<SavingsPlanOfferingRateFilterElement>] :filters
    #   <p>The filters.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional results, make another
    #          call with the returned token value.</p>
    #
    # @return [Types::DescribeSavingsPlansOfferingRatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plans_offering_rates(
    #     savings_plan_offering_ids: [
    #       'member'
    #     ],
    #     savings_plan_payment_options: [
    #       'All Upfront' # accepts ["All Upfront", "Partial Upfront", "No Upfront"]
    #     ],
    #     savings_plan_types: [
    #       'Compute' # accepts ["Compute", "EC2Instance", "SageMaker"]
    #     ],
    #     products: [
    #       'EC2' # accepts ["EC2", "Fargate", "Lambda", "SageMaker"]
    #     ],
    #     service_codes: [
    #       'AmazonEC2' # accepts ["AmazonEC2", "AmazonECS", "AmazonEKS", "AWSLambda", "AmazonSageMaker"]
    #     ],
    #     usage_types: [
    #       'member'
    #     ],
    #     operations: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'region', # accepts ["region", "instanceFamily", "instanceType", "productDescription", "tenancy", "productId"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSavingsPlansOfferingRatesOutput
    #   resp.data.search_results #=> Array<SavingsPlanOfferingRate>
    #   resp.data.search_results[0] #=> Types::SavingsPlanOfferingRate
    #   resp.data.search_results[0].savings_plan_offering #=> Types::ParentSavingsPlanOffering
    #   resp.data.search_results[0].savings_plan_offering.offering_id #=> String
    #   resp.data.search_results[0].savings_plan_offering.payment_option #=> String, one of ["All Upfront", "Partial Upfront", "No Upfront"]
    #   resp.data.search_results[0].savings_plan_offering.plan_type #=> String, one of ["Compute", "EC2Instance", "SageMaker"]
    #   resp.data.search_results[0].savings_plan_offering.duration_seconds #=> Integer
    #   resp.data.search_results[0].savings_plan_offering.currency #=> String, one of ["CNY", "USD"]
    #   resp.data.search_results[0].savings_plan_offering.plan_description #=> String
    #   resp.data.search_results[0].rate #=> String
    #   resp.data.search_results[0].unit #=> String, one of ["Hrs", "Lambda-GB-Second", "Request"]
    #   resp.data.search_results[0].product_type #=> String, one of ["EC2", "Fargate", "Lambda", "SageMaker"]
    #   resp.data.search_results[0].service_code #=> String, one of ["AmazonEC2", "AmazonECS", "AmazonEKS", "AWSLambda", "AmazonSageMaker"]
    #   resp.data.search_results[0].usage_type #=> String
    #   resp.data.search_results[0].operation #=> String
    #   resp.data.search_results[0].properties #=> Array<SavingsPlanOfferingRateProperty>
    #   resp.data.search_results[0].properties[0] #=> Types::SavingsPlanOfferingRateProperty
    #   resp.data.search_results[0].properties[0].name #=> String
    #   resp.data.search_results[0].properties[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def describe_savings_plans_offering_rates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSavingsPlansOfferingRatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSavingsPlansOfferingRatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSavingsPlansOfferingRates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeSavingsPlansOfferingRates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSavingsPlansOfferingRates,
        stubs: @stubs,
        params_class: Params::DescribeSavingsPlansOfferingRatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_savings_plans_offering_rates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified Savings Plans offerings.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSavingsPlansOfferingsInput}.
    #
    # @option params [Array<String>] :offering_ids
    #   <p>The IDs of the offerings.</p>
    #
    # @option params [Array<String>] :payment_options
    #   <p>The payment options.</p>
    #
    # @option params [String] :product_type
    #   <p>The product type.</p>
    #
    # @option params [Array<String>] :plan_types
    #   <p>The plan type.</p>
    #
    # @option params [Array<Integer>] :durations
    #   <p>The durations, in seconds.</p>
    #
    # @option params [Array<String>] :currencies
    #   <p>The currencies.</p>
    #
    # @option params [Array<String>] :descriptions
    #   <p>The descriptions.</p>
    #
    # @option params [Array<String>] :service_codes
    #   <p>The services.</p>
    #
    # @option params [Array<String>] :usage_types
    #   <p>The usage details of the line item in the billing report.</p>
    #
    # @option params [Array<String>] :operations
    #   <p>The specific AWS operation for the line item in the billing report.</p>
    #
    # @option params [Array<SavingsPlanOfferingFilterElement>] :filters
    #   <p>The filters.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional results, make another
    #          call with the returned token value.</p>
    #
    # @return [Types::DescribeSavingsPlansOfferingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plans_offerings(
    #     offering_ids: [
    #       'member'
    #     ],
    #     payment_options: [
    #       'All Upfront' # accepts ["All Upfront", "Partial Upfront", "No Upfront"]
    #     ],
    #     product_type: 'EC2', # accepts ["EC2", "Fargate", "Lambda", "SageMaker"]
    #     plan_types: [
    #       'Compute' # accepts ["Compute", "EC2Instance", "SageMaker"]
    #     ],
    #     durations: [
    #       1
    #     ],
    #     currencies: [
    #       'CNY' # accepts ["CNY", "USD"]
    #     ],
    #     descriptions: [
    #       'member'
    #     ],
    #     service_codes: [
    #       'member'
    #     ],
    #     usage_types: [
    #       'member'
    #     ],
    #     operations: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'region', # accepts ["region", "instanceFamily"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSavingsPlansOfferingsOutput
    #   resp.data.search_results #=> Array<SavingsPlanOffering>
    #   resp.data.search_results[0] #=> Types::SavingsPlanOffering
    #   resp.data.search_results[0].offering_id #=> String
    #   resp.data.search_results[0].product_types #=> Array<String>
    #   resp.data.search_results[0].product_types[0] #=> String, one of ["EC2", "Fargate", "Lambda", "SageMaker"]
    #   resp.data.search_results[0].plan_type #=> String, one of ["Compute", "EC2Instance", "SageMaker"]
    #   resp.data.search_results[0].description #=> String
    #   resp.data.search_results[0].payment_option #=> String, one of ["All Upfront", "Partial Upfront", "No Upfront"]
    #   resp.data.search_results[0].duration_seconds #=> Integer
    #   resp.data.search_results[0].currency #=> String, one of ["CNY", "USD"]
    #   resp.data.search_results[0].service_code #=> String
    #   resp.data.search_results[0].usage_type #=> String
    #   resp.data.search_results[0].operation #=> String
    #   resp.data.search_results[0].properties #=> Array<SavingsPlanOfferingProperty>
    #   resp.data.search_results[0].properties[0] #=> Types::SavingsPlanOfferingProperty
    #   resp.data.search_results[0].properties[0].name #=> String, one of ["region", "instanceFamily"]
    #   resp.data.search_results[0].properties[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def describe_savings_plans_offerings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSavingsPlansOfferingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSavingsPlansOfferingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSavingsPlansOfferings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeSavingsPlansOfferings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSavingsPlansOfferings,
        stubs: @stubs,
        params_class: Params::DescribeSavingsPlansOfferingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_savings_plans_offerings
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
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Adds the specified tags to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Removes the specified tags from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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
