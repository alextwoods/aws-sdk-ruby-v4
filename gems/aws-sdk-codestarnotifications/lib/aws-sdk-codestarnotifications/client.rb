# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CodestarNotifications
  # An API client for CodeStarNotifications_20191015
  # See {#initialize} for a full list of supported configuration options
  # <p>This AWS CodeStar Notifications API Reference provides descriptions and usage examples of the
  #       operations and data types for the AWS CodeStar Notifications API. You can use the AWS CodeStar Notifications API
  #       to work with the following objects:</p>
  #
  #          <p>Notification rules, by calling the following: </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateNotificationRule</a>, which creates a notification rule for a
  #                     resource in your account. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteNotificationRule</a>, which deletes a notification rule. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DescribeNotificationRule</a>, which provides information about a notification rule. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListNotificationRules</a>, which lists the notification rules associated with
  #           your account. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UpdateNotificationRule</a>, which changes the name, events, or targets associated with a
  #           notification rule. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>Subscribe</a>, which subscribes a target to a notification rule. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>Unsubscribe</a>, which removes a target from a notification rule. </p>
  #             </li>
  #          </ul>
  #
  #          <p>Targets, by calling the following: </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>DeleteTarget</a>, which removes a notification rule target (SNS topic) from a
  #           notification rule. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListTargets</a>, which lists the targets associated with a
  #                     notification rule. </p>
  #             </li>
  #          </ul>
  #
  #          <p>Events, by calling the following: </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>ListEventTypes</a>, which lists the event types you can include in
  #                     a notification rule. </p>
  #             </li>
  #          </ul>
  #          <p>Tags, by calling the following: </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>ListTagsForResource</a>, which lists the tags already associated
  #                     with a notification rule in your account. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>TagResource</a>, which associates a tag you provide with a
  #                     notification rule in your account. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UntagResource</a>, which removes a tag from a notification rule in
  #                     your account. </p>
  #             </li>
  #          </ul>
  #
  #
  #
  #          <p> For information about how to use AWS CodeStar Notifications, see link in the CodeStarNotifications User Guide.
  #     </p>
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
    def initialize(config = AWS::SDK::CodestarNotifications::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a notification rule for a resource. The rule specifies the events you want
    #             notifications about and the targets (such as SNS topics) where you want to receive
    #             them.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateNotificationRuleInput}.
    #
    # @option params [String] :name
    #   <p>The name for the notification rule. Notifictaion rule names must be unique in your AWS
    #               account.</p>
    #
    # @option params [Array<String>] :event_type_ids
    #   <p>A list of event types associated with this notification rule. For a list of allowed
    #               events, see <a>EventTypeSummary</a>.</p>
    #
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) of the resource to associate with the notification rule. Supported resources include pipelines in AWS CodePipeline,
    #         repositories in AWS CodeCommit, and build projects in AWS CodeBuild.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>A list of Amazon Resource Names (ARNs) of SNS topics to associate with the
    #         notification rule.</p>
    #
    # @option params [String] :detail_type
    #   <p>The level of detail to include in the notifications for this resource. BASIC will include only the
    #           contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information
    #           provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request with the same
    #               parameters is received and a token is included, the request returns information about
    #               the initial request that used that token.</p>
    #           <note>
    #               <p>The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an
    #                   idempotency token is created for you.</p>
    #           </note>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to apply to this notification rule. Key names cannot start with "aws". </p>
    #
    # @option params [String] :status
    #   <p>The status of the notification rule. The default value is ENABLED. If the status is
    #               set to DISABLED, notifications aren't sent for the notification rule.</p>
    #
    # @return [Types::CreateNotificationRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notification_rule(
    #     name: 'Name', # required
    #     event_type_ids: [
    #       'member'
    #     ], # required
    #     resource: 'Resource', # required
    #     targets: [
    #       {
    #         target_type: 'TargetType',
    #         target_address: 'TargetAddress'
    #       }
    #     ], # required
    #     detail_type: 'BASIC', # required - accepts ["BASIC", "FULL"]
    #     client_request_token: 'ClientRequestToken',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     status: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNotificationRuleOutput
    #   resp.data.arn #=> String
    #
    def create_notification_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNotificationRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNotificationRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNotificationRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConfigurationException, Errors::ConcurrentModificationException, Errors::AccessDeniedException, Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateNotificationRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNotificationRule,
        stubs: @stubs,
        params_class: Params::CreateNotificationRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_notification_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a notification rule for a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNotificationRuleInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule you want to delete.</p>
    #
    # @return [Types::DeleteNotificationRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification_rule(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNotificationRuleOutput
    #   resp.data.arn #=> String
    #
    def delete_notification_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNotificationRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNotificationRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNotificationRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ValidationException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteNotificationRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNotificationRule,
        stubs: @stubs,
        params_class: Params::DeleteNotificationRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_notification_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified target for notifications.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTargetInput}.
    #
    # @option params [String] :target_address
    #   <p>The Amazon Resource Name (ARN) of the SNS topic to delete.</p>
    #
    # @option params [Boolean] :force_unsubscribe_all
    #   <p>A Boolean value that can be used to delete all associations with this SNS topic. The
    #               default value is FALSE. If set to TRUE, all associations between that target and every
    #               notification rule in your AWS account are deleted.</p>
    #
    # @return [Types::DeleteTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_target(
    #     target_address: 'TargetAddress', # required
    #     force_unsubscribe_all: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTargetOutput
    #
    def delete_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTargetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTarget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException]),
        data_parser: Parsers::DeleteTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTarget,
        stubs: @stubs,
        params_class: Params::DeleteTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specified notification rule.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNotificationRuleInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    #
    # @return [Types::DescribeNotificationRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notification_rule(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNotificationRuleOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.event_types #=> Array<EventTypeSummary>
    #   resp.data.event_types[0] #=> Types::EventTypeSummary
    #   resp.data.event_types[0].event_type_id #=> String
    #   resp.data.event_types[0].service_name #=> String
    #   resp.data.event_types[0].event_type_name #=> String
    #   resp.data.event_types[0].resource_type #=> String
    #   resp.data.resource #=> String
    #   resp.data.targets #=> Array<TargetSummary>
    #   resp.data.targets[0] #=> Types::TargetSummary
    #   resp.data.targets[0].target_address #=> String
    #   resp.data.targets[0].target_type #=> String
    #   resp.data.targets[0].target_status #=> String, one of ["PENDING", "ACTIVE", "UNREACHABLE", "INACTIVE", "DEACTIVATED"]
    #   resp.data.detail_type #=> String, one of ["BASIC", "FULL"]
    #   resp.data.created_by #=> String
    #   resp.data.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.created_timestamp #=> Time
    #   resp.data.last_modified_timestamp #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_notification_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNotificationRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNotificationRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNotificationRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeNotificationRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNotificationRule,
        stubs: @stubs,
        params_class: Params::DescribeNotificationRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_notification_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the event types available for configuring notifications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventTypesInput}.
    #
    # @option params [Array<ListEventTypesFilter>] :filters
    #   <p>The filters to use to return information by service or resource type.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-negative integer used to limit the number of returned results. The default number is 50. The maximum number of
    #         results that can be returned is 100.</p>
    #
    # @return [Types::ListEventTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_types(
    #     filters: [
    #       {
    #         name: 'RESOURCE_TYPE', # required - accepts ["RESOURCE_TYPE", "SERVICE_NAME"]
    #         value: 'Value' # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventTypesOutput
    #   resp.data.event_types #=> Array<EventTypeSummary>
    #   resp.data.event_types[0] #=> Types::EventTypeSummary
    #   resp.data.event_types[0].event_type_id #=> String
    #   resp.data.event_types[0].service_name #=> String
    #   resp.data.event_types[0].event_type_name #=> String
    #   resp.data.event_types[0].resource_type #=> String
    #   resp.data.next_token #=> String
    #
    def list_event_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException]),
        data_parser: Parsers::ListEventTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventTypes,
        stubs: @stubs,
        params_class: Params::ListEventTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the notification rules for an AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNotificationRulesInput}.
    #
    # @option params [Array<ListNotificationRulesFilter>] :filters
    #   <p>The filters to use to return information by service or resource type. For valid values,
    #               see <a>ListNotificationRulesFilter</a>.</p>
    #            <note>
    #               <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p>
    #            </note>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-negative integer used to limit the number of returned results. The maximum number of
    #         results that can be returned is 100.</p>
    #
    # @return [Types::ListNotificationRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notification_rules(
    #     filters: [
    #       {
    #         name: 'EVENT_TYPE_ID', # required - accepts ["EVENT_TYPE_ID", "CREATED_BY", "RESOURCE", "TARGET_ADDRESS"]
    #         value: 'Value' # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNotificationRulesOutput
    #   resp.data.next_token #=> String
    #   resp.data.notification_rules #=> Array<NotificationRuleSummary>
    #   resp.data.notification_rules[0] #=> Types::NotificationRuleSummary
    #   resp.data.notification_rules[0].id #=> String
    #   resp.data.notification_rules[0].arn #=> String
    #
    def list_notification_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNotificationRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNotificationRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNotificationRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException]),
        data_parser: Parsers::ListNotificationRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNotificationRules,
        stubs: @stubs,
        params_class: Params::ListNotificationRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_notification_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the tags associated with a notification rule.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for the notification rule.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     arn: 'Arn' # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Returns a list of the notification rule targets for an AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTargetsInput}.
    #
    # @option params [Array<ListTargetsFilter>] :filters
    #   <p>The filters to use to return information by service or resource type. Valid filters
    #               include target type, target address, and target status.</p>
    #            <note>
    #               <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p>
    #            </note>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-negative integer used to limit the number of returned results. The maximum number of
    #         results that can be returned is 100.</p>
    #
    # @return [Types::ListTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets(
    #     filters: [
    #       {
    #         name: 'TARGET_TYPE', # required - accepts ["TARGET_TYPE", "TARGET_ADDRESS", "TARGET_STATUS"]
    #         value: 'Value' # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTargetsOutput
    #   resp.data.targets #=> Array<TargetSummary>
    #   resp.data.targets[0] #=> Types::TargetSummary
    #   resp.data.targets[0].target_address #=> String
    #   resp.data.targets[0].target_type #=> String
    #   resp.data.targets[0].target_status #=> String, one of ["PENDING", "ACTIVE", "UNREACHABLE", "INACTIVE", "DEACTIVATED"]
    #   resp.data.next_token #=> String
    #
    def list_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTargetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTargets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException]),
        data_parser: Parsers::ListTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTargets,
        stubs: @stubs,
        params_class: Params::ListTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an association between a notification rule and an SNS topic so that the
    #             associated target can receive notifications when the events described in the rule are
    #             triggered.</p>
    #
    # @param [Hash] params
    #   See {Types::SubscribeInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule for which you want to create the association.</p>
    #
    # @option params [Target] :target
    #   <p>Information about the SNS topics associated with a  notification rule.</p>
    #
    # @option params [String] :client_request_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @return [Types::SubscribeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.subscribe(
    #     arn: 'Arn', # required
    #     target: {
    #       target_type: 'TargetType',
    #       target_address: 'TargetAddress'
    #     }, # required
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SubscribeOutput
    #   resp.data.arn #=> String
    #
    def subscribe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SubscribeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SubscribeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Subscribe
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::Subscribe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Subscribe,
        stubs: @stubs,
        params_class: Params::SubscribeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :subscribe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a set of provided tags with a notification rule.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule to tag.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tags to associate with the resource. Tag key names cannot start with "aws".</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     arn: 'Arn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Removes an association between a notification rule and an Amazon SNS topic so that
    #             subscribers to that topic stop receiving notifications when the events described in the
    #             rule are triggered.</p>
    #
    # @param [Hash] params
    #   See {Types::UnsubscribeInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    #
    # @option params [String] :target_address
    #   <p>The ARN of the SNS topic to unsubscribe from the notification rule.</p>
    #
    # @return [Types::UnsubscribeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unsubscribe(
    #     arn: 'Arn', # required
    #     target_address: 'TargetAddress' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnsubscribeOutput
    #   resp.data.arn #=> String
    #
    def unsubscribe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnsubscribeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnsubscribeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Unsubscribe
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException]),
        data_parser: Parsers::Unsubscribe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Unsubscribe,
        stubs: @stubs,
        params_class: Params::UnsubscribeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unsubscribe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the association between one or more provided tags and a notification
    #             rule.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule from which to remove the
    #         tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The key names of the tags to remove.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     arn: 'Arn', # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Updates a notification rule for a resource. You can change the events that trigger the
    #             notification rule, the status of the rule, and the targets that receive the
    #             notifications.</p>
    #          <note>
    #             <p>To add or remove tags for a notification rule, you must use <a>TagResource</a> and <a>UntagResource</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateNotificationRuleInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the notification rule.</p>
    #
    # @option params [String] :name
    #   <p>The name of the notification rule.</p>
    #
    # @option params [String] :status
    #   <p>The status of the notification rule. Valid statuses include enabled (sending notifications) or
    #         disabled (not sending notifications).</p>
    #
    # @option params [Array<String>] :event_type_ids
    #   <p>A list of event types associated with this notification rule.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>The address and type of the targets to receive notifications from this notification
    #         rule.</p>
    #
    # @option params [String] :detail_type
    #   <p>The level of detail to include in the notifications for this resource. BASIC will include only the
    #               contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information
    #               provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>
    #
    # @return [Types::UpdateNotificationRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification_rule(
    #     arn: 'Arn', # required
    #     name: 'Name',
    #     status: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     event_type_ids: [
    #       'member'
    #     ],
    #     targets: [
    #       {
    #         target_type: 'TargetType',
    #         target_address: 'TargetAddress'
    #       }
    #     ],
    #     detail_type: 'BASIC' # accepts ["BASIC", "FULL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNotificationRuleOutput
    #
    def update_notification_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNotificationRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNotificationRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNotificationRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateNotificationRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNotificationRule,
        stubs: @stubs,
        params_class: Params::UpdateNotificationRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_notification_rule
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
