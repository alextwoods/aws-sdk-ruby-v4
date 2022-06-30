# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TimestreamWrite
  module Types

    # <p>You are not authorized to perform this action.</p>
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

    # <p>Timestream was unable to process this request because it contains resource that already exists.</p>
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

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key for the database.
    #            If the KMS key is not specified, the database will be encrypted with a Timestream
    #            managed KMS key located in your account.
    #            Refer to <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html aws-managed-cmk">Amazon Web Services managed KMS keys</a> for more info.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #         A list of key-value pairs to label the table.
    #      </p>
    #
    #   @return [Array<Tag>]
    #
    CreateDatabaseInput = ::Struct.new(
      :database_name,
      :kms_key_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database
    #   <p>The newly created Timestream database.</p>
    #
    #   @return [Database]
    #
    CreateDatabaseOutput = ::Struct.new(
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the Timestream table.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_properties
    #   <p>The duration for which your time series data must be stored in the memory store and the magnetic store.</p>
    #
    #   @return [RetentionProperties]
    #
    # @!attribute tags
    #   <p>
    #         A list of key-value pairs to label the table.
    #      </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute magnetic_store_write_properties
    #   <p>Contains properties to set on the table when enabling magnetic store writes.</p>
    #
    #   @return [MagneticStoreWriteProperties]
    #
    CreateTableInput = ::Struct.new(
      :database_name,
      :table_name,
      :retention_properties,
      :tags,
      :magnetic_store_write_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table
    #   <p>The newly created Timestream table.</p>
    #
    #   @return [Table]
    #
    CreateTableOutput = ::Struct.new(
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A top level container for a table. Databases and tables are the
    #       fundamental management concepts in Amazon Timestream. All tables in a
    #       database are encrypted with the same KMS key.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name that uniquely identifies this database.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #
    #   @return [String]
    #
    # @!attribute table_count
    #   <p>The total number of tables found within a Timestream database. </p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS key used to encrypt the data stored in the database.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time when the database was created, calculated from the Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>
    #      The last time that this database was updated.
    #      </p>
    #
    #   @return [Time]
    #
    Database = ::Struct.new(
      :arn,
      :database_name,
      :table_count,
      :kms_key_id,
      :creation_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.table_count ||= 0
      end

    end

    # @!attribute database_name
    #   <p>The name of the Timestream database to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteDatabaseInput = ::Struct.new(
      :database_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDatabaseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the Timestream database is to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the Timestream table to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteTableInput = ::Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTableOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #
    #   @return [String]
    #
    DescribeDatabaseInput = ::Struct.new(
      :database_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database
    #   <p>The name of the Timestream table.</p>
    #
    #   @return [Database]
    #
    DescribeDatabaseOutput = ::Struct.new(
      :database,
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
    #   <p>An <code>Endpoints</code> object is returned when a <code>DescribeEndpoints</code> request is made.</p>
    #
    #   @return [Array<Endpoint>]
    #
    DescribeEndpointsOutput = ::Struct.new(
      :endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the Timestream table.</p>
    #
    #   @return [String]
    #
    DescribeTableInput = ::Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table
    #   <p>The Timestream table.</p>
    #
    #   @return [Table]
    #
    DescribeTableOutput = ::Struct.new(
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dimension represents the meta data attributes of the time series. For example, the name and availability zone of an EC2 instance or the name of the manufacturer of a wind turbine are dimensions. </p>
    #
    # @!attribute name
    #   <p>
    #            Dimension represents the meta data attributes of the time series.
    #            For example, the name and availability zone of an EC2 instance or
    #            the name of the manufacturer of a wind turbine are dimensions.
    #
    #         </p>
    #            <p>For constraints on Dimension names,
    #            see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html limits.naming">Naming Constraints</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the dimension.</p>
    #
    #   @return [String]
    #
    # @!attribute dimension_value_type
    #   <p>The data type of the dimension for the time series data point.</p>
    #
    #   Enum, one of: ["VARCHAR"]
    #
    #   @return [String]
    #
    Dimension = ::Struct.new(
      :name,
      :value,
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

    # <p>Represents an available endpoint against which to make API calls agaisnt, as well as the TTL for that endpoint.</p>
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

    # <p> Timestream was unable to fully process this request because of an internal server error.</p>
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

    # <p>The requested endpoint was invalid.</p>
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

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #
    #   @return [Integer]
    #
    ListDatabasesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute databases
    #   <p>A list of database names.</p>
    #
    #   @return [Array<Database>]
    #
    # @!attribute next_token
    #   <p>The pagination token. This parameter is returned when the response is truncated.</p>
    #
    #   @return [String]
    #
    ListDatabasesOutput = ::Struct.new(
      :databases,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #
    #   @return [Integer]
    #
    ListTablesInput = ::Struct.new(
      :database_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tables
    #   <p>A list of tables.</p>
    #
    #   @return [Array<Table>]
    #
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously truncated response.</p>
    #
    #   @return [String]
    #
    ListTablesOutput = ::Struct.new(
      :tables,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #   The Timestream resource with tags to be listed. This value is an Amazon Resource Name (ARN).
    #   </p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>
    #   The tags currently associated with the Timestream resource.
    #   </p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location to write error reports for records rejected, asynchronously, during magnetic store writes.</p>
    #
    # @!attribute s3_configuration
    #   <p>Configuration of an S3 location to write error reports for records rejected, asynchronously, during magnetic store writes.</p>
    #
    #   @return [S3Configuration]
    #
    MagneticStoreRejectedDataLocation = ::Struct.new(
      :s3_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The set of properties on a table for configuring magnetic store writes.</p>
    #
    # @!attribute enable_magnetic_store_writes
    #   <p>A flag to enable magnetic store writes.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute magnetic_store_rejected_data_location
    #   <p>The location to write error reports for records rejected asynchronously during magnetic store writes.</p>
    #
    #   @return [MagneticStoreRejectedDataLocation]
    #
    MagneticStoreWriteProperties = ::Struct.new(
      :enable_magnetic_store_writes,
      :magnetic_store_rejected_data_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> MeasureValue represents the data attribute of the time series. For example, the CPU utilization of an EC2 instance or the RPM of a wind turbine are measures. MeasureValue has both name and value. </p>
    #          <p> MeasureValue is only allowed for type <code>MULTI</code>. Using <code>MULTI</code> type, you can pass multiple data attributes associated with the same time series in a single record </p>
    #
    # @!attribute name
    #   <p> Name of the MeasureValue.  </p>
    #            <p> For constraints on MeasureValue names, refer to <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html limits.naming">
    #         Naming Constraints</a> in the Timestream developer guide.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p> Value for the MeasureValue. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Contains the data type of the MeasureValue for the time series data point.</p>
    #
    #   Enum, one of: ["DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP", "MULTI"]
    #
    #   @return [String]
    #
    MeasureValue = ::Struct.new(
      :name,
      :value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MeasureValueType
    #
    module MeasureValueType
      # No documentation available.
      #
      DOUBLE = "DOUBLE"

      # No documentation available.
      #
      BIGINT = "BIGINT"

      # No documentation available.
      #
      VARCHAR = "VARCHAR"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"

      # No documentation available.
      #
      MULTI = "MULTI"
    end

    # <p>Record represents a time series data point being written into
    #        Timestream. Each record contains an array of dimensions. Dimensions
    #        represent the meta data attributes of a time series data point such as
    #        the instance name or availability zone of an EC2 instance. A record also
    #        contains the measure name which is the name of the measure being collected
    #        for example the CPU utilization of an EC2 instance. A record also contains
    #        the measure value and the value type which is the data type of the measure value.
    #        In addition, the record contains the timestamp when the measure was collected that
    #        the timestamp unit which represents the granularity of the timestamp.
    #        </p>
    #          <p>
    #         Records have a <code>Version</code> field, which is a 64-bit <code>long</code> that you can use for updating data points.
    #         Writes of a duplicate record with the same dimension,
    #         timestamp, and measure name
    #         but different measure value will only succeed if the <code>Version</code> attribute of the record in the write request
    #         is higher than that of the existing record.
    #         Timestream defaults to a <code>Version</code> of <code>1</code> for records without the <code>Version</code> field.
    #      </p>
    #
    # @!attribute dimensions
    #   <p>Contains the list of dimensions for time series data points.</p>
    #
    #   @return [Array<Dimension>]
    #
    # @!attribute measure_name
    #   <p>Measure represents the data attribute of the time series. For example, the CPU utilization of an EC2 instance or the RPM of a wind turbine are measures. </p>
    #
    #   @return [String]
    #
    # @!attribute measure_value
    #   <p>
    #   Contains the measure value for the time series data point.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute measure_value_type
    #   <p>
    #   Contains the data type of the measure value for the time series data point. Default type is <code>DOUBLE</code>.
    #   </p>
    #
    #   Enum, one of: ["DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP", "MULTI"]
    #
    #   @return [String]
    #
    # @!attribute time
    #   <p>
    #   Contains the time at which the measure value for the data point was collected.
    #   The time value plus the unit provides the time elapsed since the epoch.
    #   For example, if the time value is <code>12345</code> and the unit is <code>ms</code>,
    #      then <code>12345 ms</code> have elapsed since the epoch.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute time_unit
    #   <p>
    #   The granularity of the timestamp unit. It indicates if the time value is in seconds, milliseconds, nanoseconds or other supported values.
    #   Default is <code>MILLISECONDS</code>.
    #   </p>
    #
    #   Enum, one of: ["MILLISECONDS", "SECONDS", "MICROSECONDS", "NANOSECONDS"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>64-bit attribute used for record updates.
    #            Write requests for duplicate data with a higher version number will update the existing measure value and version.
    #            In cases where the measure value is the same, <code>Version</code> will still be updated . Default value is <code>1</code>.</p>
    #
    #            <note>
    #               <p>
    #                  <code>Version</code> must be <code>1</code> or greater, or you will receive a <code>ValidationException</code> error.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute measure_values
    #   <p> Contains the list of MeasureValue for time series data points. </p>
    #            <p> This is only allowed for type <code>MULTI</code>. For scalar values, use <code>MeasureValue</code> attribute of the Record directly. </p>
    #
    #   @return [Array<MeasureValue>]
    #
    Record = ::Struct.new(
      :dimensions,
      :measure_name,
      :measure_value,
      :measure_value_type,
      :time,
      :time_unit,
      :version,
      :measure_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information on the records ingested by this request.</p>
    #
    # @!attribute total
    #   <p>Total count of successfully ingested records.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_store
    #   <p>Count of records ingested into the memory store.</p>
    #
    #   @return [Integer]
    #
    # @!attribute magnetic_store
    #   <p>Count of records ingested into the magnetic store.</p>
    #
    #   @return [Integer]
    #
    RecordsIngested = ::Struct.new(
      :total,
      :memory_store,
      :magnetic_store,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.total ||= 0
        self.memory_store ||= 0
        self.magnetic_store ||= 0
      end

    end

    # <p>
    # Records that were not successfully inserted into Timestream due to data validation issues
    # that must be resolved prior to reinserting time series data into the system.
    # </p>
    #
    # @!attribute record_index
    #   <p>
    #   The index of the record in the input request for WriteRecords. Indexes begin with 0.
    #   </p>
    #
    #   @return [Integer]
    #
    # @!attribute reason
    #   <p>
    #            The reason why a record was not successfully inserted into Timestream. Possible causes of failure include:
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>Records with duplicate data where there are multiple records with the same dimensions,
    #                     timestamps, and measure names but:
    #                  </p>
    #                  <ul>
    #                     <li>
    #                        <p>Measure values are different</p>
    #                     </li>
    #                     <li>
    #                        <p>Version is not present in the request <i>or</i>
    #                        the value of version in the new record is equal to or lower than the existing value</p>
    #                     </li>
    #                  </ul>
    #                  <p>
    #                     If Timestream rejects data for this case, the <code>ExistingVersion</code> field in the <code>RejectedRecords</code>
    #                     response will indicate the current record’s version.
    #                     To force an update, you can resend the request with a version for the record set to a value greater than the <code>ExistingVersion</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                    Records with timestamps that lie outside the retention duration of the memory store
    #                  </p>
    #                  <note>
    #                     <p>When the retention window is updated, you will receive a <code>RejectedRecords</code> exception
    #                     if you immediately try to ingest data within the new window.
    #                     To avoid a <code>RejectedRecords</code> exception,
    #                     wait until the duration of the new window to ingest new data.
    #                     For further information,
    #                     see
    #                     <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/best-practices.html configuration">
    #                        Best Practices for Configuring Timestream</a>
    #                     and
    #                     <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html">the explanation of how storage works in Timestream</a>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                    Records with dimensions or measures that exceed the Timestream defined limits.
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Access Management</a> in the Timestream Developer Guide.
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute existing_version
    #   <p>The existing version of the record.
    #            This value is populated in scenarios where an identical record exists with a higher version than the version in the write request.</p>
    #
    #   @return [Integer]
    #
    RejectedRecord = ::Struct.new(
      :record_index,
      :reason,
      :existing_version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.record_index ||= 0
      end

    end

    # <p>
    #          WriteRecords would throw this exception in the following cases:
    #       </p>
    #          <ul>
    #             <li>
    #                <p>Records with duplicate data where there are multiple records with the same dimensions,
    #                   timestamps, and measure names but:
    #                   </p>
    #                   <ul>
    #                   <li>
    #                      <p>Measure values are different</p>
    #                   </li>
    #                   <li>
    #                      <p>Version is not present in the request <i>or</i>
    #                         the value of version in the new record is equal to or lower than the existing value</p>
    #                   </li>
    #                </ul>
    #                   <p>
    #                   In this case, if Timestream rejects data, the <code>ExistingVersion</code> field in the <code>RejectedRecords</code>
    #                   response will indicate the current record’s version.
    #                   To force an update, you can resend the request with a version for the record set to a value greater than the <code>ExistingVersion</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                  Records with timestamps that lie outside the retention duration of the memory store
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                  Records with dimensions or measures that exceed the Timestream defined limits.
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #          For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Quotas</a> in the Timestream Developer Guide.
    #          </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute rejected_records
    #
    #   @return [Array<RejectedRecord>]
    #
    RejectedRecordsException = ::Struct.new(
      :message,
      :rejected_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation tried to access a nonexistent resource. The resource might not be specified correctly, or its status might not be ACTIVE.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Retention properties contain the duration for which your time series data must be stored in the magnetic store and the memory store.
    #       </p>
    #
    # @!attribute memory_store_retention_period_in_hours
    #   <p>The duration for which data must be stored in the memory store. </p>
    #
    #   @return [Integer]
    #
    # @!attribute magnetic_store_retention_period_in_days
    #   <p>The duration for which data must be stored in the magnetic store. </p>
    #
    #   @return [Integer]
    #
    RetentionProperties = ::Struct.new(
      :memory_store_retention_period_in_hours,
      :magnetic_store_retention_period_in_days,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.memory_store_retention_period_in_hours ||= 0
        self.magnetic_store_retention_period_in_days ||= 0
      end

    end

    # <p>Configuration specifing an S3 location.</p>
    #
    # @!attribute bucket_name
    #   <p>>Bucket name of the customer S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute object_key_prefix
    #   <p>Object key preview for the customer S3 location.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_option
    #   <p>Encryption option for the customer s3 location. Options are S3 server side encryption with an S3-managed key or KMS managed key.</p>
    #
    #   Enum, one of: ["SSE_S3", "SSE_KMS"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>KMS key id for the customer s3 location when encrypting with a KMS managed key.</p>
    #
    #   @return [String]
    #
    S3Configuration = ::Struct.new(
      :bucket_name,
      :object_key_prefix,
      :encryption_option,
      :kms_key_id,
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

    # <p> Instance quota of resource exceeded for this account.</p>
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

    # <p>Table represents a database table in Timestream. Tables contain one or more related time series. You can modify the retention duration of the memory store and the magnetic store for a table.
    #       </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name that uniquely identifies this table.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the Timestream table.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the Timestream database that contains this table.</p>
    #
    #   @return [String]
    #
    # @!attribute table_status
    #   <p>The current state of the table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The table is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The table is ready for use.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute retention_properties
    #   <p>The retention duration for the memory store and magnetic store.</p>
    #
    #   @return [RetentionProperties]
    #
    # @!attribute creation_time
    #   <p>The time when the Timestream table was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time when the Timestream table was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute magnetic_store_write_properties
    #   <p>Contains properties to set on the table when enabling magnetic store writes.</p>
    #
    #   @return [MagneticStoreWriteProperties]
    #
    Table = ::Struct.new(
      :arn,
      :table_name,
      :database_name,
      :table_status,
      :retention_properties,
      :creation_time,
      :last_updated_time,
      :magnetic_store_write_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TableStatus
    #
    module TableStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>
    # A tag is a label that you assign to a Timestream database and/or table. Each tag consists
    # of a key and an optional value, both of which you define. Tags enable you to
    # categorize databases and/or tables, for example, by purpose, owner, or environment.
    # </p>
    #
    # @!attribute key
    #   <p>
    #   The key of the tag. Tag keys are case sensitive.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>
    #   The value of the tag. Tag values are case-sensitive and can be null.
    #   </p>
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
    #   <p>
    #       Identifies the Timestream resource to which tags should be added. This value is an
    #       Amazon Resource Name (ARN).
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #   The tags to be assigned to the Timestream resource.
    #   </p>
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

    # <p> Too many requests were made by a user exceeding service quotas. The request was throttled.</p>
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

    # Includes enum constants for TimeUnit
    #
    module TimeUnit
      # No documentation available.
      #
      MILLISECONDS = "MILLISECONDS"

      # No documentation available.
      #
      SECONDS = "SECONDS"

      # No documentation available.
      #
      MICROSECONDS = "MICROSECONDS"

      # No documentation available.
      #
      NANOSECONDS = "NANOSECONDS"
    end

    # @!attribute resource_arn
    #   <p>
    #       The Timestream resource that the tags will be removed from. This value
    #       is an Amazon Resource Name (ARN).
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>
    #       A list of tags keys. Existing tags of the resource whose keys are members of this
    #       list will be removed from the Timestream resource.
    #   </p>
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

    # @!attribute database_name
    #   <p>
    #        The name of the database.
    #      </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>
    #         The identifier of the new KMS key (<code>KmsKeyId</code>) to be used to encrypt the data stored in the database.
    #         If the <code>KmsKeyId</code> currently registered with the database is the same as the <code>KmsKeyId</code> in the
    #         request, there will not be any update.
    #      </p>
    #            <p>You can specify the <code>KmsKeyId</code> using any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    UpdateDatabaseInput = ::Struct.new(
      :database_name,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database
    #   <p>A top level container for a table. Databases and tables are the
    #         fundamental management concepts in Amazon Timestream. All tables in a
    #         database are encrypted with the same KMS key.</p>
    #
    #   @return [Database]
    #
    UpdateDatabaseOutput = ::Struct.new(
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the Timestream table.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_properties
    #   <p>The retention duration of the memory store and the magnetic store.</p>
    #
    #   @return [RetentionProperties]
    #
    # @!attribute magnetic_store_write_properties
    #   <p>Contains properties to set on the table when enabling magnetic store writes.</p>
    #
    #   @return [MagneticStoreWriteProperties]
    #
    UpdateTableInput = ::Struct.new(
      :database_name,
      :table_name,
      :retention_properties,
      :magnetic_store_write_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table
    #   <p>The updated Timestream table.</p>
    #
    #   @return [Table]
    #
    UpdateTableOutput = ::Struct.new(
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Invalid or malformed request.</p>
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

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the Timestream table.</p>
    #
    #   @return [String]
    #
    # @!attribute common_attributes
    #   <p>A record containing the common measure, dimension, time,
    #            and version attributes
    #          shared across all the records in the request. The measure and dimension
    #          attributes specified will be merged with the measure and dimension
    #          attributes in the records object when the data is written into Timestream.
    #          Dimensions may not overlap,
    #          or a <code>ValidationException</code> will be thrown.
    #            In other words, a record must contain dimensions with unique names.
    #          </p>
    #
    #   @return [Record]
    #
    # @!attribute records
    #   <p>An array of records containing the unique measure, dimension, time, and version
    #          attributes for each time series data point.
    #          </p>
    #
    #   @return [Array<Record>]
    #
    WriteRecordsInput = ::Struct.new(
      :database_name,
      :table_name,
      :common_attributes,
      :records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute records_ingested
    #   <p>Information on the records ingested by this request.</p>
    #
    #   @return [RecordsIngested]
    #
    WriteRecordsOutput = ::Struct.new(
      :records_ingested,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
