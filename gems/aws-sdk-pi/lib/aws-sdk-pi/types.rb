# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PI
  module Types

    # <p>A timestamp, and a single numerical value, which together represent a measurement at a particular point in time.</p>
    #
    # @!attribute timestamp
    #   <p>The time, in epoch format, associated with a particular <code>Value</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute value
    #   <p>The actual value associated with a particular <code>Timestamp</code>.</p>
    #
    #   @return [Float]
    #
    DataPoint = ::Struct.new(
      :timestamp,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_type
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
    #   Enum, one of: ["RDS", "DOCDB"]
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>An immutable, Amazon Web Services Region-unique identifier for a data source. Performance Insights gathers metrics from
    #               this data source.</p>
    #           <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value.
    #               For example, specify <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code>.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time specifying the beginning of the requested time series data. You must specify a
    #               <code>StartTime</code> within the past 7 days. The value specified is <i>inclusive</i>,
    #               which means that data points equal to or greater than <code>StartTime</code> are returned.
    #           </p>
    #           <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.
    #           </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time specifying the end of the requested time series data. The value specified is
    #         <i>exclusive</i>, which means that data points less than (but not equal to) <code>EndTime</code> are
    #         returned.</p>
    #           <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute metric
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
    #   @return [String]
    #
    # @!attribute period_in_seconds
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
    #   @return [Integer]
    #
    # @!attribute group_by
    #   <p>A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights returns all
    #               dimensions within this group, unless you provide the names of specific dimensions within this group. You can also request that Performance Insights return
    #               a limited number of values for a dimension. </p>
    #
    #   @return [DimensionGroup]
    #
    # @!attribute additional_metrics
    #   <p>Additional metrics for the top <code>N</code> dimension keys. If the specified dimension group in the <code>GroupBy</code> parameter is
    #                   <code>db.sql_tokenized</code>, you can specify per-SQL metrics to get the values for the top <code>N</code> SQL digests. The response
    #               syntax is as follows: <code>"AdditionalMetrics" : { "<i>string</i>" : "<i>string</i>" }</code>. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute partition_by
    #   <p>For each dimension specified in <code>GroupBy</code>, specify a secondary dimension
    #               to further subdivide the partition keys in the response.
    #           </p>
    #
    #   @return [DimensionGroup]
    #
    # @!attribute filter
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
    #   @return [Hash<String, String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. If more items exist than the specified <code>MaxRecords</code> value, a
    #               pagination token is included in the response so that the remaining results can be retrieved. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond
    #               the token, up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDimensionKeysInput = ::Struct.new(
      :service_type,
      :identifier,
      :start_time,
      :end_time,
      :metric,
      :period_in_seconds,
      :group_by,
      :additional_metrics,
      :partition_by,
      :filter,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aligned_start_time
    #   <p>The start time for the returned dimension keys, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>).
    #               <code>AlignedStartTime</code> will be less than or equal to the value of the user-specified <code>StartTime</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute aligned_end_time
    #   <p>The end time for the returned dimension keys, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>).
    #               <code>AlignedEndTime</code> will be greater than or equal to the value of the user-specified <code>Endtime</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute partition_keys
    #   <p>If <code>PartitionBy</code> was present in the request, <code>PartitionKeys</code> contains the breakdown of dimension keys by the
    #               specified partitions. </p>
    #
    #   @return [Array<ResponsePartitionKey>]
    #
    # @!attribute keys
    #   <p>The dimension keys that were requested.</p>
    #
    #   @return [Array<DimensionKeyDescription>]
    #
    # @!attribute next_token
    #   <p>A pagination token that indicates the response didn’t return all available records because <code>MaxRecords</code> was specified in the
    #               previous request. To get the remaining records, specify <code>NextToken</code> in a separate request with this value. </p>
    #
    #   @return [String]
    #
    DescribeDimensionKeysOutput = ::Struct.new(
      :aligned_start_time,
      :aligned_end_time,
      :partition_keys,
      :keys,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DetailStatus
    #
    module DetailStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      PROCESSING = "PROCESSING"

      # No documentation available.
      #
      UNAVAILABLE = "UNAVAILABLE"
    end

    # <p>The information about a dimension.</p>
    #
    # @!attribute identifier
    #   <p>The identifier of a dimension.</p>
    #
    #   @return [String]
    #
    DimensionDetail = ::Struct.new(
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A logical grouping of Performance Insights metrics for a related subject area. For example, the
    #         <code>db.sql</code> dimension group consists of the following dimensions:</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <code>db.sql.id</code> - The hash of a running SQL statement, generated by Performance Insights.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <code>db.sql.db_id</code> - Either the SQL ID generated by the database engine, or a value generated by Performance Insights that begins with
    #                         <code>pi-</code>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <code>db.sql.statement</code> - The full text of the SQL statement that is running, for example, <code>SELECT * FROM
    #                         employees</code>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <code>db.sql_tokenized.id</code> - The hash of the SQL digest generated by Performance Insights.</p>
    #             </li>
    #          </ul>
    #         <note>
    #             <p>Each response element returns a maximum of 500 bytes. For larger elements, such as SQL
    #                 statements, only the first 500 bytes are returned.</p>
    #          </note>
    #
    # @!attribute group
    #   <p>The name of the dimension group. Valid values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                       <code>db</code> - The name of the database to which the client is connected. The following values are permitted:</p>
    #                   <ul>
    #                     <li>
    #                           <p>Aurora PostgreSQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon RDS PostgreSQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Aurora MySQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon RDS MySQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon RDS MariaDB</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon DocumentDB</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                       <code>db.application</code> - The name of the application that is connected to the database. The following values are
    #                       permitted:</p>
    #                   <ul>
    #                     <li>
    #                           <p>Aurora PostgreSQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon RDS PostgreSQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon DocumentDB</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                       <code>db.host</code> - The host name of the connected client (all engines).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db.query</code> - The query that is currently running (only Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db.query_tokenized</code> - The digest query (only Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                       <code>db.session_type</code> - The type of the current session (only Aurora PostgreSQL and RDS PostgreSQL).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                       <code>db.sql</code> - The text of the SQL statement that is currently running (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                       <code>db.sql_tokenized</code> - The SQL digest (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.user</code> - The user logged in to the database (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                       <code>db.wait_event</code> - The event for which the database backend is waiting (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                       <code>db.wait_event_type</code> - The type of event for which the database backend is waiting (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.wait_state</code> - The event for which the database backend is waiting (only Amazon DocumentDB).</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>A list of specific dimensions from a dimension group. If this parameter is not present,
    #               then it signifies that all of the dimensions in the group were requested, or are present in
    #               the response.</p>
    #           <p>Valid values for elements in the <code>Dimensions</code> array are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>db.application.name</code> - The name of the application that is connected to the database. Valid values are as follows: </p>
    #                   <ul>
    #                     <li>
    #                           <p>Aurora PostgreSQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon RDS PostgreSQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon DocumentDB</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.host.id</code> - The host ID of the connected client (all engines).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.host.name</code> - The host name of the connected client (all engines).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.name</code> - The name of the database to which the client is connected. Valid values are as follows:</p>
    #                   <ul>
    #                     <li>
    #                           <p>Aurora PostgreSQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon RDS PostgreSQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Aurora MySQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon RDS MySQL</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon RDS MariaDB</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon DocumentDB</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.query.id</code> - The query ID generated by Performance Insights (only Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.query.db_id</code> - The query ID generated by the database (only Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.query.statement</code> - The text of the query that is being run (only Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.query.tokenized_id</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.query.tokenized.id</code> - The query digest ID generated by Performance Insights (only Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.query.tokenized.db_id</code> - The query digest ID generated by Performance Insights (only Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.query.tokenized.statement</code> - The text of the query digest (only Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.session_type.name</code> - The type of the current session (only Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.sql.id</code> - The hash of the full, non-tokenized SQL statement generated by Performance Insights (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.sql.db_id</code> - Either the SQL ID generated by the database engine, or a value generated by Performance Insights that begins with
    #                           <code>pi-</code> (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.sql.statement</code> - The full text of the SQL statement that is running, as in <code>SELECT * FROM employees</code>
    #                       (all engines except Amazon DocumentDB)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.sql.tokenized_id</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.sql_tokenized.id</code> - The hash of the SQL digest generated by Performance Insights (all engines except Amazon DocumentDB). In the console,
    #                           <code>db.sql_tokenized.id</code> is called the Support ID because Amazon Web Services Support can look at this data to help you troubleshoot
    #                       database issues.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.sql_tokenized.db_id</code> - Either the native database ID used to refer to the SQL statement, or a synthetic ID such as
    #                           <code>pi-2372568224</code> that Performance Insights generates if the native database ID isn't available (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.sql_tokenized.statement</code> - The text of the SQL digest, as in <code>SELECT * FROM employees WHERE employee_id =
    #                           ?</code> (all engines except Amazon DocumentDB)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.user.id</code> - The ID of the user logged in to the database (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.user.name</code> - The name of the user logged in to the database (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.wait_event.name</code> - The event for which the backend is waiting (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.wait_event.type</code> - The type of event for which the backend is waiting (all engines except Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.wait_event_type.name</code> - The name of the event type for which the backend is waiting (all engines except
    #                       Amazon DocumentDB).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.wait_state.name</code> - The event for which the backend is waiting (only Amazon DocumentDB).</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of items to fetch for this dimension group.</p>
    #
    #   @return [Integer]
    #
    DimensionGroup = ::Struct.new(
      :group,
      :dimensions,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about dimensions within a dimension group.</p>
    #
    # @!attribute group
    #   <p>The name of the dimension group.</p>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>The dimensions within a dimension group.</p>
    #
    #   @return [Array<DimensionDetail>]
    #
    DimensionGroupDetail = ::Struct.new(
      :group,
      :dimensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that includes the requested dimension key values and aggregated metric values
    #           within a dimension group.</p>
    #
    # @!attribute dimensions
    #   <p>A map of name-value pairs for the dimensions in the group.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute total
    #   <p>The aggregated metric value for the dimensions, over the requested time range.</p>
    #
    #   @return [Float]
    #
    # @!attribute additional_metrics
    #   <p>A map that contains the value for each additional metric.</p>
    #
    #   @return [Hash<String, Float>]
    #
    # @!attribute partitions
    #   <p>If <code>PartitionBy</code> was specified, <code>PartitionKeys</code> contains the dimensions that were.</p>
    #
    #   @return [Array<Float>]
    #
    DimensionKeyDescription = ::Struct.new(
      :dimensions,
      :total,
      :additional_metrics,
      :partitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that describes the details for a specified dimension.</p>
    #
    # @!attribute value
    #   <p>The value of the dimension detail data. Depending on the return status, this value is either the
    #             full or truncated SQL query for the following dimensions:</p>
    #            <ul>
    #               <li>
    #                 <p>
    #                       <code>db.query.statement</code> (Amazon DocumentDB)</p>
    #               </li>
    #               <li>
    #                 <p>
    #                       <code>db.sql.statement</code> (Amazon RDS and Aurora)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute dimension
    #   <p>The full name of the dimension. The full name includes the group name and key name. The following values are valid:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>db.query.statement</code> (Amazon DocumentDB)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>db.sql.statement</code> (Amazon RDS and Aurora)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the dimension detail data. Possible values include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The dimension detail data is ready to be retrieved.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PROCESSING</code> - The dimension detail data isn't ready to be retrieved because more processing time is required. If the
    #                       requested detail data has the status <code>PROCESSING</code>, Performance Insights returns the truncated query.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNAVAILABLE</code> - The dimension detail data could not be collected successfully.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AVAILABLE", "PROCESSING", "UNAVAILABLE"]
    #
    #   @return [String]
    #
    DimensionKeyDetail = ::Struct.new(
      :value,
      :dimension,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metadata for a feature. For example, the metadata might indicate that a feature is
    #           turned on or off on a specific DB instance.</p>
    #
    # @!attribute status
    #   <p>The status of the feature on the DB instance. Possible values include the following:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - The feature is enabled on the instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - The feature is disabled on the instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNSUPPORTED</code> - The feature isn't supported on the instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED_PENDING_REBOOT</code> - The feature is enabled on the instance but requires a reboot to take effect.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED_PENDING_REBOOT</code> - The feature is disabled on the instance but requires a reboot to take effect.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code> - The feature status couldn't be determined.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "UNSUPPORTED", "ENABLED_PENDING_REBOOT", "DISABLED_PENDING_REBOOT", "UNKNOWN"]
    #
    #   @return [String]
    #
    FeatureMetadata = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FeatureStatus
    #
    module FeatureStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      UNSUPPORTED = "UNSUPPORTED"

      # No documentation available.
      #
      ENABLED_PENDING_REBOOT = "ENABLED_PENDING_REBOOT"

      # No documentation available.
      #
      DISABLED_PENDING_REBOOT = "DISABLED_PENDING_REBOOT"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # @!attribute service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns data. The only valid value is <code>RDS</code>.</p>
    #
    #   Enum, one of: ["RDS", "DOCDB"]
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The ID for a data source from which to gather dimension data. This ID must be immutable and
    #             unique within an Amazon Web Services Region. When a DB instance is the data source, specify its
    #             <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute group
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
    #   @return [String]
    #
    # @!attribute group_identifier
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
    #   @return [String]
    #
    # @!attribute requested_dimensions
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
    #   @return [Array<String>]
    #
    GetDimensionKeyDetailsInput = ::Struct.new(
      :service_type,
      :identifier,
      :group,
      :group_identifier,
      :requested_dimensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dimensions
    #   <p>The details for the requested dimensions.</p>
    #
    #   @return [Array<DimensionKeyDetail>]
    #
    GetDimensionKeyDetailsOutput = ::Struct.new(
      :dimensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics.</p>
    #
    #   Enum, one of: ["RDS", "DOCDB"]
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region.
    #               Performance Insights gathers metrics from this data source. To use a DB instance as a data source,
    #               specify its <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.
    #           </p>
    #
    #   @return [String]
    #
    GetResourceMetadataInput = ::Struct.new(
      :service_type,
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region.
    #
    #         Performance Insights gathers metrics from this data source. To use a DB instance as a data source,
    #               specify its <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute features
    #   <p>The metadata for different features. For example, the metadata might indicate that a feature is
    #               turned on or off on a specific DB instance.</p>
    #
    #   @return [Hash<String, FeatureMetadata>]
    #
    GetResourceMetadataOutput = ::Struct.new(
      :identifier,
      :features,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_type
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
    #   Enum, one of: ["RDS", "DOCDB"]
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region. Performance Insights gathers metrics from this data source. In the
    #               console, the identifier is shown as <i>ResourceID</i>. When you call <code>DescribeDBInstances</code>, the identifier is
    #               returned as <code>DbiResourceId</code>.</p>
    #           <p>To use a DB instance as a data source, specify its <code>DbiResourceId</code> value. For example, specify
    #                   <code>db-ABCDEFGHIJKLMNOPQRSTU1VW2X</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_queries
    #   <p>An array of one or more queries to perform. Each query must specify a Performance Insights metric, and can optionally specify aggregation and filtering
    #               criteria.</p>
    #
    #   @return [Array<MetricQuery>]
    #
    # @!attribute start_time
    #   <p>The date and time specifying the beginning of the requested time series query range. You can't
    #               specify a <code>StartTime</code> that is earlier than 7 days ago. By default, Performance Insights has 7 days of
    #               retention, but you can extend this range up to 2 years. The value specified is
    #               <i>inclusive</i>. Thus, the command returns data points equal to or greater
    #               than <code>StartTime</code>.</p>
    #           <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time specifying the end of the requested time series query range. The value
    #               specified is <i>exclusive</i>. Thus, the command returns data points less than
    #               (but not equal to) <code>EndTime</code>.</p>
    #           <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute period_in_seconds
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
    #   @return [Integer]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. If more items exist than the specified <code>MaxRecords</code> value, a
    #               pagination token is included in the response so that the remaining results can be retrieved. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond
    #               the token, up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    GetResourceMetricsInput = ::Struct.new(
      :service_type,
      :identifier,
      :metric_queries,
      :start_time,
      :end_time,
      :period_in_seconds,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aligned_start_time
    #   <p>The start time for the returned metrics, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>).
    #                   <code>AlignedStartTime</code> will be less than or equal to the value of the user-specified <code>StartTime</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute aligned_end_time
    #   <p>The end time for the returned metrics, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>).
    #                   <code>AlignedEndTime</code> will be greater than or equal to the value of the user-specified <code>Endtime</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute identifier
    #   <p>An immutable identifier for a data source that is unique for an Amazon Web Services Region. Performance Insights gathers metrics from this data source. In the
    #               console, the identifier is shown as <i>ResourceID</i>. When you call <code>DescribeDBInstances</code>, the identifier is
    #               returned as <code>DbiResourceId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_list
    #   <p>An array of metric results, where each array element contains all of the data points for a
    #             particular dimension.</p>
    #
    #   @return [Array<MetricKeyDataPoints>]
    #
    # @!attribute next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified,
    #             the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.
    #         </p>
    #
    #   @return [String]
    #
    GetResourceMetricsOutput = ::Struct.new(
      :aligned_start_time,
      :aligned_end_time,
      :identifier,
      :metric_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed due to an unknown error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceError = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One of the arguments provided is invalid for this request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArgumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics.</p>
    #
    #   Enum, one of: ["RDS", "DOCDB"]
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>An immutable identifier for a data source that is unique within an Amazon Web Services Region. Performance Insights gathers
    #               metrics from this data source. To use an Amazon RDS DB instance as a data source, specify its
    #                   <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VWZ</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute metrics
    #   <p>The types of metrics for which to retrieve dimensions. Valid values include <code>db.load</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return in the response. If more items exist than the specified
    #               <code>MaxRecords</code> value, a pagination token is included in the response so that the remaining
    #               results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified,
    #               the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.
    #           </p>
    #
    #   @return [String]
    #
    ListAvailableResourceDimensionsInput = ::Struct.new(
      :service_type,
      :identifier,
      :metrics,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metric_dimensions
    #   <p>The dimension information returned for requested metric types.</p>
    #
    #   @return [Array<MetricDimensionGroups>]
    #
    # @!attribute next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified,
    #               the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    ListAvailableResourceDimensionsOutput = ::Struct.new(
      :metric_dimensions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_type
    #   <p>The Amazon Web Services service for which Performance Insights returns metrics.</p>
    #
    #   Enum, one of: ["RDS", "DOCDB"]
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>An immutable identifier for a data source that is unique within an Amazon Web Services Region. Performance Insights gathers
    #               metrics from this data source. To use an Amazon RDS DB instance as a data source, specify its
    #                   <code>DbiResourceId</code> value. For example, specify <code>db-ABCDEFGHIJKLMNOPQRSTU1VWZ</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute metric_types
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
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified,
    #             the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return. If the <code>MaxRecords</code> value is less than the number
    #               of existing items, the response includes a pagination token. </p>
    #
    #   @return [Integer]
    #
    ListAvailableResourceMetricsInput = ::Struct.new(
      :service_type,
      :identifier,
      :metric_types,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metrics
    #   <p>An array of metrics available to query. Each array element contains the full name,
    #               description, and unit of the metric.
    #           </p>
    #
    #   @return [Array<ResponseResourceMetric>]
    #
    # @!attribute next_token
    #   <p>A pagination token that indicates the response didn’t return all available records because <code>MaxRecords</code> was specified in the
    #               previous request. To get the remaining records, specify <code>NextToken</code> in a separate request with this value. </p>
    #
    #   @return [String]
    #
    ListAvailableResourceMetricsOutput = ::Struct.new(
      :metrics,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The available dimension information for a metric type.</p>
    #
    # @!attribute metric
    #   <p>The metric type to which the dimension information belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute groups
    #   <p>The available dimension groups for a metric type.</p>
    #
    #   @return [Array<DimensionGroupDetail>]
    #
    MetricDimensionGroups = ::Struct.new(
      :metric,
      :groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A time-ordered series of data points, corresponding to a dimension of a Performance Insights
    #       metric.</p>
    #
    # @!attribute key
    #   <p>The dimensions to which the data points apply.</p>
    #
    #   @return [ResponseResourceMetricKey]
    #
    # @!attribute data_points
    #   <p>An array of timestamp-value pairs, representing measurements over a period of time.</p>
    #
    #   @return [Array<DataPoint>]
    #
    MetricKeyDataPoints = ::Struct.new(
      :key,
      :data_points,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single query to be processed. You must provide the metric to query. If no other
    #       parameters are specified, Performance Insights returns all data points for the specified metric. Optionally, you can
    #       request that the data points be aggregated by dimension group (<code>GroupBy</code>), and return only
    #           those data points that match your criteria (<code>Filter</code>).</p>
    #
    # @!attribute metric
    #   <p>The name of a Performance Insights metric to be measured.</p>
    #           <p>Valid values for <code>Metric</code> are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db.load.avg</code> - A scaled representation of the number of active sessions for the
    #                       database engine.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db.sampledload.avg</code> - The raw number of active sessions for the database engine.</p>
    #               </li>
    #               <li>
    #                   <p>The counter metrics listed in <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights_Counters.html USER_PerfInsights_Counters.OS">Performance Insights
    #                           operating system counters</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #               </li>
    #            </ul>
    #           <p>If the number of active sessions is less than an internal Performance Insights threshold, <code>db.load.avg</code> and <code>db.sampledload.avg</code> are the same
    #               value. If the number of active sessions is greater than the internal threshold, Performance Insights samples the active sessions, with <code>db.load.avg</code> showing the
    #               scaled values, <code>db.sampledload.avg</code> showing the raw values, and <code>db.sampledload.avg</code> less than
    #                   <code>db.load.avg</code>. For most use cases, you can query <code>db.load.avg</code> only.</p>
    #
    #   @return [String]
    #
    # @!attribute group_by
    #   <p>A specification for how to aggregate the data points from a query result. You must
    #         specify a valid dimension group.  Performance Insights will return all of the dimensions within that group,
    #         unless you provide the names of specific dimensions within that group. You can also request
    #         that Performance Insights return a limited number of values for a dimension.</p>
    #
    #   @return [DimensionGroup]
    #
    # @!attribute filter
    #   <p>One or more filters to apply in the request.  Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Any number of filters by the same dimension, as specified in the <code>GroupBy</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>A single filter for any other dimension in this dimension group.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    MetricQuery = ::Struct.new(
      :metric,
      :group_by,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user is not authorized to perform this request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotAuthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If <code>PartitionBy</code> was specified in a <code>DescribeDimensionKeys</code>
    #       request, the dimensions are returned in an array. Each element in the array specifies one
    #       dimension. </p>
    #
    # @!attribute dimensions
    #   <p>A dimension map that contains the dimensions for this partition.</p>
    #
    #   @return [Hash<String, String>]
    #
    ResponsePartitionKey = ::Struct.new(
      :dimensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains the full name, description, and unit of a metric.
    #       </p>
    #
    # @!attribute metric
    #   <p>The full name of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit of the metric.</p>
    #
    #   @return [String]
    #
    ResponseResourceMetric = ::Struct.new(
      :metric,
      :description,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object describing a Performance Insights metric and one or more dimensions for that metric.</p>
    #
    # @!attribute metric
    #   <p>The name of a Performance Insights metric to be measured.</p>
    #           <p>Valid values for <code>Metric</code> are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db.load.avg</code> - A scaled representation of the number of active sessions for the database engine.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db.sampledload.avg</code> - The raw number of active sessions for the database engine.</p>
    #               </li>
    #               <li>
    #                   <p>The counter metrics listed in <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights_Counters.html USER_PerfInsights_Counters.OS">Performance Insights
    #                           operating system counters</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>If the number of active sessions is less than an internal Performance Insights threshold, <code>db.load.avg</code> and
    #             <code>db.sampledload.avg</code> are the same value. If the number of active sessions is greater than the
    #             internal threshold, Performance Insights samples the active sessions, with <code>db.load.avg</code> showing the scaled values,
    #             <code>db.sampledload.avg</code> showing the raw values, and <code>db.sampledload.avg</code> less
    #             than <code>db.load.avg</code>. For most use cases, you can query <code>db.load.avg</code> only.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>The valid dimensions for the metric.</p>
    #
    #   @return [Hash<String, String>]
    #
    ResponseResourceMetricKey = ::Struct.new(
      :metric,
      :dimensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceType
    #
    module ServiceType
      # No documentation available.
      #
      RDS = "RDS"

      # No documentation available.
      #
      DOCDB = "DOCDB"
    end

  end
end
