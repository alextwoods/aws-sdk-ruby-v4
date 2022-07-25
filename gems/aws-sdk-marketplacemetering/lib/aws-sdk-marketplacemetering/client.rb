# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MarketplaceMetering
  # An API client for AWSMPMeteringService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Marketplace Metering Service</fullname>
  #         <p>This reference provides descriptions of the low-level AWS Marketplace Metering Service
  #             API.</p>
  #         <p>AWS Marketplace sellers can use this API to submit usage data for custom usage
  #             dimensions.</p>
  #         <p>For information on the permissions you need to use this API, see <a href="https://docs.aws.amazon.com/marketplace/latest/userguide/iam-user-policy-for-aws-marketplace-actions.html">AWS Marketplace metering and entitlement API permissions</a> in the
  #                 <i>AWS Marketplace Seller Guide.</i>
  #         </p>
  #         <p>
  #             <b>Submitting Metering Records</b>
  #         </p>
  #         <ul>
  #             <li>
  #                 <p>
  #                     <i>MeterUsage</i> - Submits the metering record for an AWS
  #                     Marketplace product. <code>MeterUsage</code> is called from an EC2 instance or a
  #                     container running on EKS or ECS.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <i>BatchMeterUsage</i> - Submits the metering record for a set of
  #                     customers. <code>BatchMeterUsage</code> is called from a software-as-a-service
  #                     (SaaS) application.</p>
  #             </li>
  #          </ul>
  #         <p>
  #             <b>Accepting New Customers</b>
  #         </p>
  #         <ul>
  #             <li>
  #                 <p>
  #                     <i>ResolveCustomer</i> - Called by a SaaS application during the
  #                     registration process. When a buyer visits your website during the registration
  #                     process, the buyer submits a Registration Token through the browser. The
  #                     Registration Token is resolved through this API to obtain a
  #                         <code>CustomerIdentifier</code>
  #
  #                     along with the <code>CustomerAWSAccountId</code> and
  #                     <code>ProductCode</code>.</p>
  #             </li>
  #          </ul>
  #         <p>
  #             <b>Entitlement and Metering for Paid Container Products</b>
  #         </p>
  #         <ul>
  #             <li>
  #                 <p>Paid container software products sold through AWS Marketplace must integrate
  #                     with the AWS Marketplace Metering Service and call the
  #                         <code>RegisterUsage</code> operation for software entitlement and metering.
  #                     Free and BYOL products for Amazon ECS or Amazon EKS aren't required to call
  #                         <code>RegisterUsage</code>, but you can do so if you want to receive usage
  #                     data in your seller reports. For more information on using the
  #                         <code>RegisterUsage</code> operation, see <a href="https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html">Container-Based Products</a>. </p>
  #             </li>
  #          </ul>
  #         <p>
  #             <code>BatchMeterUsage</code> API calls are captured by AWS CloudTrail. You can use
  #             Cloudtrail to verify that the SaaS metering records that you sent are accurate by
  #             searching for records with the <code>eventName</code> of <code>BatchMeterUsage</code>.
  #             You can also use CloudTrail to audit records over time. For more information, see the
  #                     <i>
  #                <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html">AWS CloudTrail User Guide</a>.</i>
  #          </p>
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
    def initialize(config = AWS::SDK::MarketplaceMetering::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>
    #             <code>BatchMeterUsage</code> is called from a SaaS application listed on AWS
    #             Marketplace to post metering records for a set of customers.</p>
    #         <p>For identical requests, the API is idempotent; requests can be retried with the same
    #             records or a subset of the input records.</p>
    #         <p>Every request to <code>BatchMeterUsage</code> is for one product. If you need to meter
    #             usage for multiple products, you must make multiple calls to
    #                 <code>BatchMeterUsage</code>.</p>
    #         <p>Usage records are expected to be submitted as quickly as possible after the event that
    #             is being recorded, and are not accepted more than 6 hours after the event.</p>
    #         <p>
    #             <code>BatchMeterUsage</code> can process up to 25 <code>UsageRecords</code> at a
    #             time.</p>
    #         <p>A <code>UsageRecord</code> can optionally include multiple usage allocations, to
    #             provide customers with usage data split into buckets by tags that you define (or allow
    #             the customer to define).</p>
    #         <p>
    #             <code>BatchMeterUsage</code> returns a list of <code>UsageRecordResult</code> objects,
    #             showing the result for each <code>UsageRecord</code>, as well as a list of
    #                 <code>UnprocessedRecords</code>, indicating errors in the service side that you
    #             should retry.</p>
    #         <p>
    #             <code>BatchMeterUsage</code> requests must be less than 1MB in size.</p>
    #         <note>
    #             <p>For an example of using <code>BatchMeterUsage</code>, see <a href="https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-batchmeterusage-example"> BatchMeterUsage code example</a> in the <i>AWS Marketplace Seller
    #                     Guide</i>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::BatchMeterUsageInput}.
    #
    # @option params [Array<UsageRecord>] :usage_records
    #   <p>The set of <code>UsageRecords</code> to submit. <code>BatchMeterUsage</code> accepts
    #               up to 25 <code>UsageRecords</code> at a time.</p>
    #
    # @option params [String] :product_code
    #   <p>Product code is used to uniquely identify a product in AWS Marketplace. The product
    #               code should be the same as the one used during the publishing of a new product.</p>
    #
    # @return [Types::BatchMeterUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_meter_usage(
    #     usage_records: [
    #       {
    #         timestamp: Time.now, # required
    #         customer_identifier: 'CustomerIdentifier', # required
    #         dimension: 'Dimension', # required
    #         quantity: 1,
    #         usage_allocations: [
    #           {
    #             allocated_usage_quantity: 1, # required
    #             tags: [
    #               {
    #                 key: 'Key', # required
    #                 value: 'Value' # required
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ], # required
    #     product_code: 'ProductCode' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchMeterUsageOutput
    #   resp.data.results #=> Array<UsageRecordResult>
    #   resp.data.results[0] #=> Types::UsageRecordResult
    #   resp.data.results[0].usage_record #=> Types::UsageRecord
    #   resp.data.results[0].usage_record.timestamp #=> Time
    #   resp.data.results[0].usage_record.customer_identifier #=> String
    #   resp.data.results[0].usage_record.dimension #=> String
    #   resp.data.results[0].usage_record.quantity #=> Integer
    #   resp.data.results[0].usage_record.usage_allocations #=> Array<UsageAllocation>
    #   resp.data.results[0].usage_record.usage_allocations[0] #=> Types::UsageAllocation
    #   resp.data.results[0].usage_record.usage_allocations[0].allocated_usage_quantity #=> Integer
    #   resp.data.results[0].usage_record.usage_allocations[0].tags #=> Array<Tag>
    #   resp.data.results[0].usage_record.usage_allocations[0].tags[0] #=> Types::Tag
    #   resp.data.results[0].usage_record.usage_allocations[0].tags[0].key #=> String
    #   resp.data.results[0].usage_record.usage_allocations[0].tags[0].value #=> String
    #   resp.data.results[0].metering_record_id #=> String
    #   resp.data.results[0].status #=> String, one of ["Success", "CustomerNotSubscribed", "DuplicateRecord"]
    #   resp.data.unprocessed_records #=> Array<UsageRecord>
    #
    def batch_meter_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchMeterUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchMeterUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchMeterUsage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DisabledApiException, Errors::InvalidUsageAllocationsException, Errors::InvalidUsageDimensionException, Errors::InternalServiceErrorException, Errors::InvalidCustomerIdentifierException, Errors::InvalidTagException, Errors::ThrottlingException, Errors::TimestampOutOfBoundsException, Errors::InvalidProductCodeException]),
        data_parser: Parsers::BatchMeterUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchMeterUsage,
        stubs: @stubs,
        params_class: Params::BatchMeterUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_meter_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>API to emit metering records. For identical requests, the API is idempotent. It simply
    #             returns the metering record ID.</p>
    #         <p>
    #             <code>MeterUsage</code> is authenticated on the buyer's AWS account using credentials
    #             from the EC2 instance, ECS task, or EKS pod.</p>
    #         <p>
    #             <code>MeterUsage</code> can optionally include multiple usage allocations, to provide
    #             customers with usage data split into buckets by tags that you define (or allow the
    #             customer to define).</p>
    #         <p>Usage records are expected to be submitted as quickly as possible after the event that
    #             is being recorded, and are not accepted more than 6 hours after the event.</p>
    #
    # @param [Hash] params
    #   See {Types::MeterUsageInput}.
    #
    # @option params [String] :product_code
    #   <p>Product code is used to uniquely identify a product in AWS Marketplace. The product
    #               code should be the same as the one used during the publishing of a new product.</p>
    #
    # @option params [Time] :timestamp
    #   <p>Timestamp, in UTC, for which the usage is being reported. Your application can meter
    #               usage for up to one hour in the past. Make sure the <code>timestamp</code> value is not
    #               before the start of the software usage.</p>
    #
    # @option params [String] :usage_dimension
    #   <p>It will be one of the fcp dimension name provided during the publishing of the
    #               product.</p>
    #
    # @option params [Integer] :usage_quantity
    #   <p>Consumption value for the hour. Defaults to <code>0</code> if not specified.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Checks whether you have the permissions required for the action, but does not make the
    #               request. If you have the permissions, the request returns <code>DryRunOperation</code>;
    #               otherwise, it returns <code>UnauthorizedException</code>. Defaults to <code>false</code>
    #               if not specified.</p>
    #
    # @option params [Array<UsageAllocation>] :usage_allocations
    #   <p>The set of <code>UsageAllocations</code> to submit.</p>
    #           <p>The sum of all <code>UsageAllocation</code> quantities must equal the
    #                   <code>UsageQuantity</code> of the <code>MeterUsage</code> request, and each
    #                   <code>UsageAllocation</code> must have a unique set of tags (include no
    #               tags).</p>
    #
    # @return [Types::MeterUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.meter_usage(
    #     product_code: 'ProductCode', # required
    #     timestamp: Time.now, # required
    #     usage_dimension: 'UsageDimension', # required
    #     usage_quantity: 1,
    #     dry_run: false,
    #     usage_allocations: [
    #       {
    #         allocated_usage_quantity: 1, # required
    #         tags: [
    #           {
    #             key: 'Key', # required
    #             value: 'Value' # required
    #           }
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MeterUsageOutput
    #   resp.data.metering_record_id #=> String
    #
    def meter_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MeterUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MeterUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MeterUsage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateRequestException, Errors::InvalidEndpointRegionException, Errors::InvalidUsageAllocationsException, Errors::InvalidUsageDimensionException, Errors::InternalServiceErrorException, Errors::InvalidTagException, Errors::ThrottlingException, Errors::TimestampOutOfBoundsException, Errors::CustomerNotEntitledException, Errors::InvalidProductCodeException]),
        data_parser: Parsers::MeterUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MeterUsage,
        stubs: @stubs,
        params_class: Params::MeterUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :meter_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Paid container software products sold through AWS Marketplace must integrate with the
    #             AWS Marketplace Metering Service and call the <code>RegisterUsage</code> operation for
    #             software entitlement and metering. Free and BYOL products for Amazon ECS or Amazon EKS
    #             aren't required to call <code>RegisterUsage</code>, but you may choose to do so if you
    #             would like to receive usage data in your seller reports. The sections below explain the
    #             behavior of <code>RegisterUsage</code>. <code>RegisterUsage</code> performs two primary
    #             functions: metering and entitlement.</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     <i>Entitlement</i>: <code>RegisterUsage</code> allows you to
    #                     verify that the customer running your paid software is subscribed to your
    #                     product on AWS Marketplace, enabling you to guard against unauthorized use. Your
    #                     container image that integrates with <code>RegisterUsage</code> is only required
    #                     to guard against unauthorized use at container startup, as such a
    #                         <code>CustomerNotSubscribedException</code> or
    #                         <code>PlatformNotSupportedException</code> will only be thrown on the
    #                     initial call to <code>RegisterUsage</code>. Subsequent calls from the same
    #                     Amazon ECS task instance (e.g. task-id) or Amazon EKS pod will not throw a
    #                         <code>CustomerNotSubscribedException</code>, even if the customer
    #                     unsubscribes while the Amazon ECS task or Amazon EKS pod is still
    #                     running.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <i>Metering</i>: <code>RegisterUsage</code> meters software use
    #                     per ECS task, per hour, or per pod for Amazon EKS with usage prorated to the
    #                     second. A minimum of 1 minute of usage applies to tasks that are short lived.
    #                     For example, if a customer has a 10 node Amazon ECS or Amazon EKS cluster and a
    #                     service configured as a Daemon Set, then Amazon ECS or Amazon EKS will launch a
    #                     task on all 10 cluster nodes and the customer will be charged: (10 *
    #                     hourly_rate). Metering for software use is automatically handled by the AWS
    #                     Marketplace Metering Control Plane -- your software is not required to perform
    #                     any metering specific actions, other than call <code>RegisterUsage</code> once
    #                     for metering of software use to commence. The AWS Marketplace Metering Control
    #                     Plane will also continue to bill customers for running ECS tasks and Amazon EKS
    #                     pods, regardless of the customers subscription state, removing the need for your
    #                     software to perform entitlement checks at runtime.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::RegisterUsageInput}.
    #
    # @option params [String] :product_code
    #   <p>Product code is used to uniquely identify a product in AWS Marketplace. The product
    #               code should be the same as the one used during the publishing of a new product.</p>
    #
    # @option params [Integer] :public_key_version
    #   <p>Public Key Version provided by AWS Marketplace</p>
    #
    # @option params [String] :nonce
    #   <p>(Optional) To scope down the registration to a specific running software instance and
    #               guard against replay attacks.</p>
    #
    # @return [Types::RegisterUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_usage(
    #     product_code: 'ProductCode', # required
    #     public_key_version: 1, # required
    #     nonce: 'Nonce'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterUsageOutput
    #   resp.data.public_key_rotation_timestamp #=> Time
    #   resp.data.signature #=> String
    #
    def register_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterUsage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRegionException, Errors::DisabledApiException, Errors::InvalidPublicKeyVersionException, Errors::InternalServiceErrorException, Errors::ThrottlingException, Errors::PlatformNotSupportedException, Errors::CustomerNotEntitledException, Errors::InvalidProductCodeException]),
        data_parser: Parsers::RegisterUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterUsage,
        stubs: @stubs,
        params_class: Params::RegisterUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <code>ResolveCustomer</code> is called by a SaaS application during the registration
    #             process. When a buyer visits your website during the registration process, the buyer
    #             submits a registration token through their browser. The registration token is resolved
    #             through this API to obtain a <code>CustomerIdentifier</code>
    #              along with the
    #                 <code>CustomerAWSAccountId</code> and
    #             <code>ProductCode</code>.</p>
    #         <note>
    #             <p>The API needs to called from the seller account id used to publish the SaaS
    #                 application to successfully resolve the token.</p>
    #             <p>For an example of using <code>ResolveCustomer</code>, see <a href="https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-resolvecustomer-example"> ResolveCustomer code example</a> in the <i>AWS Marketplace Seller
    #                     Guide</i>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ResolveCustomerInput}.
    #
    # @option params [String] :registration_token
    #   <p>When a buyer visits your website during the registration process, the buyer submits a
    #               registration token through the browser. The registration token is resolved to obtain a
    #                   <code>CustomerIdentifier</code>
    #               along with the
    #                   <code>CustomerAWSAccountId</code>
    #               and
    #                   <code>ProductCode</code>.</p>
    #
    # @return [Types::ResolveCustomerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_customer(
    #     registration_token: 'RegistrationToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResolveCustomerOutput
    #   resp.data.customer_identifier #=> String
    #   resp.data.product_code #=> String
    #   resp.data.customer_aws_account_id #=> String
    #
    def resolve_customer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResolveCustomerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResolveCustomerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResolveCustomer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExpiredTokenException, Errors::DisabledApiException, Errors::InternalServiceErrorException, Errors::InvalidTokenException, Errors::ThrottlingException]),
        data_parser: Parsers::ResolveCustomer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResolveCustomer,
        stubs: @stubs,
        params_class: Params::ResolveCustomerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resolve_customer
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
