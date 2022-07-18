# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::PI
  # An API client for PerformanceInsightsv20180227
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon RDS Performance Insights</fullname>
  #          <p>Amazon RDS Performance Insights enables you to monitor and explore different dimensions of database load based on data captured from a running DB instance. The guide
  #             provides detailed information about Performance Insights data types, parameters and errors.</p>
  #          <p>When Performance Insights is enabled, the Amazon RDS Performance Insights API provides visibility into the performance of your DB instance. Amazon CloudWatch provides the
  #             authoritative source for Amazon Web Services service-vended monitoring metrics. Performance Insights offers a domain-specific view of DB load.</p>
  #          <p>DB load is measured as average active sessions. Performance Insights provides the data to API consumers as a two-dimensional time-series dataset. The time dimension
  #             provides DB load data for each time point in the queried time range. Each time point decomposes overall load in relation to the requested
  #             dimensions, measured at that time point. Examples include SQL, Wait event, User, and Host.</p>
  #          <ul>
  #             <li>
  #                <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <i>
  #                      <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html"> Amazon Aurora User Guide</a>
  #                   </i>. </p>
  #             </li>
  #             <li>
  #                <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <i>
  #                      <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html"> Amazon RDS User Guide</a>
  #                   </i>. </p>
  #             </li>
  #             <li>
  #               <p>To learn more about Performance Insights and Amazon DocumentDB clusters, go to the <i>
  #                      <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html"> Amazon DocumentDB Developer Guide</a>
  #                   </i>.</p>
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
    def initialize(config = AWS::SDK::PI::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>For a specific time period, retrieve the top <code>N</code> dimension keys for a metric.
    #       </p>
    #          <note>
    #             <p>Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements,
    #         only the first 500 bytes are returned.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeDimensionKeysInput}.
    #
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights will return metrics. Valid values are as follows:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>RDS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DOCDB</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :identifier
    #   <p>An immutable, Amazon Web Services Region-unique identifier for a data source. Performance Insights gathers metrics from
    #               this data source.</p>
    #           <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value.
    #               For example, specify <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code>.
    #           </p>
    #
    # @option params [Time] :start_time
    #   <p>The date and time specifying the beginning of the requested time series data. You must specify a
    #               <code>StartTime</code> within the past 7 days. The value specified is <i>inclusive</i>,
    #               which means that data points equal to or greater than <code>StartTime</code> are returned.
    #           </p>
    #           <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.
    #           </p>
    #
    # @option params [Time] :end_time
    #   <p>The date and time specifying the end of the requested time series data. The value specified is
    #         <i>exclusive</i>, which means that data points less than (but not equal to) <code>EndTime</code> are
    #         returned.</p>
    #           <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>
    #
    # @option params [String] :metric
    #   <p>The name of a Performance Insights metric to be measured.</p>
    #           <p>Valid values for <code>Metric</code> are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>db.load.avg</code> - A scaled representation of the number of active sessions for the database engine. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.sampledload.avg</code> - The raw number of active sessions for the database engine. </p>
    #               </li>
    #            </ul>
    #           <p>If the number of active sessions is less than an internal Performance Insights threshold, <code>db.load.avg</code>
    #               and <code>db.sampledload.avg</code> are the same value. If the number of active sessions is greater than
    #               the internal threshold, Performance Insights samples the active sessions, with <code>db.load.avg</code>
    #               showing the scaled values, <code>db.sampledload.avg</code> showing the raw values, and
    #               <code>db.sampledload.avg</code> less than <code>db.load.avg</code>. For most use cases, you can
    #               query <code>db.load.avg</code> only.
    #           </p>
    #
    # @option params [Integer] :period_in_seconds
    #   <p>The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as
    #               one second, or as long as one day (86400 seconds). Valid values are:
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>1</code> (one second)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>60</code> (one minute)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>300</code> (five minutes)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>3600</code> (one hour)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>86400</code> (twenty-four hours)</p>
    #               </li>
    #            </ul>
    #
    #           <p>If you don't specify <code>PeriodInSeconds</code>, then Performance Insights chooses a value for you, with a
    #               goal of returning roughly 100-200 data points in the response.
    #           </p>
    #
    # @option params [DimensionGroup] :group_by
    #   <p>A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights returns all
    #               dimensions within this group, unless you provide the names of specific dimensions within this group. You can also request that Performance Insights return
    #               a limited number of values for a dimension. </p>
    #
    # @option params [Array<String>] :additional_metrics
    #   <p>Additional metrics for the top <code>N</code> dimension keys. If the specified dimension group in the <code>GroupBy</code> parameter is
    #                   <code>db.sql_tokenized</code>, you can specify per-SQL metrics to get the values for the top <code>N</code> SQL digests. The response
    #               syntax is as follows: <code>"AdditionalMetrics" : { "<i>string</i>" : "<i>string</i>" }</code>. </p>
    #
    # @option params [DimensionGroup] :partition_by
    #   <p>For each dimension specified in <code>GroupBy</code>, specify a secondary dimension
    #               to further subdivide the partition keys in the response.
    #           </p>
    #
    # @option params [Hash<String, String>] :filter
    #   <p>One or more filters to apply in the request. Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Any number of filters by the same dimension, as specified in the <code>GroupBy</code> or
    #             <code>Partition</code> parameters.</p>
    #               </li>
    #               <li>
    #                   <p>A single filter for any other dimension in this dimension group.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more items exist than the specified <code>MaxRecords</code> value, a
    #               pagination token is included in the response so that the remaining results can be retrieved. </p>
    #
    # @option params [String] :next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond
    #               the token, up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeDimensionKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dimension_keys(
    #     service_type: 'RDS', # required - accepts ["RDS", "DOCDB"]
    #     identifier: 'Identifier', # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     metric: 'Metric', # required
    #     period_in_seconds: 1,
    #     group_by: {
    #       group: 'Group', # required
    #       dimensions: [
    #         'member'
    #       ],
    #       limit: 1
    #     }, # required
    #     additional_metrics: [
    #       'member'
    #     ],
    #     filter: {
    #       'key' => 'value'
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDimensionKeysOutput
    #   resp.data.aligned_start_time #=> Time
    #   resp.data.aligned_end_time #=> Time
    #   resp.data.partition_keys #=> Array<ResponsePartitionKey>
    #   resp.data.partition_keys[0] #=> Types::ResponsePartitionKey
    #   resp.data.partition_keys[0].dimensions #=> Hash<String, String>
    #   resp.data.partition_keys[0].dimensions['key'] #=> String
    #   resp.data.keys #=> Array<DimensionKeyDescription>
    #   resp.data.keys[0] #=> Types::DimensionKeyDescription
    #   resp.data.keys[0].dimensions #=> Hash<String, String>
    #   resp.data.keys[0].total #=> Float
    #   resp.data.keys[0].additional_metrics #=> Hash<String, Float>
    #   resp.data.keys[0].additional_metrics['key'] #=> Float
    #   resp.data.keys[0].partitions #=> Array<Float>
    #   resp.data.keys[0].partitions[0] #=> Float
    #   resp.data.next_token #=> String
    #
    def describe_dimension_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDimensionKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDimensionKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDimensionKeys
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotAuthorizedException, Errors::InvalidArgumentException, Errors::InternalServiceError]),
        data_parser: Parsers::DescribeDimensionKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDimensionKeys,
        stubs: @stubs,
        params_class: Params::DescribeDimensionKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dimension_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the attributes of the specified dimension group for a DB instance or data source. For example, if you specify a SQL ID,
    #                 <code>GetDimensionKeyDetails</code> retrieves the full text of the dimension <code>db.sql.statement</code> associated with this ID.
    #             This operation is useful because <code>GetResourceMetrics</code> and <code>DescribeDimensionKeys</code> don't support retrieval of large
    #             SQL statement text.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDimensionKeyDetailsInput}.
    #
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns data. The only valid value is <code>RDS</code>.</p>
    #
    # @option params [String] :identifier
    #   <p>The ID for a data source from which to gather dimension data. This ID must be immutable and
    #             unique within an Amazon Web Services Region. When a DB instance is the data source, specify its
    #             <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.
    #         </p>
    #
    # @option params [String] :group
    #   <p>The name of the dimension group. Performance Insights searches the specified group for the dimension group ID. The following group name values are
    #               valid:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db.query</code> (Amazon DocumentDB only)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db.sql</code> (Amazon RDS and Aurora only)</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :group_identifier
    #   <p>The ID of the dimension group from which to retrieve dimension details. For dimension group <code>db.sql</code>, the group ID is
    #                   <code>db.sql.id</code>. The following group ID values are valid:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db.sql.id</code> for dimension group <code>db.sql</code> (Aurora and RDS only)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db.query.id</code> for dimension group <code>db.query</code> (DocumentDB only)</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :requested_dimensions
    #   <p>A list of dimensions to retrieve the detail data for within the given dimension group. If you don't specify this parameter, Performance Insights returns
    #               all dimension data within the specified dimension group. Specify dimension names for the following dimension groups:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db.sql</code> - Specify either the full dimension name <code>db.sql.statement</code> or the short dimension name
    #                           <code>statement</code> (Aurora and RDS only).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db.query</code> - Specify either the full dimension name <code>db.query.statement</code> or the short dimension name
    #                           <code>statement</code> (DocumentDB only).</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetDimensionKeyDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dimension_key_details(
    #     service_type: 'RDS', # required - accepts ["RDS", "DOCDB"]
    #     identifier: 'Identifier', # required
    #     group: 'Group', # required
    #     group_identifier: 'GroupIdentifier', # required
    #     requested_dimensions: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDimensionKeyDetailsOutput
    #   resp.data.dimensions #=> Array<DimensionKeyDetail>
    #   resp.data.dimensions[0] #=> Types::DimensionKeyDetail
    #   resp.data.dimensions[0].value #=> String
    #   resp.data.dimensions[0].dimension #=> String
    #   resp.data.dimensions[0].status #=> String, one of ["AVAILABLE", "PROCESSING", "UNAVAILABLE"]
    #
    def get_dimension_key_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDimensionKeyDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDimensionKeyDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDimensionKeyDetails
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotAuthorizedException, Errors::InvalidArgumentException, Errors::InternalServiceError]),
        data_parser: Parsers::GetDimensionKeyDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDimensionKeyDetails,
        stubs: @stubs,
        params_class: Params::GetDimensionKeyDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_dimension_key_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve the metadata for different features. For example, the metadata might indicate
    #             that a feature is turned on or off on a specific DB instance.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceMetadataInput}.
    #
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics.</p>
    #
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region.
    #               Performance Insights gathers metrics from this data source. To use a DB instance as a data source,
    #               specify its <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.
    #           </p>
    #
    # @return [Types::GetResourceMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_metadata(
    #     service_type: 'RDS', # required - accepts ["RDS", "DOCDB"]
    #     identifier: 'Identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceMetadataOutput
    #   resp.data.identifier #=> String
    #   resp.data.features #=> Hash<String, FeatureMetadata>
    #   resp.data.features['key'] #=> Types::FeatureMetadata
    #   resp.data.features['key'].status #=> String, one of ["ENABLED", "DISABLED", "UNSUPPORTED", "ENABLED_PENDING_REBOOT", "DISABLED_PENDING_REBOOT", "UNKNOWN"]
    #
    def get_resource_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotAuthorizedException, Errors::InvalidArgumentException, Errors::InternalServiceError]),
        data_parser: Parsers::GetResourceMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceMetadata,
        stubs: @stubs,
        params_class: Params::GetResourceMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve Performance Insights metrics for a set of data sources over a time period. You can provide
    #       specific dimension groups and dimensions, and provide aggregation and filtering criteria for
    #       each group.</p>
    #          <note>
    #             <p>Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements,
    #                only the first 500 bytes are returned.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetResourceMetricsInput}.
    #
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics. Valid values are as follows:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>RDS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DOCDB</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region. Performance Insights gathers metrics from this data source. In the
    #               console, the identifier is shown as <i>ResourceID</i>. When you call <code>DescribeDBInstances</code>, the identifier is
    #               returned as <code>DbiResourceId</code>.</p>
    #           <p>To use a DB instance as a data source, specify its <code>DbiResourceId</code> value. For example, specify
    #                   <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.</p>
    #
    # @option params [Array<MetricQuery>] :metric_queries
    #   <p>An array of one or more queries to perform. Each query must specify a Performance Insights metric, and can optionally specify aggregation and filtering
    #               criteria.</p>
    #
    # @option params [Time] :start_time
    #   <p>The date and time specifying the beginning of the requested time series query range. You can't
    #               specify a <code>StartTime</code> that is earlier than 7 days ago. By default, Performance Insights has 7 days of
    #               retention, but you can extend this range up to 2 years. The value specified is
    #               <i>inclusive</i>. Thus, the command returns data points equal to or greater
    #               than <code>StartTime</code>.</p>
    #           <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.</p>
    #
    # @option params [Time] :end_time
    #   <p>The date and time specifying the end of the requested time series query range. The value
    #               specified is <i>exclusive</i>. Thus, the command returns data points less than
    #               (but not equal to) <code>EndTime</code>.</p>
    #           <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>
    #
    # @option params [Integer] :period_in_seconds
    #   <p>The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400
    #               seconds). Valid values are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>1</code> (one second)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>60</code> (one minute)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>300</code> (five minutes)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>3600</code> (one hour)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>86400</code> (twenty-four hours)</p>
    #               </li>
    #            </ul>
    #           <p>If you don't specify <code>PeriodInSeconds</code>, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data
    #               points in the response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more items exist than the specified <code>MaxRecords</code> value, a
    #               pagination token is included in the response so that the remaining results can be retrieved. </p>
    #
    # @option params [String] :next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond
    #               the token, up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::GetResourceMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_metrics(
    #     service_type: 'RDS', # required - accepts ["RDS", "DOCDB"]
    #     identifier: 'Identifier', # required
    #     metric_queries: [
    #       {
    #         metric: 'Metric', # required
    #         group_by: {
    #           group: 'Group', # required
    #           dimensions: [
    #             'member'
    #           ],
    #           limit: 1
    #         },
    #         filter: {
    #           'key' => 'value'
    #         }
    #       }
    #     ], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period_in_seconds: 1,
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceMetricsOutput
    #   resp.data.aligned_start_time #=> Time
    #   resp.data.aligned_end_time #=> Time
    #   resp.data.identifier #=> String
    #   resp.data.metric_list #=> Array<MetricKeyDataPoints>
    #   resp.data.metric_list[0] #=> Types::MetricKeyDataPoints
    #   resp.data.metric_list[0].key #=> Types::ResponseResourceMetricKey
    #   resp.data.metric_list[0].key.metric #=> String
    #   resp.data.metric_list[0].key.dimensions #=> Hash<String, String>
    #   resp.data.metric_list[0].key.dimensions['key'] #=> String
    #   resp.data.metric_list[0].data_points #=> Array<DataPoint>
    #   resp.data.metric_list[0].data_points[0] #=> Types::DataPoint
    #   resp.data.metric_list[0].data_points[0].timestamp #=> Time
    #   resp.data.metric_list[0].data_points[0].value #=> Float
    #   resp.data.next_token #=> String
    #
    def get_resource_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceMetricsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceMetrics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotAuthorizedException, Errors::InvalidArgumentException, Errors::InternalServiceError]),
        data_parser: Parsers::GetResourceMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceMetrics,
        stubs: @stubs,
        params_class: Params::GetResourceMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_metrics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve the dimensions that can be queried for each specified metric type on a specified DB instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAvailableResourceDimensionsInput}.
    #
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics.</p>
    #
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique within an Amazon Web Services Region. Performance Insights gathers
    #               metrics from this data source. To use an Amazon RDS DB instance as a data source, specify its
    #                   <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VWZ</code>. </p>
    #
    # @option params [Array<String>] :metrics
    #   <p>The types of metrics for which to retrieve dimensions. Valid values include <code>db.load</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the response. If more items exist than the specified
    #               <code>MaxRecords</code> value, a pagination token is included in the response so that the remaining
    #               results can be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified,
    #               the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.
    #           </p>
    #
    # @return [Types::ListAvailableResourceDimensionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_resource_dimensions(
    #     service_type: 'RDS', # required - accepts ["RDS", "DOCDB"]
    #     identifier: 'Identifier', # required
    #     metrics: [
    #       'member'
    #     ], # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAvailableResourceDimensionsOutput
    #   resp.data.metric_dimensions #=> Array<MetricDimensionGroups>
    #   resp.data.metric_dimensions[0] #=> Types::MetricDimensionGroups
    #   resp.data.metric_dimensions[0].metric #=> String
    #   resp.data.metric_dimensions[0].groups #=> Array<DimensionGroupDetail>
    #   resp.data.metric_dimensions[0].groups[0] #=> Types::DimensionGroupDetail
    #   resp.data.metric_dimensions[0].groups[0].group #=> String
    #   resp.data.metric_dimensions[0].groups[0].dimensions #=> Array<DimensionDetail>
    #   resp.data.metric_dimensions[0].groups[0].dimensions[0] #=> Types::DimensionDetail
    #   resp.data.metric_dimensions[0].groups[0].dimensions[0].identifier #=> String
    #   resp.data.next_token #=> String
    #
    def list_available_resource_dimensions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAvailableResourceDimensionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAvailableResourceDimensionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAvailableResourceDimensions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotAuthorizedException, Errors::InvalidArgumentException, Errors::InternalServiceError]),
        data_parser: Parsers::ListAvailableResourceDimensions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAvailableResourceDimensions,
        stubs: @stubs,
        params_class: Params::ListAvailableResourceDimensionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_available_resource_dimensions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve metrics of the specified types that can be queried for a specified DB instance.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListAvailableResourceMetricsInput}.
    #
    # @option params [String] :service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics.</p>
    #
    # @option params [String] :identifier
    #   <p>An immutable identifier for a data source that is unique within an Amazon Web Services Region. Performance Insights gathers
    #               metrics from this data source. To use an Amazon RDS DB instance as a data source, specify its
    #                   <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VWZ</code>. </p>
    #
    # @option params [Array<String>] :metric_types
    #   <p>The types of metrics to return in the response. Valid values in the array include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>os</code> (OS counter metrics) - All engines</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db</code> (DB load metrics) - All engines except for Amazon DocumentDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql.stats</code> (per-SQL metrics) - All engines except for Amazon DocumentDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db.sql_tokenized.stats</code> (per-SQL digest metrics) - All engines except for Amazon DocumentDB</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified,
    #             the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return. If the <code>MaxRecords</code> value is less than the number
    #               of existing items, the response includes a pagination token. </p>
    #
    # @return [Types::ListAvailableResourceMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_resource_metrics(
    #     service_type: 'RDS', # required - accepts ["RDS", "DOCDB"]
    #     identifier: 'Identifier', # required
    #     metric_types: [
    #       'member'
    #     ], # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAvailableResourceMetricsOutput
    #   resp.data.metrics #=> Array<ResponseResourceMetric>
    #   resp.data.metrics[0] #=> Types::ResponseResourceMetric
    #   resp.data.metrics[0].metric #=> String
    #   resp.data.metrics[0].description #=> String
    #   resp.data.metrics[0].unit #=> String
    #   resp.data.next_token #=> String
    #
    def list_available_resource_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAvailableResourceMetricsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAvailableResourceMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAvailableResourceMetrics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotAuthorizedException, Errors::InvalidArgumentException, Errors::InternalServiceError]),
        data_parser: Parsers::ListAvailableResourceMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAvailableResourceMetrics,
        stubs: @stubs,
        params_class: Params::ListAvailableResourceMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_available_resource_metrics
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
