# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Health
  # An API client for AWSHealth_20160804
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Health</fullname>
  #
  #          <p>The Health API provides programmatic access to the Health information that
  #          appears in the <a href="https://phd.aws.amazon.com/phd/home#/">Personal Health Dashboard</a>. You
  #          can use the API operations to get information about events that might affect your Amazon Web Services services and resources.</p>
  #          <note>
  #             <ul>
  #                <li>
  #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan from <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a> to use the Health
  #                   API. If you call the Health API from an Amazon Web Services account that
  #                   doesn't have a Business, Enterprise On-Ramp, or Enterprise Support plan, you receive a
  #                      <code>SubscriptionRequiredException</code> error.</p>
  #                </li>
  #                <li>
  #                   <p>You can use the Health endpoint health.us-east-1.amazonaws.com (HTTPS) to
  #                   call the Health API operations. Health supports a multi-Region
  #                   application architecture and has two regional endpoints in an active-passive
  #                   configuration. You can use the high availability endpoint example to determine
  #                   which Amazon Web Services Region is active, so that you can get the latest information from the
  #                   API. For more information, see <a href="https://docs.aws.amazon.com/health/latest/ug/health-api.html">Accessing the Health API</a> in the
  #                      <i>Health User Guide</i>.</p>
  #                </li>
  #             </ul>
  #          </note>
  #          <p>For authentication of requests, Health uses the <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing
  #             Process</a>.</p>
  #          <p>If your Amazon Web Services account is part of Organizations, you can use the Health organizational
  #          view feature. This feature provides a centralized view of Health events across all
  #          accounts in your organization. You can aggregate Health events in real time to
  #          identify accounts in your organization that are affected by an operational event or get
  #          notified of security vulnerabilities. Use the organizational view API operations to enable
  #          this feature and return event information. For more information, see <a href="https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html">Aggregating
  #             Health events</a> in the <i>Health User Guide</i>.</p>
  #          <note>
  #             <p>When you use the Health API operations to return Health events, see the
  #             following recommendations:</p>
  #             <ul>
  #                <li>
  #                   <p>Use the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode">eventScopeCode</a> parameter to specify whether to return Health
  #                   events that are public or account-specific.</p>
  #                </li>
  #                <li>
  #                   <p>Use pagination to view all events from the response. For example, if you call
  #                   the <code>DescribeEventsForOrganization</code> operation to get all events in your
  #                   organization, you might receive several page results. Specify the
  #                      <code>nextToken</code> in the next request to return more results.</p>
  #                </li>
  #             </ul>
  #          </note>
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
    def initialize(config = AWS::SDK::Health::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Returns a list of accounts in the organization from Organizations that are affected by the
    #          provided event. For more information about the different types of Health events, see
    #             <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html">Event</a>. </p>
    #          <p>Before you can call this operation, you must first enable Health to work with
    #          Organizations. To do this, call the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html">EnableHealthServiceAccessForOrganization</a> operation from your organization's
    #          management account.</p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeAffectedAccountsForOrganizationInput}.
    #
    # @option params [String] :event_arn
    #   <p>The unique identifier for the event. The event ARN has the
    #   <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
    #               </code>
    #   format.</p>
    #            <p>For example, an event ARN might look like the following:</p>
    #            <p>
    #               <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    # @return [Types::DescribeAffectedAccountsForOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_affected_accounts_for_organization(
    #     event_arn: 'eventArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAffectedAccountsForOrganizationOutput
    #   resp.data.affected_accounts #=> Array<String>
    #   resp.data.affected_accounts[0] #=> String
    #   resp.data.event_scope_code #=> String, one of ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #   resp.data.next_token #=> String
    #
    def describe_affected_accounts_for_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAffectedAccountsForOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAffectedAccountsForOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAffectedAccountsForOrganization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPaginationToken]),
        data_parser: Parsers::DescribeAffectedAccountsForOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAffectedAccountsForOrganization,
        stubs: @stubs,
        params_class: Params::DescribeAffectedAccountsForOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_affected_accounts_for_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of entities that have been affected by the specified events, based on the
    #          specified filter criteria. Entities can refer to individual customer resources, groups of
    #          customer resources, or any other construct, depending on the Amazon Web Services service. Events that
    #          have impact beyond that of the affected entities, or where the extent of impact is unknown,
    #          include at least one entity indicating this.</p>
    #          <p>At least one event ARN is required.</p>
    #
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #                </li>
    #                <li>
    #                   <p>This operation supports resource-level permissions. You can use this operation to allow or deny access to specific Health events. For more
    #                   information, see <a href="https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions">Resource- and action-based conditions</a> in the <i>Health User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeAffectedEntitiesInput}.
    #
    # @option params [EntityFilter] :filter
    #   <p>Values to narrow the results returned. At least one event ARN is required.</p>
    #
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    # @return [Types::DescribeAffectedEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_affected_entities(
    #     filter: {
    #       event_arns: [
    #         'member'
    #       ], # required
    #       entity_arns: [
    #         'member'
    #       ],
    #       entity_values: [
    #         'member'
    #       ],
    #       last_updated_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now
    #         }
    #       ],
    #       tags: [
    #         {
    #           'key' => 'value'
    #         }
    #       ],
    #       status_codes: [
    #         'IMPAIRED' # accepts ["IMPAIRED", "UNIMPAIRED", "UNKNOWN"]
    #       ]
    #     }, # required
    #     locale: 'locale',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAffectedEntitiesOutput
    #   resp.data.entities #=> Array<AffectedEntity>
    #   resp.data.entities[0] #=> Types::AffectedEntity
    #   resp.data.entities[0].entity_arn #=> String
    #   resp.data.entities[0].event_arn #=> String
    #   resp.data.entities[0].entity_value #=> String
    #   resp.data.entities[0].entity_url #=> String
    #   resp.data.entities[0].aws_account_id #=> String
    #   resp.data.entities[0].last_updated_time #=> Time
    #   resp.data.entities[0].status_code #=> String, one of ["IMPAIRED", "UNIMPAIRED", "UNKNOWN"]
    #   resp.data.entities[0].tags #=> Hash<String, String>
    #   resp.data.entities[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_affected_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAffectedEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAffectedEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAffectedEntities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedLocale, Errors::InvalidPaginationToken]),
        data_parser: Parsers::DescribeAffectedEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAffectedEntities,
        stubs: @stubs,
        params_class: Params::DescribeAffectedEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_affected_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of entities that have been affected by one or more events for one or more
    #          accounts in your organization in Organizations, based on the filter criteria. Entities can refer
    #          to individual customer resources, groups of customer resources, or any other construct,
    #          depending on the Amazon Web Services service.</p>
    #          <p>At least one event Amazon Resource Name (ARN) and account ID are required.</p>
    #          <p>Before you can call this operation, you must first enable Health to work with
    #          Organizations. To do this, call the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html">EnableHealthServiceAccessForOrganization</a> operation from your organization's
    #          management account.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #                </li>
    #                <li>
    #                   <p>This operation doesn't support resource-level permissions. You can't use this operation to allow or deny access to specific Health events. For more
    #                   information, see <a href="https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions">Resource- and action-based conditions</a> in the <i>Health User Guide</i>.</p>
    #                </li>
    #             </ul>
    #
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeAffectedEntitiesForOrganizationInput}.
    #
    # @option params [Array<EventAccountFilter>] :organization_entity_filters
    #   <p>A JSON set of elements including the <code>awsAccountId</code> and the
    #               <code>eventArn</code>.</p>
    #
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    # @return [Types::DescribeAffectedEntitiesForOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_affected_entities_for_organization(
    #     organization_entity_filters: [
    #       {
    #         event_arn: 'eventArn', # required
    #         aws_account_id: 'awsAccountId'
    #       }
    #     ], # required
    #     locale: 'locale',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAffectedEntitiesForOrganizationOutput
    #   resp.data.entities #=> Array<AffectedEntity>
    #   resp.data.entities[0] #=> Types::AffectedEntity
    #   resp.data.entities[0].entity_arn #=> String
    #   resp.data.entities[0].event_arn #=> String
    #   resp.data.entities[0].entity_value #=> String
    #   resp.data.entities[0].entity_url #=> String
    #   resp.data.entities[0].aws_account_id #=> String
    #   resp.data.entities[0].last_updated_time #=> Time
    #   resp.data.entities[0].status_code #=> String, one of ["IMPAIRED", "UNIMPAIRED", "UNKNOWN"]
    #   resp.data.entities[0].tags #=> Hash<String, String>
    #   resp.data.entities[0].tags['key'] #=> String
    #   resp.data.failed_set #=> Array<OrganizationAffectedEntitiesErrorItem>
    #   resp.data.failed_set[0] #=> Types::OrganizationAffectedEntitiesErrorItem
    #   resp.data.failed_set[0].aws_account_id #=> String
    #   resp.data.failed_set[0].event_arn #=> String
    #   resp.data.failed_set[0].error_name #=> String
    #   resp.data.failed_set[0].error_message #=> String
    #   resp.data.next_token #=> String
    #
    def describe_affected_entities_for_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAffectedEntitiesForOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAffectedEntitiesForOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAffectedEntitiesForOrganization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedLocale, Errors::InvalidPaginationToken]),
        data_parser: Parsers::DescribeAffectedEntitiesForOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAffectedEntitiesForOrganization,
        stubs: @stubs,
        params_class: Params::DescribeAffectedEntitiesForOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_affected_entities_for_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the number of entities that are affected by each of the specified events.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEntityAggregatesInput}.
    #
    # @option params [Array<String>] :event_arns
    #   <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"</code>
    #            </p>
    #
    # @return [Types::DescribeEntityAggregatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entity_aggregates(
    #     event_arns: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEntityAggregatesOutput
    #   resp.data.entity_aggregates #=> Array<EntityAggregate>
    #   resp.data.entity_aggregates[0] #=> Types::EntityAggregate
    #   resp.data.entity_aggregates[0].event_arn #=> String
    #   resp.data.entity_aggregates[0].count #=> Integer
    #
    def describe_entity_aggregates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEntityAggregatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEntityAggregatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEntityAggregates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeEntityAggregates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEntityAggregates,
        stubs: @stubs,
        params_class: Params::DescribeEntityAggregatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_entity_aggregates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the number of events of each event type (issue, scheduled change, and account
    #          notification). If no filter is specified, the counts of all events in each category are
    #          returned.</p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventAggregatesInput}.
    #
    # @option params [EventFilter] :filter
    #   <p>Values to narrow the results returned.</p>
    #
    # @option params [String] :aggregate_field
    #   <p>The only currently supported value is <code>eventTypeCategory</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    # @return [Types::DescribeEventAggregatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_aggregates(
    #     filter: {
    #       event_arns: [
    #         'member'
    #       ],
    #       event_type_codes: [
    #         'member'
    #       ],
    #       services: [
    #         'member'
    #       ],
    #       regions: [
    #         'member'
    #       ],
    #       availability_zones: [
    #         'member'
    #       ],
    #       start_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now
    #         }
    #       ],
    #       entity_arns: [
    #         'member'
    #       ],
    #       entity_values: [
    #         'member'
    #       ],
    #       event_type_categories: [
    #         'issue' # accepts ["issue", "accountNotification", "scheduledChange", "investigation"]
    #       ],
    #       tags: [
    #         {
    #           'key' => 'value'
    #         }
    #       ],
    #       event_status_codes: [
    #         'open' # accepts ["open", "closed", "upcoming"]
    #       ]
    #     },
    #     aggregate_field: 'eventTypeCategory', # required - accepts ["eventTypeCategory"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventAggregatesOutput
    #   resp.data.event_aggregates #=> Array<EventAggregate>
    #   resp.data.event_aggregates[0] #=> Types::EventAggregate
    #   resp.data.event_aggregates[0].aggregate_value #=> String
    #   resp.data.event_aggregates[0].count #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_event_aggregates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventAggregatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventAggregatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventAggregates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPaginationToken]),
        data_parser: Parsers::DescribeEventAggregates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventAggregates,
        stubs: @stubs,
        params_class: Params::DescribeEventAggregatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_aggregates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about one or more specified events. Information includes
    #          standard event data (Amazon Web Services Region, service, and so on, as returned by <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html">DescribeEvents</a>), a detailed event description, and possible additional metadata
    #          that depends upon the nature of the event. Affected entities are not included. To retrieve
    #          the entities, use the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html">DescribeAffectedEntities</a> operation.</p>
    #          <p>If a specified event can't be retrieved, an error message is returned for that
    #          event.</p>
    #          <note>
    #             <p>This operation supports resource-level permissions. You can use this operation to allow or deny access to specific Health events. For more
    #                   information, see <a href="https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions">Resource- and action-based conditions</a> in the <i>Health User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventDetailsInput}.
    #
    # @option params [Array<String>] :event_arns
    #   <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"</code>
    #            </p>
    #
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    # @return [Types::DescribeEventDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_details(
    #     event_arns: [
    #       'member'
    #     ], # required
    #     locale: 'locale'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventDetailsOutput
    #   resp.data.successful_set #=> Array<EventDetails>
    #   resp.data.successful_set[0] #=> Types::EventDetails
    #   resp.data.successful_set[0].event #=> Types::Event
    #   resp.data.successful_set[0].event.arn #=> String
    #   resp.data.successful_set[0].event.service #=> String
    #   resp.data.successful_set[0].event.event_type_code #=> String
    #   resp.data.successful_set[0].event.event_type_category #=> String, one of ["issue", "accountNotification", "scheduledChange", "investigation"]
    #   resp.data.successful_set[0].event.region #=> String
    #   resp.data.successful_set[0].event.availability_zone #=> String
    #   resp.data.successful_set[0].event.start_time #=> Time
    #   resp.data.successful_set[0].event.end_time #=> Time
    #   resp.data.successful_set[0].event.last_updated_time #=> Time
    #   resp.data.successful_set[0].event.status_code #=> String, one of ["open", "closed", "upcoming"]
    #   resp.data.successful_set[0].event.event_scope_code #=> String, one of ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #   resp.data.successful_set[0].event_description #=> Types::EventDescription
    #   resp.data.successful_set[0].event_description.latest_description #=> String
    #   resp.data.successful_set[0].event_metadata #=> Hash<String, String>
    #   resp.data.successful_set[0].event_metadata['key'] #=> String
    #   resp.data.failed_set #=> Array<EventDetailsErrorItem>
    #   resp.data.failed_set[0] #=> Types::EventDetailsErrorItem
    #   resp.data.failed_set[0].event_arn #=> String
    #   resp.data.failed_set[0].error_name #=> String
    #   resp.data.failed_set[0].error_message #=> String
    #
    def describe_event_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventDetails
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedLocale]),
        data_parser: Parsers::DescribeEventDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventDetails,
        stubs: @stubs,
        params_class: Params::DescribeEventDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about one or more specified events for one or more
    #          Amazon Web Services accounts in your organization. This information includes standard event data (such as
    #          the Amazon Web Services Region and service), an event description, and (depending on the event) possible
    #          metadata. This operation doesn't return affected entities, such as the resources related to
    #          the event. To return affected entities, use the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html">DescribeAffectedEntitiesForOrganization</a> operation.</p>
    #          <note>
    #             <p>Before you can call this operation, you must first enable Health to work with
    #             Organizations. To do this, call the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html">EnableHealthServiceAccessForOrganization</a> operation from your organization's
    #             management account.</p>
    #          </note>
    #          <p>When you call the <code>DescribeEventDetailsForOrganization</code> operation, specify
    #          the <code>organizationEventDetailFilters</code> object in the request. Depending on the
    #          Health event type, note the following differences:</p>
    #          <ul>
    #             <li>
    #                <p>To return event details for a public event, you must specify a null value for the
    #                   <code>awsAccountId</code> parameter. If you specify an account ID for a public
    #                event, Health returns an error message because public events aren't specific to
    #                an account.</p>
    #             </li>
    #             <li>
    #                <p>To return event details for an event that is specific to an account in your
    #                organization, you must specify the <code>awsAccountId</code> parameter in the
    #                request. If you don't specify an account ID, Health returns an error message
    #                because the event is specific to an account in your organization. </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html">Event</a>.</p>
    #
    #          <note>
    #             <p>This operation doesn't support resource-level permissions. You can't use this operation to allow or deny access to specific Health events. For more
    #                   information, see <a href="https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions">Resource- and action-based conditions</a> in the <i>Health User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventDetailsForOrganizationInput}.
    #
    # @option params [Array<EventAccountFilter>] :organization_event_detail_filters
    #   <p>A set of JSON elements that includes the <code>awsAccountId</code> and the
    #               <code>eventArn</code>.</p>
    #
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    # @return [Types::DescribeEventDetailsForOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_details_for_organization(
    #     organization_event_detail_filters: [
    #       {
    #         event_arn: 'eventArn', # required
    #         aws_account_id: 'awsAccountId'
    #       }
    #     ], # required
    #     locale: 'locale'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventDetailsForOrganizationOutput
    #   resp.data.successful_set #=> Array<OrganizationEventDetails>
    #   resp.data.successful_set[0] #=> Types::OrganizationEventDetails
    #   resp.data.successful_set[0].aws_account_id #=> String
    #   resp.data.successful_set[0].event #=> Types::Event
    #   resp.data.successful_set[0].event.arn #=> String
    #   resp.data.successful_set[0].event.service #=> String
    #   resp.data.successful_set[0].event.event_type_code #=> String
    #   resp.data.successful_set[0].event.event_type_category #=> String, one of ["issue", "accountNotification", "scheduledChange", "investigation"]
    #   resp.data.successful_set[0].event.region #=> String
    #   resp.data.successful_set[0].event.availability_zone #=> String
    #   resp.data.successful_set[0].event.start_time #=> Time
    #   resp.data.successful_set[0].event.end_time #=> Time
    #   resp.data.successful_set[0].event.last_updated_time #=> Time
    #   resp.data.successful_set[0].event.status_code #=> String, one of ["open", "closed", "upcoming"]
    #   resp.data.successful_set[0].event.event_scope_code #=> String, one of ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #   resp.data.successful_set[0].event_description #=> Types::EventDescription
    #   resp.data.successful_set[0].event_description.latest_description #=> String
    #   resp.data.successful_set[0].event_metadata #=> Hash<String, String>
    #   resp.data.successful_set[0].event_metadata['key'] #=> String
    #   resp.data.failed_set #=> Array<OrganizationEventDetailsErrorItem>
    #   resp.data.failed_set[0] #=> Types::OrganizationEventDetailsErrorItem
    #   resp.data.failed_set[0].aws_account_id #=> String
    #   resp.data.failed_set[0].event_arn #=> String
    #   resp.data.failed_set[0].error_name #=> String
    #   resp.data.failed_set[0].error_message #=> String
    #
    def describe_event_details_for_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventDetailsForOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventDetailsForOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventDetailsForOrganization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedLocale]),
        data_parser: Parsers::DescribeEventDetailsForOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventDetailsForOrganization,
        stubs: @stubs,
        params_class: Params::DescribeEventDetailsForOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_details_for_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the event types that meet the specified filter criteria. You can use this API
    #          operation to find information about the Health event, such as the category, Amazon Web Services
    #          service, and event code. The metadata for each event appears in the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EventType.html">EventType</a> object. </p>
    #          <p>If you don't specify a filter criteria, the API operation returns all event types, in no
    #          particular order. </p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventTypesInput}.
    #
    # @option params [EventTypeFilter] :filter
    #   <p>Values to narrow the results returned.</p>
    #
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    # @return [Types::DescribeEventTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_types(
    #     filter: {
    #       event_type_codes: [
    #         'member'
    #       ],
    #       services: [
    #         'member'
    #       ],
    #       event_type_categories: [
    #         'issue' # accepts ["issue", "accountNotification", "scheduledChange", "investigation"]
    #       ]
    #     },
    #     locale: 'locale',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventTypesOutput
    #   resp.data.event_types #=> Array<EventType>
    #   resp.data.event_types[0] #=> Types::EventType
    #   resp.data.event_types[0].service #=> String
    #   resp.data.event_types[0].code #=> String
    #   resp.data.event_types[0].category #=> String, one of ["issue", "accountNotification", "scheduledChange", "investigation"]
    #   resp.data.next_token #=> String
    #
    def describe_event_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedLocale, Errors::InvalidPaginationToken]),
        data_parser: Parsers::DescribeEventTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventTypes,
        stubs: @stubs,
        params_class: Params::DescribeEventTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns information about events that meet the specified filter criteria. Events are
    #          returned in a summary form and do not include the detailed description, any additional
    #          metadata that depends on the event type, or any affected resources. To retrieve that
    #          information, use the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html">DescribeEventDetails</a> and <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html">DescribeAffectedEntities</a> operations.</p>
    #          <p>If no filter criteria are specified, all events are returned. Results are sorted by
    #             <code>lastModifiedTime</code>, starting with the most recent event.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>When you call the <code>DescribeEvents</code> operation and specify an entity
    #                   for the <code>entityValues</code> parameter, Health might return public
    #                   events that aren't specific to that resource. For example, if you call
    #                      <code>DescribeEvents</code> and specify an ID for an Amazon Elastic Compute Cloud (Amazon EC2)
    #                   instance, Health might return events that aren't specific to that resource or
    #                   service. To get events that are specific to a service, use the
    #                      <code>services</code> parameter in the <code>filter</code> object. For more
    #                   information, see <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html">Event</a>.</p>
    #                </li>
    #                <li>
    #                   <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsInput}.
    #
    # @option params [EventFilter] :filter
    #   <p>Values to narrow the results returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    # @return [Types::DescribeEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events(
    #     filter: {
    #       event_arns: [
    #         'member'
    #       ],
    #       event_type_codes: [
    #         'member'
    #       ],
    #       services: [
    #         'member'
    #       ],
    #       regions: [
    #         'member'
    #       ],
    #       availability_zones: [
    #         'member'
    #       ],
    #       start_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now
    #         }
    #       ],
    #       entity_arns: [
    #         'member'
    #       ],
    #       entity_values: [
    #         'member'
    #       ],
    #       event_type_categories: [
    #         'issue' # accepts ["issue", "accountNotification", "scheduledChange", "investigation"]
    #       ],
    #       tags: [
    #         {
    #           'key' => 'value'
    #         }
    #       ],
    #       event_status_codes: [
    #         'open' # accepts ["open", "closed", "upcoming"]
    #       ]
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     locale: 'locale'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventsOutput
    #   resp.data.events #=> Array<Event>
    #   resp.data.events[0] #=> Types::Event
    #   resp.data.events[0].arn #=> String
    #   resp.data.events[0].service #=> String
    #   resp.data.events[0].event_type_code #=> String
    #   resp.data.events[0].event_type_category #=> String, one of ["issue", "accountNotification", "scheduledChange", "investigation"]
    #   resp.data.events[0].region #=> String
    #   resp.data.events[0].availability_zone #=> String
    #   resp.data.events[0].start_time #=> Time
    #   resp.data.events[0].end_time #=> Time
    #   resp.data.events[0].last_updated_time #=> Time
    #   resp.data.events[0].status_code #=> String, one of ["open", "closed", "upcoming"]
    #   resp.data.events[0].event_scope_code #=> String, one of ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #   resp.data.next_token #=> String
    #
    def describe_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedLocale, Errors::InvalidPaginationToken]),
        data_parser: Parsers::DescribeEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEvents,
        stubs: @stubs,
        params_class: Params::DescribeEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about events across your organization in Organizations. You can use
    #             the<code>filters</code> parameter to specify the events that you want to return. Events
    #          are returned in a summary form and don't include the affected accounts, detailed
    #          description, any additional metadata that depends on the event type, or any affected
    #          resources. To retrieve that information, use the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedAccountsForOrganization.html">DescribeAffectedAccountsForOrganization</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html">DescribeEventDetailsForOrganization</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html">DescribeAffectedEntitiesForOrganization</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>If you don't specify a <code>filter</code>, the
    #             <code>DescribeEventsForOrganizations</code> returns all events across your organization.
    #          Results are sorted by <code>lastModifiedTime</code>, starting with the most recent event. </p>
    #          <p>For more information about the different types of Health events, see <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html">Event</a>.</p>
    #          <p>Before you can call this operation, you must first enable Health to work with
    #          Organizations. To do this, call the <a href="https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html">EnableHealthServiceAccessForOrganization</a> operation from your organization's
    #          management account.</p>
    #          <note>
    #             <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsForOrganizationInput}.
    #
    # @option params [OrganizationEventFilter] :filter
    #   <p>Values to narrow the results returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the results of a search are large, only a portion of the
    #   results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
    #   retrieve the next batch of results, reissue the search request and include the returned token.
    #   When all results have been returned, the response does not contain a pagination token value.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
    #
    # @option params [String] :locale
    #   <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
    #
    # @return [Types::DescribeEventsForOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events_for_organization(
    #     filter: {
    #       event_type_codes: [
    #         'member'
    #       ],
    #       aws_account_ids: [
    #         'member'
    #       ],
    #       services: [
    #         'member'
    #       ],
    #       regions: [
    #         'member'
    #       ],
    #       start_time: {
    #         from: Time.now,
    #         to: Time.now
    #       },
    #       entity_arns: [
    #         'member'
    #       ],
    #       entity_values: [
    #         'member'
    #       ],
    #       event_type_categories: [
    #         'issue' # accepts ["issue", "accountNotification", "scheduledChange", "investigation"]
    #       ],
    #       event_status_codes: [
    #         'open' # accepts ["open", "closed", "upcoming"]
    #       ]
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     locale: 'locale'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventsForOrganizationOutput
    #   resp.data.events #=> Array<OrganizationEvent>
    #   resp.data.events[0] #=> Types::OrganizationEvent
    #   resp.data.events[0].arn #=> String
    #   resp.data.events[0].service #=> String
    #   resp.data.events[0].event_type_code #=> String
    #   resp.data.events[0].event_type_category #=> String, one of ["issue", "accountNotification", "scheduledChange", "investigation"]
    #   resp.data.events[0].event_scope_code #=> String, one of ["PUBLIC", "ACCOUNT_SPECIFIC", "NONE"]
    #   resp.data.events[0].region #=> String
    #   resp.data.events[0].start_time #=> Time
    #   resp.data.events[0].end_time #=> Time
    #   resp.data.events[0].last_updated_time #=> Time
    #   resp.data.events[0].status_code #=> String, one of ["open", "closed", "upcoming"]
    #   resp.data.next_token #=> String
    #
    def describe_events_for_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventsForOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventsForOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventsForOrganization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedLocale, Errors::InvalidPaginationToken]),
        data_parser: Parsers::DescribeEventsForOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventsForOrganization,
        stubs: @stubs,
        params_class: Params::DescribeEventsForOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_events_for_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation provides status information on enabling or disabling Health to work
    #          with your organization. To call this operation, you must sign in as an IAM user, assume
    #          an IAM role, or sign in as the root user (not recommended) in the organization's
    #          management account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeHealthServiceStatusForOrganizationInput}.
    #
    # @return [Types::DescribeHealthServiceStatusForOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_health_service_status_for_organization()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHealthServiceStatusForOrganizationOutput
    #   resp.data.health_service_access_status_for_organization #=> String
    #
    def describe_health_service_status_for_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHealthServiceStatusForOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHealthServiceStatusForOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHealthServiceStatusForOrganization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeHealthServiceStatusForOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHealthServiceStatusForOrganization,
        stubs: @stubs,
        params_class: Params::DescribeHealthServiceStatusForOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_health_service_status_for_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables Health from working with Organizations. To call this operation, you must sign
    #          in as an Identity and Access Management (IAM) user, assume an IAM role, or sign in as the root user (not
    #          recommended) in the organization's management account. For more information, see <a href="https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html">Aggregating
    #             Health events</a> in the <i>Health User Guide</i>.</p>
    #          <p>This operation doesn't remove the service-linked role from the management account in your
    #          organization. You must use the IAM console, API, or Command Line Interface (CLI) to remove the
    #          service-linked role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html#delete-service-linked-role">Deleting a Service-Linked Role</a> in the
    #          <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>You can also disable the organizational feature by using the Organizations <a href="https://docs.aws.amazon.com/organizations/latest/APIReference/API_DisableAWSServiceAccess.html">DisableAWSServiceAccess</a> API operation. After you call this operation,
    #             Health stops aggregating events for all other Amazon Web Services accounts in your organization.
    #             If you call the Health API operations for organizational view, Health returns
    #             an error. Health continues to aggregate health events for your
    #             Amazon Web Services account.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DisableHealthServiceAccessForOrganizationInput}.
    #
    # @return [Types::DisableHealthServiceAccessForOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_health_service_access_for_organization()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableHealthServiceAccessForOrganizationOutput
    #
    def disable_health_service_access_for_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableHealthServiceAccessForOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableHealthServiceAccessForOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableHealthServiceAccessForOrganization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException]),
        data_parser: Parsers::DisableHealthServiceAccessForOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableHealthServiceAccessForOrganization,
        stubs: @stubs,
        params_class: Params::DisableHealthServiceAccessForOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_health_service_access_for_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables Health to work with Organizations. You can use the organizational view feature
    #          to aggregate events from all Amazon Web Services accounts in your organization in a centralized location. </p>
    #          <p>This operation also creates a service-linked role for the management account in the
    #          organization. </p>
    #          <note>
    #             <p>To call this operation, you must meet the following requirements:</p>
    #             <ul>
    #                <li>
    #                   <p>You must have a Business, Enterprise On-Ramp, or Enterprise Support plan from <a href="http://aws.amazon.com/premiumsupport/">Amazon Web Services Support</a> to use the Health
    #                   API. If you call the Health API from an Amazon Web Services account that doesn't have a
    #                   Business, Enterprise On-Ramp, or Enterprise Support plan, you receive a
    #                      <code>SubscriptionRequiredException</code> error.</p>
    #                </li>
    #                <li>
    #                   <p>You must have permission to call this operation from the organization's
    #                   management account. For example IAM policies, see <a href="https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html">Health
    #                      identity-based policy examples</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>If you don't have the required support plan, you can instead use the Health console
    #          to enable the organizational view feature. For more information, see <a href="https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html">Aggregating
    #             Health events</a> in the <i>Health User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableHealthServiceAccessForOrganizationInput}.
    #
    # @return [Types::EnableHealthServiceAccessForOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_health_service_access_for_organization()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableHealthServiceAccessForOrganizationOutput
    #
    def enable_health_service_access_for_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableHealthServiceAccessForOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableHealthServiceAccessForOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableHealthServiceAccessForOrganization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException]),
        data_parser: Parsers::EnableHealthServiceAccessForOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableHealthServiceAccessForOrganization,
        stubs: @stubs,
        params_class: Params::EnableHealthServiceAccessForOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_health_service_access_for_organization
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
