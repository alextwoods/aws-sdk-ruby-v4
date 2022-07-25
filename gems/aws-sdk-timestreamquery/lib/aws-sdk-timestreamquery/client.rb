# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::TimestreamQuery
  # An API client for Timestream_20181101
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Timestream Query
  #         </fullname>
  #         <p></p>
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
    def initialize(config = AWS::SDK::TimestreamQuery::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p> Cancels a query that has been issued. Cancellation is provided only if the query has
    #             not completed running before the cancellation request was issued. Because cancellation
    #             is an idempotent operation, subsequent cancellation requests will return a
    #                 <code>CancellationMessage</code>, indicating that the query has already been
    #             canceled. See <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.cancel-query.html">code
    #                 sample</a> for details. </p>
    #
    # @param [Hash] params
    #   See {Types::CancelQueryInput}.
    #
    # @option params [String] :query_id
    #   <p> The ID of the query that needs to be cancelled. <code>QueryID</code> is returned as
    #               part of the query result. </p>
    #
    # @return [Types::CancelQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_query(
    #     query_id: 'QueryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelQueryOutput
    #   resp.data.cancellation_message #=> String
    #
    def cancel_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidEndpointException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CancelQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelQuery,
        stubs: @stubs,
        params_class: Params::CancelQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Create a scheduled query that will be run on your behalf at the configured schedule.
    #             Timestream assumes the execution role provided as part of the
    #                 <code>ScheduledQueryExecutionRoleArn</code> parameter to run the query. You can use
    #             the <code>NotificationConfiguration</code> parameter to configure notification for your
    #             scheduled query operations.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateScheduledQueryInput}.
    #
    # @option params [String] :name
    #   <p>Name of the scheduled query.</p>
    #
    # @option params [String] :query_string
    #   <p>The query string to run. Parameter
    #               names can be specified in the query string <code>@</code> character followed by an
    #               identifier. The named Parameter <code>@scheduled_runtime</code> is reserved and can be used in the query to get the time at which the query is scheduled to run.</p>
    #               <p>The timestamp calculated according to the ScheduleConfiguration parameter, will be the value of <code>@scheduled_runtime</code> paramater for each query run.
    #               For example, consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this instance, the <code>@scheduled_runtime</code> parameter is
    #               initialized to the timestamp 2021-12-01 00:00:00 when invoking the query.</p>
    #
    # @option params [ScheduleConfiguration] :schedule_configuration
    #   <p>The schedule configuration for the query.</p>
    #
    # @option params [NotificationConfiguration] :notification_configuration
    #   <p>Notification configuration for the scheduled query. A notification is sent by
    #               Timestream when a query run finishes, when the state is updated or when you delete it. </p>
    #
    # @option params [TargetConfiguration] :target_configuration
    #   <p>Configuration used for writing the result of a query.</p>
    #
    # @option params [String] :client_token
    #   <p>Using a ClientToken makes the call to CreateScheduledQuery idempotent, in other words, making the same request repeatedly will produce the same result. Making
    #               multiple identical CreateScheduledQuery requests has the same effect as making a single request.
    #
    #    </p>
    #            <ul>
    #               <li>
    #                   <p> If CreateScheduledQuery is called without a <code>ClientToken</code>, the
    #                       Query SDK generates a <code>ClientToken</code> on your behalf.</p>
    #               </li>
    #               <li>
    #                   <p> After 8 hours, any request with the same <code>ClientToken</code> is treated
    #                       as a new request. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :scheduled_query_execution_role_arn
    #   <p>The ARN for the IAM role that Timestream will assume when running the scheduled query. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of key-value pairs to label the scheduled query.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Amazon KMS key used to encrypt the scheduled query resource, at-rest. If the Amazon KMS
    #               key is not specified, the scheduled query resource will be encrypted with a Timestream
    #               owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias name, or alias
    #               ARN. When using an alias name, prefix the name with <i>alias/</i>
    #            </p>
    #               <p>If ErrorReportConfiguration uses <code>SSE_KMS</code> as encryption type, the same KmsKeyId is used to encrypt the error report at rest.</p>
    #
    # @option params [ErrorReportConfiguration] :error_report_configuration
    #   <p>Configuration for error reporting. Error reports will be generated when a problem is encountered when writing the query results. </p>
    #
    # @return [Types::CreateScheduledQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scheduled_query(
    #     name: 'Name', # required
    #     query_string: 'QueryString', # required
    #     schedule_configuration: {
    #       schedule_expression: 'ScheduleExpression' # required
    #     }, # required
    #     notification_configuration: {
    #       sns_configuration: {
    #         topic_arn: 'TopicArn' # required
    #       } # required
    #     }, # required
    #     target_configuration: {
    #       timestream_configuration: {
    #         database_name: 'DatabaseName', # required
    #         table_name: 'TableName', # required
    #         time_column: 'TimeColumn', # required
    #         dimension_mappings: [
    #           {
    #             name: 'Name', # required
    #             dimension_value_type: 'VARCHAR' # required - accepts ["VARCHAR"]
    #           }
    #         ], # required
    #         multi_measure_mappings: {
    #           target_multi_measure_name: 'TargetMultiMeasureName',
    #           multi_measure_attribute_mappings: [
    #             {
    #               source_column: 'SourceColumn', # required
    #               target_multi_measure_attribute_name: 'TargetMultiMeasureAttributeName',
    #               measure_value_type: 'BIGINT' # required - accepts ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "TIMESTAMP"]
    #             }
    #           ] # required
    #         },
    #         mixed_measure_mappings: [
    #           {
    #             measure_name: 'MeasureName',
    #             source_column: 'SourceColumn',
    #             target_measure_name: 'TargetMeasureName',
    #             measure_value_type: 'BIGINT', # required - accepts ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "MULTI"]
    #           }
    #         ],
    #         measure_name_column: 'MeasureNameColumn'
    #       } # required
    #     },
    #     client_token: 'ClientToken',
    #     scheduled_query_execution_role_arn: 'ScheduledQueryExecutionRoleArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     kms_key_id: 'KmsKeyId',
    #     error_report_configuration: {
    #       s3_configuration: {
    #         bucket_name: 'BucketName', # required
    #         object_key_prefix: 'ObjectKeyPrefix',
    #         encryption_option: 'SSE_S3' # accepts ["SSE_S3", "SSE_KMS"]
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateScheduledQueryOutput
    #   resp.data.arn #=> String
    #
    def create_scheduled_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateScheduledQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateScheduledQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateScheduledQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException, Errors::InvalidEndpointException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateScheduledQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateScheduledQuery,
        stubs: @stubs,
        params_class: Params::CreateScheduledQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_scheduled_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a given scheduled query. This is an irreversible operation. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteScheduledQueryInput}.
    #
    # @option params [String] :scheduled_query_arn
    #   <p>The ARN of the scheduled query. </p>
    #
    # @return [Types::DeleteScheduledQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_query(
    #     scheduled_query_arn: 'ScheduledQueryArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteScheduledQueryOutput
    #
    def delete_scheduled_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteScheduledQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteScheduledQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteScheduledQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteScheduledQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteScheduledQuery,
        stubs: @stubs,
        params_class: Params::DeleteScheduledQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_scheduled_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>DescribeEndpoints returns a list of available endpoints to make Timestream
    #             API calls against. This API is available through both Write and Query.</p>
    #         <p>Because the Timestream SDKs are designed to transparently work with the
    #             service’s architecture, including the management and mapping of the service endpoints,
    #                 <i>it is not recommended that you use this API unless</i>:</p>
    #         <ul>
    #             <li>
    #                 <p>You are using <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints">VPC endpoints (Amazon Web Services PrivateLink) with Timestream
    #                     </a>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>Your application uses a programming language that does not yet have SDK
    #                     support</p>
    #             </li>
    #             <li>
    #                 <p>You require better control over the client-side implementation</p>
    #             </li>
    #          </ul>
    #         <p>For detailed information on how and when to use and implement DescribeEndpoints, see
    #                 <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery">The Endpoint Discovery Pattern</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointsInput}.
    #
    # @return [Types::DescribeEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoints()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointsOutput
    #   resp.data.endpoints #=> Array<Endpoint>
    #   resp.data.endpoints[0] #=> Types::Endpoint
    #   resp.data.endpoints[0].address #=> String
    #   resp.data.endpoints[0].cache_period_in_minutes #=> Integer
    #
    def describe_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpoints,
        stubs: @stubs,
        params_class: Params::DescribeEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides detailed information about a scheduled query.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScheduledQueryInput}.
    #
    # @option params [String] :scheduled_query_arn
    #   <p>The ARN of the scheduled query.</p>
    #
    # @return [Types::DescribeScheduledQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_query(
    #     scheduled_query_arn: 'ScheduledQueryArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScheduledQueryOutput
    #   resp.data.scheduled_query #=> Types::ScheduledQueryDescription
    #   resp.data.scheduled_query.arn #=> String
    #   resp.data.scheduled_query.name #=> String
    #   resp.data.scheduled_query.query_string #=> String
    #   resp.data.scheduled_query.creation_time #=> Time
    #   resp.data.scheduled_query.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.scheduled_query.previous_invocation_time #=> Time
    #   resp.data.scheduled_query.next_invocation_time #=> Time
    #   resp.data.scheduled_query.schedule_configuration #=> Types::ScheduleConfiguration
    #   resp.data.scheduled_query.schedule_configuration.schedule_expression #=> String
    #   resp.data.scheduled_query.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.scheduled_query.notification_configuration.sns_configuration #=> Types::SnsConfiguration
    #   resp.data.scheduled_query.notification_configuration.sns_configuration.topic_arn #=> String
    #   resp.data.scheduled_query.target_configuration #=> Types::TargetConfiguration
    #   resp.data.scheduled_query.target_configuration.timestream_configuration #=> Types::TimestreamConfiguration
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.database_name #=> String
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.table_name #=> String
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.time_column #=> String
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.dimension_mappings #=> Array<DimensionMapping>
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.dimension_mappings[0] #=> Types::DimensionMapping
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.dimension_mappings[0].name #=> String
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.dimension_mappings[0].dimension_value_type #=> String, one of ["VARCHAR"]
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings #=> Types::MultiMeasureMappings
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.target_multi_measure_name #=> String
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.multi_measure_attribute_mappings #=> Array<MultiMeasureAttributeMapping>
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.multi_measure_attribute_mappings[0] #=> Types::MultiMeasureAttributeMapping
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.multi_measure_attribute_mappings[0].source_column #=> String
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.multi_measure_attribute_mappings[0].target_multi_measure_attribute_name #=> String
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.multi_measure_attribute_mappings[0].measure_value_type #=> String, one of ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "TIMESTAMP"]
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings #=> Array<MixedMeasureMapping>
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0] #=> Types::MixedMeasureMapping
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].measure_name #=> String
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].source_column #=> String
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].target_measure_name #=> String
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].measure_value_type #=> String, one of ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "MULTI"]
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].multi_measure_attribute_mappings #=> Array<MultiMeasureAttributeMapping>
    #   resp.data.scheduled_query.target_configuration.timestream_configuration.measure_name_column #=> String
    #   resp.data.scheduled_query.scheduled_query_execution_role_arn #=> String
    #   resp.data.scheduled_query.kms_key_id #=> String
    #   resp.data.scheduled_query.error_report_configuration #=> Types::ErrorReportConfiguration
    #   resp.data.scheduled_query.error_report_configuration.s3_configuration #=> Types::S3Configuration
    #   resp.data.scheduled_query.error_report_configuration.s3_configuration.bucket_name #=> String
    #   resp.data.scheduled_query.error_report_configuration.s3_configuration.object_key_prefix #=> String
    #   resp.data.scheduled_query.error_report_configuration.s3_configuration.encryption_option #=> String, one of ["SSE_S3", "SSE_KMS"]
    #   resp.data.scheduled_query.last_run_summary #=> Types::ScheduledQueryRunSummary
    #   resp.data.scheduled_query.last_run_summary.invocation_time #=> Time
    #   resp.data.scheduled_query.last_run_summary.trigger_time #=> Time
    #   resp.data.scheduled_query.last_run_summary.run_status #=> String, one of ["AUTO_TRIGGER_SUCCESS", "AUTO_TRIGGER_FAILURE", "MANUAL_TRIGGER_SUCCESS", "MANUAL_TRIGGER_FAILURE"]
    #   resp.data.scheduled_query.last_run_summary.execution_stats #=> Types::ExecutionStats
    #   resp.data.scheduled_query.last_run_summary.execution_stats.execution_time_in_millis #=> Integer
    #   resp.data.scheduled_query.last_run_summary.execution_stats.data_writes #=> Integer
    #   resp.data.scheduled_query.last_run_summary.execution_stats.bytes_metered #=> Integer
    #   resp.data.scheduled_query.last_run_summary.execution_stats.records_ingested #=> Integer
    #   resp.data.scheduled_query.last_run_summary.execution_stats.query_result_rows #=> Integer
    #   resp.data.scheduled_query.last_run_summary.error_report_location #=> Types::ErrorReportLocation
    #   resp.data.scheduled_query.last_run_summary.error_report_location.s3_report_location #=> Types::S3ReportLocation
    #   resp.data.scheduled_query.last_run_summary.error_report_location.s3_report_location.bucket_name #=> String
    #   resp.data.scheduled_query.last_run_summary.error_report_location.s3_report_location.object_key #=> String
    #   resp.data.scheduled_query.last_run_summary.failure_reason #=> String
    #   resp.data.scheduled_query.recently_failed_runs #=> Array<ScheduledQueryRunSummary>
    #
    def describe_scheduled_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScheduledQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScheduledQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScheduledQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeScheduledQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScheduledQuery,
        stubs: @stubs,
        params_class: Params::DescribeScheduledQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scheduled_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> You can use this API to run a scheduled query manually. </p>
    #
    # @param [Hash] params
    #   See {Types::ExecuteScheduledQueryInput}.
    #
    # @option params [String] :scheduled_query_arn
    #   <p>ARN of the scheduled query.</p>
    #
    # @option params [Time] :invocation_time
    #   <p>The timestamp in UTC. Query will be run as if it was invoked at this timestamp. </p>
    #
    # @option params [String] :client_token
    #   <p>Not used. </p>
    #
    # @return [Types::ExecuteScheduledQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_scheduled_query(
    #     scheduled_query_arn: 'ScheduledQueryArn', # required
    #     invocation_time: Time.now, # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteScheduledQueryOutput
    #
    def execute_scheduled_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteScheduledQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteScheduledQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteScheduledQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ExecuteScheduledQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteScheduledQuery,
        stubs: @stubs,
        params_class: Params::ExecuteScheduledQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_scheduled_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of all scheduled queries in the caller's Amazon account and Region. <code>ListScheduledQueries</code> is eventually consistent. </p>
    #
    # @param [Hash] params
    #   See {Types::ListScheduledQueriesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the output. If the total number of items
    #               available is more than the value specified, a <code>NextToken</code> is provided in the
    #               output. To resume pagination, provide the <code>NextToken</code> value as the argument
    #               to the subsequent call to <code>ListScheduledQueriesRequest</code>.</p>
    #
    # @option params [String] :next_token
    #   <p> A pagination token to resume pagination.</p>
    #
    # @return [Types::ListScheduledQueriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scheduled_queries(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListScheduledQueriesOutput
    #   resp.data.scheduled_queries #=> Array<ScheduledQuery>
    #   resp.data.scheduled_queries[0] #=> Types::ScheduledQuery
    #   resp.data.scheduled_queries[0].arn #=> String
    #   resp.data.scheduled_queries[0].name #=> String
    #   resp.data.scheduled_queries[0].creation_time #=> Time
    #   resp.data.scheduled_queries[0].state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.scheduled_queries[0].previous_invocation_time #=> Time
    #   resp.data.scheduled_queries[0].next_invocation_time #=> Time
    #   resp.data.scheduled_queries[0].error_report_configuration #=> Types::ErrorReportConfiguration
    #   resp.data.scheduled_queries[0].error_report_configuration.s3_configuration #=> Types::S3Configuration
    #   resp.data.scheduled_queries[0].error_report_configuration.s3_configuration.bucket_name #=> String
    #   resp.data.scheduled_queries[0].error_report_configuration.s3_configuration.object_key_prefix #=> String
    #   resp.data.scheduled_queries[0].error_report_configuration.s3_configuration.encryption_option #=> String, one of ["SSE_S3", "SSE_KMS"]
    #   resp.data.scheduled_queries[0].target_destination #=> Types::TargetDestination
    #   resp.data.scheduled_queries[0].target_destination.timestream_destination #=> Types::TimestreamDestination
    #   resp.data.scheduled_queries[0].target_destination.timestream_destination.database_name #=> String
    #   resp.data.scheduled_queries[0].target_destination.timestream_destination.table_name #=> String
    #   resp.data.scheduled_queries[0].last_run_status #=> String, one of ["AUTO_TRIGGER_SUCCESS", "AUTO_TRIGGER_FAILURE", "MANUAL_TRIGGER_SUCCESS", "MANUAL_TRIGGER_FAILURE"]
    #   resp.data.next_token #=> String
    #
    def list_scheduled_queries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListScheduledQueriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListScheduledQueriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListScheduledQueries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidEndpointException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListScheduledQueries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListScheduledQueries,
        stubs: @stubs,
        params_class: Params::ListScheduledQueriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_scheduled_queries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all tags on a Timestream query resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Timestream resource with tags to be listed. This value is an Amazon Resource Name
    #               (ARN).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token to resume pagination.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>A synchronous operation that allows you to submit a query with parameters to be stored
    #             by Timestream for later running. Timestream only supports using this operation with the
    #                 <code>PrepareQueryRequest$ValidateOnly</code> set to <code>true</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::PrepareQueryInput}.
    #
    # @option params [String] :query_string
    #   <p>The Timestream query string that you want to use as a prepared statement. Parameter
    #               names can be specified in the query string <code>@</code> character followed by an
    #               identifier. </p>
    #
    # @option params [Boolean] :validate_only
    #   <p>By setting this value to <code>true</code>, Timestream will only validate that the
    #               query string is a valid Timestream query, and not store the prepared query for later
    #               use.</p>
    #
    # @return [Types::PrepareQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.prepare_query(
    #     query_string: 'QueryString', # required
    #     validate_only: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PrepareQueryOutput
    #   resp.data.query_string #=> String
    #   resp.data.columns #=> Array<SelectColumn>
    #   resp.data.columns[0] #=> Types::SelectColumn
    #   resp.data.columns[0].name #=> String
    #   resp.data.columns[0].type #=> Types::Type
    #   resp.data.columns[0].type.scalar_type #=> String, one of ["VARCHAR", "BOOLEAN", "BIGINT", "DOUBLE", "TIMESTAMP", "DATE", "TIME", "INTERVAL_DAY_TO_SECOND", "INTERVAL_YEAR_TO_MONTH", "UNKNOWN", "INTEGER"]
    #   resp.data.columns[0].type.array_column_info #=> Types::ColumnInfo
    #   resp.data.columns[0].type.array_column_info.name #=> String
    #   resp.data.columns[0].type.array_column_info.type #=> Types::Type
    #   resp.data.columns[0].type.time_series_measure_value_column_info #=> Types::ColumnInfo
    #   resp.data.columns[0].type.row_column_info #=> Array<ColumnInfo>
    #   resp.data.columns[0].database_name #=> String
    #   resp.data.columns[0].table_name #=> String
    #   resp.data.columns[0].aliased #=> Boolean
    #   resp.data.parameters #=> Array<ParameterMapping>
    #   resp.data.parameters[0] #=> Types::ParameterMapping
    #   resp.data.parameters[0].name #=> String
    #   resp.data.parameters[0].type #=> Types::Type
    #
    def prepare_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PrepareQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PrepareQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PrepareQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidEndpointException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::PrepareQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PrepareQuery,
        stubs: @stubs,
        params_class: Params::PrepareQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :prepare_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <code>Query</code> is a synchronous operation that enables you to run a query against
    #             your Amazon Timestream data. <code>Query</code> will time out after 60 seconds.
    #             You must update the default timeout in the SDK to support a timeout of 60 seconds. See
    #             the <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.run-query.html">code
    #                 sample</a> for details. </p>
    #         <p>Your query request will fail in the following cases:</p>
    #         <ul>
    #             <li>
    #                 <p> If you submit a <code>Query</code> request with the same client token outside
    #                     of the 5-minute idempotency window. </p>
    #             </li>
    #             <li>
    #                 <p> If you submit a <code>Query</code> request with the same client token, but
    #                     change other parameters, within the 5-minute idempotency window. </p>
    #             </li>
    #             <li>
    #                 <p> If the size of the row (including the query metadata) exceeds 1 MB, then the
    #                     query will fail with the following error message: </p>
    #                 <p>
    #                   <code>Query aborted as max page response size has been exceeded by the output
    #                         result row</code>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p> If the IAM principal of the query initiator and the result reader are not the
    #                     same and/or the query initiator and the result reader do not have the same query
    #                     string in the query requests, the query will fail with an <code>Invalid
    #                         pagination token</code> error. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::QueryInput}.
    #
    # @option params [String] :query_string
    #   <p> The query to be run by Timestream. </p>
    #
    # @option params [String] :client_token
    #   <p> Unique, case-sensitive string of up to 64 ASCII characters specified when a
    #                   <code>Query</code> request is made. Providing a <code>ClientToken</code> makes the
    #               call to <code>Query</code>
    #               <i>idempotent</i>. This means that running the same query repeatedly will
    #               produce the same result. In other words, making multiple identical <code>Query</code>
    #               requests has the same effect as making a single request. When using
    #                   <code>ClientToken</code> in a query, note the following: </p>
    #           <ul>
    #               <li>
    #                   <p> If the Query API is instantiated without a <code>ClientToken</code>, the
    #                       Query SDK generates a <code>ClientToken</code> on your behalf.</p>
    #               </li>
    #               <li>
    #                   <p>If the <code>Query</code> invocation only contains the
    #                           <code>ClientToken</code> but does not include a <code>NextToken</code>, that
    #                       invocation of <code>Query</code> is assumed to be a new query run.</p>
    #               </li>
    #               <li>
    #                   <p>If the invocation contains <code>NextToken</code>, that particular invocation
    #                       is assumed to be a subsequent invocation of a prior call to the Query API, and a
    #                       result set is returned.</p>
    #               </li>
    #               <li>
    #                   <p> After 4 hours, any request with the same <code>ClientToken</code> is treated
    #                       as a new request. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p> A pagination token used to return a set of results. When the <code>Query</code> API
    #               is invoked using <code>NextToken</code>, that particular invocation is assumed to be a
    #               subsequent invocation of a prior call to <code>Query</code>, and a result set is
    #               returned. However, if the <code>Query</code> invocation only contains the
    #                   <code>ClientToken</code>, that invocation of <code>Query</code> is assumed to be a
    #               new query run. </p>
    #           <p>Note the following when using NextToken in a query:</p>
    #           <ul>
    #               <li>
    #                   <p>A pagination token can be used for up to five <code>Query</code> invocations,
    #                       OR for a duration of up to 1 hour – whichever comes first.</p>
    #               </li>
    #               <li>
    #                   <p>Using the same <code>NextToken</code> will return the same set of records. To
    #                       keep paginating through the result set, you must to use the most recent
    #                           <code>nextToken</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Suppose a <code>Query</code> invocation returns two <code>NextToken</code>
    #                       values, <code>TokenA</code> and <code>TokenB</code>. If <code>TokenB</code> is
    #                       used in a subsequent <code>Query</code> invocation, then <code>TokenA</code> is
    #                       invalidated and cannot be reused.</p>
    #               </li>
    #               <li>
    #                   <p>To request a previous result set from a query after pagination has begun, you
    #                       must re-invoke the Query API.</p>
    #               </li>
    #               <li>
    #                   <p>The latest <code>NextToken</code> should be used to paginate until
    #                           <code>null</code> is returned, at which point a new <code>NextToken</code>
    #                       should be used.</p>
    #               </li>
    #               <li>
    #                   <p> If the IAM principal of the query initiator and the result reader are not the
    #                       same and/or the query initiator and the result reader do not have the same query
    #                       string in the query requests, the query will fail with an <code>Invalid
    #                           pagination token</code> error. </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_rows
    #   <p> The total number of rows to be returned in the <code>Query</code> output. The initial
    #               run of <code>Query</code> with a <code>MaxRows</code> value specified will return the
    #               result set of the query in two cases: </p>
    #           <ul>
    #               <li>
    #                   <p>The size of the result is less than <code>1MB</code>.</p>
    #               </li>
    #               <li>
    #                   <p>The number of rows in the result set is less than the value of
    #                           <code>maxRows</code>.</p>
    #               </li>
    #            </ul>
    #           <p>Otherwise, the initial invocation of <code>Query</code> only returns a
    #                   <code>NextToken</code>, which can then be used in subsequent calls to fetch the
    #               result set. To resume pagination, provide the <code>NextToken</code> value in the
    #               subsequent command.</p>
    #           <p>If the row size is large (e.g. a row has many columns), Timestream may return
    #               fewer rows to keep the response size from exceeding the 1 MB limit. If
    #                   <code>MaxRows</code> is not provided, Timestream will send the necessary
    #               number of rows to meet the 1 MB limit.</p>
    #
    # @return [Types::QueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query(
    #     query_string: 'QueryString', # required
    #     client_token: 'ClientToken',
    #     next_token: 'NextToken',
    #     max_rows: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::QueryOutput
    #   resp.data.query_id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.rows #=> Array<Row>
    #   resp.data.rows[0] #=> Types::Row
    #   resp.data.rows[0].data #=> Array<Datum>
    #   resp.data.rows[0].data[0] #=> Types::Datum
    #   resp.data.rows[0].data[0].scalar_value #=> String
    #   resp.data.rows[0].data[0].time_series_value #=> Array<TimeSeriesDataPoint>
    #   resp.data.rows[0].data[0].time_series_value[0] #=> Types::TimeSeriesDataPoint
    #   resp.data.rows[0].data[0].time_series_value[0].time #=> String
    #   resp.data.rows[0].data[0].time_series_value[0].value #=> Types::Datum
    #   resp.data.rows[0].data[0].array_value #=> Array<Datum>
    #   resp.data.rows[0].data[0].row_value #=> Types::Row
    #   resp.data.rows[0].data[0].null_value #=> Boolean
    #   resp.data.column_info #=> Array<ColumnInfo>
    #   resp.data.column_info[0] #=> Types::ColumnInfo
    #   resp.data.column_info[0].name #=> String
    #   resp.data.column_info[0].type #=> Types::Type
    #   resp.data.column_info[0].type.scalar_type #=> String, one of ["VARCHAR", "BOOLEAN", "BIGINT", "DOUBLE", "TIMESTAMP", "DATE", "TIME", "INTERVAL_DAY_TO_SECOND", "INTERVAL_YEAR_TO_MONTH", "UNKNOWN", "INTEGER"]
    #   resp.data.column_info[0].type.array_column_info #=> Types::ColumnInfo
    #   resp.data.column_info[0].type.time_series_measure_value_column_info #=> Types::ColumnInfo
    #   resp.data.column_info[0].type.row_column_info #=> Array<ColumnInfo>
    #   resp.data.query_status #=> Types::QueryStatus
    #   resp.data.query_status.progress_percentage #=> Float
    #   resp.data.query_status.cumulative_bytes_scanned #=> Integer
    #   resp.data.query_status.cumulative_bytes_metered #=> Integer
    #
    def query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::QueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::QueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Query
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidEndpointException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::QueryExecutionException]),
        data_parser: Parsers::Query
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Query,
        stubs: @stubs,
        params_class: Params::QueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associate a set of tags with a Timestream resource. You can then activate these
    #             user-defined tags so that they appear on the Billing and Cost Management console for
    #             cost allocation tracking. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Identifies the Timestream resource to which tags should be added. This value is an
    #               Amazon Resource Name (ARN).</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the Timestream resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ServiceQuotaExceededException, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Removes the association of tags from a Timestream query resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Timestream resource that the tags will be removed from. This value is an Amazon
    #               Resource Name (ARN). </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tags keys. Existing tags of the resource whose keys are members of this list
    #               will be removed from the Timestream resource. </p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Update a scheduled query.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateScheduledQueryInput}.
    #
    # @option params [String] :scheduled_query_arn
    #   <p>ARN of the scheuled query.</p>
    #
    # @option params [String] :state
    #   <p>State of the scheduled query. </p>
    #
    # @return [Types::UpdateScheduledQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scheduled_query(
    #     scheduled_query_arn: 'ScheduledQueryArn', # required
    #     state: 'ENABLED' # required - accepts ["ENABLED", "DISABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateScheduledQueryOutput
    #
    def update_scheduled_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateScheduledQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateScheduledQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateScheduledQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateScheduledQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateScheduledQuery,
        stubs: @stubs,
        params_class: Params::UpdateScheduledQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_scheduled_query
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
