# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MarketplaceCatalog
  # An API client for AWSMPSeymour
  # See {#initialize} for a full list of supported configuration options
  # <p>Catalog API actions allow you to manage your entities through list, describe, and update
  #             capabilities. An entity can be a product or an offer on AWS Marketplace. </p>
  #
  #         <p>You can automate your entity update process by integrating the AWS Marketplace Catalog
  #             API with your AWS Marketplace product build or deployment pipelines. You can also create
  #             your own applications on top of the Catalog API to manage your products on AWS
  #             Marketplace.</p>
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
    def initialize(config = AWS::SDK::MarketplaceCatalog::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Used to cancel an open change request. Must be sent before the status of the request
    #             changes to <code>APPLYING</code>, the final stage of completing your change request. You
    #             can describe a change during the 60-day request history retention period for API
    #             calls.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelChangeSetInput}.
    #
    # @option params [String] :catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>.</p>
    #
    # @option params [String] :change_set_id
    #   <p>Required. The unique identifier of the <code>StartChangeSet</code> request that you
    #               want to cancel.</p>
    #
    # @return [Types::CancelChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_change_set(
    #     catalog: 'Catalog', # required
    #     change_set_id: 'ChangeSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelChangeSetOutput
    #   resp.data.change_set_id #=> String
    #   resp.data.change_set_arn #=> String
    #
    def cancel_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelChangeSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelChangeSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceInUseException]),
        data_parser: Parsers::CancelChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelChangeSet,
        stubs: @stubs,
        params_class: Params::CancelChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_change_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about a given change set.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeChangeSetInput}.
    #
    # @option params [String] :catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>
    #            </p>
    #
    # @option params [String] :change_set_id
    #   <p>Required. The unique identifier for the <code>StartChangeSet</code> request that you
    #               want to describe the details for.</p>
    #
    # @return [Types::DescribeChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_change_set(
    #     catalog: 'Catalog', # required
    #     change_set_id: 'ChangeSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChangeSetOutput
    #   resp.data.change_set_id #=> String
    #   resp.data.change_set_arn #=> String
    #   resp.data.change_set_name #=> String
    #   resp.data.start_time #=> String
    #   resp.data.end_time #=> String
    #   resp.data.status #=> String, one of ["PREPARING", "APPLYING", "SUCCEEDED", "CANCELLED", "FAILED"]
    #   resp.data.failure_code #=> String, one of ["CLIENT_ERROR", "SERVER_FAULT"]
    #   resp.data.failure_description #=> String
    #   resp.data.change_set #=> Array<ChangeSummary>
    #   resp.data.change_set[0] #=> Types::ChangeSummary
    #   resp.data.change_set[0].change_type #=> String
    #   resp.data.change_set[0].entity #=> Types::Entity
    #   resp.data.change_set[0].entity.type #=> String
    #   resp.data.change_set[0].entity.identifier #=> String
    #   resp.data.change_set[0].details #=> String
    #   resp.data.change_set[0].error_detail_list #=> Array<ErrorDetail>
    #   resp.data.change_set[0].error_detail_list[0] #=> Types::ErrorDetail
    #   resp.data.change_set[0].error_detail_list[0].error_code #=> String
    #   resp.data.change_set[0].error_detail_list[0].error_message #=> String
    #   resp.data.change_set[0].change_name #=> String
    #
    def describe_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChangeSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChangeSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChangeSet,
        stubs: @stubs,
        params_class: Params::DescribeChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_change_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the metadata and content of the entity.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEntityInput}.
    #
    # @option params [String] :catalog
    #   <p>Required. The catalog related to the request. Fixed value:
    #               <code>AWSMarketplace</code>
    #            </p>
    #
    # @option params [String] :entity_id
    #   <p>Required. The unique ID of the entity to describe.</p>
    #
    # @return [Types::DescribeEntityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entity(
    #     catalog: 'Catalog', # required
    #     entity_id: 'EntityId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEntityOutput
    #   resp.data.entity_type #=> String
    #   resp.data.entity_identifier #=> String
    #   resp.data.entity_arn #=> String
    #   resp.data.last_modified_date #=> String
    #   resp.data.details #=> String
    #
    def describe_entity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEntityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEntityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEntity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotSupportedException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeEntity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEntity,
        stubs: @stubs,
        params_class: Params::DescribeEntityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_entity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of change sets owned by the account being used to make the call. You
    #             can filter this list by providing any combination of <code>entityId</code>,
    #                 <code>ChangeSetName</code>, and status. If you provide more than one filter, the API
    #             operation applies a logical AND between the filters.</p>
    #
    #         <p>You can describe a change during the 60-day request history retention period for API
    #             calls.</p>
    #
    # @param [Hash] params
    #   See {Types::ListChangeSetsInput}.
    #
    # @option params [String] :catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #
    # @option params [Array<Filter>] :filter_list
    #   <p>An array of filter objects.</p>
    #
    # @option params [Sort] :sort
    #   <p>An object that contains two attributes, <code>SortBy</code> and
    #               <code>SortOrder</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call. This value must be provided
    #               in the next call to retrieve the next set of results. By default, this value is
    #               20.</p>
    #
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #               results.</p>
    #
    # @return [Types::ListChangeSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_change_sets(
    #     catalog: 'Catalog', # required
    #     filter_list: [
    #       {
    #         name: 'Name',
    #         value_list: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     sort: {
    #       sort_by: 'SortBy',
    #       sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChangeSetsOutput
    #   resp.data.change_set_summary_list #=> Array<ChangeSetSummaryListItem>
    #   resp.data.change_set_summary_list[0] #=> Types::ChangeSetSummaryListItem
    #   resp.data.change_set_summary_list[0].change_set_id #=> String
    #   resp.data.change_set_summary_list[0].change_set_arn #=> String
    #   resp.data.change_set_summary_list[0].change_set_name #=> String
    #   resp.data.change_set_summary_list[0].start_time #=> String
    #   resp.data.change_set_summary_list[0].end_time #=> String
    #   resp.data.change_set_summary_list[0].status #=> String, one of ["PREPARING", "APPLYING", "SUCCEEDED", "CANCELLED", "FAILED"]
    #   resp.data.change_set_summary_list[0].entity_id_list #=> Array<String>
    #   resp.data.change_set_summary_list[0].entity_id_list[0] #=> String
    #   resp.data.change_set_summary_list[0].failure_code #=> String, one of ["CLIENT_ERROR", "SERVER_FAULT"]
    #   resp.data.next_token #=> String
    #
    def list_change_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChangeSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChangeSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChangeSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServiceException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListChangeSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChangeSets,
        stubs: @stubs,
        params_class: Params::ListChangeSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_change_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides the list of entities of a given type.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEntitiesInput}.
    #
    # @option params [String] :catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #
    # @option params [String] :entity_type
    #   <p>The type of entities to retrieve.</p>
    #
    # @option params [Array<Filter>] :filter_list
    #   <p>An array of filter objects. Each filter object contains two attributes,
    #                   <code>filterName</code> and <code>filterValues</code>.</p>
    #
    # @option params [Sort] :sort
    #   <p>An object that contains two attributes, <code>SortBy</code> and
    #               <code>SortOrder</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The value of the next token, if it exists. Null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the upper limit of the elements on a single page. If a value isn't provided,
    #               the default value is 20.</p>
    #
    # @return [Types::ListEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities(
    #     catalog: 'Catalog', # required
    #     entity_type: 'EntityType', # required
    #     filter_list: [
    #       {
    #         name: 'Name',
    #         value_list: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     sort: {
    #       sort_by: 'SortBy',
    #       sort_order: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEntitiesOutput
    #   resp.data.entity_summary_list #=> Array<EntitySummary>
    #   resp.data.entity_summary_list[0] #=> Types::EntitySummary
    #   resp.data.entity_summary_list[0].name #=> String
    #   resp.data.entity_summary_list[0].entity_type #=> String
    #   resp.data.entity_summary_list[0].entity_id #=> String
    #   resp.data.entity_summary_list[0].entity_arn #=> String
    #   resp.data.entity_summary_list[0].last_modified_date #=> String
    #   resp.data.entity_summary_list[0].visibility #=> String
    #   resp.data.next_token #=> String
    #
    def list_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEntities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEntities,
        stubs: @stubs,
        params_class: Params::ListEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation allows you to request changes for your entities. Within a single
    #             ChangeSet, you cannot start the same change type against the same entity multiple times.
    #             Additionally, when a ChangeSet is running, all the entities targeted by the different
    #             changes are locked until the ChangeSet has completed (either succeeded, cancelled, or failed). If
    #             you try to start a ChangeSet containing a change against an entity that is already
    #             locked, you will receive a <code>ResourceInUseException</code>.</p>
    #
    #         <p>For example, you cannot start the ChangeSet described in the <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples">example</a> later in this topic, because it contains two changes to execute the same change
    #             type (<code>AddRevisions</code>) against the same entity
    #             (<code>entity-id@1)</code>.</p>
    #
    #         <p>For more information about working with change sets, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets">
    #             Working with change sets</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartChangeSetInput}.
    #
    # @option params [String] :catalog
    #   <p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
    #            </p>
    #
    # @option params [Array<Change>] :change_set
    #   <p>Array of <code>change</code> object.</p>
    #
    # @option params [String] :change_set_name
    #   <p>Optional case sensitive string of up to 100 ASCII characters. The change set name can
    #               be used to filter the list of change sets. </p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique token to identify the request to ensure idempotency.</p>
    #
    # @return [Types::StartChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_change_set(
    #     catalog: 'Catalog', # required
    #     change_set: [
    #       {
    #         change_type: 'ChangeType', # required
    #         entity: {
    #           type: 'Type', # required
    #           identifier: 'Identifier'
    #         }, # required
    #         details: 'Details', # required
    #         change_name: 'ChangeName'
    #       }
    #     ], # required
    #     change_set_name: 'ChangeSetName',
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartChangeSetOutput
    #   resp.data.change_set_id #=> String
    #   resp.data.change_set_arn #=> String
    #
    def start_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartChangeSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartChangeSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServiceException, Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceInUseException]),
        data_parser: Parsers::StartChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartChangeSet,
        stubs: @stubs,
        params_class: Params::StartChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_change_set
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
