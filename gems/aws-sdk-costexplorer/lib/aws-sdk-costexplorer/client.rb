# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CostExplorer
  # An API client for AWSInsightsIndexService
  # See {#initialize} for a full list of supported configuration options
  # <p>You can use the Cost Explorer API to programmatically query your cost and usage data. You
  #       can query for aggregated data such as total monthly costs or total daily usage. You can also
  #       query for granular data. This might include the number of daily write operations for Amazon
  #       DynamoDB database tables in your production environment. </p>
  # 		       <p>Service Endpoint</p>
  # 		       <p>The Cost Explorer API provides the following endpoint:</p>
  # 		       <ul>
  #             <li>
  # 				           <p>
  #                   <code>https://ce.us-east-1.amazonaws.com</code>
  #                </p>
  # 			         </li>
  #          </ul>
  # 		       <p>For information about the costs that are associated with the Cost Explorer API, see
  #         <a href="http://aws.amazon.com/aws-cost-management/pricing/">Amazon Web Services Cost
  #         Management Pricing</a>.</p>
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
    def initialize(config = AWS::SDK::CostExplorer::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a new cost anomaly detection monitor with the requested type and monitor
    #       specification. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAnomalyMonitorInput}.
    #
    # @option params [AnomalyMonitor] :anomaly_monitor
    #   <p>The cost anomaly detection monitor object that you want to create.</p>
    #
    # @option params [Array<ResourceTag>] :resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html">
    #                  <code>AnomalyMonitor</code>
    #               </a>. You can use resource tags to control access to your
    #           <code>monitor</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateAnomalyMonitorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_anomaly_monitor(
    #     anomaly_monitor: {
    #       monitor_arn: 'MonitorArn',
    #       monitor_name: 'MonitorName', # required
    #       creation_date: 'CreationDate',
    #       last_updated_date: 'LastUpdatedDate',
    #       last_evaluated_date: 'LastEvaluatedDate',
    #       monitor_type: 'DIMENSIONAL', # required - accepts ["DIMENSIONAL", "CUSTOM"]
    #       monitor_dimension: 'SERVICE', # accepts ["SERVICE"]
    #       monitor_specification: {
    #         dimensions: {
    #           key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #           values: [
    #             'member'
    #           ],
    #           match_options: [
    #             'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #           ]
    #         },
    #         tags: {
    #           key: 'Key',
    #         },
    #         cost_categories: {
    #           key: 'Key',
    #         }
    #       },
    #       dimensional_value_count: 1
    #     }, # required
    #     resource_tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAnomalyMonitorOutput
    #   resp.data.monitor_arn #=> String
    #
    def create_anomaly_monitor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAnomalyMonitorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAnomalyMonitorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAnomalyMonitor
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException]),
        data_parser: Parsers::CreateAnomalyMonitor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAnomalyMonitor,
        stubs: @stubs,
        params_class: Params::CreateAnomalyMonitorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_anomaly_monitor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a subscription to a cost anomaly detection monitor. You can use each subscription to
    #       define subscribers with email or SNS notifications. Email subscribers can set a dollar
    #       threshold and a time frequency for receiving notifications. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAnomalySubscriptionInput}.
    #
    # @option params [AnomalySubscription] :anomaly_subscription
    #   <p>The cost anomaly subscription object that you want to create. </p>
    #
    # @option params [Array<ResourceTag>] :resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html">
    #                  <code>AnomalySubscription</code>
    #               </a>. You can use resource tags to control access to
    #         your <code>subscription</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateAnomalySubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_anomaly_subscription(
    #     anomaly_subscription: {
    #       subscription_arn: 'SubscriptionArn',
    #       account_id: 'AccountId',
    #       monitor_arn_list: [
    #         'member'
    #       ], # required
    #       subscribers: [
    #         {
    #           address: 'Address',
    #           type: 'EMAIL', # accepts ["EMAIL", "SNS"]
    #           status: 'CONFIRMED' # accepts ["CONFIRMED", "DECLINED"]
    #         }
    #       ], # required
    #       threshold: 1.0, # required
    #       frequency: 'DAILY', # required - accepts ["DAILY", "IMMEDIATE", "WEEKLY"]
    #       subscription_name: 'SubscriptionName' # required
    #     }, # required
    #     resource_tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAnomalySubscriptionOutput
    #   resp.data.subscription_arn #=> String
    #
    def create_anomaly_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAnomalySubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAnomalySubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAnomalySubscription
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownMonitorException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateAnomalySubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAnomalySubscription,
        stubs: @stubs,
        params_class: Params::CreateAnomalySubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_anomaly_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Cost Category with the requested name and rules.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCostCategoryDefinitionInput}.
    #
    # @option params [String] :name
    #   <p>The unique name of the Cost Category.</p>
    #
    # @option params [String] :rule_version
    #   <p>The rule schema version in this particular Cost Category.</p>
    #
    # @option params [Array<CostCategoryRule>] :rules
    #   <p>The Cost Category rules used to categorize costs. For more information, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html">CostCategoryRule</a>.</p>
    #
    # @option params [String] :default_value
    #   <p>The
    #               default value for the cost category.</p>
    #
    # @option params [Array<CostCategorySplitChargeRule>] :split_charge_rules
    #   <p>
    #         The split charge rules used to allocate your charges between your Cost Category values.
    #       </p>
    #
    # @option params [Array<ResourceTag>] :resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html">
    #                  <code>CostCategory</code>
    #               </a>. You can use resource tags to control access to your
    #           <code>cost category</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateCostCategoryDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cost_category_definition(
    #     name: 'Name', # required
    #     rule_version: 'CostCategoryExpression.v1', # required - accepts ["CostCategoryExpression.v1"]
    #     rules: [
    #       {
    #         value: 'Value',
    #         rule: {
    #           dimensions: {
    #             key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #             values: [
    #               'member'
    #             ],
    #             match_options: [
    #               'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #             ]
    #           },
    #           tags: {
    #             key: 'Key',
    #           },
    #           cost_categories: {
    #             key: 'Key',
    #           }
    #         },
    #         inherited_value: {
    #           dimension_name: 'LINKED_ACCOUNT_NAME', # accepts ["LINKED_ACCOUNT_NAME", "TAG"]
    #           dimension_key: 'DimensionKey'
    #         },
    #         type: 'REGULAR' # accepts ["REGULAR", "INHERITED_VALUE"]
    #       }
    #     ], # required
    #     default_value: 'DefaultValue',
    #     split_charge_rules: [
    #       {
    #         source: 'Source', # required
    #         targets: [
    #           'member'
    #         ], # required
    #         member_method: 'FIXED', # required - accepts ["FIXED", "PROPORTIONAL", "EVEN"]
    #         parameters: [
    #           {
    #             type: 'ALLOCATION_PERCENTAGES', # required - accepts ["ALLOCATION_PERCENTAGES"]
    #             values: [
    #               'member'
    #             ] # required
    #           }
    #         ]
    #       }
    #     ],
    #     resource_tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCostCategoryDefinitionOutput
    #   resp.data.cost_category_arn #=> String
    #   resp.data.effective_start #=> String
    #
    def create_cost_category_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCostCategoryDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCostCategoryDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCostCategoryDefinition
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateCostCategoryDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCostCategoryDefinition,
        stubs: @stubs,
        params_class: Params::CreateCostCategoryDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cost_category_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a cost anomaly monitor. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAnomalyMonitorInput}.
    #
    # @option params [String] :monitor_arn
    #   <p>The unique identifier of the cost anomaly monitor that you want to delete. </p>
    #
    # @return [Types::DeleteAnomalyMonitorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_anomaly_monitor(
    #     monitor_arn: 'MonitorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAnomalyMonitorOutput
    #
    def delete_anomaly_monitor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAnomalyMonitorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAnomalyMonitorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAnomalyMonitor
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownMonitorException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteAnomalyMonitor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAnomalyMonitor,
        stubs: @stubs,
        params_class: Params::DeleteAnomalyMonitorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_anomaly_monitor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a cost anomaly subscription. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAnomalySubscriptionInput}.
    #
    # @option params [String] :subscription_arn
    #   <p>The unique identifier of the cost anomaly subscription that you want to delete. </p>
    #
    # @return [Types::DeleteAnomalySubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_anomaly_subscription(
    #     subscription_arn: 'SubscriptionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAnomalySubscriptionOutput
    #
    def delete_anomaly_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAnomalySubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAnomalySubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAnomalySubscription
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownSubscriptionException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteAnomalySubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAnomalySubscription,
        stubs: @stubs,
        params_class: Params::DeleteAnomalySubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_anomaly_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Cost Category. Expenses from this month going forward will no longer be categorized with this Cost Category.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCostCategoryDefinitionInput}.
    #
    # @option params [String] :cost_category_arn
    #   <p>The unique identifier for your Cost Category. </p>
    #
    # @return [Types::DeleteCostCategoryDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cost_category_definition(
    #     cost_category_arn: 'CostCategoryArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCostCategoryDefinitionOutput
    #   resp.data.cost_category_arn #=> String
    #   resp.data.effective_end #=> String
    #
    def delete_cost_category_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCostCategoryDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCostCategoryDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCostCategoryDefinition
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteCostCategoryDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCostCategoryDefinition,
        stubs: @stubs,
        params_class: Params::DeleteCostCategoryDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cost_category_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the name, Amazon Resource Name (ARN), rules, definition, and effective dates of a
    #       Cost Category that's defined in the account.</p>
    #          <p>You have the option to use <code>EffectiveOn</code> to return a Cost Category that's
    #       active on a specific date. If there's no <code>EffectiveOn</code> specified, you see a Cost
    #       Category that's effective on the current date. If Cost Category is still effective,
    #         <code>EffectiveEnd</code> is omitted in the response. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCostCategoryDefinitionInput}.
    #
    # @option params [String] :cost_category_arn
    #   <p>The unique identifier for your Cost Category. </p>
    #
    # @option params [String] :effective_on
    #   <p>The date when the Cost Category was effective. </p>
    #
    # @return [Types::DescribeCostCategoryDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cost_category_definition(
    #     cost_category_arn: 'CostCategoryArn', # required
    #     effective_on: 'EffectiveOn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCostCategoryDefinitionOutput
    #   resp.data.cost_category #=> Types::CostCategory
    #   resp.data.cost_category.cost_category_arn #=> String
    #   resp.data.cost_category.effective_start #=> String
    #   resp.data.cost_category.effective_end #=> String
    #   resp.data.cost_category.name #=> String
    #   resp.data.cost_category.rule_version #=> String, one of ["CostCategoryExpression.v1"]
    #   resp.data.cost_category.rules #=> Array<CostCategoryRule>
    #   resp.data.cost_category.rules[0] #=> Types::CostCategoryRule
    #   resp.data.cost_category.rules[0].value #=> String
    #   resp.data.cost_category.rules[0].rule #=> Types::Expression
    #   resp.data.cost_category.rules[0].rule.or #=> Array<Expression>
    #   resp.data.cost_category.rules[0].rule.and #=> Array<Expression>
    #   resp.data.cost_category.rules[0].rule.not #=> Types::Expression
    #   resp.data.cost_category.rules[0].rule.dimensions #=> Types::DimensionValues
    #   resp.data.cost_category.rules[0].rule.dimensions.key #=> String, one of ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #   resp.data.cost_category.rules[0].rule.dimensions.values #=> Array<String>
    #   resp.data.cost_category.rules[0].rule.dimensions.values[0] #=> String
    #   resp.data.cost_category.rules[0].rule.dimensions.match_options #=> Array<String>
    #   resp.data.cost_category.rules[0].rule.dimensions.match_options[0] #=> String, one of ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #   resp.data.cost_category.rules[0].rule.tags #=> Types::TagValues
    #   resp.data.cost_category.rules[0].rule.tags.key #=> String
    #   resp.data.cost_category.rules[0].rule.tags.values #=> Array<String>
    #   resp.data.cost_category.rules[0].rule.tags.match_options #=> Array<String>
    #   resp.data.cost_category.rules[0].rule.cost_categories #=> Types::CostCategoryValues
    #   resp.data.cost_category.rules[0].rule.cost_categories.key #=> String
    #   resp.data.cost_category.rules[0].rule.cost_categories.values #=> Array<String>
    #   resp.data.cost_category.rules[0].rule.cost_categories.match_options #=> Array<String>
    #   resp.data.cost_category.rules[0].inherited_value #=> Types::CostCategoryInheritedValueDimension
    #   resp.data.cost_category.rules[0].inherited_value.dimension_name #=> String, one of ["LINKED_ACCOUNT_NAME", "TAG"]
    #   resp.data.cost_category.rules[0].inherited_value.dimension_key #=> String
    #   resp.data.cost_category.rules[0].type #=> String, one of ["REGULAR", "INHERITED_VALUE"]
    #   resp.data.cost_category.split_charge_rules #=> Array<CostCategorySplitChargeRule>
    #   resp.data.cost_category.split_charge_rules[0] #=> Types::CostCategorySplitChargeRule
    #   resp.data.cost_category.split_charge_rules[0].source #=> String
    #   resp.data.cost_category.split_charge_rules[0].targets #=> Array<String>
    #   resp.data.cost_category.split_charge_rules[0].targets[0] #=> String
    #   resp.data.cost_category.split_charge_rules[0].member_method #=> String, one of ["FIXED", "PROPORTIONAL", "EVEN"]
    #   resp.data.cost_category.split_charge_rules[0].parameters #=> Array<CostCategorySplitChargeRuleParameter>
    #   resp.data.cost_category.split_charge_rules[0].parameters[0] #=> Types::CostCategorySplitChargeRuleParameter
    #   resp.data.cost_category.split_charge_rules[0].parameters[0].type #=> String, one of ["ALLOCATION_PERCENTAGES"]
    #   resp.data.cost_category.split_charge_rules[0].parameters[0].values #=> Array<String>
    #   resp.data.cost_category.split_charge_rules[0].parameters[0].values[0] #=> String
    #   resp.data.cost_category.processing_status #=> Array<CostCategoryProcessingStatus>
    #   resp.data.cost_category.processing_status[0] #=> Types::CostCategoryProcessingStatus
    #   resp.data.cost_category.processing_status[0].component #=> String, one of ["COST_EXPLORER"]
    #   resp.data.cost_category.processing_status[0].status #=> String, one of ["PROCESSING", "APPLIED"]
    #   resp.data.cost_category.default_value #=> String
    #
    def describe_cost_category_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCostCategoryDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCostCategoryDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCostCategoryDefinition
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeCostCategoryDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCostCategoryDefinition,
        stubs: @stubs,
        params_class: Params::DescribeCostCategoryDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cost_category_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all of the cost anomalies detected on your account during the time period that's
    #       specified by the <code>DateInterval</code> object. </p>
    #
    # @param [Hash] params
    #   See {Types::GetAnomaliesInput}.
    #
    # @option params [String] :monitor_arn
    #   <p>Retrieves all of the cost anomalies detected for a specific cost anomaly monitor Amazon
    #         Resource Name (ARN). </p>
    #
    # @option params [AnomalyDateInterval] :date_interval
    #   <p>Assigns the start and end dates for retrieving cost anomalies. The returned anomaly object
    #         will have an <code>AnomalyEndDate</code> in the specified time range. </p>
    #
    # @option params [String] :feedback
    #   <p>Filters anomaly results by the feedback field on the anomaly object. </p>
    #
    # @option params [TotalImpactFilter] :total_impact
    #   <p>Filters anomaly results by the total impact field on the anomaly object. For example, you
    #         can filter anomalies <code>GREATER_THAN 200.00</code> to retrieve anomalies, with an estimated
    #         dollar impact greater than 200. </p>
    #
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of entries a paginated response contains. </p>
    #
    # @return [Types::GetAnomaliesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_anomalies(
    #     monitor_arn: 'MonitorArn',
    #     date_interval: {
    #       start_date: 'StartDate', # required
    #       end_date: 'EndDate'
    #     }, # required
    #     feedback: 'YES', # accepts ["YES", "NO", "PLANNED_ACTIVITY"]
    #     total_impact: {
    #       numeric_operator: 'EQUAL', # required - accepts ["EQUAL", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "BETWEEN"]
    #       start_value: 1.0, # required
    #       end_value: 1.0
    #     },
    #     next_page_token: 'NextPageToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAnomaliesOutput
    #   resp.data.anomalies #=> Array<Anomaly>
    #   resp.data.anomalies[0] #=> Types::Anomaly
    #   resp.data.anomalies[0].anomaly_id #=> String
    #   resp.data.anomalies[0].anomaly_start_date #=> String
    #   resp.data.anomalies[0].anomaly_end_date #=> String
    #   resp.data.anomalies[0].dimension_value #=> String
    #   resp.data.anomalies[0].root_causes #=> Array<RootCause>
    #   resp.data.anomalies[0].root_causes[0] #=> Types::RootCause
    #   resp.data.anomalies[0].root_causes[0].service #=> String
    #   resp.data.anomalies[0].root_causes[0].region #=> String
    #   resp.data.anomalies[0].root_causes[0].linked_account #=> String
    #   resp.data.anomalies[0].root_causes[0].usage_type #=> String
    #   resp.data.anomalies[0].anomaly_score #=> Types::AnomalyScore
    #   resp.data.anomalies[0].anomaly_score.max_score #=> Float
    #   resp.data.anomalies[0].anomaly_score.current_score #=> Float
    #   resp.data.anomalies[0].impact #=> Types::Impact
    #   resp.data.anomalies[0].impact.max_impact #=> Float
    #   resp.data.anomalies[0].impact.total_impact #=> Float
    #   resp.data.anomalies[0].monitor_arn #=> String
    #   resp.data.anomalies[0].feedback #=> String, one of ["YES", "NO", "PLANNED_ACTIVITY"]
    #   resp.data.next_page_token #=> String
    #
    def get_anomalies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAnomaliesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAnomaliesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAnomalies
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::LimitExceededException]),
        data_parser: Parsers::GetAnomalies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAnomalies,
        stubs: @stubs,
        params_class: Params::GetAnomaliesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_anomalies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the cost anomaly monitor definitions for your account. You can filter using a
    #       list of cost anomaly monitor Amazon Resource Names (ARNs). </p>
    #
    # @param [Hash] params
    #   See {Types::GetAnomalyMonitorsInput}.
    #
    # @option params [Array<String>] :monitor_arn_list
    #   <p>A list of cost anomaly monitor ARNs. </p>
    #
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of entries that a paginated response contains. </p>
    #
    # @return [Types::GetAnomalyMonitorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_anomaly_monitors(
    #     monitor_arn_list: [
    #       'member'
    #     ],
    #     next_page_token: 'NextPageToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAnomalyMonitorsOutput
    #   resp.data.anomaly_monitors #=> Array<AnomalyMonitor>
    #   resp.data.anomaly_monitors[0] #=> Types::AnomalyMonitor
    #   resp.data.anomaly_monitors[0].monitor_arn #=> String
    #   resp.data.anomaly_monitors[0].monitor_name #=> String
    #   resp.data.anomaly_monitors[0].creation_date #=> String
    #   resp.data.anomaly_monitors[0].last_updated_date #=> String
    #   resp.data.anomaly_monitors[0].last_evaluated_date #=> String
    #   resp.data.anomaly_monitors[0].monitor_type #=> String, one of ["DIMENSIONAL", "CUSTOM"]
    #   resp.data.anomaly_monitors[0].monitor_dimension #=> String, one of ["SERVICE"]
    #   resp.data.anomaly_monitors[0].monitor_specification #=> Types::Expression
    #   resp.data.anomaly_monitors[0].monitor_specification.or #=> Array<Expression>
    #   resp.data.anomaly_monitors[0].monitor_specification.and #=> Array<Expression>
    #   resp.data.anomaly_monitors[0].monitor_specification.not #=> Types::Expression
    #   resp.data.anomaly_monitors[0].monitor_specification.dimensions #=> Types::DimensionValues
    #   resp.data.anomaly_monitors[0].monitor_specification.dimensions.key #=> String, one of ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #   resp.data.anomaly_monitors[0].monitor_specification.dimensions.values #=> Array<String>
    #   resp.data.anomaly_monitors[0].monitor_specification.dimensions.values[0] #=> String
    #   resp.data.anomaly_monitors[0].monitor_specification.dimensions.match_options #=> Array<String>
    #   resp.data.anomaly_monitors[0].monitor_specification.dimensions.match_options[0] #=> String, one of ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #   resp.data.anomaly_monitors[0].monitor_specification.tags #=> Types::TagValues
    #   resp.data.anomaly_monitors[0].monitor_specification.tags.key #=> String
    #   resp.data.anomaly_monitors[0].monitor_specification.tags.values #=> Array<String>
    #   resp.data.anomaly_monitors[0].monitor_specification.tags.match_options #=> Array<String>
    #   resp.data.anomaly_monitors[0].monitor_specification.cost_categories #=> Types::CostCategoryValues
    #   resp.data.anomaly_monitors[0].monitor_specification.cost_categories.key #=> String
    #   resp.data.anomaly_monitors[0].monitor_specification.cost_categories.values #=> Array<String>
    #   resp.data.anomaly_monitors[0].monitor_specification.cost_categories.match_options #=> Array<String>
    #   resp.data.anomaly_monitors[0].dimensional_value_count #=> Integer
    #   resp.data.next_page_token #=> String
    #
    def get_anomaly_monitors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAnomalyMonitorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAnomalyMonitorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAnomalyMonitors
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::UnknownMonitorException, Errors::LimitExceededException]),
        data_parser: Parsers::GetAnomalyMonitors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAnomalyMonitors,
        stubs: @stubs,
        params_class: Params::GetAnomalyMonitorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_anomaly_monitors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the cost anomaly subscription objects for your account. You can filter using a
    #       list of cost anomaly monitor Amazon Resource Names (ARNs). </p>
    #
    # @param [Hash] params
    #   See {Types::GetAnomalySubscriptionsInput}.
    #
    # @option params [Array<String>] :subscription_arn_list
    #   <p>A list of cost anomaly subscription ARNs. </p>
    #
    # @option params [String] :monitor_arn
    #   <p>Cost anomaly monitor ARNs. </p>
    #
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of entries a paginated response contains. </p>
    #
    # @return [Types::GetAnomalySubscriptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_anomaly_subscriptions(
    #     subscription_arn_list: [
    #       'member'
    #     ],
    #     monitor_arn: 'MonitorArn',
    #     next_page_token: 'NextPageToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAnomalySubscriptionsOutput
    #   resp.data.anomaly_subscriptions #=> Array<AnomalySubscription>
    #   resp.data.anomaly_subscriptions[0] #=> Types::AnomalySubscription
    #   resp.data.anomaly_subscriptions[0].subscription_arn #=> String
    #   resp.data.anomaly_subscriptions[0].account_id #=> String
    #   resp.data.anomaly_subscriptions[0].monitor_arn_list #=> Array<String>
    #   resp.data.anomaly_subscriptions[0].monitor_arn_list[0] #=> String
    #   resp.data.anomaly_subscriptions[0].subscribers #=> Array<Subscriber>
    #   resp.data.anomaly_subscriptions[0].subscribers[0] #=> Types::Subscriber
    #   resp.data.anomaly_subscriptions[0].subscribers[0].address #=> String
    #   resp.data.anomaly_subscriptions[0].subscribers[0].type #=> String, one of ["EMAIL", "SNS"]
    #   resp.data.anomaly_subscriptions[0].subscribers[0].status #=> String, one of ["CONFIRMED", "DECLINED"]
    #   resp.data.anomaly_subscriptions[0].threshold #=> Float
    #   resp.data.anomaly_subscriptions[0].frequency #=> String, one of ["DAILY", "IMMEDIATE", "WEEKLY"]
    #   resp.data.anomaly_subscriptions[0].subscription_name #=> String
    #   resp.data.next_page_token #=> String
    #
    def get_anomaly_subscriptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAnomalySubscriptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAnomalySubscriptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAnomalySubscriptions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownSubscriptionException, Errors::InvalidNextTokenException, Errors::LimitExceededException]),
        data_parser: Parsers::GetAnomalySubscriptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAnomalySubscriptions,
        stubs: @stubs,
        params_class: Params::GetAnomalySubscriptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_anomaly_subscriptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves cost and usage metrics for your account. You can specify which cost and
    #       usage-related metric that you want the request to return. For example, you can specify
    #         <code>BlendedCosts</code> or <code>UsageQuantity</code>. You can also filter and group your
    #       data by various dimensions, such as <code>SERVICE</code> or <code>AZ</code>, in a specific
    #       time range. For a complete list of valid dimensions, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html">GetDimensionValues</a> operation. Management account in an organization in Organizations have access to all member accounts.</p>
    # 	        <p>For information about filter limitations, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html">Quotas and restrictions</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCostAndUsageInput}.
    #
    # @option params [DateInterval] :time_period
    #   <p>Sets the start date and end date for retrieving Amazon Web Services costs. The start date
    #         is inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #
    # @option params [String] :granularity
    #   <p>Sets the Amazon Web Services cost granularity to <code>MONTHLY</code> or <code>DAILY</code>, or <code>HOURLY</code>. If <code>Granularity</code> isn't set,
    #   	    the response object doesn't include the <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>, or <code>HOURLY</code>. </p>
    #
    # @option params [Expression] :filter
    #   <p>Filters Amazon Web Services costs by different dimensions. For example, you can specify <code>SERVICE</code> and <code>LINKED_ACCOUNT</code>
    #   			and get the costs that are associated with that account's usage of that service. You can nest <code>Expression</code> objects
    #   			to define any combination of dimension filters. For more information, see
    #   			<a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>. </p>
    #   	        <p>Valid values for <code>MatchOptions</code> for <code>Dimensions</code> are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #   	        <p>Valid values for <code>MatchOptions</code> for <code>CostCategories</code> and <code>Tags</code> are <code>EQUALS</code>, <code>ABSENT</code>, and <code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #
    # @option params [Array<String>] :metrics
    #   <p>Which metrics are returned in the query. For more information about blended and unblended rates, see
    #   			<a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation
    #   				appear on some line items in my bill?</a>. </p>
    #   		       <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>, <code>NetAmortizedCost</code>,
    #   			<code>NetUnblendedCost</code>, <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and <code>UsageQuantity</code>. </p>
    #   		       <note>
    #   			         <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage
    #           numbers without taking into account the units. For example, if you aggregate
    #             <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because
    #           Amazon EC2 compute hours and data transfer are measured in different units (for example,
    #           hours and GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by
    #             <code>UsageType</code> or <code>UsageTypeGroups</code>. </p>
    #   		       </note>
    #   		       <p>
    #               <code>Metrics</code> is required for <code>GetCostAndUsage</code> requests.</p>
    #
    # @option params [Array<GroupDefinition>] :group_by
    #   <p>You can group Amazon Web Services costs using up to two different groups, either dimensions, tag keys,
    #         cost categories, or any two group by types.</p>
    #   	        <p>Valid values for the <code>DIMENSION</code> type are <code>AZ</code>, <code>INSTANCE_TYPE</code>, <code>LEGAL_ENTITY_NAME</code>, <code>INVOICING_ENTITY</code>, <code>LINKED_ACCOUNT</code>,
    #   			<code>OPERATION</code>, <code>PLATFORM</code>, <code>PURCHASE_TYPE</code>, <code>SERVICE</code>,
    #   		  <code>TENANCY</code>, <code>RECORD_TYPE</code>, and <code>USAGE_TYPE</code>.</p>
    #   	        <p>When you group by the <code>TAG</code>  type and include a valid tag key, you get all tag values, including empty strings.</p>
    #
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    # @return [Types::GetCostAndUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_and_usage(
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     granularity: 'DAILY', # required - accepts ["DAILY", "MONTHLY", "HOURLY"]
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     metrics: [
    #       'member'
    #     ], # required
    #     group_by: [
    #       {
    #         type: 'DIMENSION', # accepts ["DIMENSION", "TAG", "COST_CATEGORY"]
    #         key: 'Key'
    #       }
    #     ],
    #     next_page_token: 'NextPageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCostAndUsageOutput
    #   resp.data.next_page_token #=> String
    #   resp.data.group_definitions #=> Array<GroupDefinition>
    #   resp.data.group_definitions[0] #=> Types::GroupDefinition
    #   resp.data.group_definitions[0].type #=> String, one of ["DIMENSION", "TAG", "COST_CATEGORY"]
    #   resp.data.group_definitions[0].key #=> String
    #   resp.data.results_by_time #=> Array<ResultByTime>
    #   resp.data.results_by_time[0] #=> Types::ResultByTime
    #   resp.data.results_by_time[0].time_period #=> Types::DateInterval
    #   resp.data.results_by_time[0].time_period.start #=> String
    #   resp.data.results_by_time[0].time_period.end #=> String
    #   resp.data.results_by_time[0].total #=> Hash<String, MetricValue>
    #   resp.data.results_by_time[0].total['key'] #=> Types::MetricValue
    #   resp.data.results_by_time[0].total['key'].amount #=> String
    #   resp.data.results_by_time[0].total['key'].unit #=> String
    #   resp.data.results_by_time[0].groups #=> Array<Group>
    #   resp.data.results_by_time[0].groups[0] #=> Types::Group
    #   resp.data.results_by_time[0].groups[0].keys #=> Array<String>
    #   resp.data.results_by_time[0].groups[0].keys[0] #=> String
    #   resp.data.results_by_time[0].groups[0].metrics #=> Hash<String, MetricValue>
    #   resp.data.results_by_time[0].estimated #=> Boolean
    #   resp.data.dimension_value_attributes #=> Array<DimensionValuesWithAttributes>
    #   resp.data.dimension_value_attributes[0] #=> Types::DimensionValuesWithAttributes
    #   resp.data.dimension_value_attributes[0].value #=> String
    #   resp.data.dimension_value_attributes[0].attributes #=> Hash<String, String>
    #   resp.data.dimension_value_attributes[0].attributes['key'] #=> String
    #
    def get_cost_and_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCostAndUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCostAndUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCostAndUsage
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BillExpirationException, Errors::DataUnavailableException, Errors::InvalidNextTokenException, Errors::RequestChangedException, Errors::LimitExceededException]),
        data_parser: Parsers::GetCostAndUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCostAndUsage,
        stubs: @stubs,
        params_class: Params::GetCostAndUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cost_and_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves cost and usage metrics with resources for your account. You can specify which cost and
    # 	    usage-related metric, such as <code>BlendedCosts</code> or <code>UsageQuantity</code>, that
    # 	    you want the request to return. You can also filter and group your data by various dimensions,
    # 	    such as <code>SERVICE</code> or <code>AZ</code>, in a specific time range. For a complete list
    # 	    of valid dimensions, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html">GetDimensionValues</a> operation. Management account in an organization in Organizations have access to all member accounts. This API is currently available for the Amazon Elastic Compute Cloud – Compute service only.</p>
    # 	        <note>
    #             <p>This is an opt-in only feature. You can enable this feature from the Cost Explorer Settings
    #         page. For information about how to access the Settings page, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html">Controlling Access for Cost
    #           Explorer</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetCostAndUsageWithResourcesInput}.
    #
    # @option params [DateInterval] :time_period
    #   <p>Sets the start and end dates for retrieving Amazon Web Services costs. The range must be within the last 14 days (the start date cannot be earlier than 14 days ago). The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is
    #               retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #
    # @option params [String] :granularity
    #   <p>Sets the Amazon Web Services cost granularity to <code>MONTHLY</code>, <code>DAILY</code>, or <code>HOURLY</code>. If
    #   	    <code>Granularity</code> isn't set, the response object doesn't include the
    #   	    <code>Granularity</code>, <code>MONTHLY</code>, <code>DAILY</code>, or <code>HOURLY</code>. </p>
    #
    # @option params [Expression] :filter
    #   <p>Filters Amazon Web Services costs by different dimensions. For example, you can specify
    #         <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> and get the costs that are associated
    #         with that account's usage of that service. You can nest <code>Expression</code> objects to
    #         define any combination of dimension filters. For more information, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>. </p>
    #            <p>The <code>GetCostAndUsageWithResources</code> operation requires that you either group by or filter by a
    #         <code>ResourceId</code>. It requires the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
    #               <code>"SERVICE = Amazon Elastic Compute Cloud - Compute"</code> in the filter.</p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>Dimensions</code> are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>CostCategories</code> and <code>Tags</code> are <code>EQUALS</code>, <code>ABSENT</code>, and <code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #
    # @option params [Array<String>] :metrics
    #   <p>Which metrics are returned in the query. For more information about blended and
    #         unblended rates, see <a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does
    #           the "blended" annotation appear on some line items in my bill?</a>. </p>
    #            <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>,
    #         <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
    #         <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
    #         <code>UsageQuantity</code>. </p>
    #            <note>
    #               <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage
    #           numbers without taking the units into account. For example, if you aggregate
    #             <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because
    #           Amazon EC2 compute hours and data transfer are measured in different units (for example,
    #           hour or GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by
    #             <code>UsageType</code> or <code>UsageTypeGroups</code>. </p>
    #            </note>
    #            <p>
    #               <code>Metrics</code> is required for <code>GetCostAndUsageWithResources</code> requests.</p>
    #
    # @option params [Array<GroupDefinition>] :group_by
    #   <p>You can group Amazon Web Services costs using up to two different groups: <code>DIMENSION</code>, <code>TAG</code>, <code>COST_CATEGORY</code>.</p>
    #
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    # @return [Types::GetCostAndUsageWithResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_and_usage_with_resources(
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     granularity: 'DAILY', # required - accepts ["DAILY", "MONTHLY", "HOURLY"]
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     }, # required
    #     metrics: [
    #       'member'
    #     ],
    #     group_by: [
    #       {
    #         type: 'DIMENSION', # accepts ["DIMENSION", "TAG", "COST_CATEGORY"]
    #         key: 'Key'
    #       }
    #     ],
    #     next_page_token: 'NextPageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCostAndUsageWithResourcesOutput
    #   resp.data.next_page_token #=> String
    #   resp.data.group_definitions #=> Array<GroupDefinition>
    #   resp.data.group_definitions[0] #=> Types::GroupDefinition
    #   resp.data.group_definitions[0].type #=> String, one of ["DIMENSION", "TAG", "COST_CATEGORY"]
    #   resp.data.group_definitions[0].key #=> String
    #   resp.data.results_by_time #=> Array<ResultByTime>
    #   resp.data.results_by_time[0] #=> Types::ResultByTime
    #   resp.data.results_by_time[0].time_period #=> Types::DateInterval
    #   resp.data.results_by_time[0].time_period.start #=> String
    #   resp.data.results_by_time[0].time_period.end #=> String
    #   resp.data.results_by_time[0].total #=> Hash<String, MetricValue>
    #   resp.data.results_by_time[0].total['key'] #=> Types::MetricValue
    #   resp.data.results_by_time[0].total['key'].amount #=> String
    #   resp.data.results_by_time[0].total['key'].unit #=> String
    #   resp.data.results_by_time[0].groups #=> Array<Group>
    #   resp.data.results_by_time[0].groups[0] #=> Types::Group
    #   resp.data.results_by_time[0].groups[0].keys #=> Array<String>
    #   resp.data.results_by_time[0].groups[0].keys[0] #=> String
    #   resp.data.results_by_time[0].groups[0].metrics #=> Hash<String, MetricValue>
    #   resp.data.results_by_time[0].estimated #=> Boolean
    #   resp.data.dimension_value_attributes #=> Array<DimensionValuesWithAttributes>
    #   resp.data.dimension_value_attributes[0] #=> Types::DimensionValuesWithAttributes
    #   resp.data.dimension_value_attributes[0].value #=> String
    #   resp.data.dimension_value_attributes[0].attributes #=> Hash<String, String>
    #   resp.data.dimension_value_attributes[0].attributes['key'] #=> String
    #
    def get_cost_and_usage_with_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCostAndUsageWithResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCostAndUsageWithResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCostAndUsageWithResources
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BillExpirationException, Errors::DataUnavailableException, Errors::InvalidNextTokenException, Errors::RequestChangedException, Errors::LimitExceededException]),
        data_parser: Parsers::GetCostAndUsageWithResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCostAndUsageWithResources,
        stubs: @stubs,
        params_class: Params::GetCostAndUsageWithResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cost_and_usage_with_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an array of Cost Category names and values incurred cost.</p>
    #          <note>
    #             <p>If some Cost Category names and values are not associated with any cost, they will not be returned by this API.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetCostCategoriesInput}.
    #
    # @option params [String] :search_string
    #   <p>The value that you want to search the filter values for.</p>
    #            <p>If you don't specify a <code>CostCategoryName</code>, <code>SearchString</code> is used to
    #         filter Cost Category names that match the <code>SearchString</code> pattern. If you specify a
    #           <code>CostCategoryName</code>, <code>SearchString</code> is used to filter Cost Category
    #         values that match the <code>SearchString</code> pattern.</p>
    #
    # @option params [DateInterval] :time_period
    #   <p>The time period of the request. </p>
    #
    # @option params [String] :cost_category_name
    #   <p>The unique name of the Cost Category.</p>
    #
    # @option params [Expression] :filter
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    # @option params [Array<SortDefinition>] :sort_by
    #   <p>The value that you sort the data by.</p>
    #            <p>The key represents the cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported key values for the <code>SortOrder</code> value are <code>ASCENDING</code>
    #         and <code>DESCENDING</code>.</p>
    #            <p>When you use the <code>SortBy</code> value, the <code>NextPageToken</code> and
    #           <code>SearchString</code> key values aren't supported.</p>
    #
    # @option params [Integer] :max_results
    #   <p>This field is only used when the <code>SortBy</code> value is provided in the
    #         request.</p>
    #            <p>The maximum number of objects that are returned for this request. If
    #           <code>MaxResults</code> isn't specified with the <code>SortBy</code> value, the request
    #         returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetCostCategories</code>, MaxResults has an upper quota of 1000.</p>
    #
    # @option params [String] :next_page_token
    #   <p>If the number of objects that are still available for retrieval exceeds the quota, Amazon Web Services returns a NextPageToken value in the response. To retrieve the next batch of
    #         objects, provide the NextPageToken from the previous call in your next request.</p>
    #
    # @return [Types::GetCostCategoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_categories(
    #     search_string: 'SearchString',
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     cost_category_name: 'CostCategoryName',
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     sort_by: [
    #       {
    #         key: 'Key', # required
    #         sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_page_token: 'NextPageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCostCategoriesOutput
    #   resp.data.next_page_token #=> String
    #   resp.data.cost_category_names #=> Array<String>
    #   resp.data.cost_category_names[0] #=> String
    #   resp.data.cost_category_values #=> Array<String>
    #   resp.data.cost_category_values[0] #=> String
    #   resp.data.return_size #=> Integer
    #   resp.data.total_size #=> Integer
    #
    def get_cost_categories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCostCategoriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCostCategoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCostCategories
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BillExpirationException, Errors::DataUnavailableException, Errors::InvalidNextTokenException, Errors::RequestChangedException, Errors::LimitExceededException]),
        data_parser: Parsers::GetCostCategories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCostCategories,
        stubs: @stubs,
        params_class: Params::GetCostCategoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cost_categories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs. </p>
    #
    # @param [Hash] params
    #   See {Types::GetCostForecastInput}.
    #
    # @option params [DateInterval] :time_period
    #   <p>The period of time that you want the forecast to cover. The start date must be equal to or no later than the current date to avoid a validation error.</p>
    #
    # @option params [String] :metric
    #   <p>Which metric Cost Explorer uses to create your forecast. For more information about blended and unblended rates, see
    #   			<a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation
    #   				appear on some line items in my bill?</a>. </p>
    #   		       <p>Valid values for a <code>GetCostForecast</code> call are the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>AMORTIZED_COST</p>
    #   			         </li>
    #               <li>
    #   				           <p>BLENDED_COST</p>
    #   			         </li>
    #               <li>
    #   				           <p>NET_AMORTIZED_COST</p>
    #   			         </li>
    #               <li>
    #   				           <p>NET_UNBLENDED_COST</p>
    #   			         </li>
    #               <li>
    #   				           <p>UNBLENDED_COST</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :granularity
    #   <p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code> forecasts or 12 months of <code>MONTHLY</code> forecasts.</p>
    #   		       <p>The <code>GetCostForecast</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    # @option params [Expression] :filter
    #   <p>The filters that you want to use to filter your forecast. The <code>GetCostForecast</code> API supports filtering by the following dimensions:</p>
    #   		
    #   	        <ul>
    #               <li>
    #                  <p>
    #                     <code>AZ</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PURCHASE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE_GROUP</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RECORD_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATING_SYSTEM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TENANCY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SCOPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLATFORM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUBSCRIPTION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LEGAL_ENTITY_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DATABASE_ENGINE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BILLING_ENTITY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESERVATION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :prediction_interval_level
    #   <p>Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean
    #   			by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value
    #   			falling in the prediction interval. Higher confidence levels result in wider prediction intervals.</p>
    #
    # @return [Types::GetCostForecastOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_forecast(
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     metric: 'BLENDED_COST', # required - accepts ["BLENDED_COST", "UNBLENDED_COST", "AMORTIZED_COST", "NET_UNBLENDED_COST", "NET_AMORTIZED_COST", "USAGE_QUANTITY", "NORMALIZED_USAGE_AMOUNT"]
    #     granularity: 'DAILY', # required - accepts ["DAILY", "MONTHLY", "HOURLY"]
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     prediction_interval_level: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCostForecastOutput
    #   resp.data.total #=> Types::MetricValue
    #   resp.data.total.amount #=> String
    #   resp.data.total.unit #=> String
    #   resp.data.forecast_results_by_time #=> Array<ForecastResult>
    #   resp.data.forecast_results_by_time[0] #=> Types::ForecastResult
    #   resp.data.forecast_results_by_time[0].time_period #=> Types::DateInterval
    #   resp.data.forecast_results_by_time[0].time_period.start #=> String
    #   resp.data.forecast_results_by_time[0].time_period.end #=> String
    #   resp.data.forecast_results_by_time[0].mean_value #=> String
    #   resp.data.forecast_results_by_time[0].prediction_interval_lower_bound #=> String
    #   resp.data.forecast_results_by_time[0].prediction_interval_upper_bound #=> String
    #
    def get_cost_forecast(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCostForecastInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCostForecastInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCostForecast
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DataUnavailableException, Errors::LimitExceededException]),
        data_parser: Parsers::GetCostForecast
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCostForecast,
        stubs: @stubs,
        params_class: Params::GetCostForecastOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cost_forecast
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string. </p>
    #
    # @param [Hash] params
    #   See {Types::GetDimensionValuesInput}.
    #
    # @option params [String] :search_string
    #   <p>The value that you want to search the filter values for.</p>
    #
    # @option params [DateInterval] :time_period
    #   <p>The start date and end date for retrieving the dimension values. The start date is
    #         inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #
    # @option params [String] :dimension
    #   <p>The name of the dimension. Each <code>Dimension</code> is available for a different <code>Context</code>.
    #   			For more information, see <code>Context</code>.
    #   			
    #   		</p>
    #
    # @option params [String] :context
    #   <p>The context for the call to <code>GetDimensionValues</code>. This can be <code>RESERVATIONS</code> or <code>COST_AND_USAGE</code>.
    #   			The default value is <code>COST_AND_USAGE</code>. If the context is set to <code>RESERVATIONS</code>, the resulting dimension values
    #   			can be used in the <code>GetReservationUtilization</code> operation. If the context is set to <code>COST_AND_USAGE</code>,
    #   			the resulting dimension values can be used in the <code>GetCostAndUsage</code> operation.</p>
    #   		       <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following
    #              dimensions for searching:</p>
    #              <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>BILLING_ENTITY - The Amazon Web Services seller that your account is with. Possible values are the following:</p>
    #                  <p>- Amazon Web Services(Amazon Web Services): The entity that sells Amazon Web Services.</p>
    #                  <p>- AISPL (Amazon Internet Services Pvt. Ltd.): The local Indian entity that's an
    #             acting reseller for Amazon Web Services in India.</p>
    #                  <p>- Amazon Web Services Marketplace: The entity that supports the sale of solutions that are
    #             built on Amazon Web Services by third-party software providers.</p>
    #                </li>
    #               <li>
    #                  <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE_FAMILY - A family of instance types optimized to fit different use cases.
    #             Examples are <code>Compute Optimized</code> (for example, <code>C4</code>,
    #             <code>C5</code>, <code>C6g</code>, and <code>C7g</code>), <code>Memory Optimization</code>
    #             (for example, <code>R4</code>, <code>R5n</code>, <code>R5b</code>, and
    #             <code>R6g</code>).</p>
    #               </li>
    #               <li>
    #                  <p>INVOICING_ENTITY - The name of the entity that issues the Amazon Web Services
    #             invoice.</p>
    #               </li>
    #               <li>
    #                  <p>LEGAL_ENTITY_NAME - The name of the organization that sells you Amazon Web Services services, such as Amazon Web Services.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value
    #                  field contains the Amazon Web Services ID of the member account.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and <code>CreateBucket</code>.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>PURCHASE_TYPE - The reservation type of the purchase that this usage is related to.
    #             Examples include On-Demand Instances and Standard Reserved Instances.</p>
    #               </li>
    #               <li>
    #                  <p>RESERVATION_ID - The unique identifier for an Amazon Web Services Reservation Instance.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plans.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute).</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE - The Amazon Web Services service such as Amazon DynamoDB.</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the <code>GetDimensionValues</code> operation
    #              includes a unit attribute. Examples include GB and Hrs.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this
    #                  operation includes a unit attribute.</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>RECORD_TYPE - The different types of charges such as
    #             Reserved
    #             Instance (RI) fees, usage costs, tax refunds, and credits.</p>
    #               </li>
    #               <li>
    #                  <p>RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>RESERVATIONS</code>, you can use the following
    #              dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value
    #                  field contains the Amazon Web Services ID of the member account.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.</p>
    #               </li>
    #               <li>
    #                  <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the following dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)</p>
    #               </li>
    #               <li>
    #                  <p>PAYMENT_OPTION - The payment option for the given Savings Plans (for example, All
    #             Upfront)</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE_FAMILY - The family of instances (For example, <code>m5</code>)</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value
    #                  field contains the Amazon Web Services ID of the member account.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plans.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Expression] :filter
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    # @option params [Array<SortDefinition>] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The key represents cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for the <code>SortOrder</code> key are <code>ASCENDING</code> or
    #           <code>DESCENDING</code>.</p>
    #            <p>When you specify a <code>SortBy</code> paramater, the context must be
    #           <code>COST_AND_USAGE</code>. Further, when using <code>SortBy</code>,
    #           <code>NextPageToken</code> and <code>SearchString</code> aren't supported.</p>
    #
    # @option params [Integer] :max_results
    #   <p>This field is only used when SortBy is provided in the request. The maximum number of
    #         objects that are returned for this request. If MaxResults isn't specified with SortBy, the
    #         request returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetDimensionValues</code>, MaxResults has an upper limit of 1000.</p>
    #
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    # @return [Types::GetDimensionValuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dimension_values(
    #     search_string: 'SearchString',
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     dimension: 'AZ', # required - accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #     context: 'COST_AND_USAGE', # accepts ["COST_AND_USAGE", "RESERVATIONS", "SAVINGS_PLANS"]
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     sort_by: [
    #       {
    #         key: 'Key', # required
    #         sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_page_token: 'NextPageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDimensionValuesOutput
    #   resp.data.dimension_values #=> Array<DimensionValuesWithAttributes>
    #   resp.data.dimension_values[0] #=> Types::DimensionValuesWithAttributes
    #   resp.data.dimension_values[0].value #=> String
    #   resp.data.dimension_values[0].attributes #=> Hash<String, String>
    #   resp.data.dimension_values[0].attributes['key'] #=> String
    #   resp.data.return_size #=> Integer
    #   resp.data.total_size #=> Integer
    #   resp.data.next_page_token #=> String
    #
    def get_dimension_values(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDimensionValuesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDimensionValuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDimensionValues
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BillExpirationException, Errors::DataUnavailableException, Errors::InvalidNextTokenException, Errors::RequestChangedException, Errors::LimitExceededException]),
        data_parser: Parsers::GetDimensionValues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDimensionValues,
        stubs: @stubs,
        params_class: Params::GetDimensionValuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_dimension_values
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the reservation coverage for your account, which you can use to see how much of
    #       your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or
    #       Amazon Redshift usage is covered by a reservation. An organization's management account can
    #       see the coverage of the associated member accounts. This supports dimensions, Cost Categories,
    #       and nested expressions. For any time period, you can filter data about reservation usage by
    #       the following dimensions:</p>
    # 		       <ul>
    #             <li>
    #                <p>AZ</p>
    #             </li>
    #             <li>
    #                <p>CACHE_ENGINE</p>
    #             </li>
    #             <li>
    #                <p>DATABASE_ENGINE</p>
    #             </li>
    #             <li>
    #                <p>DEPLOYMENT_OPTION</p>
    #             </li>
    #             <li>
    #                <p>INSTANCE_TYPE</p>
    #             </li>
    #             <li>
    #                <p>LINKED_ACCOUNT</p>
    #             </li>
    #             <li>
    #                <p>OPERATING_SYSTEM</p>
    #             </li>
    #             <li>
    #                <p>PLATFORM</p>
    #             </li>
    #             <li>
    #                <p>REGION</p>
    #             </li>
    #             <li>
    #                <p>SERVICE</p>
    #             </li>
    #             <li>
    #                <p>TAG</p>
    #             </li>
    #             <li>
    #                <p>TENANCY</p>
    #             </li>
    #          </ul>
    # 		       <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code> operation. </p>
    #
    # @param [Hash] params
    #   See {Types::GetReservationCoverageInput}.
    #
    # @option params [DateInterval] :time_period
    #   <p>The start and end dates of the period that you want to retrieve data about reservation coverage for. You can retrieve data
    #   			for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is
    #               retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>
    #
    # @option params [Array<GroupDefinition>] :group_by
    #   <p>You can group the data by the following attributes:</p>
    #   		       <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>INVOICING_ENTITY</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :granularity
    #   <p>The granularity of the Amazon Web Services cost data for the reservation. Valid values are <code>MONTHLY</code> and <code>DAILY</code>.</p>
    #   		       <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set,
    #   			the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>.</p>
    #   		       <p>The <code>GetReservationCoverage</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    # @option params [Expression] :filter
    #   <p>Filters utilization data by dimensions. You can filter by the following dimensions:</p>
    #   		       <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE</p>
    #               </li>
    #               <li>
    #                  <p>TAG</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #   		       <p>
    #               <code>GetReservationCoverage</code> uses the same
    #   			<a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #   			as the other operations, but only <code>AND</code> is supported among each dimension. You can nest only one level deep.
    #   			If there are multiple values for a dimension, they are OR'd together.</p>
    #   		       <p>If you don't provide a <code>SERVICE</code> filter, Cost Explorer defaults to EC2.</p>
    #   	        <p>Cost category is also supported.</p>
    #
    # @option params [Array<String>] :metrics
    #   <p>The measurement that you want your reservation coverage reported in.</p>
    #   		       <p>Valid values are <code>Hour</code>, <code>Unit</code>, and <code>Cost</code>. You can use multiple values in a request.</p>
    #
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    # @option params [SortDefinition] :sort_by
    #   <p>The value by which you want to sort the data.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoverageHoursPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReservedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalRunningHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoverageNormalizedUnitsPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReservedNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalRunningNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Time</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you returned for this request. If more objects are
    #         available, in the response, Amazon Web Services provides a NextPageToken value that you can use
    #         in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::GetReservationCoverageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reservation_coverage(
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     group_by: [
    #       {
    #         type: 'DIMENSION', # accepts ["DIMENSION", "TAG", "COST_CATEGORY"]
    #         key: 'Key'
    #       }
    #     ],
    #     granularity: 'DAILY', # accepts ["DAILY", "MONTHLY", "HOURLY"]
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     metrics: [
    #       'member'
    #     ],
    #     next_page_token: 'NextPageToken',
    #     sort_by: {
    #       key: 'Key', # required
    #       sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #     },
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReservationCoverageOutput
    #   resp.data.coverages_by_time #=> Array<CoverageByTime>
    #   resp.data.coverages_by_time[0] #=> Types::CoverageByTime
    #   resp.data.coverages_by_time[0].time_period #=> Types::DateInterval
    #   resp.data.coverages_by_time[0].time_period.start #=> String
    #   resp.data.coverages_by_time[0].time_period.end #=> String
    #   resp.data.coverages_by_time[0].groups #=> Array<ReservationCoverageGroup>
    #   resp.data.coverages_by_time[0].groups[0] #=> Types::ReservationCoverageGroup
    #   resp.data.coverages_by_time[0].groups[0].attributes #=> Hash<String, String>
    #   resp.data.coverages_by_time[0].groups[0].attributes['key'] #=> String
    #   resp.data.coverages_by_time[0].groups[0].coverage #=> Types::Coverage
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_hours #=> Types::CoverageHours
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_hours.on_demand_hours #=> String
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_hours.reserved_hours #=> String
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_hours.total_running_hours #=> String
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_hours.coverage_hours_percentage #=> String
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_normalized_units #=> Types::CoverageNormalizedUnits
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_normalized_units.on_demand_normalized_units #=> String
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_normalized_units.reserved_normalized_units #=> String
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_normalized_units.total_running_normalized_units #=> String
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_normalized_units.coverage_normalized_units_percentage #=> String
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_cost #=> Types::CoverageCost
    #   resp.data.coverages_by_time[0].groups[0].coverage.coverage_cost.on_demand_cost #=> String
    #   resp.data.coverages_by_time[0].total #=> Types::Coverage
    #   resp.data.total #=> Types::Coverage
    #   resp.data.next_page_token #=> String
    #
    def get_reservation_coverage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReservationCoverageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReservationCoverageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReservationCoverage
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DataUnavailableException, Errors::InvalidNextTokenException, Errors::LimitExceededException]),
        data_parser: Parsers::GetReservationCoverage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReservationCoverage,
        stubs: @stubs,
        params_class: Params::GetReservationCoverageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_reservation_coverage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets recommendations for reservation purchases. These recommendations might help you to
    #       reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to
    #       On-Demand pricing.</p>
    # 		       <p>Amazon Web Services generates your recommendations by identifying your On-Demand usage
    #       during a specific time period and collecting your usage into categories that are eligible for
    #       a reservation. After Amazon Web Services has these categories, it simulates every combination
    #       of reservations in each category of usage to identify the best number of each type of Reserved
    #       Instance (RI) to purchase to maximize your estimated savings. </p>
    # 		       <p>For example, Amazon Web Services automatically aggregates your Amazon EC2 Linux, shared
    #       tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy
    #       size-flexible regional reservations to apply to the c4 family usage. Amazon Web Services
    #       recommends the smallest size instance in an instance family. This makes it easier to purchase
    #       a size-flexible Reserved Instance (RI). Amazon Web Services also shows the equal number of
    #       normalized units. This way, you can purchase any instance size that you want. For this
    #       example, your RI recommendation is for <code>c4.large</code> because that is the smallest size
    #       instance in the c4 instance family.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReservationPurchaseRecommendationInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID that's associated with the recommendation. </p>
    #
    # @option params [String] :service
    #   <p>The specific service that you want recommendations for.</p>
    #
    # @option params [Expression] :filter
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    # @option params [String] :account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for individual member accounts only.</p>
    #
    # @option params [String] :lookback_period_in_days
    #   <p>The number of previous days that you want Amazon Web Services to consider when it calculates your recommendations.</p>
    #
    # @option params [String] :term_in_years
    #   <p>The reservation term that you want recommendations for.</p>
    #
    # @option params [String] :payment_option
    #   <p>The reservation purchase option that you want recommendations for.</p>
    #
    # @option params [ServiceSpecification] :service_specification
    #   <p>The hardware specifications for the service instances that you want recommendations for, such as standard or convertible Amazon EC2 instances.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    #
    # @option params [String] :next_page_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #
    # @return [Types::GetReservationPurchaseRecommendationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reservation_purchase_recommendation(
    #     account_id: 'AccountId',
    #     service: 'Service', # required
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     account_scope: 'PAYER', # accepts ["PAYER", "LINKED"]
    #     lookback_period_in_days: 'SEVEN_DAYS', # accepts ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"]
    #     term_in_years: 'ONE_YEAR', # accepts ["ONE_YEAR", "THREE_YEARS"]
    #     payment_option: 'NO_UPFRONT', # accepts ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"]
    #     service_specification: {
    #       ec2_specification: {
    #         offering_class: 'STANDARD' # accepts ["STANDARD", "CONVERTIBLE"]
    #       }
    #     },
    #     page_size: 1,
    #     next_page_token: 'NextPageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReservationPurchaseRecommendationOutput
    #   resp.data.metadata #=> Types::ReservationPurchaseRecommendationMetadata
    #   resp.data.metadata.recommendation_id #=> String
    #   resp.data.metadata.generation_timestamp #=> String
    #   resp.data.recommendations #=> Array<ReservationPurchaseRecommendation>
    #   resp.data.recommendations[0] #=> Types::ReservationPurchaseRecommendation
    #   resp.data.recommendations[0].account_scope #=> String, one of ["PAYER", "LINKED"]
    #   resp.data.recommendations[0].lookback_period_in_days #=> String, one of ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"]
    #   resp.data.recommendations[0].term_in_years #=> String, one of ["ONE_YEAR", "THREE_YEARS"]
    #   resp.data.recommendations[0].payment_option #=> String, one of ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"]
    #   resp.data.recommendations[0].service_specification #=> Types::ServiceSpecification
    #   resp.data.recommendations[0].service_specification.ec2_specification #=> Types::EC2Specification
    #   resp.data.recommendations[0].service_specification.ec2_specification.offering_class #=> String, one of ["STANDARD", "CONVERTIBLE"]
    #   resp.data.recommendations[0].recommendation_details #=> Array<ReservationPurchaseRecommendationDetail>
    #   resp.data.recommendations[0].recommendation_details[0] #=> Types::ReservationPurchaseRecommendationDetail
    #   resp.data.recommendations[0].recommendation_details[0].account_id #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details #=> Types::InstanceDetails
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details #=> Types::EC2InstanceDetails
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.family #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.instance_type #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.region #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.availability_zone #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.platform #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.tenancy #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.current_generation #=> Boolean
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.ec2_instance_details.size_flex_eligible #=> Boolean
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.rds_instance_details #=> Types::RDSInstanceDetails
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.family #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.instance_type #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.region #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.database_engine #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.database_edition #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.deployment_option #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.license_model #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.current_generation #=> Boolean
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.rds_instance_details.size_flex_eligible #=> Boolean
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details #=> Types::RedshiftInstanceDetails
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.family #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.node_type #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.region #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.current_generation #=> Boolean
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.redshift_instance_details.size_flex_eligible #=> Boolean
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.elasti_cache_instance_details #=> Types::ElastiCacheInstanceDetails
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.elasti_cache_instance_details.family #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.elasti_cache_instance_details.node_type #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.elasti_cache_instance_details.region #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.elasti_cache_instance_details.product_description #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.elasti_cache_instance_details.current_generation #=> Boolean
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.elasti_cache_instance_details.size_flex_eligible #=> Boolean
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.es_instance_details #=> Types::ESInstanceDetails
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.es_instance_details.instance_class #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.es_instance_details.instance_size #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.es_instance_details.region #=> String
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.es_instance_details.current_generation #=> Boolean
    #   resp.data.recommendations[0].recommendation_details[0].instance_details.es_instance_details.size_flex_eligible #=> Boolean
    #   resp.data.recommendations[0].recommendation_details[0].recommended_number_of_instances_to_purchase #=> String
    #   resp.data.recommendations[0].recommendation_details[0].recommended_normalized_units_to_purchase #=> String
    #   resp.data.recommendations[0].recommendation_details[0].minimum_number_of_instances_used_per_hour #=> String
    #   resp.data.recommendations[0].recommendation_details[0].minimum_normalized_units_used_per_hour #=> String
    #   resp.data.recommendations[0].recommendation_details[0].maximum_number_of_instances_used_per_hour #=> String
    #   resp.data.recommendations[0].recommendation_details[0].maximum_normalized_units_used_per_hour #=> String
    #   resp.data.recommendations[0].recommendation_details[0].average_number_of_instances_used_per_hour #=> String
    #   resp.data.recommendations[0].recommendation_details[0].average_normalized_units_used_per_hour #=> String
    #   resp.data.recommendations[0].recommendation_details[0].average_utilization #=> String
    #   resp.data.recommendations[0].recommendation_details[0].estimated_break_even_in_months #=> String
    #   resp.data.recommendations[0].recommendation_details[0].currency_code #=> String
    #   resp.data.recommendations[0].recommendation_details[0].estimated_monthly_savings_amount #=> String
    #   resp.data.recommendations[0].recommendation_details[0].estimated_monthly_savings_percentage #=> String
    #   resp.data.recommendations[0].recommendation_details[0].estimated_monthly_on_demand_cost #=> String
    #   resp.data.recommendations[0].recommendation_details[0].estimated_reservation_cost_for_lookback_period #=> String
    #   resp.data.recommendations[0].recommendation_details[0].upfront_cost #=> String
    #   resp.data.recommendations[0].recommendation_details[0].recurring_standard_monthly_cost #=> String
    #   resp.data.recommendations[0].recommendation_summary #=> Types::ReservationPurchaseRecommendationSummary
    #   resp.data.recommendations[0].recommendation_summary.total_estimated_monthly_savings_amount #=> String
    #   resp.data.recommendations[0].recommendation_summary.total_estimated_monthly_savings_percentage #=> String
    #   resp.data.recommendations[0].recommendation_summary.currency_code #=> String
    #   resp.data.next_page_token #=> String
    #
    def get_reservation_purchase_recommendation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReservationPurchaseRecommendationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReservationPurchaseRecommendationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReservationPurchaseRecommendation
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DataUnavailableException, Errors::InvalidNextTokenException, Errors::LimitExceededException]),
        data_parser: Parsers::GetReservationPurchaseRecommendation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReservationPurchaseRecommendation,
        stubs: @stubs,
        params_class: Params::GetReservationPurchaseRecommendationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_reservation_purchase_recommendation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the reservation utilization for your account. Management account in an organization have access to member accounts.
    # 			You can filter data by dimensions in a time period. You can use <code>GetDimensionValues</code> to determine the possible
    # 			dimension values. Currently, you can group only by <code>SUBSCRIPTION_ID</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetReservationUtilizationInput}.
    #
    # @option params [DateInterval] :time_period
    #   <p>Sets the start and end dates for retrieving Reserved Instance (RI) utilization. The start
    #         date is inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>
    #
    # @option params [Array<GroupDefinition>] :group_by
    #   <p>Groups only by <code>SUBSCRIPTION_ID</code>. Metadata is included.</p>
    #
    # @option params [String] :granularity
    #   <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set,
    #   			the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>.
    #   			If both <code>GroupBy</code> and <code>Granularity</code> aren't set, <code>GetReservationUtilization</code> defaults to <code>DAILY</code>.</p>
    #   		       <p>The <code>GetReservationUtilization</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    # @option params [Expression] :filter
    #   <p>Filters utilization data by dimensions. You can filter by the following dimensions:</p>
    #   		       <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE</p>
    #               </li>
    #               <li>
    #                  <p>SCOPE</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #   		       <p>
    #               <code>GetReservationUtilization</code> uses the same
    #   			<a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #   			as the other operations, but only <code>AND</code> is supported among each dimension, and nesting is supported up to
    #   			only one level deep. If there are multiple values for a dimension, they are OR'd together.</p>
    #
    # @option params [SortDefinition] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentageInUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PurchasedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PurchasedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalActualHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalActualUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCostOfRIHoursUsed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetRISavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalPotentialRISavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedUpfrontFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedRecurringFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalAmortizedFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RICostForUnusedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RealizedSavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnrealizedSavings</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you returned for this request. If more objects are
    #         available, in the response, Amazon Web Services provides a NextPageToken value that you can use
    #         in a subsequent call to get the next batch of objects.</p>
    #
    # @return [Types::GetReservationUtilizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reservation_utilization(
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     group_by: [
    #       {
    #         type: 'DIMENSION', # accepts ["DIMENSION", "TAG", "COST_CATEGORY"]
    #         key: 'Key'
    #       }
    #     ],
    #     granularity: 'DAILY', # accepts ["DAILY", "MONTHLY", "HOURLY"]
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     sort_by: {
    #       key: 'Key', # required
    #       sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #     },
    #     next_page_token: 'NextPageToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReservationUtilizationOutput
    #   resp.data.utilizations_by_time #=> Array<UtilizationByTime>
    #   resp.data.utilizations_by_time[0] #=> Types::UtilizationByTime
    #   resp.data.utilizations_by_time[0].time_period #=> Types::DateInterval
    #   resp.data.utilizations_by_time[0].time_period.start #=> String
    #   resp.data.utilizations_by_time[0].time_period.end #=> String
    #   resp.data.utilizations_by_time[0].groups #=> Array<ReservationUtilizationGroup>
    #   resp.data.utilizations_by_time[0].groups[0] #=> Types::ReservationUtilizationGroup
    #   resp.data.utilizations_by_time[0].groups[0].key #=> String
    #   resp.data.utilizations_by_time[0].groups[0].value #=> String
    #   resp.data.utilizations_by_time[0].groups[0].attributes #=> Hash<String, String>
    #   resp.data.utilizations_by_time[0].groups[0].attributes['key'] #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization #=> Types::ReservationAggregates
    #   resp.data.utilizations_by_time[0].groups[0].utilization.utilization_percentage #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.utilization_percentage_in_units #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.purchased_hours #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.purchased_units #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.total_actual_hours #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.total_actual_units #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.unused_hours #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.unused_units #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.on_demand_cost_of_ri_hours_used #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.net_ri_savings #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.total_potential_ri_savings #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.amortized_upfront_fee #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.amortized_recurring_fee #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.total_amortized_fee #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.ri_cost_for_unused_hours #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.realized_savings #=> String
    #   resp.data.utilizations_by_time[0].groups[0].utilization.unrealized_savings #=> String
    #   resp.data.utilizations_by_time[0].total #=> Types::ReservationAggregates
    #   resp.data.total #=> Types::ReservationAggregates
    #   resp.data.next_page_token #=> String
    #
    def get_reservation_utilization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReservationUtilizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReservationUtilizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReservationUtilization
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DataUnavailableException, Errors::InvalidNextTokenException, Errors::LimitExceededException]),
        data_parser: Parsers::GetReservationUtilization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReservationUtilization,
        stubs: @stubs,
        params_class: Params::GetReservationUtilizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_reservation_utilization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates recommendations that
    #       help you save cost
    #       by identifying idle and underutilized Amazon EC2 instances.</p>
    #          <p>Recommendations are generated to either downsize or terminate instances, along with
    #       providing savings detail and metrics. For more information about calculation and function, see
    #         <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html">Optimizing Your Cost with Rightsizing Recommendations</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRightsizingRecommendationInput}.
    #
    # @option params [Expression] :filter
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    # @option params [RightsizingRecommendationConfiguration] :configuration
    #   <p>You can use Configuration to customize recommendations across two attributes. You can
    #         choose to view recommendations for instances within the same instance families or across
    #         different instance families. You can also choose to view your estimated savings that are
    #         associated with recommendations with consideration of existing Savings Plans or RI benefits,
    #         or neither. </p>
    #
    # @option params [String] :service
    #   <p>The specific service that you want recommendations for. The only valid value for <code>GetRightsizingRecommendation</code> is
    #       	"<code>AmazonEC2</code>".</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    #
    # @option params [String] :next_page_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #
    # @return [Types::GetRightsizingRecommendationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rightsizing_recommendation(
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     configuration: {
    #       recommendation_target: 'SAME_INSTANCE_FAMILY', # required - accepts ["SAME_INSTANCE_FAMILY", "CROSS_INSTANCE_FAMILY"]
    #       benefits_considered: false # required
    #     },
    #     service: 'Service', # required
    #     page_size: 1,
    #     next_page_token: 'NextPageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRightsizingRecommendationOutput
    #   resp.data.metadata #=> Types::RightsizingRecommendationMetadata
    #   resp.data.metadata.recommendation_id #=> String
    #   resp.data.metadata.generation_timestamp #=> String
    #   resp.data.metadata.lookback_period_in_days #=> String, one of ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"]
    #   resp.data.metadata.additional_metadata #=> String
    #   resp.data.summary #=> Types::RightsizingRecommendationSummary
    #   resp.data.summary.total_recommendation_count #=> String
    #   resp.data.summary.estimated_total_monthly_savings_amount #=> String
    #   resp.data.summary.savings_currency_code #=> String
    #   resp.data.summary.savings_percentage #=> String
    #   resp.data.rightsizing_recommendations #=> Array<RightsizingRecommendation>
    #   resp.data.rightsizing_recommendations[0] #=> Types::RightsizingRecommendation
    #   resp.data.rightsizing_recommendations[0].account_id #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance #=> Types::CurrentInstance
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_id #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.instance_name #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.tags #=> Array<TagValues>
    #   resp.data.rightsizing_recommendations[0].current_instance.tags[0] #=> Types::TagValues
    #   resp.data.rightsizing_recommendations[0].current_instance.tags[0].key #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.tags[0].values #=> Array<String>
    #   resp.data.rightsizing_recommendations[0].current_instance.tags[0].values[0] #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.tags[0].match_options #=> Array<String>
    #   resp.data.rightsizing_recommendations[0].current_instance.tags[0].match_options[0] #=> String, one of ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details #=> Types::ResourceDetails
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details #=> Types::EC2ResourceDetails
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.hourly_on_demand_rate #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.instance_type #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.platform #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.region #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.sku #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.memory #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.network_performance #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.storage #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_details.ec2_resource_details.vcpu #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization #=> Types::ResourceUtilization
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization #=> Types::EC2ResourceUtilization
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.max_cpu_utilization_percentage #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.max_memory_utilization_percentage #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.max_storage_utilization_percentage #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.ebs_resource_utilization #=> Types::EBSResourceUtilization
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_read_ops_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_write_ops_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_read_bytes_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.ebs_resource_utilization.ebs_write_bytes_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.disk_resource_utilization #=> Types::DiskResourceUtilization
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_read_ops_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_write_ops_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_read_bytes_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.disk_resource_utilization.disk_write_bytes_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.network_resource_utilization #=> Types::NetworkResourceUtilization
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.network_resource_utilization.network_in_bytes_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.network_resource_utilization.network_out_bytes_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.network_resource_utilization.network_packets_in_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.resource_utilization.ec2_resource_utilization.network_resource_utilization.network_packets_out_per_second #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.reservation_covered_hours_in_lookback_period #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.savings_plans_covered_hours_in_lookback_period #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.on_demand_hours_in_lookback_period #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.total_running_hours_in_lookback_period #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.monthly_cost #=> String
    #   resp.data.rightsizing_recommendations[0].current_instance.currency_code #=> String
    #   resp.data.rightsizing_recommendations[0].rightsizing_type #=> String, one of ["TERMINATE", "MODIFY"]
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail #=> Types::ModifyRecommendationDetail
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail.target_instances #=> Array<TargetInstance>
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0] #=> Types::TargetInstance
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].estimated_monthly_cost #=> String
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].estimated_monthly_savings #=> String
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].currency_code #=> String
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].default_target_instance #=> Boolean
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].resource_details #=> Types::ResourceDetails
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].expected_resource_utilization #=> Types::ResourceUtilization
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].platform_differences #=> Array<String>
    #   resp.data.rightsizing_recommendations[0].modify_recommendation_detail.target_instances[0].platform_differences[0] #=> String, one of ["HYPERVISOR", "NETWORK_INTERFACE", "STORAGE_INTERFACE", "INSTANCE_STORE_AVAILABILITY", "VIRTUALIZATION_TYPE"]
    #   resp.data.rightsizing_recommendations[0].terminate_recommendation_detail #=> Types::TerminateRecommendationDetail
    #   resp.data.rightsizing_recommendations[0].terminate_recommendation_detail.estimated_monthly_savings #=> String
    #   resp.data.rightsizing_recommendations[0].terminate_recommendation_detail.currency_code #=> String
    #   resp.data.rightsizing_recommendations[0].finding_reason_codes #=> Array<String>
    #   resp.data.rightsizing_recommendations[0].finding_reason_codes[0] #=> String, one of ["CPU_OVER_PROVISIONED", "CPU_UNDER_PROVISIONED", "MEMORY_OVER_PROVISIONED", "MEMORY_UNDER_PROVISIONED", "EBS_THROUGHPUT_OVER_PROVISIONED", "EBS_THROUGHPUT_UNDER_PROVISIONED", "EBS_IOPS_OVER_PROVISIONED", "EBS_IOPS_UNDER_PROVISIONED", "NETWORK_BANDWIDTH_OVER_PROVISIONED", "NETWORK_BANDWIDTH_UNDER_PROVISIONED", "NETWORK_PPS_OVER_PROVISIONED", "NETWORK_PPS_UNDER_PROVISIONED", "DISK_IOPS_OVER_PROVISIONED", "DISK_IOPS_UNDER_PROVISIONED", "DISK_THROUGHPUT_OVER_PROVISIONED", "DISK_THROUGHPUT_UNDER_PROVISIONED"]
    #   resp.data.next_page_token #=> String
    #   resp.data.configuration #=> Types::RightsizingRecommendationConfiguration
    #   resp.data.configuration.recommendation_target #=> String, one of ["SAME_INSTANCE_FAMILY", "CROSS_INSTANCE_FAMILY"]
    #   resp.data.configuration.benefits_considered #=> Boolean
    #
    def get_rightsizing_recommendation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRightsizingRecommendationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRightsizingRecommendationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRightsizingRecommendation
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::LimitExceededException]),
        data_parser: Parsers::GetRightsizingRecommendation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRightsizingRecommendation,
        stubs: @stubs,
        params_class: Params::GetRightsizingRecommendationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_rightsizing_recommendation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data for Savings Plans usage with the following dimensions:</p>
    # 	        <ul>
    #             <li>
    #                <p>
    #                   <code>LINKED_ACCOUNT</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>REGION</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SERVICE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INSTANCE_FAMILY</code>
    #                </p>
    #             </li>
    #          </ul>
    # 	        <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSavingsPlansCoverageInput}.
    #
    # @option params [DateInterval] :time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>
    #
    # @option params [Array<GroupDefinition>] :group_by
    #   <p>You can group the data using the attributes <code>INSTANCE_FAMILY</code>, <code>REGION</code>, or <code>SERVICE</code>.</p>
    #
    # @option params [String] :granularity
    #   <p>The granularity of the Amazon Web Services cost data for your Savings Plans. <code>Granularity</code> can't be set if <code>GroupBy</code> is set.</p>
    #   	        <p>The <code>GetSavingsPlansCoverage</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    # @option params [Expression] :filter
    #   <p>Filters Savings Plans coverage data by dimensions. You can filter data for Savings Plans usage with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansCoverage</code> uses the same
    #         <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension. If there are multiple values for a dimension, they are OR'd together.</p>
    #            <p>Cost category is also supported.</p>
    #
    # @option params [Array<String>] :metrics
    #   <p>The measurement that you want your Savings Plans coverage reported in. The only valid value is <code>SpendCoveredBySavingsPlans</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has
    #         more results than the maximum page size.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to be returned in a response. The default is <code>20</code>, with a minimum value of <code>1</code>.</p>
    #
    # @option params [SortDefinition] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SpendCoveredBySavingsPlan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoveragePercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceFamily</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Region</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Service</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #
    # @return [Types::GetSavingsPlansCoverageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_savings_plans_coverage(
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     group_by: [
    #       {
    #         type: 'DIMENSION', # accepts ["DIMENSION", "TAG", "COST_CATEGORY"]
    #         key: 'Key'
    #       }
    #     ],
    #     granularity: 'DAILY', # accepts ["DAILY", "MONTHLY", "HOURLY"]
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     metrics: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     sort_by: {
    #       key: 'Key', # required
    #       sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSavingsPlansCoverageOutput
    #   resp.data.savings_plans_coverages #=> Array<SavingsPlansCoverage>
    #   resp.data.savings_plans_coverages[0] #=> Types::SavingsPlansCoverage
    #   resp.data.savings_plans_coverages[0].attributes #=> Hash<String, String>
    #   resp.data.savings_plans_coverages[0].attributes['key'] #=> String
    #   resp.data.savings_plans_coverages[0].coverage #=> Types::SavingsPlansCoverageData
    #   resp.data.savings_plans_coverages[0].coverage.spend_covered_by_savings_plans #=> String
    #   resp.data.savings_plans_coverages[0].coverage.on_demand_cost #=> String
    #   resp.data.savings_plans_coverages[0].coverage.total_cost #=> String
    #   resp.data.savings_plans_coverages[0].coverage.coverage_percentage #=> String
    #   resp.data.savings_plans_coverages[0].time_period #=> Types::DateInterval
    #   resp.data.savings_plans_coverages[0].time_period.start #=> String
    #   resp.data.savings_plans_coverages[0].time_period.end #=> String
    #   resp.data.next_token #=> String
    #
    def get_savings_plans_coverage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSavingsPlansCoverageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSavingsPlansCoverageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSavingsPlansCoverage
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DataUnavailableException, Errors::InvalidNextTokenException, Errors::LimitExceededException]),
        data_parser: Parsers::GetSavingsPlansCoverage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSavingsPlansCoverage,
        stubs: @stubs,
        params_class: Params::GetSavingsPlansCoverageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_savings_plans_coverage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves your request parameters, Savings Plan Recommendations Summary and Details. </p>
    #
    # @param [Hash] params
    #   See {Types::GetSavingsPlansPurchaseRecommendationInput}.
    #
    # @option params [String] :savings_plans_type
    #   <p>The Savings Plans recommendation type that's requested.</p>
    #
    # @option params [String] :term_in_years
    #   <p>The savings plan recommendation term that's used to generate these recommendations.</p>
    #
    # @option params [String] :payment_option
    #   <p>The payment option that's used to generate these recommendations.</p>
    #
    # @option params [String] :account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for individual member accounts only.</p>
    #
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    #
    # @option params [String] :lookback_period_in_days
    #   <p>The lookback period that's used to generate the recommendation.</p>
    #
    # @option params [Expression] :filter
    #   <p>You can filter your recommendations by Account ID with the <code>LINKED_ACCOUNT</code>
    #         dimension. To filter your recommendations by Account ID, specify <code>Key</code> as
    #           <code>LINKED_ACCOUNT</code> and <code>Value</code> as the comma-separated Acount ID(s) that
    #         you want to see Savings Plans purchase recommendations for.</p>
    #            <p>For GetSavingsPlansPurchaseRecommendation, the <code>Filter</code> doesn't include
    #           <code>CostCategories</code> or <code>Tags</code>. It only includes <code>Dimensions</code>.
    #         With <code>Dimensions</code>, <code>Key</code> must be <code>LINKED_ACCOUNT</code> and
    #           <code>Value</code> can be a single Account ID or multiple comma-separated Account IDs that
    #         you want to see Savings Plans Purchase Recommendations for. <code>AND</code> and
    #           <code>OR</code> operators are not supported.</p>
    #
    # @return [Types::GetSavingsPlansPurchaseRecommendationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_savings_plans_purchase_recommendation(
    #     savings_plans_type: 'COMPUTE_SP', # required - accepts ["COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"]
    #     term_in_years: 'ONE_YEAR', # required - accepts ["ONE_YEAR", "THREE_YEARS"]
    #     payment_option: 'NO_UPFRONT', # required - accepts ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"]
    #     account_scope: 'PAYER', # accepts ["PAYER", "LINKED"]
    #     next_page_token: 'NextPageToken',
    #     page_size: 1,
    #     lookback_period_in_days: 'SEVEN_DAYS', # required - accepts ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"]
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSavingsPlansPurchaseRecommendationOutput
    #   resp.data.metadata #=> Types::SavingsPlansPurchaseRecommendationMetadata
    #   resp.data.metadata.recommendation_id #=> String
    #   resp.data.metadata.generation_timestamp #=> String
    #   resp.data.metadata.additional_metadata #=> String
    #   resp.data.savings_plans_purchase_recommendation #=> Types::SavingsPlansPurchaseRecommendation
    #   resp.data.savings_plans_purchase_recommendation.account_scope #=> String, one of ["PAYER", "LINKED"]
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_type #=> String, one of ["COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"]
    #   resp.data.savings_plans_purchase_recommendation.term_in_years #=> String, one of ["ONE_YEAR", "THREE_YEARS"]
    #   resp.data.savings_plans_purchase_recommendation.payment_option #=> String, one of ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"]
    #   resp.data.savings_plans_purchase_recommendation.lookback_period_in_days #=> String, one of ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"]
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details #=> Array<SavingsPlansPurchaseRecommendationDetail>
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0] #=> Types::SavingsPlansPurchaseRecommendationDetail
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].savings_plans_details #=> Types::SavingsPlansDetails
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].savings_plans_details.region #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].savings_plans_details.instance_family #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].savings_plans_details.offering_id #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].account_id #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].upfront_cost #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_roi #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].currency_code #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_sp_cost #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_on_demand_cost #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_on_demand_cost_with_current_commitment #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_savings_amount #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_savings_percentage #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].hourly_commitment_to_purchase #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_average_utilization #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].estimated_monthly_savings_amount #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].current_minimum_hourly_on_demand_spend #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].current_maximum_hourly_on_demand_spend #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_details[0].current_average_hourly_on_demand_spend #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary #=> Types::SavingsPlansPurchaseRecommendationSummary
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_roi #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.currency_code #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_total_cost #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.current_on_demand_spend #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_savings_amount #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.total_recommendation_count #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.daily_commitment_to_purchase #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.hourly_commitment_to_purchase #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_savings_percentage #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_monthly_savings_amount #=> String
    #   resp.data.savings_plans_purchase_recommendation.savings_plans_purchase_recommendation_summary.estimated_on_demand_cost_with_current_commitment #=> String
    #   resp.data.next_page_token #=> String
    #
    def get_savings_plans_purchase_recommendation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSavingsPlansPurchaseRecommendationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSavingsPlansPurchaseRecommendationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSavingsPlansPurchaseRecommendation
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::LimitExceededException]),
        data_parser: Parsers::GetSavingsPlansPurchaseRecommendation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSavingsPlansPurchaseRecommendation,
        stubs: @stubs,
        params_class: Params::GetSavingsPlansPurchaseRecommendationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_savings_plans_purchase_recommendation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity. Management account in an organization have access to member accounts. You can use <code>GetDimensionValues</code> in <code>SAVINGS_PLANS</code> to determine the possible dimension values.</p>
    # 	        <note>
    #             <p>You can't group by any dimension values for <code>GetSavingsPlansUtilization</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetSavingsPlansUtilizationInput}.
    #
    # @option params [DateInterval] :time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>
    #
    # @option params [String] :granularity
    #   <p>The granularity of the Amazon Web Services utillization data for your Savings Plans.</p>
    #   	        <p>The <code>GetSavingsPlansUtilization</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    # @option params [Expression] :filter
    #   <p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions.  You can filter data with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLANS_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansUtilization</code> uses the same
    #         <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension.</p>
    #
    # @option params [SortDefinition] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetSavings</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #
    # @return [Types::GetSavingsPlansUtilizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_savings_plans_utilization(
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     granularity: 'DAILY', # accepts ["DAILY", "MONTHLY", "HOURLY"]
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     sort_by: {
    #       key: 'Key', # required
    #       sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSavingsPlansUtilizationOutput
    #   resp.data.savings_plans_utilizations_by_time #=> Array<SavingsPlansUtilizationByTime>
    #   resp.data.savings_plans_utilizations_by_time[0] #=> Types::SavingsPlansUtilizationByTime
    #   resp.data.savings_plans_utilizations_by_time[0].time_period #=> Types::DateInterval
    #   resp.data.savings_plans_utilizations_by_time[0].time_period.start #=> String
    #   resp.data.savings_plans_utilizations_by_time[0].time_period.end #=> String
    #   resp.data.savings_plans_utilizations_by_time[0].utilization #=> Types::SavingsPlansUtilization
    #   resp.data.savings_plans_utilizations_by_time[0].utilization.total_commitment #=> String
    #   resp.data.savings_plans_utilizations_by_time[0].utilization.used_commitment #=> String
    #   resp.data.savings_plans_utilizations_by_time[0].utilization.unused_commitment #=> String
    #   resp.data.savings_plans_utilizations_by_time[0].utilization.utilization_percentage #=> String
    #   resp.data.savings_plans_utilizations_by_time[0].savings #=> Types::SavingsPlansSavings
    #   resp.data.savings_plans_utilizations_by_time[0].savings.net_savings #=> String
    #   resp.data.savings_plans_utilizations_by_time[0].savings.on_demand_cost_equivalent #=> String
    #   resp.data.savings_plans_utilizations_by_time[0].amortized_commitment #=> Types::SavingsPlansAmortizedCommitment
    #   resp.data.savings_plans_utilizations_by_time[0].amortized_commitment.amortized_recurring_commitment #=> String
    #   resp.data.savings_plans_utilizations_by_time[0].amortized_commitment.amortized_upfront_commitment #=> String
    #   resp.data.savings_plans_utilizations_by_time[0].amortized_commitment.total_amortized_commitment #=> String
    #   resp.data.total #=> Types::SavingsPlansUtilizationAggregates
    #   resp.data.total.utilization #=> Types::SavingsPlansUtilization
    #   resp.data.total.savings #=> Types::SavingsPlansSavings
    #   resp.data.total.amortized_commitment #=> Types::SavingsPlansAmortizedCommitment
    #
    def get_savings_plans_utilization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSavingsPlansUtilizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSavingsPlansUtilizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSavingsPlansUtilization
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DataUnavailableException, Errors::LimitExceededException]),
        data_parser: Parsers::GetSavingsPlansUtilization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSavingsPlansUtilization,
        stubs: @stubs,
        params_class: Params::GetSavingsPlansUtilizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_savings_plans_utilization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to <code>GetSavingsPlanUtilization</code>, but you have the option to make multiple calls to <code>GetSavingsPlanUtilizationDetails</code> by providing individual dates. You can use <code>GetDimensionValues</code> in <code>SAVINGS_PLANS</code> to determine the possible dimension values.</p>
    # 	        <note>
    #             <p>
    #                <code>GetSavingsPlanUtilizationDetails</code> internally groups data by <code>SavingsPlansArn</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetSavingsPlansUtilizationDetailsInput}.
    #
    # @option params [DateInterval] :time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>
    #
    # @option params [Expression] :filter
    #   <p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions.  You can filter data with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansUtilizationDetails</code> uses the same
    #         <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension.</p>
    #
    # @option params [Array<String>] :data_type
    #   <p>The data type.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to be returned in a response. The default is <code>20</code>, with a minimum value of <code>1</code>.</p>
    #
    # @option params [SortDefinition] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetSavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedRecurringCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedUpfrontCommitment</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #
    # @return [Types::GetSavingsPlansUtilizationDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_savings_plans_utilization_details(
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     data_type: [
    #       'ATTRIBUTES' # accepts ["ATTRIBUTES", "UTILIZATION", "AMORTIZED_COMMITMENT", "SAVINGS"]
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     sort_by: {
    #       key: 'Key', # required
    #       sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSavingsPlansUtilizationDetailsOutput
    #   resp.data.savings_plans_utilization_details #=> Array<SavingsPlansUtilizationDetail>
    #   resp.data.savings_plans_utilization_details[0] #=> Types::SavingsPlansUtilizationDetail
    #   resp.data.savings_plans_utilization_details[0].savings_plan_arn #=> String
    #   resp.data.savings_plans_utilization_details[0].attributes #=> Hash<String, String>
    #   resp.data.savings_plans_utilization_details[0].attributes['key'] #=> String
    #   resp.data.savings_plans_utilization_details[0].utilization #=> Types::SavingsPlansUtilization
    #   resp.data.savings_plans_utilization_details[0].utilization.total_commitment #=> String
    #   resp.data.savings_plans_utilization_details[0].utilization.used_commitment #=> String
    #   resp.data.savings_plans_utilization_details[0].utilization.unused_commitment #=> String
    #   resp.data.savings_plans_utilization_details[0].utilization.utilization_percentage #=> String
    #   resp.data.savings_plans_utilization_details[0].savings #=> Types::SavingsPlansSavings
    #   resp.data.savings_plans_utilization_details[0].savings.net_savings #=> String
    #   resp.data.savings_plans_utilization_details[0].savings.on_demand_cost_equivalent #=> String
    #   resp.data.savings_plans_utilization_details[0].amortized_commitment #=> Types::SavingsPlansAmortizedCommitment
    #   resp.data.savings_plans_utilization_details[0].amortized_commitment.amortized_recurring_commitment #=> String
    #   resp.data.savings_plans_utilization_details[0].amortized_commitment.amortized_upfront_commitment #=> String
    #   resp.data.savings_plans_utilization_details[0].amortized_commitment.total_amortized_commitment #=> String
    #   resp.data.total #=> Types::SavingsPlansUtilizationAggregates
    #   resp.data.total.utilization #=> Types::SavingsPlansUtilization
    #   resp.data.total.savings #=> Types::SavingsPlansSavings
    #   resp.data.total.amortized_commitment #=> Types::SavingsPlansAmortizedCommitment
    #   resp.data.time_period #=> Types::DateInterval
    #   resp.data.time_period.start #=> String
    #   resp.data.time_period.end #=> String
    #   resp.data.next_token #=> String
    #
    def get_savings_plans_utilization_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSavingsPlansUtilizationDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSavingsPlansUtilizationDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSavingsPlansUtilizationDetails
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DataUnavailableException, Errors::InvalidNextTokenException, Errors::LimitExceededException]),
        data_parser: Parsers::GetSavingsPlansUtilizationDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSavingsPlansUtilizationDetails,
        stubs: @stubs,
        params_class: Params::GetSavingsPlansUtilizationDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_savings_plans_utilization_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string. </p>
    #
    # @param [Hash] params
    #   See {Types::GetTagsInput}.
    #
    # @option params [String] :search_string
    #   <p>The value that you want to search for.</p>
    #
    # @option params [DateInterval] :time_period
    #   <p>The start and end dates for retrieving the dimension values. The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is
    #               retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    #
    # @option params [String] :tag_key
    #   <p>The key of the tag that you want to return values for.</p>
    #
    # @option params [Expression] :filter
    #   <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    #           <ul>
    #               <li>
    #                   <p>Simple dimension values - You can set the dimension name and values for the
    #                       filters that you plan to use. For example, you can filter for
    #                           <code>REGION==us-east-1 OR REGION==us-west-1</code>. For
    #                           <code>GetRightsizingRecommendation</code>, the Region is a full name (for
    #                       example, <code>REGION==US East (N. Virginia)</code>. The <code>Expression</code>
    #                       example is as follows:</p>
    #                   <p>
    #                       <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ]
    #                           } }</code>
    #                   </p>
    #                   <p>The list of dimension values are OR'd together to retrieve cost or usage data.
    #                       You can create <code>Expression</code> and <code>DimensionValues</code> objects
    #                       using either <code>with*</code> methods or <code>set*</code> methods in multiple
    #                       lines. </p>
    #               </li>
    #               <li>
    #                   <p>Compound dimension values with logical operations - You can use multiple
    #                           <code>Expression</code> types and the logical operators
    #                           <code>AND/OR/NOT</code> to create a list of one or more
    #                           <code>Expression</code> objects. By doing this, you can filter on more
    #                       advanced options. For example, you can filter on <code>((REGION == us-east-1 OR
    #                           REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                           DataTransfer)</code>. The <code>Expression</code> for that is as
    #                       follows:</p>
    #                   <p>
    #                       <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [
    #                           "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values":
    #                           ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                           ["DataTransfer"] }}} ] } </code>
    #                   </p>
    #                   <note>
    #                       <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an
    #                           error.</p>
    #                   </note>
    #                   <p>
    #                       <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    #                           "Values": [ "DataTransfer" ] } } </code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #           </note>
    #
    # @option params [Array<SortDefinition>] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The key represents cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #            <p>When you use <code>SortBy</code>, <code>NextPageToken</code> and <code>SearchString</code>
    #         aren't supported.</p>
    #
    # @option params [Integer] :max_results
    #   <p>This field is only used when SortBy is provided in the request. The maximum number of
    #         objects that are returned for this request. If MaxResults isn't specified with SortBy, the
    #         request returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetTags</code>, MaxResults has an upper quota of 1000.</p>
    #
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>
    #
    # @return [Types::GetTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags(
    #     search_string: 'SearchString',
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     tag_key: 'TagKey',
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     sort_by: [
    #       {
    #         key: 'Key', # required
    #         sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_page_token: 'NextPageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTagsOutput
    #   resp.data.next_page_token #=> String
    #   resp.data.tags #=> Array<String>
    #   resp.data.tags[0] #=> String
    #   resp.data.return_size #=> Integer
    #   resp.data.total_size #=> Integer
    #
    def get_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTags
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BillExpirationException, Errors::DataUnavailableException, Errors::InvalidNextTokenException, Errors::RequestChangedException, Errors::LimitExceededException]),
        data_parser: Parsers::GetTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTags,
        stubs: @stubs,
        params_class: Params::GetTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage. </p>
    #
    # @param [Hash] params
    #   See {Types::GetUsageForecastInput}.
    #
    # @option params [DateInterval] :time_period
    #   <p>The start and end dates of the period that you want to retrieve usage forecast for. The
    #         start date is included in the period, but the end date isn't included in the period. For
    #         example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is
    #           <code>2017-05-01</code>, then the cost and usage data is retrieved from
    #           <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including
    #           <code>2017-05-01</code>. The start date must be equal to or later than the current date to
    #         avoid a validation error.</p>
    #
    # @option params [String] :metric
    #   <p>Which metric Cost Explorer uses to create your forecast.</p>
    #   		       <p>Valid values for a <code>GetUsageForecast</code> call are the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>USAGE_QUANTITY</p>
    #   			         </li>
    #               <li>
    #   				           <p>NORMALIZED_USAGE_AMOUNT</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :granularity
    #   <p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code> forecasts or 12 months of <code>MONTHLY</code> forecasts.</p>
    #   		       <p>The <code>GetUsageForecast</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>
    #
    # @option params [Expression] :filter
    #   <p>The filters that you want to use to filter your forecast. The <code>GetUsageForecast</code> API supports filtering by the following dimensions:</p>
    #   		
    #   	        <ul>
    #               <li>
    #                  <p>
    #                     <code>AZ</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PURCHASE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE_GROUP</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RECORD_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATING_SYSTEM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TENANCY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SCOPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLATFORM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUBSCRIPTION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LEGAL_ENTITY_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DATABASE_ENGINE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BILLING_ENTITY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESERVATION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :prediction_interval_level
    #   <p>Amazon Web Services Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean
    #   			by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value
    #   			falling in the prediction interval. Higher confidence levels result in wider prediction intervals.</p>
    #
    # @return [Types::GetUsageForecastOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_forecast(
    #     time_period: {
    #       start: 'Start', # required
    #       end: 'End' # required
    #     }, # required
    #     metric: 'BLENDED_COST', # required - accepts ["BLENDED_COST", "UNBLENDED_COST", "AMORTIZED_COST", "NET_UNBLENDED_COST", "NET_AMORTIZED_COST", "USAGE_QUANTITY", "NORMALIZED_USAGE_AMOUNT"]
    #     granularity: 'DAILY', # required - accepts ["DAILY", "MONTHLY", "HOURLY"]
    #     filter: {
    #       dimensions: {
    #         key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #         values: [
    #           'member'
    #         ],
    #         match_options: [
    #           'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #         ]
    #       },
    #       tags: {
    #         key: 'Key',
    #       },
    #       cost_categories: {
    #         key: 'Key',
    #       }
    #     },
    #     prediction_interval_level: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUsageForecastOutput
    #   resp.data.total #=> Types::MetricValue
    #   resp.data.total.amount #=> String
    #   resp.data.total.unit #=> String
    #   resp.data.forecast_results_by_time #=> Array<ForecastResult>
    #   resp.data.forecast_results_by_time[0] #=> Types::ForecastResult
    #   resp.data.forecast_results_by_time[0].time_period #=> Types::DateInterval
    #   resp.data.forecast_results_by_time[0].time_period.start #=> String
    #   resp.data.forecast_results_by_time[0].time_period.end #=> String
    #   resp.data.forecast_results_by_time[0].mean_value #=> String
    #   resp.data.forecast_results_by_time[0].prediction_interval_lower_bound #=> String
    #   resp.data.forecast_results_by_time[0].prediction_interval_upper_bound #=> String
    #
    def get_usage_forecast(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUsageForecastInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUsageForecastInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUsageForecast
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnresolvableUsageUnitException, Errors::DataUnavailableException, Errors::LimitExceededException]),
        data_parser: Parsers::GetUsageForecast
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUsageForecast,
        stubs: @stubs,
        params_class: Params::GetUsageForecastOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_usage_forecast
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a list of cost allocation tags. All inputs in the API are optional and serve as
    #       filters. By default, all cost allocation tags are returned. </p>
    #
    # @param [Hash] params
    #   See {Types::ListCostAllocationTagsInput}.
    #
    # @option params [String] :status
    #   <p>The status of cost allocation tag keys that are returned for this request. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of cost allocation tag keys that are returned for this request. </p>
    #
    # @option params [String] :type
    #   <p>The type of <code>CostAllocationTag</code> object that are returned for this request. The
    #           <code>AWSGenerated</code> type tags are tags that Amazon Web Services defines and applies to
    #         support Amazon Web Services resources for cost allocation purposes. The
    #           <code>UserDefined</code> type tags are tags that you define, create, and apply to resources. </p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that are returned for this request. By default, the request
    #         returns 100 results. </p>
    #
    # @return [Types::ListCostAllocationTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cost_allocation_tags(
    #     status: 'Active', # accepts ["Active", "Inactive"]
    #     tag_keys: [
    #       'member'
    #     ],
    #     type: 'AWSGenerated', # accepts ["AWSGenerated", "UserDefined"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCostAllocationTagsOutput
    #   resp.data.cost_allocation_tags #=> Array<CostAllocationTag>
    #   resp.data.cost_allocation_tags[0] #=> Types::CostAllocationTag
    #   resp.data.cost_allocation_tags[0].tag_key #=> String
    #   resp.data.cost_allocation_tags[0].type #=> String, one of ["AWSGenerated", "UserDefined"]
    #   resp.data.cost_allocation_tags[0].status #=> String, one of ["Active", "Inactive"]
    #   resp.data.next_token #=> String
    #
    def list_cost_allocation_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCostAllocationTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCostAllocationTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCostAllocationTags
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::LimitExceededException]),
        data_parser: Parsers::ListCostAllocationTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCostAllocationTags,
        stubs: @stubs,
        params_class: Params::ListCostAllocationTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_cost_allocation_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the name, Amazon Resource Name (ARN), <code>NumberOfRules</code> and effective
    #       dates of all Cost Categories defined in the account. You have the option to use
    #         <code>EffectiveOn</code> to return a list of Cost Categories that were active on a specific
    #       date. If there is no <code>EffectiveOn</code> specified, you’ll see Cost Categories that are
    #       effective on the current date. If Cost Category is still effective, <code>EffectiveEnd</code>
    #       is omitted in the response. <code>ListCostCategoryDefinitions</code> supports pagination. The
    #       request can have a <code>MaxResults</code> range up to 100.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCostCategoryDefinitionsInput}.
    #
    # @option params [String] :effective_on
    #   <p>The date when the Cost Category was effective. </p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of entries a paginated response contains. </p>
    #
    # @return [Types::ListCostCategoryDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cost_category_definitions(
    #     effective_on: 'EffectiveOn',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCostCategoryDefinitionsOutput
    #   resp.data.cost_category_references #=> Array<CostCategoryReference>
    #   resp.data.cost_category_references[0] #=> Types::CostCategoryReference
    #   resp.data.cost_category_references[0].cost_category_arn #=> String
    #   resp.data.cost_category_references[0].name #=> String
    #   resp.data.cost_category_references[0].effective_start #=> String
    #   resp.data.cost_category_references[0].effective_end #=> String
    #   resp.data.cost_category_references[0].number_of_rules #=> Integer
    #   resp.data.cost_category_references[0].processing_status #=> Array<CostCategoryProcessingStatus>
    #   resp.data.cost_category_references[0].processing_status[0] #=> Types::CostCategoryProcessingStatus
    #   resp.data.cost_category_references[0].processing_status[0].component #=> String, one of ["COST_EXPLORER"]
    #   resp.data.cost_category_references[0].processing_status[0].status #=> String, one of ["PROCESSING", "APPLIED"]
    #   resp.data.cost_category_references[0].values #=> Array<String>
    #   resp.data.cost_category_references[0].values[0] #=> String
    #   resp.data.cost_category_references[0].default_value #=> String
    #   resp.data.next_token #=> String
    #
    def list_cost_category_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCostCategoryDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCostCategoryDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCostCategoryDefinitions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException]),
        data_parser: Parsers::ListCostCategoryDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCostCategoryDefinitions,
        stubs: @stubs,
        params_class: Params::ListCostCategoryDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_cost_category_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of resource tags associated with the resource specified by the Amazon Resource Name (ARN).
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.</p>
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
    #   resp.data.resource_tags #=> Array<ResourceTag>
    #   resp.data.resource_tags[0] #=> Types::ResourceTag
    #   resp.data.resource_tags[0].key #=> String
    #   resp.data.resource_tags[0].value #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException]),
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

    # <p>Modifies the feedback property of a given cost anomaly. </p>
    #
    # @param [Hash] params
    #   See {Types::ProvideAnomalyFeedbackInput}.
    #
    # @option params [String] :anomaly_id
    #   <p>A cost anomaly ID. </p>
    #
    # @option params [String] :feedback
    #   <p>Describes whether the cost anomaly was a planned activity or you considered it an anomaly. </p>
    #
    # @return [Types::ProvideAnomalyFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provide_anomaly_feedback(
    #     anomaly_id: 'AnomalyId', # required
    #     feedback: 'YES' # required - accepts ["YES", "NO", "PLANNED_ACTIVITY"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ProvideAnomalyFeedbackOutput
    #   resp.data.anomaly_id #=> String
    #
    def provide_anomaly_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ProvideAnomalyFeedbackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ProvideAnomalyFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ProvideAnomalyFeedback
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException]),
        data_parser: Parsers::ProvideAnomalyFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ProvideAnomalyFeedback,
        stubs: @stubs,
        params_class: Params::ProvideAnomalyFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :provide_anomaly_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>An API operation for adding one or more tags (key-value pairs) to a resource.</p>
    #          <p>You can use the <code>TagResource</code> operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value you specify replaces the previous value for that tag.</p>
    #          <p>Although the maximum number of array members is 200, user-tag maximum is 50. The remaining
    #       are reserved for Amazon Web Services use.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.
    #       </p>
    #
    # @option params [Array<ResourceTag>] :resource_tags
    #   <p>
    #         A list of tag key-value pairs to be added to the resource.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     resource_tags: [
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
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

    # <p>Removes one or more tags from a resource. Specify only tag keys in your request. Don't
    #       specify the value. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>. </p>
    #
    # @option params [Array<String>] :resource_tag_keys
    #   <p>A list of tag keys associated with tags that need to be removed from the resource. If you
    #         specify a tag key that doesn't exist, it's ignored. Although the maximum number of array
    #         members is 200, user-tag maximum is 50. The remaining are reserved for Amazon Web Services use. </p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     resource_tag_keys: [
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException]),
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

    # <p>Updates an existing cost anomaly monitor. The changes made are applied going forward, and
    #       doesn't change anomalies detected in the past. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAnomalyMonitorInput}.
    #
    # @option params [String] :monitor_arn
    #   <p>Cost anomaly monitor Amazon Resource Names (ARNs). </p>
    #
    # @option params [String] :monitor_name
    #   <p>The new name for the cost anomaly monitor. </p>
    #
    # @return [Types::UpdateAnomalyMonitorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_anomaly_monitor(
    #     monitor_arn: 'MonitorArn', # required
    #     monitor_name: 'MonitorName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAnomalyMonitorOutput
    #   resp.data.monitor_arn #=> String
    #
    def update_anomaly_monitor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAnomalyMonitorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAnomalyMonitorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAnomalyMonitor
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownMonitorException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateAnomalyMonitor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAnomalyMonitor,
        stubs: @stubs,
        params_class: Params::UpdateAnomalyMonitorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_anomaly_monitor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing cost anomaly monitor subscription. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAnomalySubscriptionInput}.
    #
    # @option params [String] :subscription_arn
    #   <p>A cost anomaly subscription Amazon Resource Name (ARN). </p>
    #
    # @option params [Float] :threshold
    #   <p>The update to the threshold value for receiving notifications. </p>
    #
    # @option params [String] :frequency
    #   <p>The update to the frequency value that subscribers receive notifications. </p>
    #
    # @option params [Array<String>] :monitor_arn_list
    #   <p>A list of cost anomaly monitor ARNs. </p>
    #
    # @option params [Array<Subscriber>] :subscribers
    #   <p>The update to the subscriber list. </p>
    #
    # @option params [String] :subscription_name
    #   <p>The new name of the subscription. </p>
    #
    # @return [Types::UpdateAnomalySubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_anomaly_subscription(
    #     subscription_arn: 'SubscriptionArn', # required
    #     threshold: 1.0,
    #     frequency: 'DAILY', # accepts ["DAILY", "IMMEDIATE", "WEEKLY"]
    #     monitor_arn_list: [
    #       'member'
    #     ],
    #     subscribers: [
    #       {
    #         address: 'Address',
    #         type: 'EMAIL', # accepts ["EMAIL", "SNS"]
    #         status: 'CONFIRMED' # accepts ["CONFIRMED", "DECLINED"]
    #       }
    #     ],
    #     subscription_name: 'SubscriptionName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAnomalySubscriptionOutput
    #   resp.data.subscription_arn #=> String
    #
    def update_anomaly_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAnomalySubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAnomalySubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAnomalySubscription
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownSubscriptionException, Errors::UnknownMonitorException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateAnomalySubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAnomalySubscription,
        stubs: @stubs,
        params_class: Params::UpdateAnomalySubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_anomaly_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates status for cost allocation tags in bulk, with maximum batch size of 20. If the tag
    #       status that's updated is the same as the existing tag status, the request doesn't fail.
    #       Instead, it doesn't have any effect on the tag status (for example, activating the active
    #       tag). </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCostAllocationTagsStatusInput}.
    #
    # @option params [Array<CostAllocationTagStatusEntry>] :cost_allocation_tags_status
    #   <p>The list of <code>CostAllocationTagStatusEntry</code> objects that are used to update cost
    #         allocation tags status for this request. </p>
    #
    # @return [Types::UpdateCostAllocationTagsStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cost_allocation_tags_status(
    #     cost_allocation_tags_status: [
    #       {
    #         tag_key: 'TagKey', # required
    #         status: 'Active' # required - accepts ["Active", "Inactive"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCostAllocationTagsStatusOutput
    #   resp.data.errors #=> Array<UpdateCostAllocationTagsStatusError>
    #   resp.data.errors[0] #=> Types::UpdateCostAllocationTagsStatusError
    #   resp.data.errors[0].tag_key #=> String
    #   resp.data.errors[0].code #=> String
    #   resp.data.errors[0].message #=> String
    #
    def update_cost_allocation_tags_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCostAllocationTagsStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCostAllocationTagsStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCostAllocationTagsStatus
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException]),
        data_parser: Parsers::UpdateCostAllocationTagsStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCostAllocationTagsStatus,
        stubs: @stubs,
        params_class: Params::UpdateCostAllocationTagsStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cost_allocation_tags_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing Cost Category. Changes made to the Cost Category rules will be used to categorize the current month’s expenses and future expenses. This won’t change categorization for the previous months.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCostCategoryDefinitionInput}.
    #
    # @option params [String] :cost_category_arn
    #   <p>The unique identifier for your Cost Category.</p>
    #
    # @option params [String] :rule_version
    #   <p>The rule schema version in this particular Cost Category.</p>
    #
    # @option params [Array<CostCategoryRule>] :rules
    #   <p>The <code>Expression</code> object used to categorize costs. For more information, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html">CostCategoryRule </a>. </p>
    #
    # @option params [String] :default_value
    #   <p>The
    #               default value for the cost category.</p>
    #
    # @option params [Array<CostCategorySplitChargeRule>] :split_charge_rules
    #   <p>
    #         The split charge rules used to allocate your charges between your Cost Category values.
    #       </p>
    #
    # @return [Types::UpdateCostCategoryDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cost_category_definition(
    #     cost_category_arn: 'CostCategoryArn', # required
    #     rule_version: 'CostCategoryExpression.v1', # required - accepts ["CostCategoryExpression.v1"]
    #     rules: [
    #       {
    #         value: 'Value',
    #         rule: {
    #           dimensions: {
    #             key: 'AZ', # accepts ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY"]
    #             values: [
    #               'member'
    #             ],
    #             match_options: [
    #               'EQUALS' # accepts ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE"]
    #             ]
    #           },
    #           tags: {
    #             key: 'Key',
    #           },
    #           cost_categories: {
    #             key: 'Key',
    #           }
    #         },
    #         inherited_value: {
    #           dimension_name: 'LINKED_ACCOUNT_NAME', # accepts ["LINKED_ACCOUNT_NAME", "TAG"]
    #           dimension_key: 'DimensionKey'
    #         },
    #         type: 'REGULAR' # accepts ["REGULAR", "INHERITED_VALUE"]
    #       }
    #     ], # required
    #     default_value: 'DefaultValue',
    #     split_charge_rules: [
    #       {
    #         source: 'Source', # required
    #         targets: [
    #           'member'
    #         ], # required
    #         member_method: 'FIXED', # required - accepts ["FIXED", "PROPORTIONAL", "EVEN"]
    #         parameters: [
    #           {
    #             type: 'ALLOCATION_PERCENTAGES', # required - accepts ["ALLOCATION_PERCENTAGES"]
    #             values: [
    #               'member'
    #             ] # required
    #           }
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCostCategoryDefinitionOutput
    #   resp.data.cost_category_arn #=> String
    #   resp.data.effective_start #=> String
    #
    def update_cost_category_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCostCategoryDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCostCategoryDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCostCategoryDefinition
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateCostCategoryDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCostCategoryDefinition,
        stubs: @stubs,
        params_class: Params::UpdateCostCategoryDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cost_category_definition
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
