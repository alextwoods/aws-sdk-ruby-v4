# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TimestreamQuery
  module Types

    # <p> You are not authorized to perform this action. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p> The ID of the query that needs to be cancelled. <code>QueryID</code> is returned as
    #               part of the query result. </p>
    #
    #   @return [String]
    #
    CancelQueryInput = ::Struct.new(
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cancellation_message
    #   <p> A <code>CancellationMessage</code> is returned when a <code>CancelQuery</code>
    #               request for the query specified by <code>QueryId</code> has already been issued. </p>
    #
    #   @return [String]
    #
    CancelQueryOutput = ::Struct.new(
      :cancellation_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Contains the metadata for query results such as the column names, data types, and
    #             other attributes. </p>
    #
    # @!attribute name
    #   <p> The name of the result set column. The name of the result set is available for
    #               columns of all data types except for arrays. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The data type of the result set column. The data type can be a scalar or complex.
    #               Scalar data types are integers, strings, doubles, Booleans, and others. Complex data
    #               types are types such as arrays, rows, and others. </p>
    #
    #   @return [Type]
    #
    ColumnInfo = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Unable to poll results for a cancelled query. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the scheduled query.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string
    #   <p>The query string to run. Parameter
    #               names can be specified in the query string <code>@</code> character followed by an
    #               identifier. The named Parameter <code>@scheduled_runtime</code> is reserved and can be used in the query to get the time at which the query is scheduled to run.</p>
    #               <p>The timestamp calculated according to the ScheduleConfiguration parameter, will be the value of <code>@scheduled_runtime</code> paramater for each query run.
    #               For example, consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this instance, the <code>@scheduled_runtime</code> parameter is
    #               initialized to the timestamp 2021-12-01 00:00:00 when invoking the query.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_configuration
    #   <p>The schedule configuration for the query.</p>
    #
    #   @return [ScheduleConfiguration]
    #
    # @!attribute notification_configuration
    #   <p>Notification configuration for the scheduled query. A notification is sent by
    #               Timestream when a query run finishes, when the state is updated or when you delete it. </p>
    #
    #   @return [NotificationConfiguration]
    #
    # @!attribute target_configuration
    #   <p>Configuration used for writing the result of a query.</p>
    #
    #   @return [TargetConfiguration]
    #
    # @!attribute client_token
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
    #   @return [String]
    #
    # @!attribute scheduled_query_execution_role_arn
    #   <p>The ARN for the IAM role that Timestream will assume when running the scheduled query. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs to label the scheduled query.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon KMS key used to encrypt the scheduled query resource, at-rest. If the Amazon KMS
    #               key is not specified, the scheduled query resource will be encrypted with a Timestream
    #               owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias name, or alias
    #               ARN. When using an alias name, prefix the name with <i>alias/</i>
    #            </p>
    #               <p>If ErrorReportConfiguration uses <code>SSE_KMS</code> as encryption type, the same KmsKeyId is used to encrypt the error report at rest.</p>
    #
    #   @return [String]
    #
    # @!attribute error_report_configuration
    #   <p>Configuration for error reporting. Error reports will be generated when a problem is encountered when writing the query results. </p>
    #
    #   @return [ErrorReportConfiguration]
    #
    CreateScheduledQueryInput = ::Struct.new(
      :name,
      :query_string,
      :schedule_configuration,
      :notification_configuration,
      :target_configuration,
      :client_token,
      :scheduled_query_execution_role_arn,
      :tags,
      :kms_key_id,
      :error_report_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::TimestreamQuery::Types::CreateScheduledQueryInput "\
          "name=#{name || 'nil'}, "\
          "query_string=\"[SENSITIVE]\", "\
          "schedule_configuration=#{schedule_configuration || 'nil'}, "\
          "notification_configuration=#{notification_configuration || 'nil'}, "\
          "target_configuration=#{target_configuration || 'nil'}, "\
          "client_token=\"[SENSITIVE]\", "\
          "scheduled_query_execution_role_arn=#{scheduled_query_execution_role_arn || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "kms_key_id=#{kms_key_id || 'nil'}, "\
          "error_report_configuration=#{error_report_configuration || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p>ARN for the created scheduled query.</p>
    #
    #   @return [String]
    #
    CreateScheduledQueryOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Datum represents a single data point in a query result. </p>
    #
    # @!attribute scalar_value
    #   <p> Indicates if the data point is a scalar value such as integer, string, double, or
    #               Boolean. </p>
    #
    #   @return [String]
    #
    # @!attribute time_series_value
    #   <p> Indicates if the data point is a timeseries data type. </p>
    #
    #   @return [Array<TimeSeriesDataPoint>]
    #
    # @!attribute array_value
    #   <p> Indicates if the data point is an array. </p>
    #
    #   @return [Array<Datum>]
    #
    # @!attribute row_value
    #   <p> Indicates if the data point is a row. </p>
    #
    #   @return [Row]
    #
    # @!attribute null_value
    #   <p> Indicates if the data point is null. </p>
    #
    #   @return [Boolean]
    #
    Datum = ::Struct.new(
      :scalar_value,
      :time_series_value,
      :array_value,
      :row_value,
      :null_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_query_arn
    #   <p>The ARN of the scheduled query. </p>
    #
    #   @return [String]
    #
    DeleteScheduledQueryInput = ::Struct.new(
      :scheduled_query_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteScheduledQueryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeEndpointsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoints
    #   <p>An <code>Endpoints</code> object is returned when a <code>DescribeEndpoints</code>
    #               request is made.</p>
    #
    #   @return [Array<Endpoint>]
    #
    DescribeEndpointsOutput = ::Struct.new(
      :endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_query_arn
    #   <p>The ARN of the scheduled query.</p>
    #
    #   @return [String]
    #
    DescribeScheduledQueryInput = ::Struct.new(
      :scheduled_query_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_query
    #   <p>The scheduled query.</p>
    #
    #   @return [ScheduledQueryDescription]
    #
    DescribeScheduledQueryOutput = ::Struct.new(
      :scheduled_query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This type is used to map column(s) from the query result to a dimension in the
    #             destination table.</p>
    #
    # @!attribute name
    #   <p>Column name from query result.</p>
    #
    #   @return [String]
    #
    # @!attribute dimension_value_type
    #   <p>Type for the dimension. </p>
    #
    #   Enum, one of: ["VARCHAR"]
    #
    #   @return [String]
    #
    DimensionMapping = ::Struct.new(
      :name,
      :dimension_value_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DimensionValueType
    #
    module DimensionValueType
      # No documentation available.
      #
      VARCHAR = "VARCHAR"
    end

    # <p>Represents an available endpoint against which to make API calls against, as well as
    #             the TTL for that endpoint.</p>
    #
    # @!attribute address
    #   <p>An endpoint address.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_period_in_minutes
    #   <p>The TTL for the endpoint, in minutes.</p>
    #
    #   @return [Integer]
    #
    Endpoint = ::Struct.new(
      :address,
      :cache_period_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cache_period_in_minutes ||= 0
      end
    end

    # <p>Configuration required for error reporting.</p>
    #
    # @!attribute s3_configuration
    #   <p>The S3 configuration for the error reports.</p>
    #
    #   @return [S3Configuration]
    #
    ErrorReportConfiguration = ::Struct.new(
      :s3_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This contains the location of the error report for a single scheduled query call.
    #         </p>
    #
    # @!attribute s3_report_location
    #   <p>The S3 location where error reports are written.</p>
    #
    #   @return [S3ReportLocation]
    #
    ErrorReportLocation = ::Struct.new(
      :s3_report_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_query_arn
    #   <p>ARN of the scheduled query.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_time
    #   <p>The timestamp in UTC. Query will be run as if it was invoked at this timestamp. </p>
    #
    #   @return [Time]
    #
    # @!attribute client_token
    #   <p>Not used. </p>
    #
    #   @return [String]
    #
    ExecuteScheduledQueryInput = ::Struct.new(
      :scheduled_query_arn,
      :invocation_time,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::TimestreamQuery::Types::ExecuteScheduledQueryInput "\
          "scheduled_query_arn=#{scheduled_query_arn || 'nil'}, "\
          "invocation_time=#{invocation_time || 'nil'}, "\
          "client_token=\"[SENSITIVE]\">"
      end
    end

    ExecuteScheduledQueryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Statistics for a single scheduled query run.</p>
    #
    # @!attribute execution_time_in_millis
    #   <p>Total time, measured in milliseconds, that was needed for the scheduled query run to complete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_writes
    #   <p>Data writes metered for records ingested in a single scheduled query run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bytes_metered
    #   <p>Bytes metered for a single scheduled query run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute records_ingested
    #   <p>The number of records ingested for a single scheduled query run. </p>
    #
    #   @return [Integer]
    #
    # @!attribute query_result_rows
    #   <p>Number of rows present in the output from running a query before ingestion to
    #               destination data source.</p>
    #
    #   @return [Integer]
    #
    ExecutionStats = ::Struct.new(
      :execution_time_in_millis,
      :data_writes,
      :bytes_metered,
      :records_ingested,
      :query_result_rows,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.execution_time_in_millis ||= 0
        self.data_writes ||= 0
        self.bytes_metered ||= 0
        self.records_ingested ||= 0
        self.query_result_rows ||= 0
      end
    end

    # <p>
    #             Timestream was unable to fully process this request because of an internal
    #             server error. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested endpoint was not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidEndpointException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in the output. If the total number of items
    #               available is more than the value specified, a <code>NextToken</code> is provided in the
    #               output. To resume pagination, provide the <code>NextToken</code> value as the argument
    #               to the subsequent call to <code>ListScheduledQueriesRequest</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p> A pagination token to resume pagination.</p>
    #
    #   @return [String]
    #
    ListScheduledQueriesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_queries
    #   <p>A list of scheduled queries.</p>
    #
    #   @return [Array<ScheduledQuery>]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #               truncated response.</p>
    #
    #   @return [String]
    #
    ListScheduledQueriesOutput = ::Struct.new(
      :scheduled_queries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Timestream resource with tags to be listed. This value is an Amazon Resource Name
    #               (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of tags to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A pagination token to resume pagination.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags currently associated with the Timestream resource. </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>A pagination token to resume pagination with a subsequent call to
    #                   <code>ListTagsForResourceResponse</code>.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MeasureValueType
    #
    module MeasureValueType
      # No documentation available.
      #
      BIGINT = "BIGINT"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      DOUBLE = "DOUBLE"

      # No documentation available.
      #
      VARCHAR = "VARCHAR"

      # No documentation available.
      #
      MULTI = "MULTI"
    end

    # <p>MixedMeasureMappings are mappings that can be used to ingest data into a mixture of
    #             narrow and multi measures in the derived table.</p>
    #
    # @!attribute measure_name
    #   <p>Refers to the value of measure_name in a result row. This field is required if
    #               MeasureNameColumn is provided.</p>
    #
    #   @return [String]
    #
    # @!attribute source_column
    #   <p>This field refers to the source column from which measure-value is to be read for
    #               result materialization.</p>
    #
    #   @return [String]
    #
    # @!attribute target_measure_name
    #   <p>Target measure name to be used. If not provided, the target measure name by default
    #               would be measure-name if provided, or sourceColumn otherwise. </p>
    #
    #   @return [String]
    #
    # @!attribute measure_value_type
    #   <p>Type of the value that is to be read from sourceColumn. If the mapping is for MULTI,
    #               use MeasureValueType.MULTI.</p>
    #
    #   Enum, one of: ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "MULTI"]
    #
    #   @return [String]
    #
    # @!attribute multi_measure_attribute_mappings
    #   <p>Required when measureValueType is MULTI. Attribute mappings for MULTI value
    #               measures.</p>
    #
    #   @return [Array<MultiMeasureAttributeMapping>]
    #
    MixedMeasureMapping = ::Struct.new(
      :measure_name,
      :source_column,
      :target_measure_name,
      :measure_value_type,
      :multi_measure_attribute_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Attribute mapping for MULTI value measures.</p>
    #
    # @!attribute source_column
    #   <p>Source column from where the attribute value is to be read.</p>
    #
    #   @return [String]
    #
    # @!attribute target_multi_measure_attribute_name
    #   <p>Custom name to be used for attribute name in derived table. If not provided, source
    #               column name would be used.</p>
    #
    #   @return [String]
    #
    # @!attribute measure_value_type
    #   <p>Type of the attribute to be read from the source column.</p>
    #
    #   Enum, one of: ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "TIMESTAMP"]
    #
    #   @return [String]
    #
    MultiMeasureAttributeMapping = ::Struct.new(
      :source_column,
      :target_multi_measure_attribute_name,
      :measure_value_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Only one of MixedMeasureMappings or MultiMeasureMappings is to be provided.
    #             MultiMeasureMappings can be used to ingest data as multi measures in the derived
    #             table.</p>
    #
    # @!attribute target_multi_measure_name
    #   <p>The name of the target multi-measure name in the derived table. This input is required
    #               when measureNameColumn is not provided. If MeasureNameColumn is provided, then value
    #               from that column will be used as multi-measure name.</p>
    #
    #   @return [String]
    #
    # @!attribute multi_measure_attribute_mappings
    #   <p>Required. Attribute mappings to be used for mapping query results to ingest data for
    #               multi-measure attributes.</p>
    #
    #   @return [Array<MultiMeasureAttributeMapping>]
    #
    MultiMeasureMappings = ::Struct.new(
      :target_multi_measure_name,
      :multi_measure_attribute_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Notification configuration for a scheduled query. A notification is sent by
    #             Timestream when a scheduled query is created, its state is updated or when it is deleted. </p>
    #
    # @!attribute sns_configuration
    #   <p>Details on SNS configuration. </p>
    #
    #   @return [SnsConfiguration]
    #
    NotificationConfiguration = ::Struct.new(
      :sns_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Mapping for named parameters.</p>
    #
    # @!attribute name
    #   <p>Parameter name.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Contains the data type of a column in a query result set. The data type can be scalar
    #               or complex. The supported scalar data types are integers, Boolean, string, double,
    #               timestamp, date, time, and intervals. The supported complex data types are arrays, rows,
    #               and timeseries.</p>
    #
    #   @return [Type]
    #
    ParameterMapping = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_string
    #   <p>The Timestream query string that you want to use as a prepared statement. Parameter
    #               names can be specified in the query string <code>@</code> character followed by an
    #               identifier. </p>
    #
    #   @return [String]
    #
    # @!attribute validate_only
    #   <p>By setting this value to <code>true</code>, Timestream will only validate that the
    #               query string is a valid Timestream query, and not store the prepared query for later
    #               use.</p>
    #
    #   @return [Boolean]
    #
    PrepareQueryInput = ::Struct.new(
      :query_string,
      :validate_only,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::TimestreamQuery::Types::PrepareQueryInput "\
          "query_string=\"[SENSITIVE]\", "\
          "validate_only=#{validate_only || 'nil'}>"
      end
    end

    # @!attribute query_string
    #   <p>The query string that you want prepare.</p>
    #
    #   @return [String]
    #
    # @!attribute columns
    #   <p>A list of SELECT clause columns of the submitted query string. </p>
    #
    #   @return [Array<SelectColumn>]
    #
    # @!attribute parameters
    #   <p>A list of parameters used in the submitted query string. </p>
    #
    #   @return [Array<ParameterMapping>]
    #
    PrepareQueryOutput = ::Struct.new(
      :query_string,
      :columns,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::TimestreamQuery::Types::PrepareQueryOutput "\
          "query_string=\"[SENSITIVE]\", "\
          "columns=#{columns || 'nil'}, "\
          "parameters=#{parameters || 'nil'}>"
      end
    end

    # <p>
    #             Timestream was unable to run the query successfully. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    QueryExecutionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_string
    #   <p> The query to be run by Timestream. </p>
    #
    #   @return [String]
    #
    # @!attribute client_token
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
    #   @return [String]
    #
    # @!attribute next_token
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
    #   @return [String]
    #
    # @!attribute max_rows
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
    #   @return [Integer]
    #
    QueryInput = ::Struct.new(
      :query_string,
      :client_token,
      :next_token,
      :max_rows,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::TimestreamQuery::Types::QueryInput "\
          "query_string=\"[SENSITIVE]\", "\
          "client_token=\"[SENSITIVE]\", "\
          "next_token=#{next_token || 'nil'}, "\
          "max_rows=#{max_rows || 'nil'}>"
      end
    end

    # @!attribute query_id
    #   <p> A unique ID for the given query. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> A pagination token that can be used again on a <code>Query</code> call to get the
    #               next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute rows
    #   <p> The result set rows returned by the query. </p>
    #
    #   @return [Array<Row>]
    #
    # @!attribute column_info
    #   <p> The column data types of the returned result set. </p>
    #
    #   @return [Array<ColumnInfo>]
    #
    # @!attribute query_status
    #   <p>Information about the status of the query, including progress and bytes
    #               scanned.</p>
    #
    #   @return [QueryStatus]
    #
    QueryOutput = ::Struct.new(
      :query_id,
      :next_token,
      :rows,
      :column_info,
      :query_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the status of the query, including progress and bytes
    #             scanned.</p>
    #
    # @!attribute progress_percentage
    #   <p>The progress of the query, expressed as a percentage.</p>
    #
    #   @return [Float]
    #
    # @!attribute cumulative_bytes_scanned
    #   <p>The amount of data scanned by the query in bytes. This is a cumulative sum and
    #               represents the total amount of bytes scanned since the query was started. </p>
    #
    #   @return [Integer]
    #
    # @!attribute cumulative_bytes_metered
    #   <p>The amount of data scanned by the query in bytes that you will be charged for. This is
    #               a cumulative sum and represents the total amount of data that you will be charged for
    #               since the query was started. The charge is applied only once and is either applied when
    #               the query completes running or when the query is cancelled. </p>
    #
    #   @return [Integer]
    #
    QueryStatus = ::Struct.new(
      :progress_percentage,
      :cumulative_bytes_scanned,
      :cumulative_bytes_metered,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.progress_percentage ||= 0
        self.cumulative_bytes_scanned ||= 0
        self.cumulative_bytes_metered ||= 0
      end
    end

    # <p>The requested resource could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute scheduled_query_arn
    #   <p>The ARN of the scheduled query.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :scheduled_query_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a single row in the query results.</p>
    #
    # @!attribute data
    #   <p>List of data points in a single row of the result set.</p>
    #
    #   @return [Array<Datum>]
    #
    Row = ::Struct.new(
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details on S3 location for error reports that result from running a query. </p>
    #
    # @!attribute bucket_name
    #   <p> Name of the S3 bucket under which error reports will be created.</p>
    #
    #   @return [String]
    #
    # @!attribute object_key_prefix
    #   <p> Prefix for the error report key. Timestream by default adds the following prefix to
    #               the error report path. </p>
    #
    #   @return [String]
    #
    # @!attribute encryption_option
    #   <p> Encryption at rest options for the error reports. If no encryption option is
    #               specified, Timestream will choose SSE_S3 as default. </p>
    #
    #   Enum, one of: ["SSE_S3", "SSE_KMS"]
    #
    #   @return [String]
    #
    S3Configuration = ::Struct.new(
      :bucket_name,
      :object_key_prefix,
      :encryption_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3EncryptionOption
    #
    module S3EncryptionOption
      # No documentation available.
      #
      SSE_S3 = "SSE_S3"

      # No documentation available.
      #
      SSE_KMS = "SSE_KMS"
    end

    # <p> S3 report location for the scheduled query run.</p>
    #
    # @!attribute bucket_name
    #   <p> S3 bucket name. </p>
    #
    #   @return [String]
    #
    # @!attribute object_key
    #   <p>S3 key. </p>
    #
    #   @return [String]
    #
    S3ReportLocation = ::Struct.new(
      :bucket_name,
      :object_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScalarMeasureValueType
    #
    module ScalarMeasureValueType
      # No documentation available.
      #
      BIGINT = "BIGINT"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      DOUBLE = "DOUBLE"

      # No documentation available.
      #
      VARCHAR = "VARCHAR"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"
    end

    # Includes enum constants for ScalarType
    #
    module ScalarType
      # No documentation available.
      #
      VARCHAR = "VARCHAR"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      BIGINT = "BIGINT"

      # No documentation available.
      #
      DOUBLE = "DOUBLE"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"

      # No documentation available.
      #
      DATE = "DATE"

      # No documentation available.
      #
      TIME = "TIME"

      # No documentation available.
      #
      INTERVAL_DAY_TO_SECOND = "INTERVAL_DAY_TO_SECOND"

      # No documentation available.
      #
      INTERVAL_YEAR_TO_MONTH = "INTERVAL_YEAR_TO_MONTH"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"

      # No documentation available.
      #
      INTEGER = "INTEGER"
    end

    # <p>Configuration of the schedule of the query.</p>
    #
    # @!attribute schedule_expression
    #   <p>An expression that denotes when to trigger the scheduled query run. This can be a cron
    #               expression or a rate expression. </p>
    #
    #   @return [String]
    #
    ScheduleConfiguration = ::Struct.new(
      :schedule_expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Scheduled Query</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the scheduled query.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The creation time of the scheduled query.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>State of scheduled query. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute previous_invocation_time
    #   <p>The last time the scheduled query was run.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_invocation_time
    #   <p>The next time the scheduled query is to be run.</p>
    #
    #   @return [Time]
    #
    # @!attribute error_report_configuration
    #   <p>Configuration for scheduled query error reporting.</p>
    #
    #   @return [ErrorReportConfiguration]
    #
    # @!attribute target_destination
    #   <p>Target data source where final scheduled query result will be written.</p>
    #
    #   @return [TargetDestination]
    #
    # @!attribute last_run_status
    #   <p>Status of the last scheduled query run.</p>
    #
    #   Enum, one of: ["AUTO_TRIGGER_SUCCESS", "AUTO_TRIGGER_FAILURE", "MANUAL_TRIGGER_SUCCESS", "MANUAL_TRIGGER_FAILURE"]
    #
    #   @return [String]
    #
    ScheduledQuery = ::Struct.new(
      :arn,
      :name,
      :creation_time,
      :state,
      :previous_invocation_time,
      :next_invocation_time,
      :error_report_configuration,
      :target_destination,
      :last_run_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Structure that describes scheduled query.</p>
    #
    # @!attribute arn
    #   <p>Scheduled query ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of the scheduled query.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string
    #   <p>The query to be run.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>Creation time of the scheduled query.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>State of the scheduled query. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute previous_invocation_time
    #   <p>Last time the query was run.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_invocation_time
    #   <p>The next time the scheduled query is scheduled to run.</p>
    #
    #   @return [Time]
    #
    # @!attribute schedule_configuration
    #   <p>Schedule configuration.</p>
    #
    #   @return [ScheduleConfiguration]
    #
    # @!attribute notification_configuration
    #   <p>Notification configuration.</p>
    #
    #   @return [NotificationConfiguration]
    #
    # @!attribute target_configuration
    #   <p>Scheduled query target store configuration.</p>
    #
    #   @return [TargetConfiguration]
    #
    # @!attribute scheduled_query_execution_role_arn
    #   <p>IAM role that Timestream uses to run the schedule query.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>A customer provided KMS key used to encrypt the scheduled query resource.</p>
    #
    #   @return [String]
    #
    # @!attribute error_report_configuration
    #   <p>Error-reporting configuration for the scheduled query.</p>
    #
    #   @return [ErrorReportConfiguration]
    #
    # @!attribute last_run_summary
    #   <p>Runtime summary for the last scheduled query run. </p>
    #
    #   @return [ScheduledQueryRunSummary]
    #
    # @!attribute recently_failed_runs
    #   <p>Runtime summary for the last five failed scheduled query runs.</p>
    #
    #   @return [Array<ScheduledQueryRunSummary>]
    #
    ScheduledQueryDescription = ::Struct.new(
      :arn,
      :name,
      :query_string,
      :creation_time,
      :state,
      :previous_invocation_time,
      :next_invocation_time,
      :schedule_configuration,
      :notification_configuration,
      :target_configuration,
      :scheduled_query_execution_role_arn,
      :kms_key_id,
      :error_report_configuration,
      :last_run_summary,
      :recently_failed_runs,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::TimestreamQuery::Types::ScheduledQueryDescription "\
          "arn=#{arn || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "query_string=\"[SENSITIVE]\", "\
          "creation_time=#{creation_time || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "previous_invocation_time=#{previous_invocation_time || 'nil'}, "\
          "next_invocation_time=#{next_invocation_time || 'nil'}, "\
          "schedule_configuration=#{schedule_configuration || 'nil'}, "\
          "notification_configuration=#{notification_configuration || 'nil'}, "\
          "target_configuration=#{target_configuration || 'nil'}, "\
          "scheduled_query_execution_role_arn=#{scheduled_query_execution_role_arn || 'nil'}, "\
          "kms_key_id=#{kms_key_id || 'nil'}, "\
          "error_report_configuration=#{error_report_configuration || 'nil'}, "\
          "last_run_summary=#{last_run_summary || 'nil'}, "\
          "recently_failed_runs=#{recently_failed_runs || 'nil'}>"
      end
    end

    # Includes enum constants for ScheduledQueryRunStatus
    #
    module ScheduledQueryRunStatus
      # No documentation available.
      #
      AUTO_TRIGGER_SUCCESS = "AUTO_TRIGGER_SUCCESS"

      # No documentation available.
      #
      AUTO_TRIGGER_FAILURE = "AUTO_TRIGGER_FAILURE"

      # No documentation available.
      #
      MANUAL_TRIGGER_SUCCESS = "MANUAL_TRIGGER_SUCCESS"

      # No documentation available.
      #
      MANUAL_TRIGGER_FAILURE = "MANUAL_TRIGGER_FAILURE"
    end

    # <p>Run summary for the scheduled query</p>
    #
    # @!attribute invocation_time
    #   <p>InvocationTime for this run. This is the time at which the query is scheduled to run.
    #               Parameter <code>@scheduled_runtime</code> can be used in the query to get the value. </p>
    #
    #   @return [Time]
    #
    # @!attribute trigger_time
    #   <p>The actual time when the query was run.</p>
    #
    #   @return [Time]
    #
    # @!attribute run_status
    #   <p>The status of a scheduled query run.</p>
    #
    #   Enum, one of: ["AUTO_TRIGGER_SUCCESS", "AUTO_TRIGGER_FAILURE", "MANUAL_TRIGGER_SUCCESS", "MANUAL_TRIGGER_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute execution_stats
    #   <p>Runtime statistics for a scheduled run.</p>
    #
    #   @return [ExecutionStats]
    #
    # @!attribute error_report_location
    #   <p>S3 location for error report.</p>
    #
    #   @return [ErrorReportLocation]
    #
    # @!attribute failure_reason
    #   <p>Error message for the scheduled query in case of failure. You might have to look at
    #               the error report to get more detailed error reasons. </p>
    #
    #   @return [String]
    #
    ScheduledQueryRunSummary = ::Struct.new(
      :invocation_time,
      :trigger_time,
      :run_status,
      :execution_stats,
      :error_report_location,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScheduledQueryState
    #
    module ScheduledQueryState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Details of the column that is returned by the query. </p>
    #
    # @!attribute name
    #   <p>Name of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Contains the data type of a column in a query result set. The data type can be scalar
    #               or complex. The supported scalar data types are integers, Boolean, string, double,
    #               timestamp, date, time, and intervals. The supported complex data types are arrays, rows,
    #               and timeseries.</p>
    #
    #   @return [Type]
    #
    # @!attribute database_name
    #   <p> Database that has this column.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>Table within the database that has this column. </p>
    #
    #   @return [String]
    #
    # @!attribute aliased
    #   <p>True, if the column name was aliased by the query. False otherwise.</p>
    #
    #   @return [Boolean]
    #
    SelectColumn = ::Struct.new(
      :name,
      :type,
      :database_name,
      :table_name,
      :aliased,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the service quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details on SNS that are required to send the notification.</p>
    #
    # @!attribute topic_arn
    #   <p>SNS topic ARN that the scheduled query status notifications will be sent to.</p>
    #
    #   @return [String]
    #
    SnsConfiguration = ::Struct.new(
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag is a label that you assign to a Timestream database and/or table. Each tag
    #             consists of a key and an optional value, both of which you define. Tags enable you to
    #             categorize databases and/or tables, for example, by purpose, owner, or environment.
    #         </p>
    #
    # @!attribute key
    #   <p>The key of the tag. Tag keys are case sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag. Tag values are case sensitive and can be null. </p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Identifies the Timestream resource to which tags should be added. This value is an
    #               Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the Timestream resource.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration used for writing the output of a query.</p>
    #
    # @!attribute timestream_configuration
    #   <p>Configuration needed to write data into the Timestream database and table.</p>
    #
    #   @return [TimestreamConfiguration]
    #
    TargetConfiguration = ::Struct.new(
      :timestream_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Destination details to write data for a target data source. Current supported data
    #             source is Timestream.</p>
    #
    # @!attribute timestream_destination
    #   <p>Query result destination details for Timestream data source.</p>
    #
    #   @return [TimestreamDestination]
    #
    TargetDestination = ::Struct.new(
      :timestream_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The timeseries data type represents the values of a measure over time. A time series
    #             is an array of rows of timestamps and measure values, with rows sorted in ascending
    #             order of time. A TimeSeriesDataPoint is a single data point in the time series. It
    #             represents a tuple of (time, measure value) in a time series. </p>
    #
    # @!attribute time
    #   <p>The timestamp when the measure value was collected.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The measure value for the data point.</p>
    #
    #   @return [Datum]
    #
    TimeSeriesDataPoint = ::Struct.new(
      :time,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Configuration to write data into Timestream database and table. This configuration
    #             allows the user to map the query result select columns into the destination table
    #             columns. </p>
    #
    # @!attribute database_name
    #   <p>Name of Timestream database to which the query result will be written.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>Name of Timestream table that the query result will be written to. The table should
    #               be within the same database that is provided in Timestream configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute time_column
    #   <p>Column from query result that should be used as the time column in destination table.
    #               Column type for this should be TIMESTAMP.</p>
    #
    #   @return [String]
    #
    # @!attribute dimension_mappings
    #   <p> This is to allow mapping column(s) from the query result to the dimension in the
    #               destination table. </p>
    #
    #   @return [Array<DimensionMapping>]
    #
    # @!attribute multi_measure_mappings
    #   <p>Multi-measure mappings.</p>
    #
    #   @return [MultiMeasureMappings]
    #
    # @!attribute mixed_measure_mappings
    #   <p>Specifies how to map measures to multi-measure records.</p>
    #
    #   @return [Array<MixedMeasureMapping>]
    #
    # @!attribute measure_name_column
    #   <p>Name of the measure column.</p>
    #
    #   @return [String]
    #
    TimestreamConfiguration = ::Struct.new(
      :database_name,
      :table_name,
      :time_column,
      :dimension_mappings,
      :multi_measure_mappings,
      :mixed_measure_mappings,
      :measure_name_column,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Destination for scheduled query.</p>
    #
    # @!attribute database_name
    #   <p>Timestream database name. </p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>Timestream table name. </p>
    #
    #   @return [String]
    #
    TimestreamDestination = ::Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the data type of a column in a query result set. The data type can be scalar
    #             or complex. The supported scalar data types are integers, Boolean, string, double,
    #             timestamp, date, time, and intervals. The supported complex data types are arrays, rows,
    #             and timeseries.</p>
    #
    # @!attribute scalar_type
    #   <p>Indicates if the column is of type string, integer, Boolean, double, timestamp, date,
    #               time. </p>
    #
    #   Enum, one of: ["VARCHAR", "BOOLEAN", "BIGINT", "DOUBLE", "TIMESTAMP", "DATE", "TIME", "INTERVAL_DAY_TO_SECOND", "INTERVAL_YEAR_TO_MONTH", "UNKNOWN", "INTEGER"]
    #
    #   @return [String]
    #
    # @!attribute array_column_info
    #   <p>Indicates if the column is an array.</p>
    #
    #   @return [ColumnInfo]
    #
    # @!attribute time_series_measure_value_column_info
    #   <p>Indicates if the column is a timeseries data type.</p>
    #
    #   @return [ColumnInfo]
    #
    # @!attribute row_column_info
    #   <p>Indicates if the column is a row.</p>
    #
    #   @return [Array<ColumnInfo>]
    #
    Type = ::Struct.new(
      :scalar_type,
      :array_column_info,
      :time_series_measure_value_column_info,
      :row_column_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Timestream resource that the tags will be removed from. This value is an Amazon
    #               Resource Name (ARN). </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tags keys. Existing tags of the resource whose keys are members of this list
    #               will be removed from the Timestream resource. </p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_query_arn
    #   <p>ARN of the scheuled query.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>State of the scheduled query. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    UpdateScheduledQueryInput = ::Struct.new(
      :scheduled_query_arn,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateScheduledQueryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Invalid or malformed request. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
