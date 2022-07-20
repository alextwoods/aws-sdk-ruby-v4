# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Billingconductor
  # An API client for AWSBillingConductor
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services Billing Conductor is a fully managed service that you can use
  #       to customize a <a href="https://docs.aws.amazon.com/enterprisebilling/6b7c01c5-b592-467e-9769-90052eaf359c/userguide/understanding-eb.html#eb-other-definitions">pro forma</a> version of your billing data each month, to accurately show or chargeback
  #       your end customers. Amazon Web Services Billing Conductor doesn't change the way
  #       you're billed by Amazon Web Services each month by design. Instead, it provides you with a
  #       mechanism to configure, generate, and display rates to certain customers over a given billing
  #       period. You can also analyze the difference between the rates you apply to your accounting
  #       groupings relative to your actual rates from Amazon Web Services. As a result of your Amazon Web Services Billing Conductor configuration, the payer account can also see the
  #       custom rate applied on the billing details page of the <a href="https://console.aws.amazon.com/billing">Amazon Web Services Billing console</a>, or configure a cost and usage report per
  #       billing group.</p>
  #          <p>This documentation shows how you can configure Amazon Web Services Billing Conductor using its
  #       API. For more information about using the <a href="https://console.aws.amazon.com/enterprisebilling/">Amazon Web Services
  #         Billing Conductor</a> user interface, see the <a href="https://docs.aws.amazon.com/enterprisebilling/6b7c01c5-b592-467e-9769-90052eaf359c/userguide/what-is-enterprisebilling.html"> Amazon Web Services Enterprise
  #         Billing Console User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::Billingconductor::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Connects an array of account IDs in a consolidated billing family to a predefined
    #       billing group. The account IDs must be a part of the consolidated billing family during the
    #       current month, and not already associated with another billing group. The maximum number of
    #       accounts that can be associated in one call is 30. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateAccountsInput}.
    #
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the billing group that associates the array of
    #         account IDs. </p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>
    #         The associating array of account IDs.
    #       </p>
    #
    # @return [Types::AssociateAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_accounts(
    #     arn: 'Arn', # required
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateAccountsOutput
    #   resp.data.arn #=> String
    #
    def associate_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateAccounts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::AssociateAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateAccounts,
        stubs: @stubs,
        params_class: Params::AssociateAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Connects an array of <code>PricingRuleArns</code> to a defined <code>PricingPlan</code>.
    #       The maximum number <code>PricingRuleArn</code> that can be associated in one call is 30. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociatePricingRulesInput}.
    #
    # @option params [String] :arn
    #   <p>
    #         The <code>PricingPlanArn</code> that the <code>PricingRuleArns</code> are associated with.
    #       </p>
    #
    # @option params [Array<String>] :pricing_rule_arns
    #   <p>
    #         The <code>PricingRuleArns</code> that are associated with the Pricing Plan.
    #       </p>
    #
    # @return [Types::AssociatePricingRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_pricing_rules(
    #     arn: 'Arn', # required
    #     pricing_rule_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociatePricingRulesOutput
    #   resp.data.arn #=> String
    #
    def associate_pricing_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociatePricingRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociatePricingRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociatePricingRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::AssociatePricingRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociatePricingRules,
        stubs: @stubs,
        params_class: Params::AssociatePricingRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_pricing_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Associates a batch of resources to a percentage custom line item.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::BatchAssociateResourcesToCustomLineItemInput}.
    #
    # @option params [String] :target_arn
    #   <p>
    #         A percentage custom line item ARN to associate the resources to.
    #       </p>
    #
    # @option params [Array<String>] :resource_arns
    #   <p>
    #         A list containing the ARNs of the resources to be associated.
    #       </p>
    #
    # @option params [CustomLineItemBillingPeriodRange] :billing_period_range
    #   <p>
    #         The billing period range in which the custom line item request will be applied.
    #       </p>
    #
    # @return [Types::BatchAssociateResourcesToCustomLineItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_resources_to_custom_line_item(
    #     target_arn: 'TargetArn', # required
    #     resource_arns: [
    #       'member'
    #     ], # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: 'InclusiveStartBillingPeriod', # required
    #       exclusive_end_billing_period: 'ExclusiveEndBillingPeriod' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchAssociateResourcesToCustomLineItemOutput
    #   resp.data.successfully_associated_resources #=> Array<AssociateResourceResponseElement>
    #   resp.data.successfully_associated_resources[0] #=> Types::AssociateResourceResponseElement
    #   resp.data.successfully_associated_resources[0].arn #=> String
    #   resp.data.successfully_associated_resources[0].error #=> Types::AssociateResourceError
    #   resp.data.successfully_associated_resources[0].error.message #=> String
    #   resp.data.successfully_associated_resources[0].error.reason #=> String, one of ["INVALID_ARN", "SERVICE_LIMIT_EXCEEDED", "ILLEGAL_CUSTOMLINEITEM", "INTERNAL_SERVER_EXCEPTION"]
    #   resp.data.failed_associated_resources #=> Array<AssociateResourceResponseElement>
    #
    def batch_associate_resources_to_custom_line_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchAssociateResourcesToCustomLineItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchAssociateResourcesToCustomLineItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchAssociateResourcesToCustomLineItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::BatchAssociateResourcesToCustomLineItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchAssociateResourcesToCustomLineItem,
        stubs: @stubs,
        params_class: Params::BatchAssociateResourcesToCustomLineItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_associate_resources_to_custom_line_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Disassociates a batch of resources from a percentage custom line item.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::BatchDisassociateResourcesFromCustomLineItemInput}.
    #
    # @option params [String] :target_arn
    #   <p>
    #         A percentage custom line item ARN to disassociate the resources from.
    #       </p>
    #
    # @option params [Array<String>] :resource_arns
    #   <p>
    #         A list containing the ARNs of resources to be disassociated.
    #       </p>
    #
    # @option params [CustomLineItemBillingPeriodRange] :billing_period_range
    #   <p>
    #         The billing period range in which the custom line item request will be applied.
    #       </p>
    #
    # @return [Types::BatchDisassociateResourcesFromCustomLineItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_resources_from_custom_line_item(
    #     target_arn: 'TargetArn', # required
    #     resource_arns: [
    #       'member'
    #     ], # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: 'InclusiveStartBillingPeriod', # required
    #       exclusive_end_billing_period: 'ExclusiveEndBillingPeriod' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDisassociateResourcesFromCustomLineItemOutput
    #   resp.data.successfully_disassociated_resources #=> Array<DisassociateResourceResponseElement>
    #   resp.data.successfully_disassociated_resources[0] #=> Types::DisassociateResourceResponseElement
    #   resp.data.successfully_disassociated_resources[0].arn #=> String
    #   resp.data.successfully_disassociated_resources[0].error #=> Types::AssociateResourceError
    #   resp.data.successfully_disassociated_resources[0].error.message #=> String
    #   resp.data.successfully_disassociated_resources[0].error.reason #=> String, one of ["INVALID_ARN", "SERVICE_LIMIT_EXCEEDED", "ILLEGAL_CUSTOMLINEITEM", "INTERNAL_SERVER_EXCEPTION"]
    #   resp.data.failed_disassociated_resources #=> Array<DisassociateResourceResponseElement>
    #
    def batch_disassociate_resources_from_custom_line_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDisassociateResourcesFromCustomLineItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDisassociateResourcesFromCustomLineItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDisassociateResourcesFromCustomLineItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::BatchDisassociateResourcesFromCustomLineItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDisassociateResourcesFromCustomLineItem,
        stubs: @stubs,
        params_class: Params::BatchDisassociateResourcesFromCustomLineItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_disassociate_resources_from_custom_line_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Creates a billing group that resembles a consolidated billing family that Amazon Web Services charges, based off of the predefined pricing plan computation.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBillingGroupInput}.
    #
    # @option params [String] :client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update.
    #       </p>
    #
    # @option params [String] :name
    #   <p>
    #         The billing group name. The names must be unique.
    #       </p>
    #
    # @option params [AccountGrouping] :account_grouping
    #   <p>
    #         The set of accounts that will be under the billing group. The set of accounts resemble the linked accounts in a consolidated family.
    #       </p>
    #
    # @option params [ComputationPreference] :computation_preference
    #   <p>
    #         The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.
    #       </p>
    #
    # @option params [String] :primary_account_id
    #   <p> The account ID that serves as the main account in a billing group. </p>
    #
    # @option params [String] :description
    #   <p>The billing group description.
    #       </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> A map that contains tag keys and tag values that are attached to a billing group. This
    #         feature isn't available during the beta. </p>
    #
    # @return [Types::CreateBillingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_billing_group(
    #     client_token: 'ClientToken',
    #     name: 'Name', # required
    #     account_grouping: {
    #       linked_account_ids: [
    #         'member'
    #       ] # required
    #     }, # required
    #     computation_preference: {
    #       pricing_plan_arn: 'PricingPlanArn' # required
    #     }, # required
    #     primary_account_id: 'PrimaryAccountId',
    #     description: 'Description',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBillingGroupOutput
    #   resp.data.arn #=> String
    #
    def create_billing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBillingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBillingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBillingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateBillingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBillingGroup,
        stubs: @stubs,
        params_class: Params::CreateBillingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_billing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Creates a custom line item that can be used to create a one-time fixed charge that can be applied to a single billing group for the current or previous billing period. The one-time fixed charge is either a fee or discount.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreateCustomLineItemInput}.
    #
    # @option params [String] :client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update.
    #       </p>
    #
    # @option params [String] :name
    #   <p>
    #         The name of the custom line item.
    #       </p>
    #
    # @option params [String] :description
    #   <p>
    #         The description of the custom line item. This is shown on the Bills page in association with the charge value.
    #       </p>
    #
    # @option params [String] :billing_group_arn
    #   <p> The Amazon Resource Name (ARN) that references the billing group where the custom line
    #         item applies to. </p>
    #
    # @option params [CustomLineItemBillingPeriodRange] :billing_period_range
    #   <p> A time range for which the custom line item is effective. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> A map that contains tag keys and tag values that are attached to a custom line item. </p>
    #
    # @option params [CustomLineItemChargeDetails] :charge_details
    #   <p>
    #         A <code>CustomLineItemChargeDetails</code> that describes the charge details for a custom line item.
    #       </p>
    #
    # @return [Types::CreateCustomLineItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_line_item(
    #     client_token: 'ClientToken',
    #     name: 'Name', # required
    #     description: 'Description', # required
    #     billing_group_arn: 'BillingGroupArn', # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: 'InclusiveStartBillingPeriod', # required
    #       exclusive_end_billing_period: 'ExclusiveEndBillingPeriod' # required
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     charge_details: {
    #       flat: {
    #         charge_value: 1.0 # required
    #       },
    #       percentage: {
    #         percentage_value: 1.0, # required
    #         associated_values: [
    #           'member'
    #         ]
    #       },
    #       type: 'CREDIT' # required - accepts ["CREDIT", "FEE"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCustomLineItemOutput
    #   resp.data.arn #=> String
    #
    def create_custom_line_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCustomLineItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCustomLineItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCustomLineItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateCustomLineItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCustomLineItem,
        stubs: @stubs,
        params_class: Params::CreateCustomLineItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_custom_line_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a pricing plan that is used for computing Amazon Web Services charges for billing groups.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreatePricingPlanInput}.
    #
    # @option params [String] :client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update.
    #       </p>
    #
    # @option params [String] :name
    #   <p>The pricing plan name. The names must be unique to each pricing plan.
    #       </p>
    #
    # @option params [String] :description
    #   <p>The pricing plan description.
    #       </p>
    #
    # @option params [Array<String>] :pricing_rule_arns
    #   <p> A list of Amazon Resource Names (ARNs) that define the pricing plan parameters. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         A map that contains tag keys and tag values that are attached to a pricing plan.
    #       </p>
    #
    # @return [Types::CreatePricingPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pricing_plan(
    #     client_token: 'ClientToken',
    #     name: 'Name', # required
    #     description: 'Description',
    #     pricing_rule_arns: [
    #       'member'
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePricingPlanOutput
    #   resp.data.arn #=> String
    #
    def create_pricing_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePricingPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePricingPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePricingPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreatePricingPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePricingPlan,
        stubs: @stubs,
        params_class: Params::CreatePricingPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_pricing_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Creates a pricing rule can be associated to a pricing plan, or a set of pricing plans.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreatePricingRuleInput}.
    #
    # @option params [String] :client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update.
    #       </p>
    #
    # @option params [String] :name
    #   <p>
    #         The pricing rule name. The names must be unique to each pricing rule.
    #       </p>
    #
    # @option params [String] :description
    #   <p>
    #         The pricing rule description.
    #       </p>
    #
    # @option params [String] :scope
    #   <p>
    #         The scope of pricing rule that indicates if it is globally applicable, or is service-specific.
    #       </p>
    #
    # @option params [String] :type
    #   <p>
    #         The type of pricing rule.
    #       </p>
    #
    # @option params [Float] :modifier_percentage
    #   <p>
    #         A percentage modifier applied on the public pricing rates.
    #       </p>
    #
    # @option params [String] :service
    #   <p>
    #         If the <code>Scope</code> attribute is set to <code>SERVICE</code>, the attribute indicates which service the <code>PricingRule</code> is applicable for.
    #       </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         A map that contains tag keys and tag values that are attached to a pricing rule.
    #       </p>
    #
    # @return [Types::CreatePricingRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pricing_rule(
    #     client_token: 'ClientToken',
    #     name: 'Name', # required
    #     description: 'Description',
    #     scope: 'GLOBAL', # required - accepts ["GLOBAL", "SERVICE"]
    #     type: 'MARKUP', # required - accepts ["MARKUP", "DISCOUNT"]
    #     modifier_percentage: 1.0, # required
    #     service: 'Service',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePricingRuleOutput
    #   resp.data.arn #=> String
    #
    def create_pricing_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePricingRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePricingRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePricingRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreatePricingRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePricingRule,
        stubs: @stubs,
        params_class: Params::CreatePricingRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_pricing_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Deletes a billing group.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBillingGroupInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the billing group you're deleting.</p>
    #
    # @return [Types::DeleteBillingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_billing_group(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBillingGroupOutput
    #   resp.data.arn #=> String
    #
    def delete_billing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBillingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBillingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBillingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteBillingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBillingGroup,
        stubs: @stubs,
        params_class: Params::DeleteBillingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_billing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Deletes the custom line item identified by the given ARN in the current, or previous billing period.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomLineItemInput}.
    #
    # @option params [String] :arn
    #   <p>
    #         The ARN of the custom line item to be deleted.
    #       </p>
    #
    # @option params [CustomLineItemBillingPeriodRange] :billing_period_range
    #   <p>
    #         The billing period range in which the custom line item request will be applied.
    #       </p>
    #
    # @return [Types::DeleteCustomLineItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_line_item(
    #     arn: 'Arn', # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: 'InclusiveStartBillingPeriod', # required
    #       exclusive_end_billing_period: 'ExclusiveEndBillingPeriod' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomLineItemOutput
    #   resp.data.arn #=> String
    #
    def delete_custom_line_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomLineItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomLineItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomLineItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteCustomLineItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomLineItem,
        stubs: @stubs,
        params_class: Params::DeleteCustomLineItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_line_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a pricing plan. The pricing plan must not be associated with any billing groups to
    #       delete successfully.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePricingPlanInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the pricing plan you're deleting. </p>
    #
    # @return [Types::DeletePricingPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pricing_plan(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePricingPlanOutput
    #   resp.data.arn #=> String
    #
    def delete_pricing_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePricingPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePricingPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePricingPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeletePricingPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePricingPlan,
        stubs: @stubs,
        params_class: Params::DeletePricingPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_pricing_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes the pricing rule identified by the input Amazon Resource Name (ARN). </p>
    #
    # @param [Hash] params
    #   See {Types::DeletePricingRuleInput}.
    #
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the pricing rule you are deleting. </p>
    #
    # @return [Types::DeletePricingRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pricing_rule(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePricingRuleOutput
    #   resp.data.arn #=> String
    #
    def delete_pricing_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePricingRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePricingRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePricingRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeletePricingRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePricingRule,
        stubs: @stubs,
        params_class: Params::DeletePricingRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_pricing_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified list of account IDs from the given billing group. </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateAccountsInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that the array of account IDs will
    #         disassociate from. </p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The array of account IDs to disassociate.
    #       </p>
    #
    # @return [Types::DisassociateAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_accounts(
    #     arn: 'Arn', # required
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateAccountsOutput
    #   resp.data.arn #=> String
    #
    def disassociate_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateAccounts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DisassociateAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateAccounts,
        stubs: @stubs,
        params_class: Params::DisassociateAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Disassociates a list of pricing rules from a pricing plan.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociatePricingRulesInput}.
    #
    # @option params [String] :arn
    #   <p> The pricing plan Amazon Resource Name (ARN) to disassociate pricing rules from. </p>
    #
    # @option params [Array<String>] :pricing_rule_arns
    #   <p> A list containing the Amazon Resource Name (ARN) of the pricing rules that will be
    #         disassociated. </p>
    #
    # @return [Types::DisassociatePricingRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_pricing_rules(
    #     arn: 'Arn', # required
    #     pricing_rule_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociatePricingRulesOutput
    #   resp.data.arn #=> String
    #
    def disassociate_pricing_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociatePricingRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociatePricingRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociatePricingRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DisassociatePricingRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociatePricingRules,
        stubs: @stubs,
        params_class: Params::DisassociatePricingRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_pricing_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <i>
    #                <b>Amazon Web Services Billing Conductor is in beta release and is subject to change. Your use of Amazon Web Services Billing Conductor is subject to the Beta Service Participation terms of the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Section 1.10).</b>
    #             </i>
    #          </p>
    #          <p> This is a paginated call to list linked accounts that are linked to the payer account for
    #       the specified time period. If no information is provided, the current billing period is used.
    #       The response will optionally include the billing group associated with the linked
    #       account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountAssociationsInput}.
    #
    # @option params [String] :billing_period
    #   <p>
    #         The preferred billing period to get account associations.
    #       </p>
    #
    # @option params [ListAccountAssociationsFilter] :filters
    #   <p>The filter on the account ID of the linked account, or any of the following:</p>
    #            <p>
    #               <code>MONITORED</code>: linked accounts that are associated to billing groups.</p>
    #            <p>
    #               <code>UNMONITORED</code>: linked accounts that are not associated to billing
    #         groups.</p>
    #            <p>
    #               <code>Billing Group Arn</code>: linked accounts that are associated to the provided
    #         billing group Arn. </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         The pagination token used on subsequent calls to retrieve accounts.
    #       </p>
    #
    # @return [Types::ListAccountAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_associations(
    #     billing_period: 'BillingPeriod',
    #     filters: {
    #       association: 'Association',
    #       account_id: 'AccountId'
    #     },
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountAssociationsOutput
    #   resp.data.linked_accounts #=> Array<AccountAssociationsListElement>
    #   resp.data.linked_accounts[0] #=> Types::AccountAssociationsListElement
    #   resp.data.linked_accounts[0].account_id #=> String
    #   resp.data.linked_accounts[0].billing_group_arn #=> String
    #   resp.data.linked_accounts[0].account_name #=> String
    #   resp.data.linked_accounts[0].account_email #=> String
    #   resp.data.next_token #=> String
    #
    def list_account_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountAssociations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListAccountAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccountAssociations,
        stubs: @stubs,
        params_class: Params::ListAccountAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_account_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A paginated call to retrieve a summary report of actual Amazon Web Services charges and the calculated
    #       Amazon Web Services charges based on the associated pricing plan of a billing group.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBillingGroupCostReportsInput}.
    #
    # @option params [String] :billing_period
    #   <p>The preferred billing period for your report.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of reports to retrieve.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used on subsequent calls to get reports.
    #       </p>
    #
    # @option params [ListBillingGroupCostReportsFilter] :filters
    #   <p>A <code>ListBillingGroupCostReportsFilter</code> to specify billing groups to retrieve reports from.
    #       </p>
    #
    # @return [Types::ListBillingGroupCostReportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_billing_group_cost_reports(
    #     billing_period: 'BillingPeriod',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: {
    #       billing_group_arns: [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBillingGroupCostReportsOutput
    #   resp.data.billing_group_cost_reports #=> Array<BillingGroupCostReportElement>
    #   resp.data.billing_group_cost_reports[0] #=> Types::BillingGroupCostReportElement
    #   resp.data.billing_group_cost_reports[0].arn #=> String
    #   resp.data.billing_group_cost_reports[0].aws_cost #=> String
    #   resp.data.billing_group_cost_reports[0].proforma_cost #=> String
    #   resp.data.billing_group_cost_reports[0].margin #=> String
    #   resp.data.billing_group_cost_reports[0].margin_percentage #=> String
    #   resp.data.billing_group_cost_reports[0].currency #=> String
    #   resp.data.next_token #=> String
    #
    def list_billing_group_cost_reports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBillingGroupCostReportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBillingGroupCostReportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBillingGroupCostReports
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListBillingGroupCostReports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBillingGroupCostReports,
        stubs: @stubs,
        params_class: Params::ListBillingGroupCostReportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_billing_group_cost_reports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A paginated call to retrieve a list of billing groups for the given billing period. If you don't provide a billing group, the current billing period is used.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBillingGroupsInput}.
    #
    # @option params [String] :billing_period
    #   <p>The preferred billing period to get billing groups.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of billing groups to retrieve.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used on subsequent calls to get billing groups.
    #       </p>
    #
    # @option params [ListBillingGroupsFilter] :filters
    #   <p>A <code>ListBillingGroupsFilter</code> that specifies the billing group and pricing plan to retrieve billing group information.
    #       </p>
    #
    # @return [Types::ListBillingGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_billing_groups(
    #     billing_period: 'BillingPeriod',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: {
    #       arns: [
    #         'member'
    #       ],
    #       pricing_plan: 'PricingPlan'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBillingGroupsOutput
    #   resp.data.billing_groups #=> Array<BillingGroupListElement>
    #   resp.data.billing_groups[0] #=> Types::BillingGroupListElement
    #   resp.data.billing_groups[0].name #=> String
    #   resp.data.billing_groups[0].arn #=> String
    #   resp.data.billing_groups[0].description #=> String
    #   resp.data.billing_groups[0].primary_account_id #=> String
    #   resp.data.billing_groups[0].computation_preference #=> Types::ComputationPreference
    #   resp.data.billing_groups[0].computation_preference.pricing_plan_arn #=> String
    #   resp.data.billing_groups[0].size #=> Integer
    #   resp.data.billing_groups[0].creation_time #=> Integer
    #   resp.data.billing_groups[0].last_modified_time #=> Integer
    #   resp.data.billing_groups[0].status #=> String, one of ["ACTIVE", "PRIMARY_ACCOUNT_MISSING"]
    #   resp.data.billing_groups[0].status_reason #=> String
    #   resp.data.next_token #=> String
    #
    def list_billing_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBillingGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBillingGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBillingGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListBillingGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBillingGroups,
        stubs: @stubs,
        params_class: Params::ListBillingGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_billing_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       A paginated call to get a list of all custom line items (FFLIs) for the given billing period. If you don't provide a billing period, the current billing period is used.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomLineItemsInput}.
    #
    # @option params [String] :billing_period
    #   <p>
    #         The preferred billing period to get custom line items (FFLIs).
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of billing groups to retrieve.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         The pagination token used on subsequent calls to get custom line items (FFLIs).
    #       </p>
    #
    # @option params [ListCustomLineItemsFilter] :filters
    #   <p>A <code>ListCustomLineItemsFilter</code> that specifies the custom line item names
    #         and/or billing group Amazon Resource Names (ARNs) to retrieve FFLI information.</p>
    #
    # @return [Types::ListCustomLineItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_line_items(
    #     billing_period: 'BillingPeriod',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: {
    #       names: [
    #         'member'
    #       ],
    #       billing_groups: [
    #         'member'
    #       ],
    #       arns: [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomLineItemsOutput
    #   resp.data.custom_line_items #=> Array<CustomLineItemListElement>
    #   resp.data.custom_line_items[0] #=> Types::CustomLineItemListElement
    #   resp.data.custom_line_items[0].arn #=> String
    #   resp.data.custom_line_items[0].name #=> String
    #   resp.data.custom_line_items[0].charge_details #=> Types::ListCustomLineItemChargeDetails
    #   resp.data.custom_line_items[0].charge_details.flat #=> Types::ListCustomLineItemFlatChargeDetails
    #   resp.data.custom_line_items[0].charge_details.flat.charge_value #=> Float
    #   resp.data.custom_line_items[0].charge_details.percentage #=> Types::ListCustomLineItemPercentageChargeDetails
    #   resp.data.custom_line_items[0].charge_details.percentage.percentage_value #=> Float
    #   resp.data.custom_line_items[0].charge_details.type #=> String, one of ["CREDIT", "FEE"]
    #   resp.data.custom_line_items[0].currency_code #=> String, one of ["USD", "CNY"]
    #   resp.data.custom_line_items[0].description #=> String
    #   resp.data.custom_line_items[0].product_code #=> String
    #   resp.data.custom_line_items[0].billing_group_arn #=> String
    #   resp.data.custom_line_items[0].creation_time #=> Integer
    #   resp.data.custom_line_items[0].last_modified_time #=> Integer
    #   resp.data.custom_line_items[0].association_size #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_custom_line_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCustomLineItemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCustomLineItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCustomLineItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListCustomLineItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCustomLineItems,
        stubs: @stubs,
        params_class: Params::ListCustomLineItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_custom_line_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A paginated call to get pricing plans for the given billing period. If you don't provide a billing period, the current billing period is used.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListPricingPlansInput}.
    #
    # @option params [String] :billing_period
    #   <p>The preferred billing period to get pricing plan.
    #       </p>
    #
    # @option params [ListPricingPlansFilter] :filters
    #   <p>A <code>ListPricingPlansFilter</code> that specifies the Amazon Resource Name (ARNs)
    #         of pricing plans to retrieve pricing plans information.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of pricing plans to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used on subsequent call to get pricing plans.
    #       </p>
    #
    # @return [Types::ListPricingPlansOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pricing_plans(
    #     billing_period: 'BillingPeriod',
    #     filters: {
    #       arns: [
    #         'member'
    #       ]
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPricingPlansOutput
    #   resp.data.billing_period #=> String
    #   resp.data.pricing_plans #=> Array<PricingPlanListElement>
    #   resp.data.pricing_plans[0] #=> Types::PricingPlanListElement
    #   resp.data.pricing_plans[0].name #=> String
    #   resp.data.pricing_plans[0].arn #=> String
    #   resp.data.pricing_plans[0].description #=> String
    #   resp.data.pricing_plans[0].size #=> Integer
    #   resp.data.pricing_plans[0].creation_time #=> Integer
    #   resp.data.pricing_plans[0].last_modified_time #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_pricing_plans(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPricingPlansInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPricingPlansInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPricingPlans
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPricingPlans
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPricingPlans,
        stubs: @stubs,
        params_class: Params::ListPricingPlansOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pricing_plans
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       A list of the pricing plans associated with a pricing rule.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListPricingPlansAssociatedWithPricingRuleInput}.
    #
    # @option params [String] :billing_period
    #   <p>
    #         The pricing plan billing period for which associations will be listed.
    #       </p>
    #
    # @option params [String] :pricing_rule_arn
    #   <p> The pricing rule Amazon Resource Name (ARN) for which associations will be listed. </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The optional maximum number of pricing rule associations to retrieve.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         The optional pagination token returned by a previous call.
    #       </p>
    #
    # @return [Types::ListPricingPlansAssociatedWithPricingRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pricing_plans_associated_with_pricing_rule(
    #     billing_period: 'BillingPeriod',
    #     pricing_rule_arn: 'PricingRuleArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPricingPlansAssociatedWithPricingRuleOutput
    #   resp.data.billing_period #=> String
    #   resp.data.pricing_rule_arn #=> String
    #   resp.data.pricing_plan_arns #=> Array<String>
    #   resp.data.pricing_plan_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_pricing_plans_associated_with_pricing_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPricingPlansAssociatedWithPricingRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPricingPlansAssociatedWithPricingRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPricingPlansAssociatedWithPricingRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPricingPlansAssociatedWithPricingRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPricingPlansAssociatedWithPricingRule,
        stubs: @stubs,
        params_class: Params::ListPricingPlansAssociatedWithPricingRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pricing_plans_associated_with_pricing_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Describes a pricing rule that can be associated to a pricing plan, or set of pricing plans.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListPricingRulesInput}.
    #
    # @option params [String] :billing_period
    #   <p>
    #         The preferred billing period to get the pricing plan.
    #       </p>
    #
    # @option params [ListPricingRulesFilter] :filters
    #   <p> A <code>DescribePricingRuleFilter</code> that specifies the Amazon Resource Name (ARNs)
    #         of pricing rules to retrieve pricing rules information. </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of pricing rules to retrieve.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         The pagination token used on subsequent call to get pricing rules.
    #       </p>
    #
    # @return [Types::ListPricingRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pricing_rules(
    #     billing_period: 'BillingPeriod',
    #     filters: {
    #       arns: [
    #         'member'
    #       ]
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPricingRulesOutput
    #   resp.data.billing_period #=> String
    #   resp.data.pricing_rules #=> Array<PricingRuleListElement>
    #   resp.data.pricing_rules[0] #=> Types::PricingRuleListElement
    #   resp.data.pricing_rules[0].name #=> String
    #   resp.data.pricing_rules[0].arn #=> String
    #   resp.data.pricing_rules[0].description #=> String
    #   resp.data.pricing_rules[0].scope #=> String, one of ["GLOBAL", "SERVICE"]
    #   resp.data.pricing_rules[0].type #=> String, one of ["MARKUP", "DISCOUNT"]
    #   resp.data.pricing_rules[0].modifier_percentage #=> Float
    #   resp.data.pricing_rules[0].service #=> String
    #   resp.data.pricing_rules[0].associated_pricing_plan_count #=> Integer
    #   resp.data.pricing_rules[0].creation_time #=> Integer
    #   resp.data.pricing_rules[0].last_modified_time #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_pricing_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPricingRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPricingRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPricingRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPricingRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPricingRules,
        stubs: @stubs,
        params_class: Params::ListPricingRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pricing_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Lists the pricing rules associated with a pricing plan.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListPricingRulesAssociatedToPricingPlanInput}.
    #
    # @option params [String] :billing_period
    #   <p>
    #         The billing period for which the pricing rule associations are to be listed.
    #       </p>
    #
    # @option params [String] :pricing_plan_arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan for which associations are to be
    #         listed.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The optional maximum number of pricing rule associations to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>
    #         The optional pagination token returned by a previous call.
    #       </p>
    #
    # @return [Types::ListPricingRulesAssociatedToPricingPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pricing_rules_associated_to_pricing_plan(
    #     billing_period: 'BillingPeriod',
    #     pricing_plan_arn: 'PricingPlanArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPricingRulesAssociatedToPricingPlanOutput
    #   resp.data.billing_period #=> String
    #   resp.data.pricing_plan_arn #=> String
    #   resp.data.pricing_rule_arns #=> Array<String>
    #   resp.data.pricing_rule_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_pricing_rules_associated_to_pricing_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPricingRulesAssociatedToPricingPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPricingRulesAssociatedToPricingPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPricingRulesAssociatedToPricingPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPricingRulesAssociatedToPricingPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPricingRulesAssociatedToPricingPlan,
        stubs: @stubs,
        params_class: Params::ListPricingRulesAssociatedToPricingPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pricing_rules_associated_to_pricing_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       List the resources associated to a custom line item.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListResourcesAssociatedToCustomLineItemInput}.
    #
    # @option params [String] :billing_period
    #   <p>
    #         The billing period for which the resource associations will be listed.
    #       </p>
    #
    # @option params [String] :arn
    #   <p>
    #         The ARN of the custom line item for which the resource associations will be listed.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         (Optional) The maximum number of resource associations to be retrieved.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         (Optional) The pagination token returned by a previous request.
    #       </p>
    #
    # @option params [ListResourcesAssociatedToCustomLineItemFilter] :filters
    #   <p>
    #         (Optional) A <code>ListResourcesAssociatedToCustomLineItemFilter</code> that can specify the types of resources that should be retrieved.
    #       </p>
    #
    # @return [Types::ListResourcesAssociatedToCustomLineItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_associated_to_custom_line_item(
    #     billing_period: 'BillingPeriod',
    #     arn: 'Arn', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: {
    #       relationship: 'PARENT' # accepts ["PARENT", "CHILD"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourcesAssociatedToCustomLineItemOutput
    #   resp.data.arn #=> String
    #   resp.data.associated_resources #=> Array<ListResourcesAssociatedToCustomLineItemResponseElement>
    #   resp.data.associated_resources[0] #=> Types::ListResourcesAssociatedToCustomLineItemResponseElement
    #   resp.data.associated_resources[0].arn #=> String
    #   resp.data.associated_resources[0].relationship #=> String, one of ["PARENT", "CHILD"]
    #   resp.data.next_token #=> String
    #
    def list_resources_associated_to_custom_line_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourcesAssociatedToCustomLineItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourcesAssociatedToCustomLineItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourcesAssociatedToCustomLineItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListResourcesAssociatedToCustomLineItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourcesAssociatedToCustomLineItem,
        stubs: @stubs,
        params_class: Params::ListResourcesAssociatedToCustomLineItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resources_associated_to_custom_line_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       A list the tags for a resource.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) that identifies the resource to list the tags.
    #       </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p> Associates the specified tags to a resource with the specified <code>resourceArn</code>.
    #       If existing tags on a resource are not specified in the request parameters, they are not
    #       changed. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the resource to which to add tags.
    #       </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         The tags to add to the resource as a list of key-value pairs.
    #       </p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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
    #       Deletes specified tags from a resource.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the resource to which to delete tags.
    #       </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>
    #         The tags to delete from the resource as a list of key-value pairs.
    #       </p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>This updates an existing billing group.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBillingGroupInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the billing group being updated. </p>
    #
    # @option params [String] :name
    #   <p>The name of the billing group. The names must be unique to each billing group.
    #       </p>
    #
    # @option params [String] :status
    #   <p>The status of the billing group. Only one of the valid values can be used.
    #       </p>
    #
    # @option params [ComputationPreference] :computation_preference
    #   <p>
    #         The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.
    #       </p>
    #
    # @option params [String] :description
    #   <p>A description of the billing group.
    #       </p>
    #
    # @return [Types::UpdateBillingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_billing_group(
    #     arn: 'Arn', # required
    #     name: 'Name',
    #     status: 'ACTIVE', # accepts ["ACTIVE", "PRIMARY_ACCOUNT_MISSING"]
    #     computation_preference: {
    #       pricing_plan_arn: 'PricingPlanArn' # required
    #     },
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBillingGroupOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.primary_account_id #=> String
    #   resp.data.pricing_plan_arn #=> String
    #   resp.data.size #=> Integer
    #   resp.data.last_modified_time #=> Integer
    #   resp.data.status #=> String, one of ["ACTIVE", "PRIMARY_ACCOUNT_MISSING"]
    #   resp.data.status_reason #=> String
    #
    def update_billing_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBillingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBillingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBillingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateBillingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBillingGroup,
        stubs: @stubs,
        params_class: Params::UpdateBillingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_billing_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Update an existing custom line item in the current or previous billing period.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCustomLineItemInput}.
    #
    # @option params [String] :arn
    #   <p>
    #         The ARN of the custom line item to be updated.
    #       </p>
    #
    # @option params [String] :name
    #   <p>
    #         The new name for the custom line item.
    #       </p>
    #
    # @option params [String] :description
    #   <p>
    #         The new line item description of the custom line item.
    #       </p>
    #
    # @option params [UpdateCustomLineItemChargeDetails] :charge_details
    #   <p>
    #         A <code>ListCustomLineItemChargeDetails</code> containing the new charge details for the custom line item.
    #       </p>
    #
    # @option params [CustomLineItemBillingPeriodRange] :billing_period_range
    #   <p>
    #         The billing period range in which the custom line item request will be applied.
    #       </p>
    #
    # @return [Types::UpdateCustomLineItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_line_item(
    #     arn: 'Arn', # required
    #     name: 'Name',
    #     description: 'Description',
    #     charge_details: {
    #       flat: {
    #         charge_value: 1.0 # required
    #       },
    #       percentage: {
    #         percentage_value: 1.0 # required
    #       }
    #     },
    #     billing_period_range: {
    #       inclusive_start_billing_period: 'InclusiveStartBillingPeriod', # required
    #       exclusive_end_billing_period: 'ExclusiveEndBillingPeriod' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCustomLineItemOutput
    #   resp.data.arn #=> String
    #   resp.data.billing_group_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.charge_details #=> Types::ListCustomLineItemChargeDetails
    #   resp.data.charge_details.flat #=> Types::ListCustomLineItemFlatChargeDetails
    #   resp.data.charge_details.flat.charge_value #=> Float
    #   resp.data.charge_details.percentage #=> Types::ListCustomLineItemPercentageChargeDetails
    #   resp.data.charge_details.percentage.percentage_value #=> Float
    #   resp.data.charge_details.type #=> String, one of ["CREDIT", "FEE"]
    #   resp.data.last_modified_time #=> Integer
    #   resp.data.association_size #=> Integer
    #
    def update_custom_line_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCustomLineItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCustomLineItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCustomLineItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateCustomLineItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCustomLineItem,
        stubs: @stubs,
        params_class: Params::UpdateCustomLineItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_custom_line_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This updates an existing pricing plan.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePricingPlanInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the pricing plan you're updating. </p>
    #
    # @option params [String] :name
    #   <p>The name of the pricing plan. The name must be unique to each pricing plan.
    #       </p>
    #
    # @option params [String] :description
    #   <p>The pricing plan description.
    #       </p>
    #
    # @return [Types::UpdatePricingPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pricing_plan(
    #     arn: 'Arn', # required
    #     name: 'Name',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePricingPlanOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.size #=> Integer
    #   resp.data.last_modified_time #=> Integer
    #
    def update_pricing_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePricingPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePricingPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePricingPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdatePricingPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePricingPlan,
        stubs: @stubs,
        params_class: Params::UpdatePricingPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pricing_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Updates an existing pricing rule.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePricingRuleInput}.
    #
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the pricing rule to update. </p>
    #
    # @option params [String] :name
    #   <p>
    #         The new name of the pricing rule. The name must be unique to each pricing rule.
    #       </p>
    #
    # @option params [String] :description
    #   <p>
    #         The new description for the pricing rule.
    #       </p>
    #
    # @option params [String] :type
    #   <p>
    #         The new pricing rule type.
    #       </p>
    #
    # @option params [Float] :modifier_percentage
    #   <p>
    #         The new modifier to show pricing plan rates as a percentage.
    #       </p>
    #
    # @return [Types::UpdatePricingRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pricing_rule(
    #     arn: 'Arn', # required
    #     name: 'Name',
    #     description: 'Description',
    #     type: 'MARKUP', # accepts ["MARKUP", "DISCOUNT"]
    #     modifier_percentage: 1.0
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePricingRuleOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.scope #=> String, one of ["GLOBAL", "SERVICE"]
    #   resp.data.type #=> String, one of ["MARKUP", "DISCOUNT"]
    #   resp.data.modifier_percentage #=> Float
    #   resp.data.service #=> String
    #   resp.data.associated_pricing_plan_count #=> Integer
    #   resp.data.last_modified_time #=> Integer
    #
    def update_pricing_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePricingRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePricingRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePricingRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdatePricingRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePricingRule,
        stubs: @stubs,
        params_class: Params::UpdatePricingRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pricing_rule
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
