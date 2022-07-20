# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoTSiteWise
  # An API client for AWSIoTSiteWise
  # See {#initialize} for a full list of supported configuration options
  # <p>Welcome to the IoT SiteWise API Reference. IoT SiteWise is an Amazon Web Services service that connects <a href="https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications">Industrial Internet of Things (IIoT)</a> devices to the power of the Amazon Web Services Cloud. For more information, see the
  #       <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/">IoT SiteWise User Guide</a>. For information about IoT SiteWise quotas, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
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
    def initialize(config = AWS::SDK::IoTSiteWise::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a child asset with the given parent asset through a hierarchy defined in the
    #       parent asset's model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html">Associating assets</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateAssetsInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the parent asset.</p>
    #
    # @option params [String] :hierarchy_id
    #   <p>The ID of a hierarchy in the parent asset's model. Hierarchies allow different groupings
    #         of assets to be formed that all come from the same asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [String] :child_asset_id
    #   <p>The ID of the child asset to be associated.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::AssociateAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_assets(
    #     asset_id: 'assetId', # required
    #     hierarchy_id: 'hierarchyId', # required
    #     child_asset_id: 'childAssetId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateAssetsOutput
    #
    def associate_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateAssetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateAssets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::AssociateAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateAssets,
        stubs: @stubs,
        params_class: Params::AssociateAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a time series (data stream) with an asset property.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateTimeSeriesToAssetPropertyInput}.
    #
    # @option params [String] :alias
    #   <p>The alias that identifies the time series.</p>
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    # @option params [String] :property_id
    #   <p>The ID of the asset property.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::AssociateTimeSeriesToAssetPropertyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_time_series_to_asset_property(
    #     alias: 'alias', # required
    #     asset_id: 'assetId', # required
    #     property_id: 'propertyId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateTimeSeriesToAssetPropertyOutput
    #
    def associate_time_series_to_asset_property(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateTimeSeriesToAssetPropertyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateTimeSeriesToAssetPropertyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateTimeSeriesToAssetProperty
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::AssociateTimeSeriesToAssetProperty
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateTimeSeriesToAssetProperty,
        stubs: @stubs,
        params_class: Params::AssociateTimeSeriesToAssetPropertyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_time_series_to_asset_property
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a group (batch) of assets with an IoT SiteWise Monitor project.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchAssociateProjectAssetsInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project to which to associate the assets.</p>
    #
    # @option params [Array<String>] :asset_ids
    #   <p>The IDs of the assets to be associated to the project.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::BatchAssociateProjectAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_project_assets(
    #     project_id: 'projectId', # required
    #     asset_ids: [
    #       'member'
    #     ], # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchAssociateProjectAssetsOutput
    #   resp.data.errors #=> Array<AssetErrorDetails>
    #   resp.data.errors[0] #=> Types::AssetErrorDetails
    #   resp.data.errors[0].asset_id #=> String
    #   resp.data.errors[0].code #=> String, one of ["INTERNAL_FAILURE"]
    #   resp.data.errors[0].message #=> String
    #
    def batch_associate_project_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchAssociateProjectAssetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchAssociateProjectAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchAssociateProjectAssets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchAssociateProjectAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchAssociateProjectAssets,
        stubs: @stubs,
        params_class: Params::BatchAssociateProjectAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_associate_project_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a group (batch) of assets from an IoT SiteWise Monitor project.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDisassociateProjectAssetsInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project from which to disassociate the assets.</p>
    #
    # @option params [Array<String>] :asset_ids
    #   <p>The IDs of the assets to be disassociated from the project.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::BatchDisassociateProjectAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_project_assets(
    #     project_id: 'projectId', # required
    #     asset_ids: [
    #       'member'
    #     ], # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDisassociateProjectAssetsOutput
    #   resp.data.errors #=> Array<AssetErrorDetails>
    #   resp.data.errors[0] #=> Types::AssetErrorDetails
    #   resp.data.errors[0].asset_id #=> String
    #   resp.data.errors[0].code #=> String, one of ["INTERNAL_FAILURE"]
    #   resp.data.errors[0].message #=> String
    #
    def batch_disassociate_project_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDisassociateProjectAssetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDisassociateProjectAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDisassociateProjectAssets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchDisassociateProjectAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDisassociateProjectAssets,
        stubs: @stubs,
        params_class: Params::BatchDisassociateProjectAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_disassociate_project_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets aggregated values (for example, average, minimum, and maximum) for one or more asset properties.
    #     For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates">Querying
    #     aggregates</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetAssetPropertyAggregatesInput}.
    #
    # @option params [Array<BatchGetAssetPropertyAggregatesEntry>] :entries
    #   <p>The list of asset property aggregate entries for the batch get request.
    #     You can specify up to 16 entries per request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is less than 1 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is less than the value of <code>maxResults</code>.
    #           The maximum value of <code>maxResults</code> is 4000.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::BatchGetAssetPropertyAggregatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_asset_property_aggregates(
    #     entries: [
    #       {
    #         entry_id: 'entryId', # required
    #         asset_id: 'assetId',
    #         property_id: 'propertyId',
    #         property_alias: 'propertyAlias',
    #         aggregate_types: [
    #           'AVERAGE' # accepts ["AVERAGE", "COUNT", "MAXIMUM", "MINIMUM", "SUM", "STANDARD_DEVIATION"]
    #         ], # required
    #         resolution: 'resolution', # required
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #         qualities: [
    #           'GOOD' # accepts ["GOOD", "BAD", "UNCERTAIN"]
    #         ],
    #         time_ordering: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #       }
    #     ], # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetAssetPropertyAggregatesOutput
    #   resp.data.error_entries #=> Array<BatchGetAssetPropertyAggregatesErrorEntry>
    #   resp.data.error_entries[0] #=> Types::BatchGetAssetPropertyAggregatesErrorEntry
    #   resp.data.error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #   resp.data.error_entries[0].error_message #=> String
    #   resp.data.error_entries[0].entry_id #=> String
    #   resp.data.success_entries #=> Array<BatchGetAssetPropertyAggregatesSuccessEntry>
    #   resp.data.success_entries[0] #=> Types::BatchGetAssetPropertyAggregatesSuccessEntry
    #   resp.data.success_entries[0].entry_id #=> String
    #   resp.data.success_entries[0].aggregated_values #=> Array<AggregatedValue>
    #   resp.data.success_entries[0].aggregated_values[0] #=> Types::AggregatedValue
    #   resp.data.success_entries[0].aggregated_values[0].timestamp #=> Time
    #   resp.data.success_entries[0].aggregated_values[0].quality #=> String, one of ["GOOD", "BAD", "UNCERTAIN"]
    #   resp.data.success_entries[0].aggregated_values[0].value #=> Types::Aggregates
    #   resp.data.success_entries[0].aggregated_values[0].value.average #=> Float
    #   resp.data.success_entries[0].aggregated_values[0].value.count #=> Float
    #   resp.data.success_entries[0].aggregated_values[0].value.maximum #=> Float
    #   resp.data.success_entries[0].aggregated_values[0].value.minimum #=> Float
    #   resp.data.success_entries[0].aggregated_values[0].value.sum #=> Float
    #   resp.data.success_entries[0].aggregated_values[0].value.standard_deviation #=> Float
    #   resp.data.skipped_entries #=> Array<BatchGetAssetPropertyAggregatesSkippedEntry>
    #   resp.data.skipped_entries[0] #=> Types::BatchGetAssetPropertyAggregatesSkippedEntry
    #   resp.data.skipped_entries[0].entry_id #=> String
    #   resp.data.skipped_entries[0].completion_status #=> String, one of ["SUCCESS", "ERROR"]
    #   resp.data.skipped_entries[0].error_info #=> Types::BatchGetAssetPropertyAggregatesErrorInfo
    #   resp.data.skipped_entries[0].error_info.error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #   resp.data.skipped_entries[0].error_info.error_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def batch_get_asset_property_aggregates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetAssetPropertyAggregatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetAssetPropertyAggregatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetAssetPropertyAggregates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchGetAssetPropertyAggregates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetAssetPropertyAggregates,
        stubs: @stubs,
        params_class: Params::BatchGetAssetPropertyAggregatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_asset_property_aggregates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the current value for one or more asset properties. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values">Querying
    #     current values</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetAssetPropertyValueInput}.
    #
    # @option params [Array<BatchGetAssetPropertyValueEntry>] :entries
    #   <p>The list of asset property value entries for the batch get request.
    #       You can specify up to 16 entries per request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @return [Types::BatchGetAssetPropertyValueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_asset_property_value(
    #     entries: [
    #       {
    #         entry_id: 'entryId', # required
    #         asset_id: 'assetId',
    #         property_id: 'propertyId',
    #         property_alias: 'propertyAlias'
    #       }
    #     ], # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetAssetPropertyValueOutput
    #   resp.data.error_entries #=> Array<BatchGetAssetPropertyValueErrorEntry>
    #   resp.data.error_entries[0] #=> Types::BatchGetAssetPropertyValueErrorEntry
    #   resp.data.error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #   resp.data.error_entries[0].error_message #=> String
    #   resp.data.error_entries[0].entry_id #=> String
    #   resp.data.success_entries #=> Array<BatchGetAssetPropertyValueSuccessEntry>
    #   resp.data.success_entries[0] #=> Types::BatchGetAssetPropertyValueSuccessEntry
    #   resp.data.success_entries[0].entry_id #=> String
    #   resp.data.success_entries[0].asset_property_value #=> Types::AssetPropertyValue
    #   resp.data.success_entries[0].asset_property_value.value #=> Types::Variant
    #   resp.data.success_entries[0].asset_property_value.value.string_value #=> String
    #   resp.data.success_entries[0].asset_property_value.value.integer_value #=> Integer
    #   resp.data.success_entries[0].asset_property_value.value.double_value #=> Float
    #   resp.data.success_entries[0].asset_property_value.value.boolean_value #=> Boolean
    #   resp.data.success_entries[0].asset_property_value.timestamp #=> Types::TimeInNanos
    #   resp.data.success_entries[0].asset_property_value.timestamp.time_in_seconds #=> Integer
    #   resp.data.success_entries[0].asset_property_value.timestamp.offset_in_nanos #=> Integer
    #   resp.data.success_entries[0].asset_property_value.quality #=> String, one of ["GOOD", "BAD", "UNCERTAIN"]
    #   resp.data.skipped_entries #=> Array<BatchGetAssetPropertyValueSkippedEntry>
    #   resp.data.skipped_entries[0] #=> Types::BatchGetAssetPropertyValueSkippedEntry
    #   resp.data.skipped_entries[0].entry_id #=> String
    #   resp.data.skipped_entries[0].completion_status #=> String, one of ["SUCCESS", "ERROR"]
    #   resp.data.skipped_entries[0].error_info #=> Types::BatchGetAssetPropertyValueErrorInfo
    #   resp.data.skipped_entries[0].error_info.error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #   resp.data.skipped_entries[0].error_info.error_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def batch_get_asset_property_value(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetAssetPropertyValueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetAssetPropertyValueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetAssetPropertyValue
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchGetAssetPropertyValue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetAssetPropertyValue,
        stubs: @stubs,
        params_class: Params::BatchGetAssetPropertyValueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_asset_property_value
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the historical values for one or more asset properties. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values">Querying
    #     historical values</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetAssetPropertyValueHistoryInput}.
    #
    # @option params [Array<BatchGetAssetPropertyValueHistoryEntry>] :entries
    #   <p>The list of asset property historical value entries for the batch get request.
    #       You can specify up to 16 entries per request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is less than 1 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is less than the value of <code>maxResults</code>.
    #           The maximum value of <code>maxResults</code> is 4000.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::BatchGetAssetPropertyValueHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_asset_property_value_history(
    #     entries: [
    #       {
    #         entry_id: 'entryId', # required
    #         asset_id: 'assetId',
    #         property_id: 'propertyId',
    #         property_alias: 'propertyAlias',
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         qualities: [
    #           'GOOD' # accepts ["GOOD", "BAD", "UNCERTAIN"]
    #         ],
    #         time_ordering: 'ASCENDING' # accepts ["ASCENDING", "DESCENDING"]
    #       }
    #     ], # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetAssetPropertyValueHistoryOutput
    #   resp.data.error_entries #=> Array<BatchGetAssetPropertyValueHistoryErrorEntry>
    #   resp.data.error_entries[0] #=> Types::BatchGetAssetPropertyValueHistoryErrorEntry
    #   resp.data.error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #   resp.data.error_entries[0].error_message #=> String
    #   resp.data.error_entries[0].entry_id #=> String
    #   resp.data.success_entries #=> Array<BatchGetAssetPropertyValueHistorySuccessEntry>
    #   resp.data.success_entries[0] #=> Types::BatchGetAssetPropertyValueHistorySuccessEntry
    #   resp.data.success_entries[0].entry_id #=> String
    #   resp.data.success_entries[0].asset_property_value_history #=> Array<AssetPropertyValue>
    #   resp.data.success_entries[0].asset_property_value_history[0] #=> Types::AssetPropertyValue
    #   resp.data.success_entries[0].asset_property_value_history[0].value #=> Types::Variant
    #   resp.data.success_entries[0].asset_property_value_history[0].value.string_value #=> String
    #   resp.data.success_entries[0].asset_property_value_history[0].value.integer_value #=> Integer
    #   resp.data.success_entries[0].asset_property_value_history[0].value.double_value #=> Float
    #   resp.data.success_entries[0].asset_property_value_history[0].value.boolean_value #=> Boolean
    #   resp.data.success_entries[0].asset_property_value_history[0].timestamp #=> Types::TimeInNanos
    #   resp.data.success_entries[0].asset_property_value_history[0].timestamp.time_in_seconds #=> Integer
    #   resp.data.success_entries[0].asset_property_value_history[0].timestamp.offset_in_nanos #=> Integer
    #   resp.data.success_entries[0].asset_property_value_history[0].quality #=> String, one of ["GOOD", "BAD", "UNCERTAIN"]
    #   resp.data.skipped_entries #=> Array<BatchGetAssetPropertyValueHistorySkippedEntry>
    #   resp.data.skipped_entries[0] #=> Types::BatchGetAssetPropertyValueHistorySkippedEntry
    #   resp.data.skipped_entries[0].entry_id #=> String
    #   resp.data.skipped_entries[0].completion_status #=> String, one of ["SUCCESS", "ERROR"]
    #   resp.data.skipped_entries[0].error_info #=> Types::BatchGetAssetPropertyValueHistoryErrorInfo
    #   resp.data.skipped_entries[0].error_info.error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #   resp.data.skipped_entries[0].error_info.error_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def batch_get_asset_property_value_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetAssetPropertyValueHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetAssetPropertyValueHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetAssetPropertyValueHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchGetAssetPropertyValueHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetAssetPropertyValueHistory,
        stubs: @stubs,
        params_class: Params::BatchGetAssetPropertyValueHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_asset_property_value_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a list of asset property values to IoT SiteWise. Each value is a timestamp-quality-value
    #       (TQV) data point. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html">Ingesting data using the API</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>With respect to Unix epoch time, IoT SiteWise accepts only TQVs that have a timestamp of no more
    #         than 7 days in the past and no more than 10 minutes in the future. IoT SiteWise rejects timestamps
    #         outside of the inclusive range of [-7 days, +10 minutes] and returns a
    #           <code>TimestampOutOfRangeException</code> error.</p>
    #             <p>For each asset property, IoT SiteWise overwrites TQVs with duplicate timestamps unless the newer
    #         TQV has a different quality. For example, if you store a TQV <code>{T1, GOOD, V1}</code>,
    #         then storing <code>{T1, GOOD, V2}</code> replaces the existing TQV.</p>
    #          </important>
    #          <p>IoT SiteWise authorizes access to each <code>BatchPutAssetPropertyValue</code> entry individually.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action">BatchPutAssetPropertyValue authorization</a> in the
    #       <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchPutAssetPropertyValueInput}.
    #
    # @option params [Array<PutAssetPropertyValueEntry>] :entries
    #   <p>The list of asset property value entries for the batch put request. You can specify up to
    #         10 entries per request.</p>
    #
    # @return [Types::BatchPutAssetPropertyValueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_asset_property_value(
    #     entries: [
    #       {
    #         entry_id: 'entryId', # required
    #         asset_id: 'assetId',
    #         property_id: 'propertyId',
    #         property_alias: 'propertyAlias',
    #         property_values: [
    #           {
    #             value: {
    #               string_value: 'stringValue',
    #               integer_value: 1,
    #               double_value: 1.0,
    #               boolean_value: false
    #             }, # required
    #             timestamp: {
    #               time_in_seconds: 1, # required
    #               offset_in_nanos: 1
    #             }, # required
    #             quality: 'GOOD' # accepts ["GOOD", "BAD", "UNCERTAIN"]
    #           }
    #         ] # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchPutAssetPropertyValueOutput
    #   resp.data.error_entries #=> Array<BatchPutAssetPropertyErrorEntry>
    #   resp.data.error_entries[0] #=> Types::BatchPutAssetPropertyErrorEntry
    #   resp.data.error_entries[0].entry_id #=> String
    #   resp.data.error_entries[0].errors #=> Array<BatchPutAssetPropertyError>
    #   resp.data.error_entries[0].errors[0] #=> Types::BatchPutAssetPropertyError
    #   resp.data.error_entries[0].errors[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException", "LimitExceededException", "ConflictingOperationException", "TimestampOutOfRangeException", "AccessDeniedException"]
    #   resp.data.error_entries[0].errors[0].error_message #=> String
    #   resp.data.error_entries[0].errors[0].timestamps #=> Array<TimeInNanos>
    #   resp.data.error_entries[0].errors[0].timestamps[0] #=> Types::TimeInNanos
    #   resp.data.error_entries[0].errors[0].timestamps[0].time_in_seconds #=> Integer
    #   resp.data.error_entries[0].errors[0].timestamps[0].offset_in_nanos #=> Integer
    #
    def batch_put_asset_property_value(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchPutAssetPropertyValueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchPutAssetPropertyValueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchPutAssetPropertyValue
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchPutAssetPropertyValue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchPutAssetPropertyValue,
        stubs: @stubs,
        params_class: Params::BatchPutAssetPropertyValueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_put_asset_property_value
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an access policy that grants the specified identity (Amazon Web Services SSO user, Amazon Web Services SSO group, or
    #       IAM user) access to the specified IoT SiteWise Monitor portal or project resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAccessPolicyInput}.
    #
    # @option params [Identity] :access_policy_identity
    #   <p>The identity for this access policy. Choose an Amazon Web Services SSO user, an Amazon Web Services SSO group, or an IAM user.</p>
    #
    # @option params [Resource] :access_policy_resource
    #   <p>The IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>
    #
    # @option params [String] :access_policy_permission
    #   <p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the access policy. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your
    #           IoT SiteWise resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @return [Types::CreateAccessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_policy(
    #     access_policy_identity: {
    #       user: {
    #         id: 'id' # required
    #       },
    #       group: {
    #         id: 'id' # required
    #       },
    #       iam_user: {
    #         arn: 'arn' # required
    #       },
    #       iam_role: {
    #         arn: 'arn' # required
    #       }
    #     }, # required
    #     access_policy_resource: {
    #       portal: {
    #         id: 'id' # required
    #       },
    #       project: {
    #         id: 'id' # required
    #       }
    #     }, # required
    #     access_policy_permission: 'ADMINISTRATOR', # required - accepts ["ADMINISTRATOR", "VIEWER"]
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAccessPolicyOutput
    #   resp.data.access_policy_id #=> String
    #   resp.data.access_policy_arn #=> String
    #
    def create_access_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccessPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateAccessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccessPolicy,
        stubs: @stubs,
        params_class: Params::CreateAccessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_access_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an asset from an existing asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html">Creating assets</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssetInput}.
    #
    # @option params [String] :asset_name
    #   <p>A unique, friendly name for the asset.</p>
    #
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model from which to create the asset.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the asset. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [String] :asset_description
    #   <p>A description for the asset.</p>
    #
    # @return [Types::CreateAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset(
    #     asset_name: 'assetName', # required
    #     asset_model_id: 'assetModelId', # required
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     asset_description: 'assetDescription'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssetOutput
    #   resp.data.asset_id #=> String
    #   resp.data.asset_arn #=> String
    #   resp.data.asset_status #=> Types::AssetStatus
    #   resp.data.asset_status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.asset_status.error #=> Types::ErrorDetails
    #   resp.data.asset_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_status.error.message #=> String
    #   resp.data.asset_status.error.details #=> Array<DetailedError>
    #   resp.data.asset_status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_status.error.details[0].message #=> String
    #
    def create_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAsset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAsset,
        stubs: @stubs,
        params_class: Params::CreateAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an asset model from specified property and hierarchy definitions. You create
    #       assets from asset models. With asset models, you can easily create assets of the same type
    #       that have standardized definitions. Each asset created from a model inherits the asset model's
    #       property and hierarchy definitions. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html">Defining asset models</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssetModelInput}.
    #
    # @option params [String] :asset_model_name
    #   <p>A unique, friendly name for the asset model.</p>
    #
    # @option params [String] :asset_model_description
    #   <p>A description for the asset model.</p>
    #
    # @option params [Array<AssetModelPropertyDefinition>] :asset_model_properties
    #   <p>The property definitions of the asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html">Asset properties</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [Array<AssetModelHierarchyDefinition>] :asset_model_hierarchies
    #   <p>The hierarchy definitions of the asset model. Each hierarchy specifies an asset model
    #         whose assets can be children of any other assets created from this asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 10 hierarchies per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [Array<AssetModelCompositeModelDefinition>] :asset_model_composite_models
    #   <p>The composite asset models that are part of this asset model.
    #         Composite asset models are asset models that contain specific properties. Each composite model
    #         has a type that defines the properties that the composite model supports. Use composite asset
    #         models to define alarms on this asset model.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the asset model. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @return [Types::CreateAssetModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset_model(
    #     asset_model_name: 'assetModelName', # required
    #     asset_model_description: 'assetModelDescription',
    #     asset_model_properties: [
    #       {
    #         name: 'name', # required
    #         data_type: 'STRING', # required - accepts ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #         data_type_spec: 'dataTypeSpec',
    #         unit: 'unit',
    #         type: {
    #           attribute: {
    #             default_value: 'defaultValue'
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: {
    #                 state: 'DISABLED' # required - accepts ["DISABLED", "ENABLED"]
    #               } # required
    #             }
    #           },
    #           transform: {
    #             expression: 'expression', # required
    #             variables: [
    #               {
    #                 name: 'name', # required
    #                 value: {
    #                   property_id: 'propertyId', # required
    #                   hierarchy_id: 'hierarchyId'
    #                 } # required
    #               }
    #             ], # required
    #             processing_config: {
    #               compute_location: 'EDGE', # required - accepts ["EDGE", "CLOUD"]
    #             }
    #           },
    #           metric: {
    #             expression: 'expression', # required
    #             window: {
    #               tumbling: {
    #                 interval: 'interval', # required
    #                 offset: 'offset'
    #               }
    #             }, # required
    #             processing_config: {
    #               compute_location: 'EDGE' # required - accepts ["EDGE", "CLOUD"]
    #             }
    #           }
    #         } # required
    #       }
    #     ],
    #     asset_model_hierarchies: [
    #       {
    #         name: 'name', # required
    #         child_asset_model_id: 'childAssetModelId' # required
    #       }
    #     ],
    #     asset_model_composite_models: [
    #       {
    #         name: 'name', # required
    #         description: 'description',
    #         type: 'type', # required
    #       }
    #     ],
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssetModelOutput
    #   resp.data.asset_model_id #=> String
    #   resp.data.asset_model_arn #=> String
    #   resp.data.asset_model_status #=> Types::AssetModelStatus
    #   resp.data.asset_model_status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"]
    #   resp.data.asset_model_status.error #=> Types::ErrorDetails
    #   resp.data.asset_model_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_model_status.error.message #=> String
    #   resp.data.asset_model_status.error.details #=> Array<DetailedError>
    #   resp.data.asset_model_status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_model_status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_model_status.error.details[0].message #=> String
    #
    def create_asset_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssetModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssetModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAssetModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateAssetModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAssetModel,
        stubs: @stubs,
        params_class: Params::CreateAssetModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_asset_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a dashboard in an IoT SiteWise Monitor project.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDashboardInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project in which to create the dashboard.</p>
    #
    # @option params [String] :dashboard_name
    #   <p>A friendly name for the dashboard.</p>
    #
    # @option params [String] :dashboard_description
    #   <p>A description for the dashboard.</p>
    #
    # @option params [String] :dashboard_definition
    #   <p>The dashboard definition specified in a JSON literal. For detailed information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html">Creating dashboards (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the dashboard. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @return [Types::CreateDashboardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dashboard(
    #     project_id: 'projectId', # required
    #     dashboard_name: 'dashboardName', # required
    #     dashboard_description: 'dashboardDescription',
    #     dashboard_definition: 'dashboardDefinition', # required
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDashboardOutput
    #   resp.data.dashboard_id #=> String
    #   resp.data.dashboard_arn #=> String
    #
    def create_dashboard(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDashboardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDashboardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDashboard
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateDashboard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDashboard,
        stubs: @stubs,
        params_class: Params::CreateDashboardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dashboard
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a gateway, which is a virtual or edge device that delivers industrial data streams
    #       from local servers to IoT SiteWise. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html">Ingesting data using a gateway</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGatewayInput}.
    #
    # @option params [String] :gateway_name
    #   <p>A unique, friendly name for the gateway.</p>
    #
    # @option params [GatewayPlatform] :gateway_platform
    #   <p>The gateway's platform. You can only specify one platform in a gateway.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the gateway. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @return [Types::CreateGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway(
    #     gateway_name: 'gatewayName', # required
    #     gateway_platform: {
    #       greengrass: {
    #         group_arn: 'groupArn' # required
    #       },
    #       greengrass_v2: {
    #         core_device_thing_name: 'coreDeviceThingName' # required
    #       }
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGatewayOutput
    #   resp.data.gateway_id #=> String
    #   resp.data.gateway_arn #=> String
    #
    def create_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGateway,
        stubs: @stubs,
        params_class: Params::CreateGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a portal, which can contain projects and dashboards. IoT SiteWise Monitor uses Amazon Web Services SSO or IAM
    #       to authenticate portal users and manage user permissions.</p>
    #          <note>
    #             <p>Before you can sign in to a new portal, you must add at least one identity to that
    #         portal. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins">Adding or removing portal
    #           administrators</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreatePortalInput}.
    #
    # @option params [String] :portal_name
    #   <p>A friendly name for the portal.</p>
    #
    # @option params [String] :portal_description
    #   <p>A description for the portal.</p>
    #
    # @option params [String] :portal_contact_email
    #   <p>The Amazon Web Services administrator's contact email address.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @option params [ImageFile] :portal_logo_image_file
    #   <p>A logo image to display in the portal. Upload a square, high-resolution image. The
    #         image is displayed on a dark background.</p>
    #
    # @option params [String] :role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of a service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the portal. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [String] :portal_auth_mode
    #   <p>The service to use to authenticate users to the portal. Choose from the following
    #         options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SSO</code> – The portal uses Amazon Web Services Single Sign On to authenticate users and manage
    #             user permissions. Before you can create a portal that uses Amazon Web Services SSO, you must enable Amazon Web Services SSO.
    #             For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso">Enabling Amazon Web Services SSO</a> in the
    #               <i>IoT SiteWise User Guide</i>. This option is only available in Amazon Web Services Regions other than
    #             the China Regions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAM</code> – The portal uses Identity and Access Management to authenticate users and manage
    #             user permissions.</p>
    #               </li>
    #            </ul>
    #            <p>You can't change this value after you create a portal.</p>
    #            <p>Default: <code>SSO</code>
    #            </p>
    #
    # @option params [String] :notification_sender_email
    #   <p>The email address that sends alarm notifications.</p>
    #            <important>
    #               <p>If you use the <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html">IoT Events managed Lambda
    #             function</a> to manage your emails, you must <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">verify the sender email
    #             address in Amazon SES</a>.</p>
    #            </important>
    #
    # @option params [Alarms] :alarms
    #   <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.
    #     You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
    #     For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>
    #
    # @return [Types::CreatePortalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portal(
    #     portal_name: 'portalName', # required
    #     portal_description: 'portalDescription',
    #     portal_contact_email: 'portalContactEmail', # required
    #     client_token: 'clientToken',
    #     portal_logo_image_file: {
    #       data: 'data', # required
    #       type: 'PNG' # required - accepts ["PNG"]
    #     },
    #     role_arn: 'roleArn', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     portal_auth_mode: 'IAM', # accepts ["IAM", "SSO"]
    #     notification_sender_email: 'notificationSenderEmail',
    #     alarms: {
    #       alarm_role_arn: 'alarmRoleArn', # required
    #       notification_lambda_arn: 'notificationLambdaArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePortalOutput
    #   resp.data.portal_id #=> String
    #   resp.data.portal_arn #=> String
    #   resp.data.portal_start_url #=> String
    #   resp.data.portal_status #=> Types::PortalStatus
    #   resp.data.portal_status.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"]
    #   resp.data.portal_status.error #=> Types::MonitorErrorDetails
    #   resp.data.portal_status.error.code #=> String, one of ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"]
    #   resp.data.portal_status.error.message #=> String
    #   resp.data.sso_application_id #=> String
    #
    def create_portal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePortalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePortalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePortal
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::CreatePortal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePortal,
        stubs: @stubs,
        params_class: Params::CreatePortalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_portal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a project in the specified portal.</p>
    #          <note>
    #             <p>Make sure that the project name and description don't contain confidential
    #         information.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectInput}.
    #
    # @option params [String] :portal_id
    #   <p>The ID of the portal in which to create the project.</p>
    #
    # @option params [String] :project_name
    #   <p>A friendly name for the project.</p>
    #
    # @option params [String] :project_description
    #   <p>A description for the project.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the project. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @return [Types::CreateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project(
    #     portal_id: 'portalId', # required
    #     project_name: 'projectName', # required
    #     project_description: 'projectDescription',
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectOutput
    #   resp.data.project_id #=> String
    #   resp.data.project_arn #=> String
    #
    def create_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProject,
        stubs: @stubs,
        params_class: Params::CreateProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an access policy that grants the specified identity access to the specified
    #       IoT SiteWise Monitor resource. You can use this operation to revoke access to an IoT SiteWise Monitor
    #       resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccessPolicyInput}.
    #
    # @option params [String] :access_policy_id
    #   <p>The ID of the access policy to be deleted.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::DeleteAccessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_policy(
    #     access_policy_id: 'accessPolicyId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccessPolicyOutput
    #
    def delete_access_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccessPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteAccessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccessPolicy,
        stubs: @stubs,
        params_class: Params::DeleteAccessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_access_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an asset. This action can't be undone. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html">Deleting assets and
    #         models</a> in the <i>IoT SiteWise User Guide</i>. </p>
    #          <note>
    #             <p>You can't delete an asset that's associated to another asset. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html">DisassociateAssets</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssetInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset to delete.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::DeleteAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset(
    #     asset_id: 'assetId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssetOutput
    #   resp.data.asset_status #=> Types::AssetStatus
    #   resp.data.asset_status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.asset_status.error #=> Types::ErrorDetails
    #   resp.data.asset_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_status.error.message #=> String
    #   resp.data.asset_status.error.details #=> Array<DetailedError>
    #   resp.data.asset_status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_status.error.details[0].message #=> String
    #
    def delete_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAsset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAsset,
        stubs: @stubs,
        params_class: Params::DeleteAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an asset model. This action can't be undone. You must delete all assets created
    #       from an asset model before you can delete the model. Also, you can't delete an asset model if
    #       a parent asset model exists that contains a property formula expression that depends on the
    #       asset model that you want to delete. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html">Deleting assets and models</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssetModelInput}.
    #
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model to delete.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::DeleteAssetModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset_model(
    #     asset_model_id: 'assetModelId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssetModelOutput
    #   resp.data.asset_model_status #=> Types::AssetModelStatus
    #   resp.data.asset_model_status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"]
    #   resp.data.asset_model_status.error #=> Types::ErrorDetails
    #   resp.data.asset_model_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_model_status.error.message #=> String
    #   resp.data.asset_model_status.error.details #=> Array<DetailedError>
    #   resp.data.asset_model_status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_model_status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_model_status.error.details[0].message #=> String
    #
    def delete_asset_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssetModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssetModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssetModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteAssetModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssetModel,
        stubs: @stubs,
        params_class: Params::DeleteAssetModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_asset_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a dashboard from IoT SiteWise Monitor.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDashboardInput}.
    #
    # @option params [String] :dashboard_id
    #   <p>The ID of the dashboard to delete.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::DeleteDashboardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dashboard(
    #     dashboard_id: 'dashboardId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDashboardOutput
    #
    def delete_dashboard(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDashboardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDashboardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDashboard
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteDashboard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDashboard,
        stubs: @stubs,
        params_class: Params::DeleteDashboardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dashboard
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a gateway from IoT SiteWise. When you delete a gateway, some of the gateway's files remain
    #       in your gateway's file system.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGatewayInput}.
    #
    # @option params [String] :gateway_id
    #   <p>The ID of the gateway to delete.</p>
    #
    # @return [Types::DeleteGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway(
    #     gateway_id: 'gatewayId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGatewayOutput
    #
    def delete_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGateway,
        stubs: @stubs,
        params_class: Params::DeleteGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a portal from IoT SiteWise Monitor.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePortalInput}.
    #
    # @option params [String] :portal_id
    #   <p>The ID of the portal to delete.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::DeletePortalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portal(
    #     portal_id: 'portalId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePortalOutput
    #   resp.data.portal_status #=> Types::PortalStatus
    #   resp.data.portal_status.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"]
    #   resp.data.portal_status.error #=> Types::MonitorErrorDetails
    #   resp.data.portal_status.error.code #=> String, one of ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"]
    #   resp.data.portal_status.error.message #=> String
    #
    def delete_portal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePortalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePortalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePortal
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DeletePortal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePortal,
        stubs: @stubs,
        params_class: Params::DeletePortalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_portal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a project from IoT SiteWise Monitor.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::DeleteProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project(
    #     project_id: 'projectId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectOutput
    #
    def delete_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProject,
        stubs: @stubs,
        params_class: Params::DeleteProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a time series (data stream). If you delete a time series that's associated with an
    #       asset property, the asset property still exists, but the time series will no longer be
    #       associated with this asset property.</p>
    #          <p>To identify a time series, do one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>If the time series isn't associated with an asset property,
    #           specify the <code>alias</code> of the time series.</p>
    #             </li>
    #             <li>
    #                <p>If the time series is associated with an asset property,
    #           specify one of the following: </p>
    #                <ul>
    #                   <li>
    #                      <p>The <code>alias</code> of the time series.</p>
    #                   </li>
    #                   <li>
    #                      <p>The <code>assetId</code> and <code>propertyId</code> that identifies the asset property.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteTimeSeriesInput}.
    #
    # @option params [String] :alias
    #   <p>The alias that identifies the time series.</p>
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    # @option params [String] :property_id
    #   <p>The ID of the asset property.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::DeleteTimeSeriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_time_series(
    #     alias: 'alias',
    #     asset_id: 'assetId',
    #     property_id: 'propertyId',
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTimeSeriesOutput
    #
    def delete_time_series(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTimeSeriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTimeSeriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTimeSeries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteTimeSeries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTimeSeries,
        stubs: @stubs,
        params_class: Params::DeleteTimeSeriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_time_series
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an access policy, which specifies an identity's access to an IoT SiteWise Monitor portal or
    #       project.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccessPolicyInput}.
    #
    # @option params [String] :access_policy_id
    #   <p>The ID of the access policy.</p>
    #
    # @return [Types::DescribeAccessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_access_policy(
    #     access_policy_id: 'accessPolicyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccessPolicyOutput
    #   resp.data.access_policy_id #=> String
    #   resp.data.access_policy_arn #=> String
    #   resp.data.access_policy_identity #=> Types::Identity
    #   resp.data.access_policy_identity.user #=> Types::UserIdentity
    #   resp.data.access_policy_identity.user.id #=> String
    #   resp.data.access_policy_identity.group #=> Types::GroupIdentity
    #   resp.data.access_policy_identity.group.id #=> String
    #   resp.data.access_policy_identity.iam_user #=> Types::IAMUserIdentity
    #   resp.data.access_policy_identity.iam_user.arn #=> String
    #   resp.data.access_policy_identity.iam_role #=> Types::IAMRoleIdentity
    #   resp.data.access_policy_identity.iam_role.arn #=> String
    #   resp.data.access_policy_resource #=> Types::Resource
    #   resp.data.access_policy_resource.portal #=> Types::PortalResource
    #   resp.data.access_policy_resource.portal.id #=> String
    #   resp.data.access_policy_resource.project #=> Types::ProjectResource
    #   resp.data.access_policy_resource.project.id #=> String
    #   resp.data.access_policy_permission #=> String, one of ["ADMINISTRATOR", "VIEWER"]
    #   resp.data.access_policy_creation_date #=> Time
    #   resp.data.access_policy_last_update_date #=> Time
    #
    def describe_access_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccessPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeAccessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccessPolicy,
        stubs: @stubs,
        params_class: Params::DescribeAccessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_access_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an asset.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAssetInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset.</p>
    #
    # @return [Types::DescribeAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset(
    #     asset_id: 'assetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAssetOutput
    #   resp.data.asset_id #=> String
    #   resp.data.asset_arn #=> String
    #   resp.data.asset_name #=> String
    #   resp.data.asset_model_id #=> String
    #   resp.data.asset_properties #=> Array<AssetProperty>
    #   resp.data.asset_properties[0] #=> Types::AssetProperty
    #   resp.data.asset_properties[0].id #=> String
    #   resp.data.asset_properties[0].name #=> String
    #   resp.data.asset_properties[0].alias #=> String
    #   resp.data.asset_properties[0].notification #=> Types::PropertyNotification
    #   resp.data.asset_properties[0].notification.topic #=> String
    #   resp.data.asset_properties[0].notification.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.asset_properties[0].data_type #=> String, one of ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #   resp.data.asset_properties[0].data_type_spec #=> String
    #   resp.data.asset_properties[0].unit #=> String
    #   resp.data.asset_hierarchies #=> Array<AssetHierarchy>
    #   resp.data.asset_hierarchies[0] #=> Types::AssetHierarchy
    #   resp.data.asset_hierarchies[0].id #=> String
    #   resp.data.asset_hierarchies[0].name #=> String
    #   resp.data.asset_composite_models #=> Array<AssetCompositeModel>
    #   resp.data.asset_composite_models[0] #=> Types::AssetCompositeModel
    #   resp.data.asset_composite_models[0].name #=> String
    #   resp.data.asset_composite_models[0].description #=> String
    #   resp.data.asset_composite_models[0].type #=> String
    #   resp.data.asset_composite_models[0].properties #=> Array<AssetProperty>
    #   resp.data.asset_creation_date #=> Time
    #   resp.data.asset_last_update_date #=> Time
    #   resp.data.asset_status #=> Types::AssetStatus
    #   resp.data.asset_status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.asset_status.error #=> Types::ErrorDetails
    #   resp.data.asset_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_status.error.message #=> String
    #   resp.data.asset_status.error.details #=> Array<DetailedError>
    #   resp.data.asset_status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_status.error.details[0].message #=> String
    #   resp.data.asset_description #=> String
    #
    def describe_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAssetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAsset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAsset,
        stubs: @stubs,
        params_class: Params::DescribeAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an asset model.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAssetModelInput}.
    #
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model.</p>
    #
    # @return [Types::DescribeAssetModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_model(
    #     asset_model_id: 'assetModelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAssetModelOutput
    #   resp.data.asset_model_id #=> String
    #   resp.data.asset_model_arn #=> String
    #   resp.data.asset_model_name #=> String
    #   resp.data.asset_model_description #=> String
    #   resp.data.asset_model_properties #=> Array<AssetModelProperty>
    #   resp.data.asset_model_properties[0] #=> Types::AssetModelProperty
    #   resp.data.asset_model_properties[0].id #=> String
    #   resp.data.asset_model_properties[0].name #=> String
    #   resp.data.asset_model_properties[0].data_type #=> String, one of ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #   resp.data.asset_model_properties[0].data_type_spec #=> String
    #   resp.data.asset_model_properties[0].unit #=> String
    #   resp.data.asset_model_properties[0].type #=> Types::PropertyType
    #   resp.data.asset_model_properties[0].type.attribute #=> Types::Attribute
    #   resp.data.asset_model_properties[0].type.attribute.default_value #=> String
    #   resp.data.asset_model_properties[0].type.measurement #=> Types::Measurement
    #   resp.data.asset_model_properties[0].type.measurement.processing_config #=> Types::MeasurementProcessingConfig
    #   resp.data.asset_model_properties[0].type.measurement.processing_config.forwarding_config #=> Types::ForwardingConfig
    #   resp.data.asset_model_properties[0].type.measurement.processing_config.forwarding_config.state #=> String, one of ["DISABLED", "ENABLED"]
    #   resp.data.asset_model_properties[0].type.transform #=> Types::Transform
    #   resp.data.asset_model_properties[0].type.transform.expression #=> String
    #   resp.data.asset_model_properties[0].type.transform.variables #=> Array<ExpressionVariable>
    #   resp.data.asset_model_properties[0].type.transform.variables[0] #=> Types::ExpressionVariable
    #   resp.data.asset_model_properties[0].type.transform.variables[0].name #=> String
    #   resp.data.asset_model_properties[0].type.transform.variables[0].value #=> Types::VariableValue
    #   resp.data.asset_model_properties[0].type.transform.variables[0].value.property_id #=> String
    #   resp.data.asset_model_properties[0].type.transform.variables[0].value.hierarchy_id #=> String
    #   resp.data.asset_model_properties[0].type.transform.processing_config #=> Types::TransformProcessingConfig
    #   resp.data.asset_model_properties[0].type.transform.processing_config.compute_location #=> String, one of ["EDGE", "CLOUD"]
    #   resp.data.asset_model_properties[0].type.transform.processing_config.forwarding_config #=> Types::ForwardingConfig
    #   resp.data.asset_model_properties[0].type.metric #=> Types::Metric
    #   resp.data.asset_model_properties[0].type.metric.expression #=> String
    #   resp.data.asset_model_properties[0].type.metric.variables #=> Array<ExpressionVariable>
    #   resp.data.asset_model_properties[0].type.metric.window #=> Types::MetricWindow
    #   resp.data.asset_model_properties[0].type.metric.window.tumbling #=> Types::TumblingWindow
    #   resp.data.asset_model_properties[0].type.metric.window.tumbling.interval #=> String
    #   resp.data.asset_model_properties[0].type.metric.window.tumbling.offset #=> String
    #   resp.data.asset_model_properties[0].type.metric.processing_config #=> Types::MetricProcessingConfig
    #   resp.data.asset_model_properties[0].type.metric.processing_config.compute_location #=> String, one of ["EDGE", "CLOUD"]
    #   resp.data.asset_model_hierarchies #=> Array<AssetModelHierarchy>
    #   resp.data.asset_model_hierarchies[0] #=> Types::AssetModelHierarchy
    #   resp.data.asset_model_hierarchies[0].id #=> String
    #   resp.data.asset_model_hierarchies[0].name #=> String
    #   resp.data.asset_model_hierarchies[0].child_asset_model_id #=> String
    #   resp.data.asset_model_composite_models #=> Array<AssetModelCompositeModel>
    #   resp.data.asset_model_composite_models[0] #=> Types::AssetModelCompositeModel
    #   resp.data.asset_model_composite_models[0].name #=> String
    #   resp.data.asset_model_composite_models[0].description #=> String
    #   resp.data.asset_model_composite_models[0].type #=> String
    #   resp.data.asset_model_composite_models[0].properties #=> Array<AssetModelProperty>
    #   resp.data.asset_model_creation_date #=> Time
    #   resp.data.asset_model_last_update_date #=> Time
    #   resp.data.asset_model_status #=> Types::AssetModelStatus
    #   resp.data.asset_model_status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"]
    #   resp.data.asset_model_status.error #=> Types::ErrorDetails
    #   resp.data.asset_model_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_model_status.error.message #=> String
    #   resp.data.asset_model_status.error.details #=> Array<DetailedError>
    #   resp.data.asset_model_status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_model_status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_model_status.error.details[0].message #=> String
    #
    def describe_asset_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAssetModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAssetModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAssetModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeAssetModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAssetModel,
        stubs: @stubs,
        params_class: Params::DescribeAssetModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_asset_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an asset property.</p>
    #          <note>
    #             <p>When you call this operation for an attribute property, this response includes the
    #         default attribute value that you define in the asset model. If you update the default value
    #         in the model, this operation's response includes the new default value.</p>
    #          </note>
    #          <p>This operation doesn't return the value of the asset property. To get the value of an
    #       asset property, use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html">GetAssetPropertyValue</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAssetPropertyInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset.</p>
    #
    # @option params [String] :property_id
    #   <p>The ID of the asset property.</p>
    #
    # @return [Types::DescribeAssetPropertyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_property(
    #     asset_id: 'assetId', # required
    #     property_id: 'propertyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAssetPropertyOutput
    #   resp.data.asset_id #=> String
    #   resp.data.asset_name #=> String
    #   resp.data.asset_model_id #=> String
    #   resp.data.asset_property #=> Types::Property
    #   resp.data.asset_property.id #=> String
    #   resp.data.asset_property.name #=> String
    #   resp.data.asset_property.alias #=> String
    #   resp.data.asset_property.notification #=> Types::PropertyNotification
    #   resp.data.asset_property.notification.topic #=> String
    #   resp.data.asset_property.notification.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.asset_property.data_type #=> String, one of ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #   resp.data.asset_property.unit #=> String
    #   resp.data.asset_property.type #=> Types::PropertyType
    #   resp.data.asset_property.type.attribute #=> Types::Attribute
    #   resp.data.asset_property.type.attribute.default_value #=> String
    #   resp.data.asset_property.type.measurement #=> Types::Measurement
    #   resp.data.asset_property.type.measurement.processing_config #=> Types::MeasurementProcessingConfig
    #   resp.data.asset_property.type.measurement.processing_config.forwarding_config #=> Types::ForwardingConfig
    #   resp.data.asset_property.type.measurement.processing_config.forwarding_config.state #=> String, one of ["DISABLED", "ENABLED"]
    #   resp.data.asset_property.type.transform #=> Types::Transform
    #   resp.data.asset_property.type.transform.expression #=> String
    #   resp.data.asset_property.type.transform.variables #=> Array<ExpressionVariable>
    #   resp.data.asset_property.type.transform.variables[0] #=> Types::ExpressionVariable
    #   resp.data.asset_property.type.transform.variables[0].name #=> String
    #   resp.data.asset_property.type.transform.variables[0].value #=> Types::VariableValue
    #   resp.data.asset_property.type.transform.variables[0].value.property_id #=> String
    #   resp.data.asset_property.type.transform.variables[0].value.hierarchy_id #=> String
    #   resp.data.asset_property.type.transform.processing_config #=> Types::TransformProcessingConfig
    #   resp.data.asset_property.type.transform.processing_config.compute_location #=> String, one of ["EDGE", "CLOUD"]
    #   resp.data.asset_property.type.transform.processing_config.forwarding_config #=> Types::ForwardingConfig
    #   resp.data.asset_property.type.metric #=> Types::Metric
    #   resp.data.asset_property.type.metric.expression #=> String
    #   resp.data.asset_property.type.metric.variables #=> Array<ExpressionVariable>
    #   resp.data.asset_property.type.metric.window #=> Types::MetricWindow
    #   resp.data.asset_property.type.metric.window.tumbling #=> Types::TumblingWindow
    #   resp.data.asset_property.type.metric.window.tumbling.interval #=> String
    #   resp.data.asset_property.type.metric.window.tumbling.offset #=> String
    #   resp.data.asset_property.type.metric.processing_config #=> Types::MetricProcessingConfig
    #   resp.data.asset_property.type.metric.processing_config.compute_location #=> String, one of ["EDGE", "CLOUD"]
    #   resp.data.composite_model #=> Types::CompositeModelProperty
    #   resp.data.composite_model.name #=> String
    #   resp.data.composite_model.type #=> String
    #   resp.data.composite_model.asset_property #=> Types::Property
    #
    def describe_asset_property(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAssetPropertyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAssetPropertyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAssetProperty
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeAssetProperty
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAssetProperty,
        stubs: @stubs,
        params_class: Params::DescribeAssetPropertyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_asset_property
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a dashboard.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDashboardInput}.
    #
    # @option params [String] :dashboard_id
    #   <p>The ID of the dashboard.</p>
    #
    # @return [Types::DescribeDashboardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard(
    #     dashboard_id: 'dashboardId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDashboardOutput
    #   resp.data.dashboard_id #=> String
    #   resp.data.dashboard_arn #=> String
    #   resp.data.dashboard_name #=> String
    #   resp.data.project_id #=> String
    #   resp.data.dashboard_description #=> String
    #   resp.data.dashboard_definition #=> String
    #   resp.data.dashboard_creation_date #=> Time
    #   resp.data.dashboard_last_update_date #=> Time
    #
    def describe_dashboard(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDashboardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDashboardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDashboard
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDashboard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDashboard,
        stubs: @stubs,
        params_class: Params::DescribeDashboardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dashboard
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the default encryption configuration for the Amazon Web Services account in
    #       the default or specified Region. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html">Key management</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDefaultEncryptionConfigurationInput}.
    #
    # @return [Types::DescribeDefaultEncryptionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_default_encryption_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDefaultEncryptionConfigurationOutput
    #   resp.data.encryption_type #=> String, one of ["SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"]
    #   resp.data.kms_key_arn #=> String
    #   resp.data.configuration_status #=> Types::ConfigurationStatus
    #   resp.data.configuration_status.state #=> String, one of ["ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #   resp.data.configuration_status.error #=> Types::ConfigurationErrorDetails
    #   resp.data.configuration_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.configuration_status.error.message #=> String
    #
    def describe_default_encryption_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDefaultEncryptionConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDefaultEncryptionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDefaultEncryptionConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDefaultEncryptionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDefaultEncryptionConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeDefaultEncryptionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_default_encryption_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGatewayInput}.
    #
    # @option params [String] :gateway_id
    #   <p>The ID of the gateway device.</p>
    #
    # @return [Types::DescribeGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway(
    #     gateway_id: 'gatewayId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGatewayOutput
    #   resp.data.gateway_id #=> String
    #   resp.data.gateway_name #=> String
    #   resp.data.gateway_arn #=> String
    #   resp.data.gateway_platform #=> Types::GatewayPlatform
    #   resp.data.gateway_platform.greengrass #=> Types::Greengrass
    #   resp.data.gateway_platform.greengrass.group_arn #=> String
    #   resp.data.gateway_platform.greengrass_v2 #=> Types::GreengrassV2
    #   resp.data.gateway_platform.greengrass_v2.core_device_thing_name #=> String
    #   resp.data.gateway_capability_summaries #=> Array<GatewayCapabilitySummary>
    #   resp.data.gateway_capability_summaries[0] #=> Types::GatewayCapabilitySummary
    #   resp.data.gateway_capability_summaries[0].capability_namespace #=> String
    #   resp.data.gateway_capability_summaries[0].capability_sync_status #=> String, one of ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN"]
    #   resp.data.creation_date #=> Time
    #   resp.data.last_update_date #=> Time
    #
    def describe_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGateway,
        stubs: @stubs,
        params_class: Params::DescribeGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a gateway capability configuration.
    #       Each gateway capability defines data sources for a gateway. A capability configuration
    #       can contain multiple data source configurations. If you define OPC-UA sources for a gateway in
    #       the IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To
    #       list all capability configurations for a gateway, use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html">DescribeGateway</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGatewayCapabilityConfigurationInput}.
    #
    # @option params [String] :gateway_id
    #   <p>The ID of the gateway that defines the capability configuration.</p>
    #
    # @option params [String] :capability_namespace
    #   <p>The namespace of the capability configuration.
    #         For example, if you configure OPC-UA
    #         sources from the IoT SiteWise console, your OPC-UA capability configuration has the namespace
    #           <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as
    #           <code>1</code>.</p>
    #
    # @return [Types::DescribeGatewayCapabilityConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway_capability_configuration(
    #     gateway_id: 'gatewayId', # required
    #     capability_namespace: 'capabilityNamespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGatewayCapabilityConfigurationOutput
    #   resp.data.gateway_id #=> String
    #   resp.data.capability_namespace #=> String
    #   resp.data.capability_configuration #=> String
    #   resp.data.capability_sync_status #=> String, one of ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN"]
    #
    def describe_gateway_capability_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGatewayCapabilityConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGatewayCapabilityConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGatewayCapabilityConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeGatewayCapabilityConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGatewayCapabilityConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeGatewayCapabilityConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_gateway_capability_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the current IoT SiteWise logging options.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoggingOptionsInput}.
    #
    # @return [Types::DescribeLoggingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_logging_options()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoggingOptionsOutput
    #   resp.data.logging_options #=> Types::LoggingOptions
    #   resp.data.logging_options.level #=> String, one of ["ERROR", "INFO", "OFF"]
    #
    def describe_logging_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoggingOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoggingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoggingOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeLoggingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoggingOptions,
        stubs: @stubs,
        params_class: Params::DescribeLoggingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_logging_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a portal.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePortalInput}.
    #
    # @option params [String] :portal_id
    #   <p>The ID of the portal.</p>
    #
    # @return [Types::DescribePortalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_portal(
    #     portal_id: 'portalId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePortalOutput
    #   resp.data.portal_id #=> String
    #   resp.data.portal_arn #=> String
    #   resp.data.portal_name #=> String
    #   resp.data.portal_description #=> String
    #   resp.data.portal_client_id #=> String
    #   resp.data.portal_start_url #=> String
    #   resp.data.portal_contact_email #=> String
    #   resp.data.portal_status #=> Types::PortalStatus
    #   resp.data.portal_status.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"]
    #   resp.data.portal_status.error #=> Types::MonitorErrorDetails
    #   resp.data.portal_status.error.code #=> String, one of ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"]
    #   resp.data.portal_status.error.message #=> String
    #   resp.data.portal_creation_date #=> Time
    #   resp.data.portal_last_update_date #=> Time
    #   resp.data.portal_logo_image_location #=> Types::ImageLocation
    #   resp.data.portal_logo_image_location.id #=> String
    #   resp.data.portal_logo_image_location.url #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.portal_auth_mode #=> String, one of ["IAM", "SSO"]
    #   resp.data.notification_sender_email #=> String
    #   resp.data.alarms #=> Types::Alarms
    #   resp.data.alarms.alarm_role_arn #=> String
    #   resp.data.alarms.notification_lambda_arn #=> String
    #
    def describe_portal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePortalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePortalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePortal
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribePortal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePortal,
        stubs: @stubs,
        params_class: Params::DescribePortalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_portal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a project.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProjectInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project.</p>
    #
    # @return [Types::DescribeProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project(
    #     project_id: 'projectId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProjectOutput
    #   resp.data.project_id #=> String
    #   resp.data.project_arn #=> String
    #   resp.data.project_name #=> String
    #   resp.data.portal_id #=> String
    #   resp.data.project_description #=> String
    #   resp.data.project_creation_date #=> Time
    #   resp.data.project_last_update_date #=> Time
    #
    def describe_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProject,
        stubs: @stubs,
        params_class: Params::DescribeProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the storage configuration for IoT SiteWise.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStorageConfigurationInput}.
    #
    # @return [Types::DescribeStorageConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_storage_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStorageConfigurationOutput
    #   resp.data.storage_type #=> String, one of ["SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"]
    #   resp.data.multi_layer_storage #=> Types::MultiLayerStorage
    #   resp.data.multi_layer_storage.customer_managed_s3_storage #=> Types::CustomerManagedS3Storage
    #   resp.data.multi_layer_storage.customer_managed_s3_storage.s3_resource_arn #=> String
    #   resp.data.multi_layer_storage.customer_managed_s3_storage.role_arn #=> String
    #   resp.data.disassociated_data_storage #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.retention_period #=> Types::RetentionPeriod
    #   resp.data.retention_period.number_of_days #=> Integer
    #   resp.data.retention_period.unlimited #=> Boolean
    #   resp.data.configuration_status #=> Types::ConfigurationStatus
    #   resp.data.configuration_status.state #=> String, one of ["ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #   resp.data.configuration_status.error #=> Types::ConfigurationErrorDetails
    #   resp.data.configuration_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.configuration_status.error.message #=> String
    #   resp.data.last_update_date #=> Time
    #
    def describe_storage_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStorageConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStorageConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStorageConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeStorageConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStorageConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeStorageConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_storage_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a time series (data stream).</p>
    #          <p>To identify a time series, do one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>If the time series isn't associated with an asset property,
    #           specify the <code>alias</code> of the time series.</p>
    #             </li>
    #             <li>
    #                <p>If the time series is associated with an asset property,
    #           specify one of the following: </p>
    #                <ul>
    #                   <li>
    #                      <p>The <code>alias</code> of the time series.</p>
    #                   </li>
    #                   <li>
    #                      <p>The <code>assetId</code> and <code>propertyId</code> that identifies the asset property.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeTimeSeriesInput}.
    #
    # @option params [String] :alias
    #   <p>The alias that identifies the time series.</p>
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    # @option params [String] :property_id
    #   <p>The ID of the asset property.</p>
    #
    # @return [Types::DescribeTimeSeriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_time_series(
    #     alias: 'alias',
    #     asset_id: 'assetId',
    #     property_id: 'propertyId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTimeSeriesOutput
    #   resp.data.asset_id #=> String
    #   resp.data.property_id #=> String
    #   resp.data.alias #=> String
    #   resp.data.time_series_id #=> String
    #   resp.data.data_type #=> String, one of ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #   resp.data.data_type_spec #=> String
    #   resp.data.time_series_creation_date #=> Time
    #   resp.data.time_series_last_update_date #=> Time
    #
    def describe_time_series(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTimeSeriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTimeSeriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTimeSeries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeTimeSeries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTimeSeries,
        stubs: @stubs,
        params_class: Params::DescribeTimeSeriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_time_series
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a child asset from the given parent asset through a hierarchy defined in the
    #       parent asset's model.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateAssetsInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the parent asset from which to disassociate the child asset.</p>
    #
    # @option params [String] :hierarchy_id
    #   <p>The ID of a hierarchy in the parent asset's model. Hierarchies allow different groupings
    #         of assets to be formed that all come from the same asset model. You can use the hierarchy ID
    #         to identify the correct asset to disassociate. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [String] :child_asset_id
    #   <p>The ID of the child asset to disassociate.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::DisassociateAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_assets(
    #     asset_id: 'assetId', # required
    #     hierarchy_id: 'hierarchyId', # required
    #     child_asset_id: 'childAssetId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateAssetsOutput
    #
    def disassociate_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateAssetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateAssets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DisassociateAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateAssets,
        stubs: @stubs,
        params_class: Params::DisassociateAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a time series (data stream) from an asset property.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateTimeSeriesFromAssetPropertyInput}.
    #
    # @option params [String] :alias
    #   <p>The alias that identifies the time series.</p>
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    # @option params [String] :property_id
    #   <p>The ID of the asset property.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::DisassociateTimeSeriesFromAssetPropertyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_time_series_from_asset_property(
    #     alias: 'alias', # required
    #     asset_id: 'assetId', # required
    #     property_id: 'propertyId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateTimeSeriesFromAssetPropertyOutput
    #
    def disassociate_time_series_from_asset_property(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateTimeSeriesFromAssetPropertyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateTimeSeriesFromAssetPropertyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateTimeSeriesFromAssetProperty
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DisassociateTimeSeriesFromAssetProperty
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateTimeSeriesFromAssetProperty,
        stubs: @stubs,
        params_class: Params::DisassociateTimeSeriesFromAssetPropertyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_time_series_from_asset_property
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets aggregated values for an asset property. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates">Querying
    #         aggregates</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetAssetPropertyAggregatesInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset.</p>
    #
    # @option params [String] :property_id
    #   <p>The ID of the asset property.</p>
    #
    # @option params [String] :property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [Array<String>] :aggregate_types
    #   <p>The data aggregating function.</p>
    #
    # @option params [String] :resolution
    #   <p>The time interval over which to aggregate data.</p>
    #
    # @option params [Array<String>] :qualities
    #   <p>The quality by which to filter asset data.</p>
    #
    # @option params [Time] :start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    # @option params [Time] :end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    # @option params [String] :time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 100</p>
    #
    # @return [Types::GetAssetPropertyAggregatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_property_aggregates(
    #     asset_id: 'assetId',
    #     property_id: 'propertyId',
    #     property_alias: 'propertyAlias',
    #     aggregate_types: [
    #       'AVERAGE' # accepts ["AVERAGE", "COUNT", "MAXIMUM", "MINIMUM", "SUM", "STANDARD_DEVIATION"]
    #     ], # required
    #     resolution: 'resolution', # required
    #     qualities: [
    #       'GOOD' # accepts ["GOOD", "BAD", "UNCERTAIN"]
    #     ],
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #     time_ordering: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssetPropertyAggregatesOutput
    #   resp.data.aggregated_values #=> Array<AggregatedValue>
    #   resp.data.aggregated_values[0] #=> Types::AggregatedValue
    #   resp.data.aggregated_values[0].timestamp #=> Time
    #   resp.data.aggregated_values[0].quality #=> String, one of ["GOOD", "BAD", "UNCERTAIN"]
    #   resp.data.aggregated_values[0].value #=> Types::Aggregates
    #   resp.data.aggregated_values[0].value.average #=> Float
    #   resp.data.aggregated_values[0].value.count #=> Float
    #   resp.data.aggregated_values[0].value.maximum #=> Float
    #   resp.data.aggregated_values[0].value.minimum #=> Float
    #   resp.data.aggregated_values[0].value.sum #=> Float
    #   resp.data.aggregated_values[0].value.standard_deviation #=> Float
    #   resp.data.next_token #=> String
    #
    def get_asset_property_aggregates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssetPropertyAggregatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssetPropertyAggregatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssetPropertyAggregates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::GetAssetPropertyAggregates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssetPropertyAggregates,
        stubs: @stubs,
        params_class: Params::GetAssetPropertyAggregatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_asset_property_aggregates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an asset property's current value. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values">Querying
    #         current values</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetAssetPropertyValueInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset.</p>
    #
    # @option params [String] :property_id
    #   <p>The ID of the asset property.</p>
    #
    # @option params [String] :property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    # @return [Types::GetAssetPropertyValueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_property_value(
    #     asset_id: 'assetId',
    #     property_id: 'propertyId',
    #     property_alias: 'propertyAlias'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssetPropertyValueOutput
    #   resp.data.property_value #=> Types::AssetPropertyValue
    #   resp.data.property_value.value #=> Types::Variant
    #   resp.data.property_value.value.string_value #=> String
    #   resp.data.property_value.value.integer_value #=> Integer
    #   resp.data.property_value.value.double_value #=> Float
    #   resp.data.property_value.value.boolean_value #=> Boolean
    #   resp.data.property_value.timestamp #=> Types::TimeInNanos
    #   resp.data.property_value.timestamp.time_in_seconds #=> Integer
    #   resp.data.property_value.timestamp.offset_in_nanos #=> Integer
    #   resp.data.property_value.quality #=> String, one of ["GOOD", "BAD", "UNCERTAIN"]
    #
    def get_asset_property_value(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssetPropertyValueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssetPropertyValueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssetPropertyValue
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::GetAssetPropertyValue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssetPropertyValue,
        stubs: @stubs,
        params_class: Params::GetAssetPropertyValueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_asset_property_value
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the history of an asset property's values. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values">Querying
    #         historical values</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetAssetPropertyValueHistoryInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset.</p>
    #
    # @option params [String] :property_id
    #   <p>The ID of the asset property.</p>
    #
    # @option params [String] :property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [Time] :start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    # @option params [Time] :end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    # @option params [Array<String>] :qualities
    #   <p>The quality by which to filter asset data.</p>
    #
    # @option params [String] :time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 100</p>
    #
    # @return [Types::GetAssetPropertyValueHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_property_value_history(
    #     asset_id: 'assetId',
    #     property_id: 'propertyId',
    #     property_alias: 'propertyAlias',
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     qualities: [
    #       'GOOD' # accepts ["GOOD", "BAD", "UNCERTAIN"]
    #     ],
    #     time_ordering: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssetPropertyValueHistoryOutput
    #   resp.data.asset_property_value_history #=> Array<AssetPropertyValue>
    #   resp.data.asset_property_value_history[0] #=> Types::AssetPropertyValue
    #   resp.data.asset_property_value_history[0].value #=> Types::Variant
    #   resp.data.asset_property_value_history[0].value.string_value #=> String
    #   resp.data.asset_property_value_history[0].value.integer_value #=> Integer
    #   resp.data.asset_property_value_history[0].value.double_value #=> Float
    #   resp.data.asset_property_value_history[0].value.boolean_value #=> Boolean
    #   resp.data.asset_property_value_history[0].timestamp #=> Types::TimeInNanos
    #   resp.data.asset_property_value_history[0].timestamp.time_in_seconds #=> Integer
    #   resp.data.asset_property_value_history[0].timestamp.offset_in_nanos #=> Integer
    #   resp.data.asset_property_value_history[0].quality #=> String, one of ["GOOD", "BAD", "UNCERTAIN"]
    #   resp.data.next_token #=> String
    #
    def get_asset_property_value_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssetPropertyValueHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssetPropertyValueHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssetPropertyValueHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::GetAssetPropertyValueHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssetPropertyValueHistory,
        stubs: @stubs,
        params_class: Params::GetAssetPropertyValueHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_asset_property_value_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get interpolated values for an asset property for a specified time interval, during a
    #       period of time. If your time series is missing data points during the specified time interval,
    #       you can use interpolation to estimate the missing data.</p>
    #          <p>For example, you can use this operation to return the interpolated temperature values for
    #       a wind turbine every 24 hours over a duration of 7 days.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetInterpolatedAssetPropertyValuesInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset.</p>
    #
    # @option params [String] :property_id
    #   <p>The ID of the asset property.</p>
    #
    # @option params [String] :property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [Integer] :start_time_in_seconds
    #   <p>The exclusive start of the range from which to interpolate data, expressed in seconds in
    #         Unix epoch time.</p>
    #
    # @option params [Integer] :start_time_offset_in_nanos
    #   <p>The nanosecond offset converted from <code>startTimeInSeconds</code>.</p>
    #
    # @option params [Integer] :end_time_in_seconds
    #   <p>The inclusive end of the range from which to interpolate data, expressed in seconds in
    #         Unix epoch time.</p>
    #
    # @option params [Integer] :end_time_offset_in_nanos
    #   <p>The nanosecond offset converted from <code>endTimeInSeconds</code>.</p>
    #
    # @option params [String] :quality
    #   <p>The quality of the asset property value. You can use this parameter as a filter to choose
    #         only the asset property values that have a specific quality.</p>
    #
    # @option params [Integer] :interval_in_seconds
    #   <p>The time interval in seconds over which to interpolate data. Each interval starts when the
    #         previous one ends.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request. If not specified, the default value is 10.</p>
    #
    # @option params [String] :type
    #   <p>The interpolation type.</p>
    #            <p>Valid values: <code>LINEAR_INTERPOLATION | LOCF_INTERPOLATION</code>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINEAR_INTERPOLATION</code> – Estimates missing data using <a href="https://en.wikipedia.org/wiki/Linear_interpolation">linear
    #             interpolation</a>.</p>
    #                  <p>For example, you can use this operation to return the interpolated temperature values
    #             for a wind turbine every 24 hours over a duration of 7 days. If the interpolation starts
    #             July 1, 2021, at 9 AM, IoT SiteWise returns the first interpolated value on July 2, 2021, at 9 AM,
    #             the second interpolated value on July 3, 2021, at 9 AM, and so on.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCF_INTERPOLATION</code> – Estimates missing data using last observation
    #             carried forward interpolation</p>
    #                  <p>If no data point is found for an interval, IoT SiteWise returns the last observed data point
    #             for the previous interval and carries forward this interpolated value until a new data
    #             point is found.</p>
    #                  <p>For example, you can get the state of an on-off valve every 24 hours over a duration
    #             of 7 days. If the interpolation starts July 1, 2021, at 9 AM, IoT SiteWise returns the last
    #             observed data point between July 1, 2021, at 9 AM and July 2, 2021, at 9 AM as the first
    #             interpolated value. If a data point isn't found after 9 AM on July 2, 2021, IoT SiteWise uses the
    #             same interpolated value for the rest of the days.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :interval_window_in_seconds
    #   <p>The query interval for the window, in seconds. IoT SiteWise computes each interpolated value by
    #         using data points from the timestamp of each interval, minus the window to the timestamp of
    #         each interval plus the window. If not specified, the window ranges between the start time
    #         minus the interval and the end time plus the interval.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>If you specify a value for the <code>intervalWindowInSeconds</code> parameter, the
    #               value for the <code>type</code> parameter must be
    #               <code>LINEAR_INTERPOLATION</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>If a data point isn't found during the specified query window, IoT SiteWise won't return an
    #               interpolated value for the interval. This indicates that there's a gap in the ingested
    #               data points.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <p>For example, you can get the interpolated temperature values for a wind turbine every 24
    #         hours over a duration of 7 days. If the interpolation starts on July 1, 2021, at 9 AM with a
    #         window of 2 hours, IoT SiteWise uses the data points from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM
    #         plus 2 hours) on July 2, 2021 to compute the first interpolated value. Next, IoT SiteWise uses the
    #         data points from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM plus 2 hours) on July 3, 2021 to
    #         compute the second interpolated value, and so on. </p>
    #
    # @return [Types::GetInterpolatedAssetPropertyValuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_interpolated_asset_property_values(
    #     asset_id: 'assetId',
    #     property_id: 'propertyId',
    #     property_alias: 'propertyAlias',
    #     start_time_in_seconds: 1, # required
    #     start_time_offset_in_nanos: 1,
    #     end_time_in_seconds: 1, # required
    #     end_time_offset_in_nanos: 1,
    #     quality: 'GOOD', # required - accepts ["GOOD", "BAD", "UNCERTAIN"]
    #     interval_in_seconds: 1, # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     type: 'type', # required
    #     interval_window_in_seconds: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInterpolatedAssetPropertyValuesOutput
    #   resp.data.interpolated_asset_property_values #=> Array<InterpolatedAssetPropertyValue>
    #   resp.data.interpolated_asset_property_values[0] #=> Types::InterpolatedAssetPropertyValue
    #   resp.data.interpolated_asset_property_values[0].timestamp #=> Types::TimeInNanos
    #   resp.data.interpolated_asset_property_values[0].timestamp.time_in_seconds #=> Integer
    #   resp.data.interpolated_asset_property_values[0].timestamp.offset_in_nanos #=> Integer
    #   resp.data.interpolated_asset_property_values[0].value #=> Types::Variant
    #   resp.data.interpolated_asset_property_values[0].value.string_value #=> String
    #   resp.data.interpolated_asset_property_values[0].value.integer_value #=> Integer
    #   resp.data.interpolated_asset_property_values[0].value.double_value #=> Float
    #   resp.data.interpolated_asset_property_values[0].value.boolean_value #=> Boolean
    #   resp.data.next_token #=> String
    #
    def get_interpolated_asset_property_values(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInterpolatedAssetPropertyValuesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInterpolatedAssetPropertyValuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInterpolatedAssetPropertyValues
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::GetInterpolatedAssetPropertyValues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInterpolatedAssetPropertyValues,
        stubs: @stubs,
        params_class: Params::GetInterpolatedAssetPropertyValuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_interpolated_asset_property_values
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of access policies for an identity (an Amazon Web Services SSO user, an Amazon Web Services SSO
    #       group, or an IAM user) or an IoT SiteWise Monitor resource (a portal or project).</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccessPoliciesInput}.
    #
    # @option params [String] :identity_type
    #   <p>The type of identity (Amazon Web Services SSO user, Amazon Web Services SSO group, or IAM user). This parameter is required
    #         if you specify <code>identityId</code>.</p>
    #
    # @option params [String] :identity_id
    #   <p>The ID of the identity. This parameter is required if you specify <code>USER</code> or
    #           <code>GROUP</code> for <code>identityType</code>.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resource (portal or project). This parameter is required if you specify
    #           <code>resourceId</code>.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource. This parameter is required if you specify
    #           <code>resourceType</code>.</p>
    #
    # @option params [String] :iam_arn
    #   <p>The ARN of the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM ARNs</a> in the
    #           <i>IAM User Guide</i>. This parameter is required if you specify
    #           <code>IAM</code> for <code>identityType</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    # @return [Types::ListAccessPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_policies(
    #     identity_type: 'USER', # accepts ["USER", "GROUP", "IAM"]
    #     identity_id: 'identityId',
    #     resource_type: 'PORTAL', # accepts ["PORTAL", "PROJECT"]
    #     resource_id: 'resourceId',
    #     iam_arn: 'iamArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccessPoliciesOutput
    #   resp.data.access_policy_summaries #=> Array<AccessPolicySummary>
    #   resp.data.access_policy_summaries[0] #=> Types::AccessPolicySummary
    #   resp.data.access_policy_summaries[0].id #=> String
    #   resp.data.access_policy_summaries[0].identity #=> Types::Identity
    #   resp.data.access_policy_summaries[0].identity.user #=> Types::UserIdentity
    #   resp.data.access_policy_summaries[0].identity.user.id #=> String
    #   resp.data.access_policy_summaries[0].identity.group #=> Types::GroupIdentity
    #   resp.data.access_policy_summaries[0].identity.group.id #=> String
    #   resp.data.access_policy_summaries[0].identity.iam_user #=> Types::IAMUserIdentity
    #   resp.data.access_policy_summaries[0].identity.iam_user.arn #=> String
    #   resp.data.access_policy_summaries[0].identity.iam_role #=> Types::IAMRoleIdentity
    #   resp.data.access_policy_summaries[0].identity.iam_role.arn #=> String
    #   resp.data.access_policy_summaries[0].resource #=> Types::Resource
    #   resp.data.access_policy_summaries[0].resource.portal #=> Types::PortalResource
    #   resp.data.access_policy_summaries[0].resource.portal.id #=> String
    #   resp.data.access_policy_summaries[0].resource.project #=> Types::ProjectResource
    #   resp.data.access_policy_summaries[0].resource.project.id #=> String
    #   resp.data.access_policy_summaries[0].permission #=> String, one of ["ADMINISTRATOR", "VIEWER"]
    #   resp.data.access_policy_summaries[0].creation_date #=> Time
    #   resp.data.access_policy_summaries[0].last_update_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_access_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccessPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccessPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccessPolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListAccessPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccessPolicies,
        stubs: @stubs,
        params_class: Params::ListAccessPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_access_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of summaries of all asset models.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssetModelsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    # @return [Types::ListAssetModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_models(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssetModelsOutput
    #   resp.data.asset_model_summaries #=> Array<AssetModelSummary>
    #   resp.data.asset_model_summaries[0] #=> Types::AssetModelSummary
    #   resp.data.asset_model_summaries[0].id #=> String
    #   resp.data.asset_model_summaries[0].arn #=> String
    #   resp.data.asset_model_summaries[0].name #=> String
    #   resp.data.asset_model_summaries[0].description #=> String
    #   resp.data.asset_model_summaries[0].creation_date #=> Time
    #   resp.data.asset_model_summaries[0].last_update_date #=> Time
    #   resp.data.asset_model_summaries[0].status #=> Types::AssetModelStatus
    #   resp.data.asset_model_summaries[0].status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"]
    #   resp.data.asset_model_summaries[0].status.error #=> Types::ErrorDetails
    #   resp.data.asset_model_summaries[0].status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_model_summaries[0].status.error.message #=> String
    #   resp.data.asset_model_summaries[0].status.error.details #=> Array<DetailedError>
    #   resp.data.asset_model_summaries[0].status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_model_summaries[0].status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_model_summaries[0].status.error.details[0].message #=> String
    #   resp.data.next_token #=> String
    #
    def list_asset_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssetModelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssetModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssetModels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListAssetModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssetModels,
        stubs: @stubs,
        params_class: Params::ListAssetModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_asset_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of asset relationships for an asset. You can use this operation
    #       to identify an asset's root asset and all associated assets between that asset and its
    #       root.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssetRelationshipsInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset.</p>
    #
    # @option params [String] :traversal_type
    #   <p>The type of traversal to use to identify asset relationships. Choose the following
    #         option:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PATH_TO_ROOT</code> – Identify the asset's parent assets up to the root
    #             asset. The asset that you specify in <code>assetId</code> is the first result in the list
    #             of <code>assetRelationshipSummaries</code>, and the root asset is the last result.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #
    # @return [Types::ListAssetRelationshipsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_relationships(
    #     asset_id: 'assetId', # required
    #     traversal_type: 'PATH_TO_ROOT', # required - accepts ["PATH_TO_ROOT"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssetRelationshipsOutput
    #   resp.data.asset_relationship_summaries #=> Array<AssetRelationshipSummary>
    #   resp.data.asset_relationship_summaries[0] #=> Types::AssetRelationshipSummary
    #   resp.data.asset_relationship_summaries[0].hierarchy_info #=> Types::AssetHierarchyInfo
    #   resp.data.asset_relationship_summaries[0].hierarchy_info.parent_asset_id #=> String
    #   resp.data.asset_relationship_summaries[0].hierarchy_info.child_asset_id #=> String
    #   resp.data.asset_relationship_summaries[0].relationship_type #=> String, one of ["HIERARCHY"]
    #   resp.data.next_token #=> String
    #
    def list_asset_relationships(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssetRelationshipsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssetRelationshipsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssetRelationships
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListAssetRelationships
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssetRelationships,
        stubs: @stubs,
        params_class: Params::ListAssetRelationshipsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_asset_relationships
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of asset summaries.</p>
    #          <p>You can use this operation to do the following:</p>
    #          <ul>
    #             <li>
    #                <p>List assets based on a specific asset model.</p>
    #             </li>
    #             <li>
    #                <p>List top-level assets.</p>
    #             </li>
    #          </ul>
    #          <p>You can't use this operation to list all assets. To retrieve summaries for all of your
    #       assets, use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html">ListAssetModels</a> to get all of your asset model IDs. Then, use ListAssets to get all
    #       assets for each asset model.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssetsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model by which to filter the list of assets. This parameter is
    #         required if you choose <code>ALL</code> for <code>filter</code>.</p>
    #
    # @option params [String] :filter
    #   <p>The filter for the requested list of assets. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all assets for a given asset model ID. The
    #               <code>assetModelId</code> parameter is required if you filter by
    #             <code>ALL</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_LEVEL</code> – The list includes only top-level assets in the asset
    #             hierarchy tree.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>ALL</code>
    #            </p>
    #
    # @return [Types::ListAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assets(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     asset_model_id: 'assetModelId',
    #     filter: 'ALL' # accepts ["ALL", "TOP_LEVEL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssetsOutput
    #   resp.data.asset_summaries #=> Array<AssetSummary>
    #   resp.data.asset_summaries[0] #=> Types::AssetSummary
    #   resp.data.asset_summaries[0].id #=> String
    #   resp.data.asset_summaries[0].arn #=> String
    #   resp.data.asset_summaries[0].name #=> String
    #   resp.data.asset_summaries[0].asset_model_id #=> String
    #   resp.data.asset_summaries[0].creation_date #=> Time
    #   resp.data.asset_summaries[0].last_update_date #=> Time
    #   resp.data.asset_summaries[0].status #=> Types::AssetStatus
    #   resp.data.asset_summaries[0].status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.asset_summaries[0].status.error #=> Types::ErrorDetails
    #   resp.data.asset_summaries[0].status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_summaries[0].status.error.message #=> String
    #   resp.data.asset_summaries[0].status.error.details #=> Array<DetailedError>
    #   resp.data.asset_summaries[0].status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_summaries[0].status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_summaries[0].status.error.details[0].message #=> String
    #   resp.data.asset_summaries[0].hierarchies #=> Array<AssetHierarchy>
    #   resp.data.asset_summaries[0].hierarchies[0] #=> Types::AssetHierarchy
    #   resp.data.asset_summaries[0].hierarchies[0].id #=> String
    #   resp.data.asset_summaries[0].hierarchies[0].name #=> String
    #   resp.data.asset_summaries[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssets,
        stubs: @stubs,
        params_class: Params::ListAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of associated assets.</p>
    #          <p>You can use this operation to do the following:</p>
    #          <ul>
    #             <li>
    #                <p>List child assets associated to a parent asset by a hierarchy that you specify.</p>
    #             </li>
    #             <li>
    #                <p>List an asset's parent asset.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListAssociatedAssetsInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset to query.</p>
    #
    # @option params [String] :hierarchy_id
    #   <p>The ID of the hierarchy by which child assets are associated to the asset. To find a
    #         hierarchy ID, use the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAsset.html">DescribeAsset</a> or <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html">DescribeAssetModel</a> operations. This
    #         parameter is required if you choose <code>CHILD</code> for
    #         <code>traversalDirection</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [String] :traversal_direction
    #   <p>The direction to list associated assets. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHILD</code> – The list includes all child assets associated to the
    #             asset. The <code>hierarchyId</code> parameter is required if you choose
    #             <code>CHILD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARENT</code> – The list includes the asset's parent asset.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>CHILD</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    # @return [Types::ListAssociatedAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_assets(
    #     asset_id: 'assetId', # required
    #     hierarchy_id: 'hierarchyId',
    #     traversal_direction: 'PARENT', # accepts ["PARENT", "CHILD"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssociatedAssetsOutput
    #   resp.data.asset_summaries #=> Array<AssociatedAssetsSummary>
    #   resp.data.asset_summaries[0] #=> Types::AssociatedAssetsSummary
    #   resp.data.asset_summaries[0].id #=> String
    #   resp.data.asset_summaries[0].arn #=> String
    #   resp.data.asset_summaries[0].name #=> String
    #   resp.data.asset_summaries[0].asset_model_id #=> String
    #   resp.data.asset_summaries[0].creation_date #=> Time
    #   resp.data.asset_summaries[0].last_update_date #=> Time
    #   resp.data.asset_summaries[0].status #=> Types::AssetStatus
    #   resp.data.asset_summaries[0].status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.asset_summaries[0].status.error #=> Types::ErrorDetails
    #   resp.data.asset_summaries[0].status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_summaries[0].status.error.message #=> String
    #   resp.data.asset_summaries[0].status.error.details #=> Array<DetailedError>
    #   resp.data.asset_summaries[0].status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_summaries[0].status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_summaries[0].status.error.details[0].message #=> String
    #   resp.data.asset_summaries[0].hierarchies #=> Array<AssetHierarchy>
    #   resp.data.asset_summaries[0].hierarchies[0] #=> Types::AssetHierarchy
    #   resp.data.asset_summaries[0].hierarchies[0].id #=> String
    #   resp.data.asset_summaries[0].hierarchies[0].name #=> String
    #   resp.data.asset_summaries[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_associated_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssociatedAssetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssociatedAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssociatedAssets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListAssociatedAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssociatedAssets,
        stubs: @stubs,
        params_class: Params::ListAssociatedAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_associated_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of dashboards for an IoT SiteWise Monitor project.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDashboardsInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    # @return [Types::ListDashboardsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboards(
    #     project_id: 'projectId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDashboardsOutput
    #   resp.data.dashboard_summaries #=> Array<DashboardSummary>
    #   resp.data.dashboard_summaries[0] #=> Types::DashboardSummary
    #   resp.data.dashboard_summaries[0].id #=> String
    #   resp.data.dashboard_summaries[0].name #=> String
    #   resp.data.dashboard_summaries[0].description #=> String
    #   resp.data.dashboard_summaries[0].creation_date #=> Time
    #   resp.data.dashboard_summaries[0].last_update_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_dashboards(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDashboardsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDashboardsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDashboards
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListDashboards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDashboards,
        stubs: @stubs,
        params_class: Params::ListDashboardsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dashboards
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGatewaysInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    # @return [Types::ListGatewaysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGatewaysOutput
    #   resp.data.gateway_summaries #=> Array<GatewaySummary>
    #   resp.data.gateway_summaries[0] #=> Types::GatewaySummary
    #   resp.data.gateway_summaries[0].gateway_id #=> String
    #   resp.data.gateway_summaries[0].gateway_name #=> String
    #   resp.data.gateway_summaries[0].gateway_platform #=> Types::GatewayPlatform
    #   resp.data.gateway_summaries[0].gateway_platform.greengrass #=> Types::Greengrass
    #   resp.data.gateway_summaries[0].gateway_platform.greengrass.group_arn #=> String
    #   resp.data.gateway_summaries[0].gateway_platform.greengrass_v2 #=> Types::GreengrassV2
    #   resp.data.gateway_summaries[0].gateway_platform.greengrass_v2.core_device_thing_name #=> String
    #   resp.data.gateway_summaries[0].gateway_capability_summaries #=> Array<GatewayCapabilitySummary>
    #   resp.data.gateway_summaries[0].gateway_capability_summaries[0] #=> Types::GatewayCapabilitySummary
    #   resp.data.gateway_summaries[0].gateway_capability_summaries[0].capability_namespace #=> String
    #   resp.data.gateway_summaries[0].gateway_capability_summaries[0].capability_sync_status #=> String, one of ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN"]
    #   resp.data.gateway_summaries[0].creation_date #=> Time
    #   resp.data.gateway_summaries[0].last_update_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_gateways(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGatewaysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGatewaysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGateways
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListGateways
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGateways,
        stubs: @stubs,
        params_class: Params::ListGatewaysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_gateways
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of IoT SiteWise Monitor portals.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPortalsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    # @return [Types::ListPortalsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portals(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPortalsOutput
    #   resp.data.portal_summaries #=> Array<PortalSummary>
    #   resp.data.portal_summaries[0] #=> Types::PortalSummary
    #   resp.data.portal_summaries[0].id #=> String
    #   resp.data.portal_summaries[0].name #=> String
    #   resp.data.portal_summaries[0].description #=> String
    #   resp.data.portal_summaries[0].start_url #=> String
    #   resp.data.portal_summaries[0].creation_date #=> Time
    #   resp.data.portal_summaries[0].last_update_date #=> Time
    #   resp.data.portal_summaries[0].role_arn #=> String
    #   resp.data.portal_summaries[0].status #=> Types::PortalStatus
    #   resp.data.portal_summaries[0].status.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"]
    #   resp.data.portal_summaries[0].status.error #=> Types::MonitorErrorDetails
    #   resp.data.portal_summaries[0].status.error.code #=> String, one of ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"]
    #   resp.data.portal_summaries[0].status.error.message #=> String
    #   resp.data.next_token #=> String
    #
    def list_portals(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPortalsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPortalsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPortals
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListPortals
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPortals,
        stubs: @stubs,
        params_class: Params::ListPortalsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_portals
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of assets associated with an IoT SiteWise Monitor project.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProjectAssetsInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    # @return [Types::ListProjectAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_project_assets(
    #     project_id: 'projectId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProjectAssetsOutput
    #   resp.data.asset_ids #=> Array<String>
    #   resp.data.asset_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_project_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProjectAssetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProjectAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProjectAssets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListProjectAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProjectAssets,
        stubs: @stubs,
        params_class: Params::ListProjectAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_project_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a paginated list of projects for an IoT SiteWise Monitor portal.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProjectsInput}.
    #
    # @option params [String] :portal_id
    #   <p>The ID of the portal.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    # @return [Types::ListProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects(
    #     portal_id: 'portalId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProjectsOutput
    #   resp.data.project_summaries #=> Array<ProjectSummary>
    #   resp.data.project_summaries[0] #=> Types::ProjectSummary
    #   resp.data.project_summaries[0].id #=> String
    #   resp.data.project_summaries[0].name #=> String
    #   resp.data.project_summaries[0].description #=> String
    #   resp.data.project_summaries[0].creation_date #=> Time
    #   resp.data.project_summaries[0].last_update_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_projects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProjectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProjects
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListProjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProjects,
        stubs: @stubs,
        params_class: Params::ListProjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_projects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the list of tags for an IoT SiteWise resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource.</p>
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
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
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

    # <p>Retrieves a paginated list of time series (data streams).</p>
    #
    # @param [Hash] params
    #   See {Types::ListTimeSeriesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    # @option params [String] :alias_prefix
    #   <p>The alias prefix of the time series.</p>
    #
    # @option params [String] :time_series_type
    #   <p>The type of the time series. The time series type can be one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASSOCIATED</code> – The time series is associated with an asset
    #             property.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISASSOCIATED</code> – The time series isn't associated with any asset
    #             property.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListTimeSeriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_time_series(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     asset_id: 'assetId',
    #     alias_prefix: 'aliasPrefix',
    #     time_series_type: 'ASSOCIATED' # accepts ["ASSOCIATED", "DISASSOCIATED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTimeSeriesOutput
    #   resp.data.time_series_summaries #=> Array<TimeSeriesSummary>
    #   resp.data.time_series_summaries[0] #=> Types::TimeSeriesSummary
    #   resp.data.time_series_summaries[0].asset_id #=> String
    #   resp.data.time_series_summaries[0].property_id #=> String
    #   resp.data.time_series_summaries[0].alias #=> String
    #   resp.data.time_series_summaries[0].time_series_id #=> String
    #   resp.data.time_series_summaries[0].data_type #=> String, one of ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #   resp.data.time_series_summaries[0].data_type_spec #=> String
    #   resp.data.time_series_summaries[0].time_series_creation_date #=> Time
    #   resp.data.time_series_summaries[0].time_series_last_update_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_time_series(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTimeSeriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTimeSeriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTimeSeries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListTimeSeries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTimeSeries,
        stubs: @stubs,
        params_class: Params::ListTimeSeriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_time_series
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the default encryption configuration for the Amazon Web Services account. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html">Key management</a> in
    #       the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutDefaultEncryptionConfigurationInput}.
    #
    # @option params [String] :encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Key ID of the customer managed key used for KMS encryption. This is required if you
    #         use <code>KMS_BASED_ENCRYPTION</code>.</p>
    #
    # @return [Types::PutDefaultEncryptionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_default_encryption_configuration(
    #     encryption_type: 'SITEWISE_DEFAULT_ENCRYPTION', # required - accepts ["SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"]
    #     kms_key_id: 'kmsKeyId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDefaultEncryptionConfigurationOutput
    #   resp.data.encryption_type #=> String, one of ["SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"]
    #   resp.data.kms_key_arn #=> String
    #   resp.data.configuration_status #=> Types::ConfigurationStatus
    #   resp.data.configuration_status.state #=> String, one of ["ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #   resp.data.configuration_status.error #=> Types::ConfigurationErrorDetails
    #   resp.data.configuration_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.configuration_status.error.message #=> String
    #
    def put_default_encryption_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDefaultEncryptionConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDefaultEncryptionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDefaultEncryptionConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::PutDefaultEncryptionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDefaultEncryptionConfiguration,
        stubs: @stubs,
        params_class: Params::PutDefaultEncryptionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_default_encryption_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets logging options for IoT SiteWise.</p>
    #
    # @param [Hash] params
    #   See {Types::PutLoggingOptionsInput}.
    #
    # @option params [LoggingOptions] :logging_options
    #   <p>The logging options to set.</p>
    #
    # @return [Types::PutLoggingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_logging_options(
    #     logging_options: {
    #       level: 'ERROR' # required - accepts ["ERROR", "INFO", "OFF"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLoggingOptionsOutput
    #
    def put_logging_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLoggingOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLoggingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLoggingOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::PutLoggingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLoggingOptions,
        stubs: @stubs,
        params_class: Params::PutLoggingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_logging_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures storage settings for IoT SiteWise.</p>
    #
    # @param [Hash] params
    #   See {Types::PutStorageConfigurationInput}.
    #
    # @option params [String] :storage_type
    #   <p>The storage tier that you specified for your data.
    #         The <code>storageType</code> parameter can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.
    #             The hot tier is a service-managed database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.
    #             The cold tier is a customer-managed Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #
    # @option params [MultiLayerStorage] :multi_layer_storage
    #   <p>Identifies a storage destination. If you specified <code>MULTI_LAYER_STORAGE</code> for the storage type,
    #         you must specify a <code>MultiLayerStorage</code> object.</p>
    #
    # @option params [String] :disassociated_data_storage
    #   <p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.
    #         The <code>disassociatedDataStorage</code> can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>
    #                  <important>
    #                     <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html">Data streams</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [RetentionPeriod] :retention_period
    #   <p>How many days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>
    #
    # @return [Types::PutStorageConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_storage_configuration(
    #     storage_type: 'SITEWISE_DEFAULT_STORAGE', # required - accepts ["SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"]
    #     multi_layer_storage: {
    #       customer_managed_s3_storage: {
    #         s3_resource_arn: 's3ResourceArn', # required
    #         role_arn: 'roleArn' # required
    #       } # required
    #     },
    #     disassociated_data_storage: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     retention_period: {
    #       number_of_days: 1,
    #       unlimited: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutStorageConfigurationOutput
    #   resp.data.storage_type #=> String, one of ["SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"]
    #   resp.data.multi_layer_storage #=> Types::MultiLayerStorage
    #   resp.data.multi_layer_storage.customer_managed_s3_storage #=> Types::CustomerManagedS3Storage
    #   resp.data.multi_layer_storage.customer_managed_s3_storage.s3_resource_arn #=> String
    #   resp.data.multi_layer_storage.customer_managed_s3_storage.role_arn #=> String
    #   resp.data.disassociated_data_storage #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.retention_period #=> Types::RetentionPeriod
    #   resp.data.retention_period.number_of_days #=> Integer
    #   resp.data.retention_period.unlimited #=> Boolean
    #   resp.data.configuration_status #=> Types::ConfigurationStatus
    #   resp.data.configuration_status.state #=> String, one of ["ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #   resp.data.configuration_status.error #=> Types::ConfigurationErrorDetails
    #   resp.data.configuration_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.configuration_status.error.message #=> String
    #
    def put_storage_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutStorageConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutStorageConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutStorageConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::PutStorageConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutStorageConfiguration,
        stubs: @stubs,
        params_class: Params::PutStorageConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_storage_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to an IoT SiteWise resource. If a tag already exists for the resource, this operation
    #       updates the tag's value.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to tag.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
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
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::TooManyTagsException, Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
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

    # <p>Removes a tag from an IoT SiteWise resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to untag.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys for tags to remove from the resource.</p>
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
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
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

    # <p>Updates an existing access policy that specifies an identity's access to an IoT SiteWise Monitor
    #       portal or project resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccessPolicyInput}.
    #
    # @option params [String] :access_policy_id
    #   <p>The ID of the access policy.</p>
    #
    # @option params [Identity] :access_policy_identity
    #   <p>The identity for this access policy. Choose an Amazon Web Services SSO user, an Amazon Web Services SSO group, or an IAM user.</p>
    #
    # @option params [Resource] :access_policy_resource
    #   <p>The IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>
    #
    # @option params [String] :access_policy_permission
    #   <p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::UpdateAccessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_policy(
    #     access_policy_id: 'accessPolicyId', # required
    #     access_policy_identity: {
    #       user: {
    #         id: 'id' # required
    #       },
    #       group: {
    #         id: 'id' # required
    #       },
    #       iam_user: {
    #         arn: 'arn' # required
    #       },
    #       iam_role: {
    #         arn: 'arn' # required
    #       }
    #     }, # required
    #     access_policy_resource: {
    #       portal: {
    #         id: 'id' # required
    #       },
    #       project: {
    #         id: 'id' # required
    #       }
    #     }, # required
    #     access_policy_permission: 'ADMINISTRATOR', # required - accepts ["ADMINISTRATOR", "VIEWER"]
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccessPolicyOutput
    #
    def update_access_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccessPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateAccessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccessPolicy,
        stubs: @stubs,
        params_class: Params::UpdateAccessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_access_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an asset's name. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html">Updating assets and models</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssetInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset to update.</p>
    #
    # @option params [String] :asset_name
    #   <p>A unique, friendly name for the asset.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @option params [String] :asset_description
    #   <p>A description for the asset.</p>
    #
    # @return [Types::UpdateAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset(
    #     asset_id: 'assetId', # required
    #     asset_name: 'assetName', # required
    #     client_token: 'clientToken',
    #     asset_description: 'assetDescription'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssetOutput
    #   resp.data.asset_status #=> Types::AssetStatus
    #   resp.data.asset_status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.asset_status.error #=> Types::ErrorDetails
    #   resp.data.asset_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_status.error.message #=> String
    #   resp.data.asset_status.error.details #=> Array<DetailedError>
    #   resp.data.asset_status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_status.error.details[0].message #=> String
    #
    def update_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAsset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAsset,
        stubs: @stubs,
        params_class: Params::UpdateAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an asset model and all of the assets that were created from the model. Each asset
    #       created from the model inherits the updated asset model's property and hierarchy definitions.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html">Updating assets and models</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #          <important>
    #             <p>This operation overwrites the existing model with the provided model. To avoid deleting
    #         your asset model's properties or hierarchies, you must include their IDs and definitions in
    #         the updated asset model payload. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html">DescribeAssetModel</a>.</p>
    #             <p>If you remove a property from an asset model, IoT SiteWise deletes all previous data for that
    #         property. If you remove a hierarchy definition from an asset model, IoT SiteWise disassociates every
    #         asset associated with that hierarchy. You can't change the type or data type of an existing
    #         property.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssetModelInput}.
    #
    # @option params [String] :asset_model_id
    #   <p>The ID of the asset model to update.</p>
    #
    # @option params [String] :asset_model_name
    #   <p>A unique, friendly name for the asset model.</p>
    #
    # @option params [String] :asset_model_description
    #   <p>A description for the asset model.</p>
    #
    # @option params [Array<AssetModelProperty>] :asset_model_properties
    #   <p>The updated property definitions of the asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html">Asset properties</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [Array<AssetModelHierarchy>] :asset_model_hierarchies
    #   <p>The updated hierarchy definitions of the asset model. Each hierarchy specifies an asset
    #         model whose assets can be children of any other assets created from this asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 10 hierarchies per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [Array<AssetModelCompositeModel>] :asset_model_composite_models
    #   <p>The composite asset models that are part of this asset model.
    #         Composite asset models are asset models that contain specific properties. Each composite model
    #         has a type that defines the properties that the composite model supports. Use composite asset
    #         models to define alarms on this asset model.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::UpdateAssetModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset_model(
    #     asset_model_id: 'assetModelId', # required
    #     asset_model_name: 'assetModelName', # required
    #     asset_model_description: 'assetModelDescription',
    #     asset_model_properties: [
    #       {
    #         id: 'id',
    #         name: 'name', # required
    #         data_type: 'STRING', # required - accepts ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #         data_type_spec: 'dataTypeSpec',
    #         unit: 'unit',
    #         type: {
    #           attribute: {
    #             default_value: 'defaultValue'
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: {
    #                 state: 'DISABLED' # required - accepts ["DISABLED", "ENABLED"]
    #               } # required
    #             }
    #           },
    #           transform: {
    #             expression: 'expression', # required
    #             variables: [
    #               {
    #                 name: 'name', # required
    #                 value: {
    #                   property_id: 'propertyId', # required
    #                   hierarchy_id: 'hierarchyId'
    #                 } # required
    #               }
    #             ], # required
    #             processing_config: {
    #               compute_location: 'EDGE', # required - accepts ["EDGE", "CLOUD"]
    #             }
    #           },
    #           metric: {
    #             expression: 'expression', # required
    #             window: {
    #               tumbling: {
    #                 interval: 'interval', # required
    #                 offset: 'offset'
    #               }
    #             }, # required
    #             processing_config: {
    #               compute_location: 'EDGE' # required - accepts ["EDGE", "CLOUD"]
    #             }
    #           }
    #         } # required
    #       }
    #     ],
    #     asset_model_hierarchies: [
    #       {
    #         id: 'id',
    #         name: 'name', # required
    #         child_asset_model_id: 'childAssetModelId' # required
    #       }
    #     ],
    #     asset_model_composite_models: [
    #       {
    #         name: 'name', # required
    #         description: 'description',
    #         type: 'type', # required
    #       }
    #     ],
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssetModelOutput
    #   resp.data.asset_model_status #=> Types::AssetModelStatus
    #   resp.data.asset_model_status.state #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"]
    #   resp.data.asset_model_status.error #=> Types::ErrorDetails
    #   resp.data.asset_model_status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.asset_model_status.error.message #=> String
    #   resp.data.asset_model_status.error.details #=> Array<DetailedError>
    #   resp.data.asset_model_status.error.details[0] #=> Types::DetailedError
    #   resp.data.asset_model_status.error.details[0].code #=> String, one of ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #   resp.data.asset_model_status.error.details[0].message #=> String
    #
    def update_asset_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssetModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssetModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssetModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateAssetModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssetModel,
        stubs: @stubs,
        params_class: Params::UpdateAssetModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_asset_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an asset property's alias and notification state.</p>
    #          <important>
    #             <p>This operation overwrites the property's existing alias and notification state. To keep
    #         your existing property's alias or notification state, you must include the existing values
    #         in the UpdateAssetProperty request. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html">DescribeAssetProperty</a>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssetPropertyInput}.
    #
    # @option params [String] :asset_id
    #   <p>The ID of the asset to be updated.</p>
    #
    # @option params [String] :property_id
    #   <p>The ID of the asset property to be updated.</p>
    #
    # @option params [String] :property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #            <p>If you omit this parameter, the alias is removed from the property.</p>
    #
    # @option params [String] :property_notification_state
    #   <p>The MQTT notification state (enabled or disabled) for this asset property.
    #         When the notification state is enabled, IoT SiteWise publishes property value
    #         updates to a unique MQTT topic. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html">Interacting with other services</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>If you omit this parameter, the notification state is set to <code>DISABLED</code>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::UpdateAssetPropertyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset_property(
    #     asset_id: 'assetId', # required
    #     property_id: 'propertyId', # required
    #     property_alias: 'propertyAlias',
    #     property_notification_state: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssetPropertyOutput
    #
    def update_asset_property(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssetPropertyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssetPropertyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssetProperty
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateAssetProperty
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssetProperty,
        stubs: @stubs,
        params_class: Params::UpdateAssetPropertyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_asset_property
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an IoT SiteWise Monitor dashboard.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDashboardInput}.
    #
    # @option params [String] :dashboard_id
    #   <p>The ID of the dashboard to update.</p>
    #
    # @option params [String] :dashboard_name
    #   <p>A new friendly name for the dashboard.</p>
    #
    # @option params [String] :dashboard_description
    #   <p>A new description for the dashboard.</p>
    #
    # @option params [String] :dashboard_definition
    #   <p>The new dashboard definition, as specified in a JSON literal. For detailed information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html">Creating dashboards (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::UpdateDashboardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard(
    #     dashboard_id: 'dashboardId', # required
    #     dashboard_name: 'dashboardName', # required
    #     dashboard_description: 'dashboardDescription',
    #     dashboard_definition: 'dashboardDefinition', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDashboardOutput
    #
    def update_dashboard(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDashboardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDashboardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDashboard
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateDashboard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDashboard,
        stubs: @stubs,
        params_class: Params::UpdateDashboardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dashboard
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a gateway's name.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGatewayInput}.
    #
    # @option params [String] :gateway_id
    #   <p>The ID of the gateway to update.</p>
    #
    # @option params [String] :gateway_name
    #   <p>A unique, friendly name for the gateway.</p>
    #
    # @return [Types::UpdateGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway(
    #     gateway_id: 'gatewayId', # required
    #     gateway_name: 'gatewayName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGatewayOutput
    #
    def update_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGateway,
        stubs: @stubs,
        params_class: Params::UpdateGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a gateway capability configuration or defines a new capability configuration.
    #       Each gateway capability defines data sources for a gateway. A capability configuration
    #       can contain multiple data source configurations. If you define OPC-UA sources for a gateway in
    #       the IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To
    #       list all capability configurations for a gateway, use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html">DescribeGateway</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGatewayCapabilityConfigurationInput}.
    #
    # @option params [String] :gateway_id
    #   <p>The ID of the gateway to be updated.</p>
    #
    # @option params [String] :capability_namespace
    #   <p>The namespace of the gateway capability configuration to be updated.
    #         For example, if you configure OPC-UA
    #         sources from the IoT SiteWise console, your OPC-UA capability configuration has the namespace
    #           <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as
    #           <code>1</code>.</p>
    #
    # @option params [String] :capability_configuration
    #   <p>The JSON document that defines the configuration for the gateway capability. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli">Configuring data sources (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @return [Types::UpdateGatewayCapabilityConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_capability_configuration(
    #     gateway_id: 'gatewayId', # required
    #     capability_namespace: 'capabilityNamespace', # required
    #     capability_configuration: 'capabilityConfiguration' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGatewayCapabilityConfigurationOutput
    #   resp.data.capability_namespace #=> String
    #   resp.data.capability_sync_status #=> String, one of ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN"]
    #
    def update_gateway_capability_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGatewayCapabilityConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGatewayCapabilityConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGatewayCapabilityConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateGatewayCapabilityConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGatewayCapabilityConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateGatewayCapabilityConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gateway_capability_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an IoT SiteWise Monitor portal.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePortalInput}.
    #
    # @option params [String] :portal_id
    #   <p>The ID of the portal to update.</p>
    #
    # @option params [String] :portal_name
    #   <p>A new friendly name for the portal.</p>
    #
    # @option params [String] :portal_description
    #   <p>A new description for the portal.</p>
    #
    # @option params [String] :portal_contact_email
    #   <p>The Amazon Web Services administrator's contact email address.</p>
    #
    # @option params [Image] :portal_logo_image
    #   <p>Contains an image that is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>An image file. Choose this option to upload a new image.</p>
    #               </li>
    #               <li>
    #                  <p>The ID of an existing image. Choose this option to keep an existing image.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of a service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @option params [String] :notification_sender_email
    #   <p>The email address that sends alarm notifications.</p>
    #
    # @option params [Alarms] :alarms
    #   <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.
    #     You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
    #     For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>
    #
    # @return [Types::UpdatePortalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portal(
    #     portal_id: 'portalId', # required
    #     portal_name: 'portalName', # required
    #     portal_description: 'portalDescription',
    #     portal_contact_email: 'portalContactEmail', # required
    #     portal_logo_image: {
    #       id: 'id',
    #       file: {
    #         data: 'data', # required
    #         type: 'PNG' # required - accepts ["PNG"]
    #       }
    #     },
    #     role_arn: 'roleArn', # required
    #     client_token: 'clientToken',
    #     notification_sender_email: 'notificationSenderEmail',
    #     alarms: {
    #       alarm_role_arn: 'alarmRoleArn', # required
    #       notification_lambda_arn: 'notificationLambdaArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePortalOutput
    #   resp.data.portal_status #=> Types::PortalStatus
    #   resp.data.portal_status.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"]
    #   resp.data.portal_status.error #=> Types::MonitorErrorDetails
    #   resp.data.portal_status.error.code #=> String, one of ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"]
    #   resp.data.portal_status.error.message #=> String
    #
    def update_portal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePortalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePortalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePortal
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InvalidRequestException, Errors::ConflictingOperationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdatePortal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePortal,
        stubs: @stubs,
        params_class: Params::UpdatePortalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_portal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an IoT SiteWise Monitor project.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProjectInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project to update.</p>
    #
    # @option params [String] :project_name
    #   <p>A new friendly name for the project.</p>
    #
    # @option params [String] :project_description
    #   <p>A new description for the project.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    # @return [Types::UpdateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project(
    #     project_id: 'projectId', # required
    #     project_name: 'projectName', # required
    #     project_description: 'projectDescription',
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProjectOutput
    #
    def update_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "monitor.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProject,
        stubs: @stubs,
        params_class: Params::UpdateProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_project
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
