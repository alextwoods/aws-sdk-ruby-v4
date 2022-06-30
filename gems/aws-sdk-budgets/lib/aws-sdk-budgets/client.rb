# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Budgets
  # An API client for AWSBudgetServiceGateway
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amazon Web Services Budgets API enables you to use Amazon Web Services Budgets to plan your service usage, service costs, and instance reservations. The API reference provides descriptions, syntax, and usage examples for each of the actions and data types for Amazon Web Services Budgets. </p>
  # 		       <p>Budgets provide you with a way to see the following information:</p>
  # 		       <ul>
  #             <li>
  # 				           <p>How close your plan is to your budgeted amount or to the free tier limits</p>
  # 			         </li>
  #             <li>
  # 				           <p>Your usage-to-date, including how much you've used of your Reserved Instances (RIs)</p>
  # 			         </li>
  #             <li>
  # 				           <p>Your current estimated charges from Amazon Web Services, and how much your predicted usage will accrue in charges by the end of the month</p>
  # 			         </li>
  #             <li>
  # 				           <p>How much of your budget has been used</p>
  # 			         </li>
  #          </ul>
  # 		       <p>Amazon Web Services updates your budget status several times a day. Budgets track your unblended costs, subscriptions, refunds, and RIs. You can create the following types of budgets:</p>
  # 		       <ul>
  #             <li>
  # 				           <p>
  #                   <b>Cost budgets</b> - Plan how much you want to spend on a service.</p>
  # 			         </li>
  #             <li>
  # 				           <p>
  #                   <b>Usage budgets</b> - Plan how much you want to use one or more services.</p>
  # 			         </li>
  #             <li>
  # 				           <p>
  #                   <b>RI utilization budgets</b> - Define a utilization threshold, and receive alerts when your RI usage falls below that threshold. This lets you see if your RIs are unused or under-utilized.</p>
  # 			         </li>
  #             <li>
  # 				           <p>
  #                   <b>RI coverage budgets</b> - Define a coverage threshold, and receive alerts when the number of your instance hours that are covered by RIs fall below that threshold. This lets you see how much of your instance usage is covered by a reservation.</p>
  # 			         </li>
  #          </ul>
  # 		       <p>Service Endpoint</p>
  # 		       <p>The Amazon Web Services Budgets API provides the following endpoint:</p>
  # 		       <ul>
  #             <li>
  # 				           <p>https://budgets.amazonaws.com</p>
  # 			         </li>
  #          </ul>
  # 		       <p>For information about costs that are associated with the Amazon Web Services Budgets API, see <a href="https://aws.amazon.com/aws-cost-management/pricing/">Amazon Web Services Cost Management Pricing</a>.</p>
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
    def initialize(config = AWS::SDK::Budgets::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a budget and, if included, notifications and subscribers. </p>
    # 		       <important>
    # 			         <p>Only one of <code>BudgetLimit</code> or <code>PlannedBudgetLimits</code> can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples">Examples</a> section. </p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::CreateBudgetInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget.</p>
    #
    # @option params [Budget] :budget
    #   <p>The budget object that you want to create.</p>
    #
    # @option params [Array<NotificationWithSubscribers>] :notifications_with_subscribers
    #   <p>A notification that you want to associate with a budget. A budget can have up to five notifications, and each notification can have one SNS subscriber and up to 10 email subscribers. If you include notifications and subscribers in your <code>CreateBudget</code> call, Amazon Web Services creates the notifications and subscribers for you.</p>
    #
    # @return [Types::CreateBudgetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_budget(
    #     account_id: 'AccountId', # required
    #     budget: {
    #       budget_name: 'BudgetName', # required
    #       budget_limit: {
    #         amount: 'Amount', # required
    #         unit: 'Unit' # required
    #       },
    #       cost_filters: {
    #         'key' => [
    #           'member'
    #         ]
    #       },
    #       cost_types: {
    #         include_tax: false,
    #         include_subscription: false,
    #         use_blended: false,
    #         include_refund: false,
    #         include_credit: false,
    #         include_upfront: false,
    #         include_recurring: false,
    #         include_other_subscription: false,
    #         include_support: false,
    #         include_discount: false,
    #         use_amortized: false
    #       },
    #       time_unit: 'DAILY', # required - accepts ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"]
    #       time_period: {
    #         start: Time.now,
    #         end: Time.now
    #       },
    #       calculated_spend: {
    #       },
    #       budget_type: 'USAGE', # required - accepts ["USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"]
    #       last_updated_time: Time.now,
    #       auto_adjust_data: {
    #         auto_adjust_type: 'HISTORICAL', # required - accepts ["HISTORICAL", "FORECAST"]
    #         historical_options: {
    #           budget_adjustment_period: 1, # required
    #           look_back_available_periods: 1
    #         },
    #         last_auto_adjust_time: Time.now
    #       }
    #     }, # required
    #     notifications_with_subscribers: [
    #       {
    #         notification: {
    #           notification_type: 'ACTUAL', # required - accepts ["ACTUAL", "FORECASTED"]
    #           comparison_operator: 'GREATER_THAN', # required - accepts ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"]
    #           threshold: 1.0, # required
    #           threshold_type: 'PERCENTAGE', # accepts ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #           notification_state: 'OK' # accepts ["OK", "ALARM"]
    #         }, # required
    #         subscribers: [
    #           {
    #             subscription_type: 'SNS', # required - accepts ["SNS", "EMAIL"]
    #             address: 'Address' # required
    #           }
    #         ] # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBudgetOutput
    #
    def create_budget(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBudgetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBudgetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBudget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::CreationLimitExceededException, Errors::DuplicateRecordException]),
        data_parser: Parsers::CreateBudget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBudget,
        stubs: @stubs,
        params_class: Params::CreateBudgetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_budget
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Creates a budget action.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBudgetActionInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    #
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters aren't allowed.</p>
    #
    # @option params [String] :notification_type
    #   <p> The type of a notification. It must be ACTUAL or FORECASTED.</p>
    #
    # @option params [String] :action_type
    #   <p>
    #            The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition.
    #         </p>
    #
    # @option params [ActionThreshold] :action_threshold
    #   <p>The trigger threshold of the action. </p>
    #
    # @option params [Definition] :definition
    #   <p>Specifies all of the type-specific parameters. </p>
    #
    # @option params [String] :execution_role_arn
    #   <p>
    #            The role passed for action execution and reversion. Roles and actions must be in the same account.
    #         </p>
    #
    # @option params [String] :approval_model
    #   <p>
    #            This specifies if the action needs manual or automatic approval.
    #         </p>
    #
    # @option params [Array<Subscriber>] :subscribers
    #   <p> A list of subscribers.</p>
    #
    # @return [Types::CreateBudgetActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_budget_action(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     notification_type: 'ACTUAL', # required - accepts ["ACTUAL", "FORECASTED"]
    #     action_type: 'APPLY_IAM_POLICY', # required - accepts ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"]
    #     action_threshold: {
    #       action_threshold_value: 1.0, # required
    #       action_threshold_type: 'PERCENTAGE' # required - accepts ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #     }, # required
    #     definition: {
    #       iam_action_definition: {
    #         policy_arn: 'PolicyArn', # required
    #         roles: [
    #           'member'
    #         ],
    #         groups: [
    #           'member'
    #         ],
    #         users: [
    #           'member'
    #         ]
    #       },
    #       scp_action_definition: {
    #         policy_id: 'PolicyId', # required
    #         target_ids: [
    #           'member'
    #         ] # required
    #       },
    #       ssm_action_definition: {
    #         action_sub_type: 'STOP_EC2_INSTANCES', # required - accepts ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"]
    #         region: 'Region', # required
    #         instance_ids: [
    #           'member'
    #         ] # required
    #       }
    #     }, # required
    #     execution_role_arn: 'ExecutionRoleArn', # required
    #     approval_model: 'AUTOMATIC', # required - accepts ["AUTOMATIC", "MANUAL"]
    #     subscribers: [
    #       {
    #         subscription_type: 'SNS', # required - accepts ["SNS", "EMAIL"]
    #         address: 'Address' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBudgetActionOutput
    #   resp.data.account_id #=> String
    #   resp.data.budget_name #=> String
    #   resp.data.action_id #=> String
    #
    def create_budget_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBudgetActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBudgetActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBudgetAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::CreationLimitExceededException, Errors::DuplicateRecordException]),
        data_parser: Parsers::CreateBudgetAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBudgetAction,
        stubs: @stubs,
        params_class: Params::CreateBudgetActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_budget_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a notification. You must create the budget before you create the associated notification.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateNotificationInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget that you want to create a notification for.</p>
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget that you want Amazon Web Services to notify you about. Budget names must be unique within an account.</p>
    #
    # @option params [Notification] :notification
    #   <p>The notification that you want to create.</p>
    #
    # @option params [Array<Subscriber>] :subscribers
    #   <p>A list of subscribers that you want to associate with the notification. Each notification can have one SNS subscriber and up to 10 email subscribers.</p>
    #
    # @return [Types::CreateNotificationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notification(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     notification: {
    #       notification_type: 'ACTUAL', # required - accepts ["ACTUAL", "FORECASTED"]
    #       comparison_operator: 'GREATER_THAN', # required - accepts ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"]
    #       threshold: 1.0, # required
    #       threshold_type: 'PERCENTAGE', # accepts ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #       notification_state: 'OK' # accepts ["OK", "ALARM"]
    #     }, # required
    #     subscribers: [
    #       {
    #         subscription_type: 'SNS', # required - accepts ["SNS", "EMAIL"]
    #         address: 'Address' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNotificationOutput
    #
    def create_notification(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNotificationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNotificationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNotification
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::CreationLimitExceededException, Errors::DuplicateRecordException]),
        data_parser: Parsers::CreateNotification
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNotification,
        stubs: @stubs,
        params_class: Params::CreateNotificationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_notification
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a subscriber. You must create the associated budget and notification before you create the subscriber.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSubscriberInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget that you want to create a subscriber for.</p>
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget that you want to subscribe to. Budget names must be unique within an account.</p>
    #
    # @option params [Notification] :notification
    #   <p>The notification that you want to create a subscriber for.</p>
    #
    # @option params [Subscriber] :subscriber
    #   <p>The subscriber that you want to associate with a budget notification.</p>
    #
    # @return [Types::CreateSubscriberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscriber(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     notification: {
    #       notification_type: 'ACTUAL', # required - accepts ["ACTUAL", "FORECASTED"]
    #       comparison_operator: 'GREATER_THAN', # required - accepts ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"]
    #       threshold: 1.0, # required
    #       threshold_type: 'PERCENTAGE', # accepts ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #       notification_state: 'OK' # accepts ["OK", "ALARM"]
    #     }, # required
    #     subscriber: {
    #       subscription_type: 'SNS', # required - accepts ["SNS", "EMAIL"]
    #       address: 'Address' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSubscriberOutput
    #
    def create_subscriber(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSubscriberInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSubscriberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSubscriber
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::CreationLimitExceededException, Errors::DuplicateRecordException]),
        data_parser: Parsers::CreateSubscriber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSubscriber,
        stubs: @stubs,
        params_class: Params::CreateSubscriberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_subscriber
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a budget. You can delete your budget at any time.</p>
    # 		       <important>
    # 			         <p>Deleting a budget also deletes the notifications and subscribers that are associated with that budget.</p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteBudgetInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget that you want to delete.</p>
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget that you want to delete.</p>
    #
    # @return [Types::DeleteBudgetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_budget(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBudgetOutput
    #
    def delete_budget(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBudgetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBudgetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBudget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException]),
        data_parser: Parsers::DeleteBudget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBudget,
        stubs: @stubs,
        params_class: Params::DeleteBudgetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_budget
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Deletes a budget action.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBudgetActionInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    #
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters aren't allowed.</p>
    #
    # @option params [String] :action_id
    #   <p>
    #            A system-generated universally unique identifier (UUID) for the action.
    #         </p>
    #
    # @return [Types::DeleteBudgetActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_budget_action(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     action_id: 'ActionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBudgetActionOutput
    #   resp.data.account_id #=> String
    #   resp.data.budget_name #=> String
    #   resp.data.action #=> Types::Action
    #   resp.data.action.action_id #=> String
    #   resp.data.action.budget_name #=> String
    #   resp.data.action.notification_type #=> String, one of ["ACTUAL", "FORECASTED"]
    #   resp.data.action.action_type #=> String, one of ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"]
    #   resp.data.action.action_threshold #=> Types::ActionThreshold
    #   resp.data.action.action_threshold.action_threshold_value #=> Float
    #   resp.data.action.action_threshold.action_threshold_type #=> String, one of ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #   resp.data.action.definition #=> Types::Definition
    #   resp.data.action.definition.iam_action_definition #=> Types::IamActionDefinition
    #   resp.data.action.definition.iam_action_definition.policy_arn #=> String
    #   resp.data.action.definition.iam_action_definition.roles #=> Array<String>
    #   resp.data.action.definition.iam_action_definition.roles[0] #=> String
    #   resp.data.action.definition.iam_action_definition.groups #=> Array<String>
    #   resp.data.action.definition.iam_action_definition.groups[0] #=> String
    #   resp.data.action.definition.iam_action_definition.users #=> Array<String>
    #   resp.data.action.definition.iam_action_definition.users[0] #=> String
    #   resp.data.action.definition.scp_action_definition #=> Types::ScpActionDefinition
    #   resp.data.action.definition.scp_action_definition.policy_id #=> String
    #   resp.data.action.definition.scp_action_definition.target_ids #=> Array<String>
    #   resp.data.action.definition.scp_action_definition.target_ids[0] #=> String
    #   resp.data.action.definition.ssm_action_definition #=> Types::SsmActionDefinition
    #   resp.data.action.definition.ssm_action_definition.action_sub_type #=> String, one of ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"]
    #   resp.data.action.definition.ssm_action_definition.region #=> String
    #   resp.data.action.definition.ssm_action_definition.instance_ids #=> Array<String>
    #   resp.data.action.definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.data.action.execution_role_arn #=> String
    #   resp.data.action.approval_model #=> String, one of ["AUTOMATIC", "MANUAL"]
    #   resp.data.action.status #=> String, one of ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"]
    #   resp.data.action.subscribers #=> Array<Subscriber>
    #   resp.data.action.subscribers[0] #=> Types::Subscriber
    #   resp.data.action.subscribers[0].subscription_type #=> String, one of ["SNS", "EMAIL"]
    #   resp.data.action.subscribers[0].address #=> String
    #
    def delete_budget_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBudgetActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBudgetActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBudgetAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::ResourceLockedException]),
        data_parser: Parsers::DeleteBudgetAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBudgetAction,
        stubs: @stubs,
        params_class: Params::DeleteBudgetActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_budget_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a notification.</p>
    # 		       <important>
    # 			         <p>Deleting a notification also deletes the subscribers that are associated with the notification.</p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteNotificationInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose notification you want to delete.</p>
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget whose notification you want to delete.</p>
    #
    # @option params [Notification] :notification
    #   <p>The notification that you want to delete.</p>
    #
    # @return [Types::DeleteNotificationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     notification: {
    #       notification_type: 'ACTUAL', # required - accepts ["ACTUAL", "FORECASTED"]
    #       comparison_operator: 'GREATER_THAN', # required - accepts ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"]
    #       threshold: 1.0, # required
    #       threshold_type: 'PERCENTAGE', # accepts ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #       notification_state: 'OK' # accepts ["OK", "ALARM"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNotificationOutput
    #
    def delete_notification(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNotificationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNotificationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNotification
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException]),
        data_parser: Parsers::DeleteNotification
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNotification,
        stubs: @stubs,
        params_class: Params::DeleteNotificationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_notification
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a subscriber.</p>
    # 		       <important>
    # 			         <p>Deleting the last subscriber to a notification also deletes the notification.</p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteSubscriberInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose subscriber you want to delete.</p>
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget whose subscriber you want to delete.</p>
    #
    # @option params [Notification] :notification
    #   <p>The notification whose subscriber you want to delete.</p>
    #
    # @option params [Subscriber] :subscriber
    #   <p>The subscriber that you want to delete.</p>
    #
    # @return [Types::DeleteSubscriberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscriber(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     notification: {
    #       notification_type: 'ACTUAL', # required - accepts ["ACTUAL", "FORECASTED"]
    #       comparison_operator: 'GREATER_THAN', # required - accepts ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"]
    #       threshold: 1.0, # required
    #       threshold_type: 'PERCENTAGE', # accepts ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #       notification_state: 'OK' # accepts ["OK", "ALARM"]
    #     }, # required
    #     subscriber: {
    #       subscription_type: 'SNS', # required - accepts ["SNS", "EMAIL"]
    #       address: 'Address' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSubscriberOutput
    #
    def delete_subscriber(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSubscriberInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSubscriberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSubscriber
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException]),
        data_parser: Parsers::DeleteSubscriber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSubscriber,
        stubs: @stubs,
        params_class: Params::DeleteSubscriberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_subscriber
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a budget.</p>
    # 		       <important>
    # 			         <p>The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples">Examples</a> section. </p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::DescribeBudgetInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget that you want a description of.</p>
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget that you want a description of.</p>
    #
    # @return [Types::DescribeBudgetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBudgetOutput
    #   resp.data.budget #=> Types::Budget
    #   resp.data.budget.budget_name #=> String
    #   resp.data.budget.budget_limit #=> Types::Spend
    #   resp.data.budget.budget_limit.amount #=> String
    #   resp.data.budget.budget_limit.unit #=> String
    #   resp.data.budget.planned_budget_limits #=> Hash<String, Spend>
    #   resp.data.budget.cost_filters #=> Hash<String, Array<String>>
    #   resp.data.budget.cost_filters['key'] #=> Array<String>
    #   resp.data.budget.cost_filters['key'][0] #=> String
    #   resp.data.budget.cost_types #=> Types::CostTypes
    #   resp.data.budget.cost_types.include_tax #=> Boolean
    #   resp.data.budget.cost_types.include_subscription #=> Boolean
    #   resp.data.budget.cost_types.use_blended #=> Boolean
    #   resp.data.budget.cost_types.include_refund #=> Boolean
    #   resp.data.budget.cost_types.include_credit #=> Boolean
    #   resp.data.budget.cost_types.include_upfront #=> Boolean
    #   resp.data.budget.cost_types.include_recurring #=> Boolean
    #   resp.data.budget.cost_types.include_other_subscription #=> Boolean
    #   resp.data.budget.cost_types.include_support #=> Boolean
    #   resp.data.budget.cost_types.include_discount #=> Boolean
    #   resp.data.budget.cost_types.use_amortized #=> Boolean
    #   resp.data.budget.time_unit #=> String, one of ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"]
    #   resp.data.budget.time_period #=> Types::TimePeriod
    #   resp.data.budget.time_period.start #=> Time
    #   resp.data.budget.time_period.end #=> Time
    #   resp.data.budget.calculated_spend #=> Types::CalculatedSpend
    #   resp.data.budget.calculated_spend.actual_spend #=> Types::Spend
    #   resp.data.budget.calculated_spend.forecasted_spend #=> Types::Spend
    #   resp.data.budget.budget_type #=> String, one of ["USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"]
    #   resp.data.budget.last_updated_time #=> Time
    #   resp.data.budget.auto_adjust_data #=> Types::AutoAdjustData
    #   resp.data.budget.auto_adjust_data.auto_adjust_type #=> String, one of ["HISTORICAL", "FORECAST"]
    #   resp.data.budget.auto_adjust_data.historical_options #=> Types::HistoricalOptions
    #   resp.data.budget.auto_adjust_data.historical_options.budget_adjustment_period #=> Integer
    #   resp.data.budget.auto_adjust_data.historical_options.look_back_available_periods #=> Integer
    #   resp.data.budget.auto_adjust_data.last_auto_adjust_time #=> Time
    #
    def describe_budget(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBudgetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBudgetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBudget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException]),
        data_parser: Parsers::DescribeBudget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBudget,
        stubs: @stubs,
        params_class: Params::DescribeBudgetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_budget
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Describes a budget action detail.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBudgetActionInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    #
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters aren't allowed.</p>
    #
    # @option params [String] :action_id
    #   <p>
    #            A system-generated universally unique identifier (UUID) for the action.
    #         </p>
    #
    # @return [Types::DescribeBudgetActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_action(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     action_id: 'ActionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBudgetActionOutput
    #   resp.data.account_id #=> String
    #   resp.data.budget_name #=> String
    #   resp.data.action #=> Types::Action
    #   resp.data.action.action_id #=> String
    #   resp.data.action.budget_name #=> String
    #   resp.data.action.notification_type #=> String, one of ["ACTUAL", "FORECASTED"]
    #   resp.data.action.action_type #=> String, one of ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"]
    #   resp.data.action.action_threshold #=> Types::ActionThreshold
    #   resp.data.action.action_threshold.action_threshold_value #=> Float
    #   resp.data.action.action_threshold.action_threshold_type #=> String, one of ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #   resp.data.action.definition #=> Types::Definition
    #   resp.data.action.definition.iam_action_definition #=> Types::IamActionDefinition
    #   resp.data.action.definition.iam_action_definition.policy_arn #=> String
    #   resp.data.action.definition.iam_action_definition.roles #=> Array<String>
    #   resp.data.action.definition.iam_action_definition.roles[0] #=> String
    #   resp.data.action.definition.iam_action_definition.groups #=> Array<String>
    #   resp.data.action.definition.iam_action_definition.groups[0] #=> String
    #   resp.data.action.definition.iam_action_definition.users #=> Array<String>
    #   resp.data.action.definition.iam_action_definition.users[0] #=> String
    #   resp.data.action.definition.scp_action_definition #=> Types::ScpActionDefinition
    #   resp.data.action.definition.scp_action_definition.policy_id #=> String
    #   resp.data.action.definition.scp_action_definition.target_ids #=> Array<String>
    #   resp.data.action.definition.scp_action_definition.target_ids[0] #=> String
    #   resp.data.action.definition.ssm_action_definition #=> Types::SsmActionDefinition
    #   resp.data.action.definition.ssm_action_definition.action_sub_type #=> String, one of ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"]
    #   resp.data.action.definition.ssm_action_definition.region #=> String
    #   resp.data.action.definition.ssm_action_definition.instance_ids #=> Array<String>
    #   resp.data.action.definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.data.action.execution_role_arn #=> String
    #   resp.data.action.approval_model #=> String, one of ["AUTOMATIC", "MANUAL"]
    #   resp.data.action.status #=> String, one of ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"]
    #   resp.data.action.subscribers #=> Array<Subscriber>
    #   resp.data.action.subscribers[0] #=> Types::Subscriber
    #   resp.data.action.subscribers[0].subscription_type #=> String, one of ["SNS", "EMAIL"]
    #   resp.data.action.subscribers[0].address #=> String
    #
    def describe_budget_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBudgetActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBudgetActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBudgetAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException]),
        data_parser: Parsers::DescribeBudgetAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBudgetAction,
        stubs: @stubs,
        params_class: Params::DescribeBudgetActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_budget_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Describes a budget action history detail.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBudgetActionHistoriesInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    #
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters aren't allowed.</p>
    #
    # @option params [String] :action_id
    #   <p>
    #            A system-generated universally unique identifier (UUID) for the action.
    #         </p>
    #
    # @option params [TimePeriod] :time_period
    #   <p>The period of time that's covered by a budget. The period has a start date and an end date.
    #   			The start date must come before the end date. There are no restrictions on the end date. </p>
    #
    # @option params [Integer] :max_results
    #   <p> An integer that represents how many entries a paginated response contains. The maximum is 100.</p>
    #
    # @option params [String] :next_token
    #   <p> A generic string.</p>
    #
    # @return [Types::DescribeBudgetActionHistoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_action_histories(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     action_id: 'ActionId', # required
    #     time_period: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBudgetActionHistoriesOutput
    #   resp.data.action_histories #=> Array<ActionHistory>
    #   resp.data.action_histories[0] #=> Types::ActionHistory
    #   resp.data.action_histories[0].timestamp #=> Time
    #   resp.data.action_histories[0].status #=> String, one of ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"]
    #   resp.data.action_histories[0].event_type #=> String, one of ["SYSTEM", "CREATE_ACTION", "DELETE_ACTION", "UPDATE_ACTION", "EXECUTE_ACTION"]
    #   resp.data.action_histories[0].action_history_details #=> Types::ActionHistoryDetails
    #   resp.data.action_histories[0].action_history_details.message #=> String
    #   resp.data.action_histories[0].action_history_details.action #=> Types::Action
    #   resp.data.action_histories[0].action_history_details.action.action_id #=> String
    #   resp.data.action_histories[0].action_history_details.action.budget_name #=> String
    #   resp.data.action_histories[0].action_history_details.action.notification_type #=> String, one of ["ACTUAL", "FORECASTED"]
    #   resp.data.action_histories[0].action_history_details.action.action_type #=> String, one of ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"]
    #   resp.data.action_histories[0].action_history_details.action.action_threshold #=> Types::ActionThreshold
    #   resp.data.action_histories[0].action_history_details.action.action_threshold.action_threshold_value #=> Float
    #   resp.data.action_histories[0].action_history_details.action.action_threshold.action_threshold_type #=> String, one of ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #   resp.data.action_histories[0].action_history_details.action.definition #=> Types::Definition
    #   resp.data.action_histories[0].action_history_details.action.definition.iam_action_definition #=> Types::IamActionDefinition
    #   resp.data.action_histories[0].action_history_details.action.definition.iam_action_definition.policy_arn #=> String
    #   resp.data.action_histories[0].action_history_details.action.definition.iam_action_definition.roles #=> Array<String>
    #   resp.data.action_histories[0].action_history_details.action.definition.iam_action_definition.roles[0] #=> String
    #   resp.data.action_histories[0].action_history_details.action.definition.iam_action_definition.groups #=> Array<String>
    #   resp.data.action_histories[0].action_history_details.action.definition.iam_action_definition.groups[0] #=> String
    #   resp.data.action_histories[0].action_history_details.action.definition.iam_action_definition.users #=> Array<String>
    #   resp.data.action_histories[0].action_history_details.action.definition.iam_action_definition.users[0] #=> String
    #   resp.data.action_histories[0].action_history_details.action.definition.scp_action_definition #=> Types::ScpActionDefinition
    #   resp.data.action_histories[0].action_history_details.action.definition.scp_action_definition.policy_id #=> String
    #   resp.data.action_histories[0].action_history_details.action.definition.scp_action_definition.target_ids #=> Array<String>
    #   resp.data.action_histories[0].action_history_details.action.definition.scp_action_definition.target_ids[0] #=> String
    #   resp.data.action_histories[0].action_history_details.action.definition.ssm_action_definition #=> Types::SsmActionDefinition
    #   resp.data.action_histories[0].action_history_details.action.definition.ssm_action_definition.action_sub_type #=> String, one of ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"]
    #   resp.data.action_histories[0].action_history_details.action.definition.ssm_action_definition.region #=> String
    #   resp.data.action_histories[0].action_history_details.action.definition.ssm_action_definition.instance_ids #=> Array<String>
    #   resp.data.action_histories[0].action_history_details.action.definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.data.action_histories[0].action_history_details.action.execution_role_arn #=> String
    #   resp.data.action_histories[0].action_history_details.action.approval_model #=> String, one of ["AUTOMATIC", "MANUAL"]
    #   resp.data.action_histories[0].action_history_details.action.status #=> String, one of ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"]
    #   resp.data.action_histories[0].action_history_details.action.subscribers #=> Array<Subscriber>
    #   resp.data.action_histories[0].action_history_details.action.subscribers[0] #=> Types::Subscriber
    #   resp.data.action_histories[0].action_history_details.action.subscribers[0].subscription_type #=> String, one of ["SNS", "EMAIL"]
    #   resp.data.action_histories[0].action_history_details.action.subscribers[0].address #=> String
    #   resp.data.next_token #=> String
    #
    def describe_budget_action_histories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBudgetActionHistoriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBudgetActionHistoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBudgetActionHistories
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeBudgetActionHistories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBudgetActionHistories,
        stubs: @stubs,
        params_class: Params::DescribeBudgetActionHistoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_budget_action_histories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Describes all of the budget actions for an account.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBudgetActionsForAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    #
    # @option params [Integer] :max_results
    #   <p> An integer that represents how many entries a paginated response contains. The maximum is 100.</p>
    #
    # @option params [String] :next_token
    #   <p> A generic string.</p>
    #
    # @return [Types::DescribeBudgetActionsForAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_actions_for_account(
    #     account_id: 'AccountId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBudgetActionsForAccountOutput
    #   resp.data.actions #=> Array<Action>
    #   resp.data.actions[0] #=> Types::Action
    #   resp.data.actions[0].action_id #=> String
    #   resp.data.actions[0].budget_name #=> String
    #   resp.data.actions[0].notification_type #=> String, one of ["ACTUAL", "FORECASTED"]
    #   resp.data.actions[0].action_type #=> String, one of ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"]
    #   resp.data.actions[0].action_threshold #=> Types::ActionThreshold
    #   resp.data.actions[0].action_threshold.action_threshold_value #=> Float
    #   resp.data.actions[0].action_threshold.action_threshold_type #=> String, one of ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #   resp.data.actions[0].definition #=> Types::Definition
    #   resp.data.actions[0].definition.iam_action_definition #=> Types::IamActionDefinition
    #   resp.data.actions[0].definition.iam_action_definition.policy_arn #=> String
    #   resp.data.actions[0].definition.iam_action_definition.roles #=> Array<String>
    #   resp.data.actions[0].definition.iam_action_definition.roles[0] #=> String
    #   resp.data.actions[0].definition.iam_action_definition.groups #=> Array<String>
    #   resp.data.actions[0].definition.iam_action_definition.groups[0] #=> String
    #   resp.data.actions[0].definition.iam_action_definition.users #=> Array<String>
    #   resp.data.actions[0].definition.iam_action_definition.users[0] #=> String
    #   resp.data.actions[0].definition.scp_action_definition #=> Types::ScpActionDefinition
    #   resp.data.actions[0].definition.scp_action_definition.policy_id #=> String
    #   resp.data.actions[0].definition.scp_action_definition.target_ids #=> Array<String>
    #   resp.data.actions[0].definition.scp_action_definition.target_ids[0] #=> String
    #   resp.data.actions[0].definition.ssm_action_definition #=> Types::SsmActionDefinition
    #   resp.data.actions[0].definition.ssm_action_definition.action_sub_type #=> String, one of ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"]
    #   resp.data.actions[0].definition.ssm_action_definition.region #=> String
    #   resp.data.actions[0].definition.ssm_action_definition.instance_ids #=> Array<String>
    #   resp.data.actions[0].definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.data.actions[0].execution_role_arn #=> String
    #   resp.data.actions[0].approval_model #=> String, one of ["AUTOMATIC", "MANUAL"]
    #   resp.data.actions[0].status #=> String, one of ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"]
    #   resp.data.actions[0].subscribers #=> Array<Subscriber>
    #   resp.data.actions[0].subscribers[0] #=> Types::Subscriber
    #   resp.data.actions[0].subscribers[0].subscription_type #=> String, one of ["SNS", "EMAIL"]
    #   resp.data.actions[0].subscribers[0].address #=> String
    #   resp.data.next_token #=> String
    #
    def describe_budget_actions_for_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBudgetActionsForAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBudgetActionsForAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBudgetActionsForAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeBudgetActionsForAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBudgetActionsForAccount,
        stubs: @stubs,
        params_class: Params::DescribeBudgetActionsForAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_budget_actions_for_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Describes all of the budget actions for a budget.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBudgetActionsForBudgetInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    #
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters aren't allowed.</p>
    #
    # @option params [Integer] :max_results
    #   <p> An integer that represents how many entries a paginated response contains. The maximum is 100.</p>
    #
    # @option params [String] :next_token
    #   <p> A generic string.</p>
    #
    # @return [Types::DescribeBudgetActionsForBudgetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_actions_for_budget(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBudgetActionsForBudgetOutput
    #   resp.data.actions #=> Array<Action>
    #   resp.data.actions[0] #=> Types::Action
    #   resp.data.actions[0].action_id #=> String
    #   resp.data.actions[0].budget_name #=> String
    #   resp.data.actions[0].notification_type #=> String, one of ["ACTUAL", "FORECASTED"]
    #   resp.data.actions[0].action_type #=> String, one of ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"]
    #   resp.data.actions[0].action_threshold #=> Types::ActionThreshold
    #   resp.data.actions[0].action_threshold.action_threshold_value #=> Float
    #   resp.data.actions[0].action_threshold.action_threshold_type #=> String, one of ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #   resp.data.actions[0].definition #=> Types::Definition
    #   resp.data.actions[0].definition.iam_action_definition #=> Types::IamActionDefinition
    #   resp.data.actions[0].definition.iam_action_definition.policy_arn #=> String
    #   resp.data.actions[0].definition.iam_action_definition.roles #=> Array<String>
    #   resp.data.actions[0].definition.iam_action_definition.roles[0] #=> String
    #   resp.data.actions[0].definition.iam_action_definition.groups #=> Array<String>
    #   resp.data.actions[0].definition.iam_action_definition.groups[0] #=> String
    #   resp.data.actions[0].definition.iam_action_definition.users #=> Array<String>
    #   resp.data.actions[0].definition.iam_action_definition.users[0] #=> String
    #   resp.data.actions[0].definition.scp_action_definition #=> Types::ScpActionDefinition
    #   resp.data.actions[0].definition.scp_action_definition.policy_id #=> String
    #   resp.data.actions[0].definition.scp_action_definition.target_ids #=> Array<String>
    #   resp.data.actions[0].definition.scp_action_definition.target_ids[0] #=> String
    #   resp.data.actions[0].definition.ssm_action_definition #=> Types::SsmActionDefinition
    #   resp.data.actions[0].definition.ssm_action_definition.action_sub_type #=> String, one of ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"]
    #   resp.data.actions[0].definition.ssm_action_definition.region #=> String
    #   resp.data.actions[0].definition.ssm_action_definition.instance_ids #=> Array<String>
    #   resp.data.actions[0].definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.data.actions[0].execution_role_arn #=> String
    #   resp.data.actions[0].approval_model #=> String, one of ["AUTOMATIC", "MANUAL"]
    #   resp.data.actions[0].status #=> String, one of ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"]
    #   resp.data.actions[0].subscribers #=> Array<Subscriber>
    #   resp.data.actions[0].subscribers[0] #=> Types::Subscriber
    #   resp.data.actions[0].subscribers[0].subscription_type #=> String, one of ["SNS", "EMAIL"]
    #   resp.data.actions[0].subscribers[0].address #=> String
    #   resp.data.next_token #=> String
    #
    def describe_budget_actions_for_budget(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBudgetActionsForBudgetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBudgetActionsForBudgetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBudgetActionsForBudget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeBudgetActionsForBudget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBudgetActionsForBudget,
        stubs: @stubs,
        params_class: Params::DescribeBudgetActionsForBudgetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_budget_actions_for_budget
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # 			Lists the budget names and notifications that are associated with an account.
    # 		</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBudgetNotificationsForAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #   			An integer that shows how many budget name entries a paginated response contains.
    #   		</p>
    #
    # @option params [String] :next_token
    #   <p> A generic string.</p>
    #
    # @return [Types::DescribeBudgetNotificationsForAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_notifications_for_account(
    #     account_id: 'AccountId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBudgetNotificationsForAccountOutput
    #   resp.data.budget_notifications_for_account #=> Array<BudgetNotificationsForAccount>
    #   resp.data.budget_notifications_for_account[0] #=> Types::BudgetNotificationsForAccount
    #   resp.data.budget_notifications_for_account[0].notifications #=> Array<Notification>
    #   resp.data.budget_notifications_for_account[0].notifications[0] #=> Types::Notification
    #   resp.data.budget_notifications_for_account[0].notifications[0].notification_type #=> String, one of ["ACTUAL", "FORECASTED"]
    #   resp.data.budget_notifications_for_account[0].notifications[0].comparison_operator #=> String, one of ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"]
    #   resp.data.budget_notifications_for_account[0].notifications[0].threshold #=> Float
    #   resp.data.budget_notifications_for_account[0].notifications[0].threshold_type #=> String, one of ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #   resp.data.budget_notifications_for_account[0].notifications[0].notification_state #=> String, one of ["OK", "ALARM"]
    #   resp.data.budget_notifications_for_account[0].budget_name #=> String
    #   resp.data.next_token #=> String
    #
    def describe_budget_notifications_for_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBudgetNotificationsForAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBudgetNotificationsForAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBudgetNotificationsForAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::ExpiredNextTokenException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeBudgetNotificationsForAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBudgetNotificationsForAccount,
        stubs: @stubs,
        params_class: Params::DescribeBudgetNotificationsForAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_budget_notifications_for_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the history for <code>DAILY</code>, <code>MONTHLY</code>, and <code>QUARTERLY</code> budgets. Budget history isn't available for <code>ANNUAL</code> budgets.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBudgetPerformanceHistoryInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    #
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters aren't allowed.</p>
    #
    # @option params [TimePeriod] :time_period
    #   <p>Retrieves how often the budget went into an <code>ALARM</code> state for the specified time period.</p>
    #
    # @option params [Integer] :max_results
    #   <p> An integer that represents how many entries a paginated response contains. The maximum is 100.</p>
    #
    # @option params [String] :next_token
    #   <p> A generic string.</p>
    #
    # @return [Types::DescribeBudgetPerformanceHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_performance_history(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     time_period: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBudgetPerformanceHistoryOutput
    #   resp.data.budget_performance_history #=> Types::BudgetPerformanceHistory
    #   resp.data.budget_performance_history.budget_name #=> String
    #   resp.data.budget_performance_history.budget_type #=> String, one of ["USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"]
    #   resp.data.budget_performance_history.cost_filters #=> Hash<String, Array<String>>
    #   resp.data.budget_performance_history.cost_filters['key'] #=> Array<String>
    #   resp.data.budget_performance_history.cost_filters['key'][0] #=> String
    #   resp.data.budget_performance_history.cost_types #=> Types::CostTypes
    #   resp.data.budget_performance_history.cost_types.include_tax #=> Boolean
    #   resp.data.budget_performance_history.cost_types.include_subscription #=> Boolean
    #   resp.data.budget_performance_history.cost_types.use_blended #=> Boolean
    #   resp.data.budget_performance_history.cost_types.include_refund #=> Boolean
    #   resp.data.budget_performance_history.cost_types.include_credit #=> Boolean
    #   resp.data.budget_performance_history.cost_types.include_upfront #=> Boolean
    #   resp.data.budget_performance_history.cost_types.include_recurring #=> Boolean
    #   resp.data.budget_performance_history.cost_types.include_other_subscription #=> Boolean
    #   resp.data.budget_performance_history.cost_types.include_support #=> Boolean
    #   resp.data.budget_performance_history.cost_types.include_discount #=> Boolean
    #   resp.data.budget_performance_history.cost_types.use_amortized #=> Boolean
    #   resp.data.budget_performance_history.time_unit #=> String, one of ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"]
    #   resp.data.budget_performance_history.budgeted_and_actual_amounts_list #=> Array<BudgetedAndActualAmounts>
    #   resp.data.budget_performance_history.budgeted_and_actual_amounts_list[0] #=> Types::BudgetedAndActualAmounts
    #   resp.data.budget_performance_history.budgeted_and_actual_amounts_list[0].budgeted_amount #=> Types::Spend
    #   resp.data.budget_performance_history.budgeted_and_actual_amounts_list[0].budgeted_amount.amount #=> String
    #   resp.data.budget_performance_history.budgeted_and_actual_amounts_list[0].budgeted_amount.unit #=> String
    #   resp.data.budget_performance_history.budgeted_and_actual_amounts_list[0].actual_amount #=> Types::Spend
    #   resp.data.budget_performance_history.budgeted_and_actual_amounts_list[0].time_period #=> Types::TimePeriod
    #   resp.data.budget_performance_history.budgeted_and_actual_amounts_list[0].time_period.start #=> Time
    #   resp.data.budget_performance_history.budgeted_and_actual_amounts_list[0].time_period.end #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_budget_performance_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBudgetPerformanceHistoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBudgetPerformanceHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBudgetPerformanceHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::ExpiredNextTokenException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeBudgetPerformanceHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBudgetPerformanceHistory,
        stubs: @stubs,
        params_class: Params::DescribeBudgetPerformanceHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_budget_performance_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the budgets that are associated with an account.</p>
    # 		       <important>
    # 			         <p>The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples">Examples</a> section. </p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::DescribeBudgetsInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budgets that you want descriptions of.</p>
    #
    # @option params [Integer] :max_results
    #   <p>An optional integer that represents how many entries a paginated response contains. The maximum is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>
    #
    # @return [Types::DescribeBudgetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budgets(
    #     account_id: 'AccountId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBudgetsOutput
    #   resp.data.budgets #=> Array<Budget>
    #   resp.data.budgets[0] #=> Types::Budget
    #   resp.data.budgets[0].budget_name #=> String
    #   resp.data.budgets[0].budget_limit #=> Types::Spend
    #   resp.data.budgets[0].budget_limit.amount #=> String
    #   resp.data.budgets[0].budget_limit.unit #=> String
    #   resp.data.budgets[0].planned_budget_limits #=> Hash<String, Spend>
    #   resp.data.budgets[0].cost_filters #=> Hash<String, Array<String>>
    #   resp.data.budgets[0].cost_filters['key'] #=> Array<String>
    #   resp.data.budgets[0].cost_filters['key'][0] #=> String
    #   resp.data.budgets[0].cost_types #=> Types::CostTypes
    #   resp.data.budgets[0].cost_types.include_tax #=> Boolean
    #   resp.data.budgets[0].cost_types.include_subscription #=> Boolean
    #   resp.data.budgets[0].cost_types.use_blended #=> Boolean
    #   resp.data.budgets[0].cost_types.include_refund #=> Boolean
    #   resp.data.budgets[0].cost_types.include_credit #=> Boolean
    #   resp.data.budgets[0].cost_types.include_upfront #=> Boolean
    #   resp.data.budgets[0].cost_types.include_recurring #=> Boolean
    #   resp.data.budgets[0].cost_types.include_other_subscription #=> Boolean
    #   resp.data.budgets[0].cost_types.include_support #=> Boolean
    #   resp.data.budgets[0].cost_types.include_discount #=> Boolean
    #   resp.data.budgets[0].cost_types.use_amortized #=> Boolean
    #   resp.data.budgets[0].time_unit #=> String, one of ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"]
    #   resp.data.budgets[0].time_period #=> Types::TimePeriod
    #   resp.data.budgets[0].time_period.start #=> Time
    #   resp.data.budgets[0].time_period.end #=> Time
    #   resp.data.budgets[0].calculated_spend #=> Types::CalculatedSpend
    #   resp.data.budgets[0].calculated_spend.actual_spend #=> Types::Spend
    #   resp.data.budgets[0].calculated_spend.forecasted_spend #=> Types::Spend
    #   resp.data.budgets[0].budget_type #=> String, one of ["USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"]
    #   resp.data.budgets[0].last_updated_time #=> Time
    #   resp.data.budgets[0].auto_adjust_data #=> Types::AutoAdjustData
    #   resp.data.budgets[0].auto_adjust_data.auto_adjust_type #=> String, one of ["HISTORICAL", "FORECAST"]
    #   resp.data.budgets[0].auto_adjust_data.historical_options #=> Types::HistoricalOptions
    #   resp.data.budgets[0].auto_adjust_data.historical_options.budget_adjustment_period #=> Integer
    #   resp.data.budgets[0].auto_adjust_data.historical_options.look_back_available_periods #=> Integer
    #   resp.data.budgets[0].auto_adjust_data.last_auto_adjust_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_budgets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBudgetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBudgetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBudgets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::ExpiredNextTokenException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeBudgets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBudgets,
        stubs: @stubs,
        params_class: Params::DescribeBudgetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_budgets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the notifications that are associated with a budget.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNotificationsForBudgetInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose notifications you want descriptions of.</p>
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget whose notifications you want descriptions of.</p>
    #
    # @option params [Integer] :max_results
    #   <p>An optional integer that represents how many entries a paginated response contains. The maximum is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>
    #
    # @return [Types::DescribeNotificationsForBudgetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notifications_for_budget(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNotificationsForBudgetOutput
    #   resp.data.notifications #=> Array<Notification>
    #   resp.data.notifications[0] #=> Types::Notification
    #   resp.data.notifications[0].notification_type #=> String, one of ["ACTUAL", "FORECASTED"]
    #   resp.data.notifications[0].comparison_operator #=> String, one of ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"]
    #   resp.data.notifications[0].threshold #=> Float
    #   resp.data.notifications[0].threshold_type #=> String, one of ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #   resp.data.notifications[0].notification_state #=> String, one of ["OK", "ALARM"]
    #   resp.data.next_token #=> String
    #
    def describe_notifications_for_budget(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNotificationsForBudgetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNotificationsForBudgetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNotificationsForBudget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::ExpiredNextTokenException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeNotificationsForBudget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNotificationsForBudget,
        stubs: @stubs,
        params_class: Params::DescribeNotificationsForBudgetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_notifications_for_budget
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the subscribers that are associated with a notification.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSubscribersForNotificationInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose subscribers you want descriptions of.</p>
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget whose subscribers you want descriptions of.</p>
    #
    # @option params [Notification] :notification
    #   <p>The notification whose subscribers you want to list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>An optional integer that represents how many entries a paginated response contains. The maximum is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>
    #
    # @return [Types::DescribeSubscribersForNotificationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subscribers_for_notification(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     notification: {
    #       notification_type: 'ACTUAL', # required - accepts ["ACTUAL", "FORECASTED"]
    #       comparison_operator: 'GREATER_THAN', # required - accepts ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"]
    #       threshold: 1.0, # required
    #       threshold_type: 'PERCENTAGE', # accepts ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #       notification_state: 'OK' # accepts ["OK", "ALARM"]
    #     }, # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSubscribersForNotificationOutput
    #   resp.data.subscribers #=> Array<Subscriber>
    #   resp.data.subscribers[0] #=> Types::Subscriber
    #   resp.data.subscribers[0].subscription_type #=> String, one of ["SNS", "EMAIL"]
    #   resp.data.subscribers[0].address #=> String
    #   resp.data.next_token #=> String
    #
    def describe_subscribers_for_notification(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSubscribersForNotificationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSubscribersForNotificationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSubscribersForNotification
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::ExpiredNextTokenException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeSubscribersForNotification
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSubscribersForNotification,
        stubs: @stubs,
        params_class: Params::DescribeSubscribersForNotificationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_subscribers_for_notification
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Executes a budget action.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ExecuteBudgetActionInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    #
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters aren't allowed.</p>
    #
    # @option params [String] :action_id
    #   <p>
    #            A system-generated universally unique identifier (UUID) for the action.
    #         </p>
    #
    # @option params [String] :execution_type
    #   <p>
    #            The type of execution.
    #         </p>
    #
    # @return [Types::ExecuteBudgetActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_budget_action(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     action_id: 'ActionId', # required
    #     execution_type: 'APPROVE_BUDGET_ACTION' # required - accepts ["APPROVE_BUDGET_ACTION", "RETRY_BUDGET_ACTION", "REVERSE_BUDGET_ACTION", "RESET_BUDGET_ACTION"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteBudgetActionOutput
    #   resp.data.account_id #=> String
    #   resp.data.budget_name #=> String
    #   resp.data.action_id #=> String
    #   resp.data.execution_type #=> String, one of ["APPROVE_BUDGET_ACTION", "RETRY_BUDGET_ACTION", "REVERSE_BUDGET_ACTION", "RESET_BUDGET_ACTION"]
    #
    def execute_budget_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteBudgetActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteBudgetActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteBudgetAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::ResourceLockedException]),
        data_parser: Parsers::ExecuteBudgetAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteBudgetAction,
        stubs: @stubs,
        params_class: Params::ExecuteBudgetActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_budget_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a budget. You can change every part of a budget except for the <code>budgetName</code> and the <code>calculatedSpend</code>. When you modify a budget, the <code>calculatedSpend</code> drops to zero until Amazon Web Services has new usage data to use for forecasting.</p>
    # 		       <important>
    # 			         <p>Only one of <code>BudgetLimit</code> or <code>PlannedBudgetLimits</code> can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples">Examples</a> section. </p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateBudgetInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget that you want to update.</p>
    #
    # @option params [Budget] :new_budget
    #   <p>The budget that you want to update your budget to.</p>
    #
    # @return [Types::UpdateBudgetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_budget(
    #     account_id: 'AccountId', # required
    #     new_budget: {
    #       budget_name: 'BudgetName', # required
    #       budget_limit: {
    #         amount: 'Amount', # required
    #         unit: 'Unit' # required
    #       },
    #       cost_filters: {
    #         'key' => [
    #           'member'
    #         ]
    #       },
    #       cost_types: {
    #         include_tax: false,
    #         include_subscription: false,
    #         use_blended: false,
    #         include_refund: false,
    #         include_credit: false,
    #         include_upfront: false,
    #         include_recurring: false,
    #         include_other_subscription: false,
    #         include_support: false,
    #         include_discount: false,
    #         use_amortized: false
    #       },
    #       time_unit: 'DAILY', # required - accepts ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"]
    #       time_period: {
    #         start: Time.now,
    #         end: Time.now
    #       },
    #       calculated_spend: {
    #       },
    #       budget_type: 'USAGE', # required - accepts ["USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"]
    #       last_updated_time: Time.now,
    #       auto_adjust_data: {
    #         auto_adjust_type: 'HISTORICAL', # required - accepts ["HISTORICAL", "FORECAST"]
    #         historical_options: {
    #           budget_adjustment_period: 1, # required
    #           look_back_available_periods: 1
    #         },
    #         last_auto_adjust_time: Time.now
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBudgetOutput
    #
    def update_budget(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBudgetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBudgetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBudget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException]),
        data_parser: Parsers::UpdateBudget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBudget,
        stubs: @stubs,
        params_class: Params::UpdateBudgetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_budget
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Updates a budget action.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBudgetActionInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the user. It's a 12-digit number.</p>
    #
    # @option params [String] :budget_name
    #   <p> A string that represents the budget name. The ":" and "\" characters aren't allowed.</p>
    #
    # @option params [String] :action_id
    #   <p>
    #            A system-generated universally unique identifier (UUID) for the action.
    #         </p>
    #
    # @option params [String] :notification_type
    #   <p> The type of a notification. It must be ACTUAL or FORECASTED.</p>
    #
    # @option params [ActionThreshold] :action_threshold
    #   <p>The trigger threshold of the action. </p>
    #
    # @option params [Definition] :definition
    #   <p>Specifies all of the type-specific parameters. </p>
    #
    # @option params [String] :execution_role_arn
    #   <p>
    #            The role passed for action execution and reversion. Roles and actions must be in the same account.
    #         </p>
    #
    # @option params [String] :approval_model
    #   <p>
    #            This specifies if the action needs manual or automatic approval.
    #         </p>
    #
    # @option params [Array<Subscriber>] :subscribers
    #   <p> A list of subscribers.</p>
    #
    # @return [Types::UpdateBudgetActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_budget_action(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     action_id: 'ActionId', # required
    #     notification_type: 'ACTUAL', # accepts ["ACTUAL", "FORECASTED"]
    #     action_threshold: {
    #       action_threshold_value: 1.0, # required
    #       action_threshold_type: 'PERCENTAGE' # required - accepts ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #     },
    #     definition: {
    #       iam_action_definition: {
    #         policy_arn: 'PolicyArn', # required
    #         roles: [
    #           'member'
    #         ],
    #         groups: [
    #           'member'
    #         ],
    #         users: [
    #           'member'
    #         ]
    #       },
    #       scp_action_definition: {
    #         policy_id: 'PolicyId', # required
    #         target_ids: [
    #           'member'
    #         ] # required
    #       },
    #       ssm_action_definition: {
    #         action_sub_type: 'STOP_EC2_INSTANCES', # required - accepts ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"]
    #         region: 'Region', # required
    #         instance_ids: [
    #           'member'
    #         ] # required
    #       }
    #     },
    #     execution_role_arn: 'ExecutionRoleArn',
    #     approval_model: 'AUTOMATIC', # accepts ["AUTOMATIC", "MANUAL"]
    #     subscribers: [
    #       {
    #         subscription_type: 'SNS', # required - accepts ["SNS", "EMAIL"]
    #         address: 'Address' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBudgetActionOutput
    #   resp.data.account_id #=> String
    #   resp.data.budget_name #=> String
    #   resp.data.old_action #=> Types::Action
    #   resp.data.old_action.action_id #=> String
    #   resp.data.old_action.budget_name #=> String
    #   resp.data.old_action.notification_type #=> String, one of ["ACTUAL", "FORECASTED"]
    #   resp.data.old_action.action_type #=> String, one of ["APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"]
    #   resp.data.old_action.action_threshold #=> Types::ActionThreshold
    #   resp.data.old_action.action_threshold.action_threshold_value #=> Float
    #   resp.data.old_action.action_threshold.action_threshold_type #=> String, one of ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #   resp.data.old_action.definition #=> Types::Definition
    #   resp.data.old_action.definition.iam_action_definition #=> Types::IamActionDefinition
    #   resp.data.old_action.definition.iam_action_definition.policy_arn #=> String
    #   resp.data.old_action.definition.iam_action_definition.roles #=> Array<String>
    #   resp.data.old_action.definition.iam_action_definition.roles[0] #=> String
    #   resp.data.old_action.definition.iam_action_definition.groups #=> Array<String>
    #   resp.data.old_action.definition.iam_action_definition.groups[0] #=> String
    #   resp.data.old_action.definition.iam_action_definition.users #=> Array<String>
    #   resp.data.old_action.definition.iam_action_definition.users[0] #=> String
    #   resp.data.old_action.definition.scp_action_definition #=> Types::ScpActionDefinition
    #   resp.data.old_action.definition.scp_action_definition.policy_id #=> String
    #   resp.data.old_action.definition.scp_action_definition.target_ids #=> Array<String>
    #   resp.data.old_action.definition.scp_action_definition.target_ids[0] #=> String
    #   resp.data.old_action.definition.ssm_action_definition #=> Types::SsmActionDefinition
    #   resp.data.old_action.definition.ssm_action_definition.action_sub_type #=> String, one of ["STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"]
    #   resp.data.old_action.definition.ssm_action_definition.region #=> String
    #   resp.data.old_action.definition.ssm_action_definition.instance_ids #=> Array<String>
    #   resp.data.old_action.definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.data.old_action.execution_role_arn #=> String
    #   resp.data.old_action.approval_model #=> String, one of ["AUTOMATIC", "MANUAL"]
    #   resp.data.old_action.status #=> String, one of ["STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"]
    #   resp.data.old_action.subscribers #=> Array<Subscriber>
    #   resp.data.old_action.subscribers[0] #=> Types::Subscriber
    #   resp.data.old_action.subscribers[0].subscription_type #=> String, one of ["SNS", "EMAIL"]
    #   resp.data.old_action.subscribers[0].address #=> String
    #   resp.data.new_action #=> Types::Action
    #
    def update_budget_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBudgetActionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBudgetActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBudgetAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::ResourceLockedException]),
        data_parser: Parsers::UpdateBudgetAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBudgetAction,
        stubs: @stubs,
        params_class: Params::UpdateBudgetActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_budget_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a notification.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNotificationInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose notification you want to update.</p>
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget whose notification you want to update.</p>
    #
    # @option params [Notification] :old_notification
    #   <p>The previous notification that is associated with a budget.</p>
    #
    # @option params [Notification] :new_notification
    #   <p>The updated notification to be associated with a budget.</p>
    #
    # @return [Types::UpdateNotificationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     old_notification: {
    #       notification_type: 'ACTUAL', # required - accepts ["ACTUAL", "FORECASTED"]
    #       comparison_operator: 'GREATER_THAN', # required - accepts ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"]
    #       threshold: 1.0, # required
    #       threshold_type: 'PERCENTAGE', # accepts ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #       notification_state: 'OK' # accepts ["OK", "ALARM"]
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNotificationOutput
    #
    def update_notification(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNotificationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNotificationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNotification
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::DuplicateRecordException]),
        data_parser: Parsers::UpdateNotification
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNotification,
        stubs: @stubs,
        params_class: Params::UpdateNotificationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_notification
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a subscriber.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSubscriberInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>accountId</code> that is associated with the budget whose subscriber you want to update.</p>
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget whose subscriber you want to update.</p>
    #
    # @option params [Notification] :notification
    #   <p>The notification whose subscriber you want to update.</p>
    #
    # @option params [Subscriber] :old_subscriber
    #   <p>The previous subscriber that is associated with a budget notification.</p>
    #
    # @option params [Subscriber] :new_subscriber
    #   <p>The updated subscriber that is associated with a budget notification.</p>
    #
    # @return [Types::UpdateSubscriberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscriber(
    #     account_id: 'AccountId', # required
    #     budget_name: 'BudgetName', # required
    #     notification: {
    #       notification_type: 'ACTUAL', # required - accepts ["ACTUAL", "FORECASTED"]
    #       comparison_operator: 'GREATER_THAN', # required - accepts ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"]
    #       threshold: 1.0, # required
    #       threshold_type: 'PERCENTAGE', # accepts ["PERCENTAGE", "ABSOLUTE_VALUE"]
    #       notification_state: 'OK' # accepts ["OK", "ALARM"]
    #     }, # required
    #     old_subscriber: {
    #       subscription_type: 'SNS', # required - accepts ["SNS", "EMAIL"]
    #       address: 'Address' # required
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSubscriberOutput
    #
    def update_subscriber(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSubscriberInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSubscriberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSubscriber
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::NotFoundException, Errors::AccessDeniedException, Errors::InternalErrorException, Errors::DuplicateRecordException]),
        data_parser: Parsers::UpdateSubscriber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSubscriber,
        stubs: @stubs,
        params_class: Params::UpdateSubscriberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_subscriber
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
