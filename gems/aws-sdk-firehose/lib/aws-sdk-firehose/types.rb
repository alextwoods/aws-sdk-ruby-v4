# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Firehose
  module Types

    # @!attribute interval_in_seconds
    #
    #   @return [Integer]
    #
    # @!attribute size_in_m_bs
    #
    #   @return [Integer]
    #
    AmazonopensearchserviceBufferingHints = ::Struct.new(
      :interval_in_seconds,
      :size_in_m_bs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute role_arn
    #
    #   @return [String]
    #
    # @!attribute domain_arn
    #
    #   @return [String]
    #
    # @!attribute cluster_endpoint
    #
    #   @return [String]
    #
    # @!attribute index_name
    #
    #   @return [String]
    #
    # @!attribute type_name
    #
    #   @return [String]
    #
    # @!attribute index_rotation_period
    #   Enum, one of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #
    #   @return [AmazonopensearchserviceBufferingHints]
    #
    # @!attribute retry_options
    #
    #   @return [AmazonopensearchserviceRetryOptions]
    #
    # @!attribute s3_backup_mode
    #   Enum, one of: ["FailedDocumentsOnly", "AllDocuments"]
    #
    #   @return [String]
    #
    # @!attribute s3_configuration
    #   <p>Describes the configuration of a destination in Amazon S3.</p>
    #
    #   @return [S3DestinationConfiguration]
    #
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    # @!attribute vpc_configuration
    #   <p>The details of the VPC of the Amazon ES destination.</p>
    #
    #   @return [VpcConfiguration]
    #
    AmazonopensearchserviceDestinationConfiguration = ::Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute role_arn
    #
    #   @return [String]
    #
    # @!attribute domain_arn
    #
    #   @return [String]
    #
    # @!attribute cluster_endpoint
    #
    #   @return [String]
    #
    # @!attribute index_name
    #
    #   @return [String]
    #
    # @!attribute type_name
    #
    #   @return [String]
    #
    # @!attribute index_rotation_period
    #   Enum, one of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #
    #   @return [AmazonopensearchserviceBufferingHints]
    #
    # @!attribute retry_options
    #
    #   @return [AmazonopensearchserviceRetryOptions]
    #
    # @!attribute s3_backup_mode
    #   Enum, one of: ["FailedDocumentsOnly", "AllDocuments"]
    #
    #   @return [String]
    #
    # @!attribute s3_destination_description
    #   <p>Describes a destination in Amazon S3.</p>
    #
    #   @return [S3DestinationDescription]
    #
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    # @!attribute vpc_configuration_description
    #   <p>The details of the VPC of the Amazon ES destination.</p>
    #
    #   @return [VpcConfigurationDescription]
    #
    AmazonopensearchserviceDestinationDescription = ::Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute role_arn
    #
    #   @return [String]
    #
    # @!attribute domain_arn
    #
    #   @return [String]
    #
    # @!attribute cluster_endpoint
    #
    #   @return [String]
    #
    # @!attribute index_name
    #
    #   @return [String]
    #
    # @!attribute type_name
    #
    #   @return [String]
    #
    # @!attribute index_rotation_period
    #   Enum, one of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #
    #   @return [AmazonopensearchserviceBufferingHints]
    #
    # @!attribute retry_options
    #
    #   @return [AmazonopensearchserviceRetryOptions]
    #
    # @!attribute s3_update
    #   <p>Describes an update for a destination in Amazon S3.</p>
    #
    #   @return [S3DestinationUpdate]
    #
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    AmazonopensearchserviceDestinationUpdate = ::Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AmazonopensearchserviceIndexRotationPeriod
    #
    module AmazonopensearchserviceIndexRotationPeriod
      # No documentation available.
      #
      NoRotation = "NoRotation"

      # No documentation available.
      #
      OneHour = "OneHour"

      # No documentation available.
      #
      OneDay = "OneDay"

      # No documentation available.
      #
      OneWeek = "OneWeek"

      # No documentation available.
      #
      OneMonth = "OneMonth"
    end

    # @!attribute duration_in_seconds
    #
    #   @return [Integer]
    #
    AmazonopensearchserviceRetryOptions = ::Struct.new(
      :duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AmazonopensearchserviceS3BackupMode
    #
    module AmazonopensearchserviceS3BackupMode
      # No documentation available.
      #
      FailedDocumentsOnly = "FailedDocumentsOnly"

      # No documentation available.
      #
      AllDocuments = "AllDocuments"
    end

    # <p>Describes hints for the buffering to perform before delivering data to the
    #          destination. These options are treated as hints, and therefore Kinesis Data Firehose might
    #          choose to use different values when it is optimal. The <code>SizeInMBs</code> and
    #             <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #          one of them, you must also provide a value for the other.</p>
    #
    # @!attribute size_in_m_bs
    #   <p>Buffer incoming data to the specified size, in MiBs, before delivering it to the
    #            destination. The default value is 5. This parameter is optional but if you specify a value
    #            for it, you must also specify a value for <code>IntervalInSeconds</code>, and vice
    #            versa.</p>
    #            <p>We recommend setting this parameter to a value greater than the amount of data you
    #            typically ingest into the delivery stream in 10 seconds. For example, if you typically
    #            ingest data at 1 MiB/sec, the value should be 10 MiB or higher.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval_in_seconds
    #   <p>Buffer incoming data for the specified period of time, in seconds, before delivering
    #            it to the destination. The default value is 300. This parameter is optional but if you
    #            specify a value for it, you must also specify a value for <code>SizeInMBs</code>, and vice
    #            versa.</p>
    #
    #   @return [Integer]
    #
    BufferingHints = ::Struct.new(
      :size_in_m_bs,
      :interval_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Amazon CloudWatch logging options for your delivery stream.</p>
    #
    # @!attribute enabled
    #   <p>Enables or disables CloudWatch logging.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute log_group_name
    #   <p>The CloudWatch group name for logging. This value is required if CloudWatch logging
    #            is enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_name
    #   <p>The CloudWatch log stream name for logging. This value is required if CloudWatch
    #            logging is enabled.</p>
    #
    #   @return [String]
    #
    CloudWatchLoggingOptions = ::Struct.new(
      :enabled,
      :log_group_name,
      :log_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CompressionFormat
    #
    module CompressionFormat
      # No documentation available.
      #
      UNCOMPRESSED = "UNCOMPRESSED"

      # No documentation available.
      #
      GZIP = "GZIP"

      # No documentation available.
      #
      ZIP = "ZIP"

      # No documentation available.
      #
      SNAPPY = "Snappy"

      # No documentation available.
      #
      HADOOP_SNAPPY = "HADOOP_SNAPPY"
    end

    # <p>Another modification has already happened. Fetch <code>VersionId</code> again and use
    #          it to update the destination.</p>
    #
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContentEncoding
    #
    module ContentEncoding
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      GZIP = "GZIP"
    end

    # <p>Describes a <code>COPY</code> command for Amazon Redshift.</p>
    #
    # @!attribute data_table_name
    #   <p>The name of the target table. The table must already exist in the database.</p>
    #
    #   @return [String]
    #
    # @!attribute data_table_columns
    #   <p>A comma-separated list of column names.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_options
    #   <p>Optional parameters to use with the Amazon Redshift <code>COPY</code> command. For
    #            more information, see the "Optional Parameters" section of <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html">Amazon Redshift COPY command</a>. Some possible
    #            examples that would apply to Kinesis Data Firehose are as follows:</p>
    #            <p>
    #               <code>delimiter '\t' lzop;</code> - fields are delimited with "\t" (TAB character) and
    #            compressed using lzop.</p>
    #            <p>
    #               <code>delimiter '|'</code> - fields are delimited with "|" (this is the default
    #            delimiter).</p>
    #            <p>
    #               <code>delimiter '|' escape</code> - the delimiter should be escaped.</p>
    #            <p>
    #               <code>fixedwidth 'venueid:3,venuename:25,venuecity:12,venuestate:2,venueseats:6'</code> -
    #            fields are fixed width in the source, with each width specified after every column in the
    #            table.</p>
    #            <p>
    #               <code>JSON 's3://mybucket/jsonpaths.txt'</code> - data is in JSON format, and the path
    #            specified is the format of the data.</p>
    #            <p>For more examples, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_COPY_command_examples.html">Amazon Redshift COPY command
    #               examples</a>.</p>
    #
    #   @return [String]
    #
    CopyCommand = ::Struct.new(
      :data_table_name,
      :data_table_columns,
      :copy_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream. This name must be unique per AWS account in the same
    #            AWS Region. If the delivery streams are in different accounts or different Regions, you can
    #            have multiple delivery streams with the same name.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_stream_type
    #   <p>The delivery stream type. This parameter can be one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DirectPut</code>: Provider applications access the delivery stream
    #                  directly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KinesisStreamAsSource</code>: The delivery stream uses a Kinesis data
    #                  stream as a source.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DirectPut", "KinesisStreamAsSource"]
    #
    #   @return [String]
    #
    # @!attribute kinesis_stream_source_configuration
    #   <p>When a Kinesis data stream is used as the source for the delivery stream, a <a>KinesisStreamSourceConfiguration</a> containing the Kinesis data stream Amazon
    #            Resource Name (ARN) and the role ARN for the source stream.</p>
    #
    #   @return [KinesisStreamSourceConfiguration]
    #
    # @!attribute delivery_stream_encryption_configuration_input
    #   <p>Used to specify the type and Amazon Resource Name (ARN) of the KMS key needed for
    #            Server-Side Encryption (SSE).</p>
    #
    #   @return [DeliveryStreamEncryptionConfigurationInput]
    #
    # @!attribute s3_destination_configuration
    #   <p>[Deprecated]
    #            The destination in Amazon S3. You can specify only one destination.</p>
    #
    #   @deprecated
    #
    #   @return [S3DestinationConfiguration]
    #
    # @!attribute extended_s3_destination_configuration
    #   <p>The destination in Amazon S3. You can specify only one destination.</p>
    #
    #   @return [ExtendedS3DestinationConfiguration]
    #
    # @!attribute redshift_destination_configuration
    #   <p>The destination in Amazon Redshift. You can specify only one destination.</p>
    #
    #   @return [RedshiftDestinationConfiguration]
    #
    # @!attribute elasticsearch_destination_configuration
    #   <p>The destination in Amazon ES. You can specify only one destination.</p>
    #
    #   @return [ElasticsearchDestinationConfiguration]
    #
    # @!attribute amazonopensearchservice_destination_configuration
    #
    #   @return [AmazonopensearchserviceDestinationConfiguration]
    #
    # @!attribute splunk_destination_configuration
    #   <p>The destination in Splunk. You can specify only one destination.</p>
    #
    #   @return [SplunkDestinationConfiguration]
    #
    # @!attribute http_endpoint_destination_configuration
    #   <p>Enables configuring Kinesis Firehose to deliver data to any HTTP endpoint destination.
    #            You can specify only one destination.</p>
    #
    #   @return [HttpEndpointDestinationConfiguration]
    #
    # @!attribute tags
    #   <p>A set of tags to assign to the delivery stream. A tag is a key-value pair that you can
    #            define and assign to AWS resources. Tags are metadata. For example, you can add friendly
    #            names and descriptions or other types of information that can help you distinguish the
    #            delivery stream. For more information about tags, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    #               Tags</a> in the AWS Billing and Cost Management User Guide.</p>
    #
    #            <p>You can specify up to 50 tags when creating a delivery stream.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDeliveryStreamInput = ::Struct.new(
      :delivery_stream_name,
      :delivery_stream_type,
      :kinesis_stream_source_configuration,
      :delivery_stream_encryption_configuration_input,
      :s3_destination_configuration,
      :extended_s3_destination_configuration,
      :redshift_destination_configuration,
      :elasticsearch_destination_configuration,
      :amazonopensearchservice_destination_configuration,
      :splunk_destination_configuration,
      :http_endpoint_destination_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream_arn
    #   <p>The ARN of the delivery stream.</p>
    #
    #   @return [String]
    #
    CreateDeliveryStreamOutput = ::Struct.new(
      :delivery_stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies that you want Kinesis Data Firehose to convert data from the JSON format to
    #          the Parquet or ORC format before writing it to Amazon S3. Kinesis Data Firehose uses the
    #          serializer and deserializer that you specify, in addition to the column information from
    #          the AWS Glue table, to deserialize your input data from JSON and then serialize it to the
    #          Parquet or ORC format. For more information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/record-format-conversion.html">Kinesis Data Firehose Record
    #             Format Conversion</a>.</p>
    #
    # @!attribute schema_configuration
    #   <p>Specifies the AWS Glue Data Catalog table that contains the column information. This
    #            parameter is required if <code>Enabled</code> is set to true.</p>
    #
    #   @return [SchemaConfiguration]
    #
    # @!attribute input_format_configuration
    #   <p>Specifies the deserializer that you want Kinesis Data Firehose to use to convert the
    #            format of your data from JSON. This parameter is required if <code>Enabled</code> is set to
    #            true.</p>
    #
    #   @return [InputFormatConfiguration]
    #
    # @!attribute output_format_configuration
    #   <p>Specifies the serializer that you want Kinesis Data Firehose to use to convert the
    #            format of your data to the Parquet or ORC format. This parameter is required if
    #               <code>Enabled</code> is set to true.</p>
    #
    #   @return [OutputFormatConfiguration]
    #
    # @!attribute enabled
    #   <p>Defaults to <code>true</code>. Set it to <code>false</code> if you want to disable
    #            format conversion while preserving the configuration details.</p>
    #
    #   @return [Boolean]
    #
    DataFormatConversionConfiguration = ::Struct.new(
      :schema_configuration,
      :input_format_configuration,
      :output_format_configuration,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_force_delete
    #   <p>Set this to true if you want to delete the delivery stream even if Kinesis Data Firehose
    #            is unable to retire the grant for the CMK. Kinesis Data Firehose might be unable to retire
    #            the grant due to a customer error, such as when the CMK or the grant are in an invalid
    #            state. If you force deletion, you can then use the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html">RevokeGrant</a> operation to
    #            revoke the grant you gave to Kinesis Data Firehose. If a failure to retire the grant
    #            happens due to an AWS KMS issue, Kinesis Data Firehose keeps retrying the delete
    #            operation.</p>
    #            <p>The default value is false.</p>
    #
    #   @return [Boolean]
    #
    DeleteDeliveryStreamInput = ::Struct.new(
      :delivery_stream_name,
      :allow_force_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDeliveryStreamOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a delivery stream.</p>
    #
    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery stream. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_stream_status
    #   <p>The status of the delivery stream. If the status of a delivery stream is
    #               <code>CREATING_FAILED</code>, this status doesn't change, and you can't invoke
    #               <code>CreateDeliveryStream</code> again on it. However, you can invoke the <a>DeleteDeliveryStream</a> operation to delete it.</p>
    #
    #   Enum, one of: ["CREATING", "CREATING_FAILED", "DELETING", "DELETING_FAILED", "ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute failure_description
    #   <p>Provides details in case one of the following operations fails due to an error related
    #            to KMS: <a>CreateDeliveryStream</a>, <a>DeleteDeliveryStream</a>,
    #               <a>StartDeliveryStreamEncryption</a>, <a>StopDeliveryStreamEncryption</a>.</p>
    #
    #   @return [FailureDescription]
    #
    # @!attribute delivery_stream_encryption_configuration
    #   <p>Indicates the server-side encryption (SSE) status for the delivery stream.</p>
    #
    #   @return [DeliveryStreamEncryptionConfiguration]
    #
    # @!attribute delivery_stream_type
    #   <p>The delivery stream type. This can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DirectPut</code>: Provider applications access the delivery stream
    #                  directly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KinesisStreamAsSource</code>: The delivery stream uses a Kinesis data
    #                  stream as a source.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DirectPut", "KinesisStreamAsSource"]
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>Each time the destination is updated for a delivery stream, the version ID is
    #            changed, and the current version ID is required when updating the destination. This is so
    #            that the service knows it is applying the changes to the correct version of the delivery
    #            stream.</p>
    #
    #   @return [String]
    #
    # @!attribute create_timestamp
    #   <p>The date and time that the delivery stream was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_timestamp
    #   <p>The date and time that the delivery stream was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute source
    #   <p>If the <code>DeliveryStreamType</code> parameter is
    #               <code>KinesisStreamAsSource</code>, a <a>SourceDescription</a> object
    #            describing the source Kinesis data stream.</p>
    #
    #   @return [SourceDescription]
    #
    # @!attribute destinations
    #   <p>The destinations.</p>
    #
    #   @return [Array<DestinationDescription>]
    #
    # @!attribute has_more_destinations
    #   <p>Indicates whether there are more destinations available to list.</p>
    #
    #   @return [Boolean]
    #
    DeliveryStreamDescription = ::Struct.new(
      :delivery_stream_name,
      :delivery_stream_arn,
      :delivery_stream_status,
      :failure_description,
      :delivery_stream_encryption_configuration,
      :delivery_stream_type,
      :version_id,
      :create_timestamp,
      :last_update_timestamp,
      :source,
      :destinations,
      :has_more_destinations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the server-side encryption (SSE) status for the delivery
    #          stream, the type customer master key (CMK) in use, if any, and the ARN of the CMK. You can
    #          get <code>DeliveryStreamEncryptionConfiguration</code> by invoking the <a>DescribeDeliveryStream</a> operation. </p>
    #
    # @!attribute key_arn
    #   <p>If <code>KeyType</code> is <code>CUSTOMER_MANAGED_CMK</code>, this field contains the
    #            ARN of the customer managed CMK. If <code>KeyType</code> is <code>AWS_OWNED_CMK</code>,
    #               <code>DeliveryStreamEncryptionConfiguration</code> doesn't contain a value for
    #               <code>KeyARN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute key_type
    #   <p>Indicates the type of customer master key (CMK) that is used for encryption. The default
    #            setting is <code>AWS_OWNED_CMK</code>. For more information about CMKs, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html master_keys">Customer
    #               Master Keys (CMKs)</a>.</p>
    #
    #   Enum, one of: ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>This is the server-side encryption (SSE) status for the delivery stream. For a full
    #            description of the different values of this status, see <a>StartDeliveryStreamEncryption</a> and <a>StopDeliveryStreamEncryption</a>. If this status is <code>ENABLING_FAILED</code>
    #            or <code>DISABLING_FAILED</code>, it is the status of the most recent attempt to enable or
    #            disable SSE, respectively.</p>
    #
    #   Enum, one of: ["ENABLED", "ENABLING", "ENABLING_FAILED", "DISABLED", "DISABLING", "DISABLING_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_description
    #   <p>Provides details in case one of the following operations fails due to an error related
    #            to KMS: <a>CreateDeliveryStream</a>, <a>DeleteDeliveryStream</a>,
    #               <a>StartDeliveryStreamEncryption</a>, <a>StopDeliveryStreamEncryption</a>.</p>
    #
    #   @return [FailureDescription]
    #
    DeliveryStreamEncryptionConfiguration = ::Struct.new(
      :key_arn,
      :key_type,
      :status,
      :failure_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the type and Amazon Resource Name (ARN) of the CMK to use for Server-Side
    #          Encryption (SSE). </p>
    #
    # @!attribute key_arn
    #   <p>If you set <code>KeyType</code> to <code>CUSTOMER_MANAGED_CMK</code>, you must specify
    #            the Amazon Resource Name (ARN) of the CMK. If you set <code>KeyType</code> to
    #               <code>AWS_OWNED_CMK</code>, Kinesis Data Firehose uses a service-account CMK.</p>
    #
    #   @return [String]
    #
    # @!attribute key_type
    #   <p>Indicates the type of customer master key (CMK) to use for encryption. The default
    #            setting is <code>AWS_OWNED_CMK</code>. For more information about CMKs, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html master_keys">Customer
    #               Master Keys (CMKs)</a>. When you invoke <a>CreateDeliveryStream</a> or
    #               <a>StartDeliveryStreamEncryption</a> with <code>KeyType</code> set to
    #            CUSTOMER_MANAGED_CMK, Kinesis Data Firehose invokes the Amazon KMS operation <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateGrant.html">CreateGrant</a> to create a grant that allows the Kinesis Data Firehose service to
    #            use the customer managed CMK to perform encryption and decryption. Kinesis Data Firehose
    #            manages that grant. </p>
    #            <p>When you invoke <a>StartDeliveryStreamEncryption</a> to change the CMK for a
    #            delivery stream that is encrypted with a customer managed CMK, Kinesis Data Firehose
    #            schedules the grant it had on the old CMK for retirement.</p>
    #            <p>You can use a CMK of type CUSTOMER_MANAGED_CMK to encrypt up to 500 delivery streams. If
    #            a <a>CreateDeliveryStream</a> or <a>StartDeliveryStreamEncryption</a>
    #            operation exceeds this limit, Kinesis Data Firehose throws a
    #               <code>LimitExceededException</code>. </p>
    #            <important>
    #               <p>To encrypt your delivery stream, use symmetric CMKs. Kinesis Data Firehose doesn't
    #               support asymmetric CMKs. For information about symmetric and asymmetric CMKs, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html">About
    #                  Symmetric and Asymmetric CMKs</a> in the AWS Key Management Service developer
    #               guide.</p>
    #            </important>
    #
    #   Enum, one of: ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #
    #   @return [String]
    #
    DeliveryStreamEncryptionConfigurationInput = ::Struct.new(
      :key_arn,
      :key_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeliveryStreamEncryptionStatus
    #
    module DeliveryStreamEncryptionStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      ENABLING = "ENABLING"

      # No documentation available.
      #
      ENABLING_FAILED = "ENABLING_FAILED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      DISABLING = "DISABLING"

      # No documentation available.
      #
      DISABLING_FAILED = "DISABLING_FAILED"
    end

    # Includes enum constants for DeliveryStreamFailureType
    #
    module DeliveryStreamFailureType
      # No documentation available.
      #
      RETIRE_KMS_GRANT_FAILED = "RETIRE_KMS_GRANT_FAILED"

      # No documentation available.
      #
      CREATE_KMS_GRANT_FAILED = "CREATE_KMS_GRANT_FAILED"

      # No documentation available.
      #
      KMS_ACCESS_DENIED = "KMS_ACCESS_DENIED"

      # No documentation available.
      #
      DISABLED_KMS_KEY = "DISABLED_KMS_KEY"

      # No documentation available.
      #
      INVALID_KMS_KEY = "INVALID_KMS_KEY"

      # No documentation available.
      #
      KMS_KEY_NOT_FOUND = "KMS_KEY_NOT_FOUND"

      # No documentation available.
      #
      KMS_OPT_IN_REQUIRED = "KMS_OPT_IN_REQUIRED"

      # No documentation available.
      #
      CREATE_ENI_FAILED = "CREATE_ENI_FAILED"

      # No documentation available.
      #
      DELETE_ENI_FAILED = "DELETE_ENI_FAILED"

      # No documentation available.
      #
      SUBNET_NOT_FOUND = "SUBNET_NOT_FOUND"

      # No documentation available.
      #
      SECURITY_GROUP_NOT_FOUND = "SECURITY_GROUP_NOT_FOUND"

      # No documentation available.
      #
      ENI_ACCESS_DENIED = "ENI_ACCESS_DENIED"

      # No documentation available.
      #
      SUBNET_ACCESS_DENIED = "SUBNET_ACCESS_DENIED"

      # No documentation available.
      #
      SECURITY_GROUP_ACCESS_DENIED = "SECURITY_GROUP_ACCESS_DENIED"

      # No documentation available.
      #
      UNKNOWN_ERROR = "UNKNOWN_ERROR"
    end

    # Includes enum constants for DeliveryStreamStatus
    #
    module DeliveryStreamStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATING_FAILED = "CREATING_FAILED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETING_FAILED = "DELETING_FAILED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"
    end

    # Includes enum constants for DeliveryStreamType
    #
    module DeliveryStreamType
      # No documentation available.
      #
      DirectPut = "DirectPut"

      # No documentation available.
      #
      KinesisStreamAsSource = "KinesisStreamAsSource"
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The limit on the number of destinations to return. You can have one destination per
    #            delivery stream.</p>
    #
    #   @return [Integer]
    #
    # @!attribute exclusive_start_destination_id
    #   <p>The ID of the destination to start returning the destination information. Kinesis
    #            Data Firehose supports one destination per delivery stream.</p>
    #
    #   @return [String]
    #
    DescribeDeliveryStreamInput = ::Struct.new(
      :delivery_stream_name,
      :limit,
      :exclusive_start_destination_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream_description
    #   <p>Information about the delivery stream.</p>
    #
    #   @return [DeliveryStreamDescription]
    #
    DescribeDeliveryStreamOutput = ::Struct.new(
      :delivery_stream_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The deserializer you want Kinesis Data Firehose to use for converting the input data
    #          from JSON. Kinesis Data Firehose then serializes the data to its final format using the
    #             <a>Serializer</a>. Kinesis Data Firehose supports two types of deserializers:
    #          the <a href="https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON">Apache Hive JSON SerDe</a> and the <a href="https://github.com/rcongiu/Hive-JSON-Serde">OpenX JSON SerDe</a>.</p>
    #
    # @!attribute open_x_json_ser_de
    #   <p>The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data, which means
    #            converting it from the JSON format in preparation for serializing it to the Parquet or ORC
    #            format. This is one of two deserializers you can choose, depending on which one offers the
    #            functionality you need. The other option is the native Hive / HCatalog JsonSerDe.</p>
    #
    #   @return [OpenXJsonSerDe]
    #
    # @!attribute hive_json_ser_de
    #   <p>The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for deserializing
    #            data, which means converting it from the JSON format in preparation for serializing it to
    #            the Parquet or ORC format. This is one of two deserializers you can choose, depending on
    #            which one offers the functionality you need. The other option is the OpenX SerDe.</p>
    #
    #   @return [HiveJsonSerDe]
    #
    Deserializer = ::Struct.new(
      :open_x_json_ser_de,
      :hive_json_ser_de,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the destination for a delivery stream.</p>
    #
    # @!attribute destination_id
    #   <p>The ID of the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_destination_description
    #   <p>[Deprecated] The destination in Amazon S3.</p>
    #
    #   @return [S3DestinationDescription]
    #
    # @!attribute extended_s3_destination_description
    #   <p>The destination in Amazon S3.</p>
    #
    #   @return [ExtendedS3DestinationDescription]
    #
    # @!attribute redshift_destination_description
    #   <p>The destination in Amazon Redshift.</p>
    #
    #   @return [RedshiftDestinationDescription]
    #
    # @!attribute elasticsearch_destination_description
    #   <p>The destination in Amazon ES.</p>
    #
    #   @return [ElasticsearchDestinationDescription]
    #
    # @!attribute amazonopensearchservice_destination_description
    #
    #   @return [AmazonopensearchserviceDestinationDescription]
    #
    # @!attribute splunk_destination_description
    #   <p>The destination in Splunk.</p>
    #
    #   @return [SplunkDestinationDescription]
    #
    # @!attribute http_endpoint_destination_description
    #   <p>Describes the specified HTTP endpoint destination.</p>
    #
    #   @return [HttpEndpointDestinationDescription]
    #
    DestinationDescription = ::Struct.new(
      :destination_id,
      :s3_destination_description,
      :extended_s3_destination_description,
      :redshift_destination_description,
      :elasticsearch_destination_description,
      :amazonopensearchservice_destination_description,
      :splunk_destination_description,
      :http_endpoint_destination_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of the dynamic partitioning mechanism that creates smaller data sets
    #          from the streaming data by partitioning it based on partition keys. Currently, dynamic
    #          partitioning is only supported for Amazon S3 destinations. For more information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html">https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html</a>
    #          </p>
    #
    # @!attribute retry_options
    #   <p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to an Amazon
    #            S3 prefix.</p>
    #
    #   @return [RetryOptions]
    #
    # @!attribute enabled
    #   <p>Specifies that the dynamic partitioning is enabled for this Kinesis Data Firehose
    #            delivery stream.</p>
    #
    #   @return [Boolean]
    #
    DynamicPartitioningConfiguration = ::Struct.new(
      :retry_options,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the buffering to perform before delivering data to the Amazon ES
    #          destination.</p>
    #
    # @!attribute interval_in_seconds
    #   <p>Buffer incoming data for the specified period of time, in seconds, before delivering
    #            it to the destination. The default value is 300 (5 minutes).</p>
    #
    #   @return [Integer]
    #
    # @!attribute size_in_m_bs
    #   <p>Buffer incoming data to the specified size, in MBs, before delivering it to the
    #            destination. The default value is 5.</p>
    #            <p>We recommend setting this parameter to a value greater than the amount of data you
    #            typically ingest into the delivery stream in 10 seconds. For example, if you typically
    #            ingest data at 1 MB/sec, the value should be 10 MB or higher.</p>
    #
    #   @return [Integer]
    #
    ElasticsearchBufferingHints = ::Struct.new(
      :interval_in_seconds,
      :size_in_m_bs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration of a destination in Amazon ES.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose
    #            for calling the Amazon ES Configuration API and for indexing documents. For more
    #            information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html using-iam-s3">Grant Kinesis Data
    #               Firehose Access to an Amazon S3 Destination</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #               AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_arn
    #   <p>The ARN of the Amazon ES domain. The IAM role must have permissions
    #               for <code>DescribeElasticsearchDomain</code>, <code>DescribeElasticsearchDomains</code>,
    #            and <code>DescribeElasticsearchDomainConfig</code> after assuming the role specified in
    #               <b>RoleARN</b>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #            <p>Specify either <code>ClusterEndpoint</code> or <code>DomainARN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_endpoint
    #   <p>The endpoint to use when communicating with the cluster. Specify either this
    #               <code>ClusterEndpoint</code> or the <code>DomainARN</code> field.</p>
    #
    #   @return [String]
    #
    # @!attribute index_name
    #   <p>The Elasticsearch index name.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per
    #            index. If you try to specify a new type for an existing index that already has another
    #            type, Kinesis Data Firehose returns an error during run time.</p>
    #
    #            <p>For Elasticsearch 7.x, don't specify a <code>TypeName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute index_rotation_period
    #   <p>The Elasticsearch index rotation period. Index rotation appends a timestamp to the
    #               <code>IndexName</code> to facilitate the expiration of old data. For more information,
    #            see <a href="https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html es-index-rotation">Index Rotation for the
    #               Amazon ES Destination</a>. The default value is <code>OneDay</code>.</p>
    #
    #   Enum, one of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified, the default values for
    #               <code>ElasticsearchBufferingHints</code> are used.</p>
    #
    #   @return [ElasticsearchBufferingHints]
    #
    # @!attribute retry_options
    #   <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
    #            Amazon ES. The default value is 300 (5 minutes).</p>
    #
    #   @return [ElasticsearchRetryOptions]
    #
    # @!attribute s3_backup_mode
    #   <p>Defines how documents should be delivered to Amazon S3. When it is set to
    #               <code>FailedDocumentsOnly</code>, Kinesis Data Firehose writes any documents that could
    #            not be indexed to the configured Amazon S3 destination, with
    #               <code>elasticsearch-failed/</code> appended to the key prefix. When set to
    #               <code>AllDocuments</code>, Kinesis Data Firehose delivers all incoming records to Amazon
    #            S3, and also writes failed documents with <code>elasticsearch-failed/</code> appended to
    #            the prefix. For more information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html es-s3-backup">Amazon S3 Backup for the
    #               Amazon ES Destination</a>. Default value is
    #            <code>FailedDocumentsOnly</code>.</p>
    #            <p>You can't change this backup mode after you create the delivery stream. </p>
    #
    #   Enum, one of: ["FailedDocumentsOnly", "AllDocuments"]
    #
    #   @return [String]
    #
    # @!attribute s3_configuration
    #   <p>The configuration for the backup Amazon S3 location.</p>
    #
    #   @return [S3DestinationConfiguration]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    # @!attribute vpc_configuration
    #   <p>The details of the VPC of the Amazon ES destination.</p>
    #
    #   @return [VpcConfiguration]
    #
    ElasticsearchDestinationConfiguration = ::Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The destination description in Amazon ES.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_arn
    #   <p>The ARN of the Amazon ES domain. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #            <p>Kinesis Data Firehose uses either <code>ClusterEndpoint</code> or <code>DomainARN</code>
    #            to send data to Amazon ES.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_endpoint
    #   <p>The endpoint to use when communicating with the cluster. Kinesis Data Firehose uses
    #            either this <code>ClusterEndpoint</code> or the <code>DomainARN</code> field to send data
    #            to Amazon ES.</p>
    #
    #   @return [String]
    #
    # @!attribute index_name
    #   <p>The Elasticsearch index name.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The Elasticsearch type name. This applies to Elasticsearch 6.x and lower versions.
    #            For Elasticsearch 7.x, there's no value for <code>TypeName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute index_rotation_period
    #   <p>The Elasticsearch index rotation period</p>
    #
    #   Enum, one of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #   <p>The buffering options.</p>
    #
    #   @return [ElasticsearchBufferingHints]
    #
    # @!attribute retry_options
    #   <p>The Amazon ES retry options.</p>
    #
    #   @return [ElasticsearchRetryOptions]
    #
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode.</p>
    #
    #   Enum, one of: ["FailedDocumentsOnly", "AllDocuments"]
    #
    #   @return [String]
    #
    # @!attribute s3_destination_description
    #   <p>The Amazon S3 destination.</p>
    #
    #   @return [S3DestinationDescription]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    # @!attribute vpc_configuration_description
    #   <p>The details of the VPC of the Amazon ES destination.</p>
    #
    #   @return [VpcConfigurationDescription]
    #
    ElasticsearchDestinationDescription = ::Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an update for a destination in Amazon ES.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose
    #            for calling the Amazon ES Configuration API and for indexing documents. For more
    #            information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html using-iam-s3">Grant Kinesis Data
    #               Firehose Access to an Amazon S3 Destination</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #               AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_arn
    #   <p>The ARN of the Amazon ES domain. The IAM role must have permissions
    #               for <code>DescribeElasticsearchDomain</code>, <code>DescribeElasticsearchDomains</code>,
    #            and <code>DescribeElasticsearchDomainConfig</code> after assuming the IAM role specified in
    #               <code>RoleARN</code>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #               AWS Service Namespaces</a>.</p>
    #
    #            <p>Specify either <code>ClusterEndpoint</code> or <code>DomainARN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_endpoint
    #   <p>The endpoint to use when communicating with the cluster. Specify either this
    #               <code>ClusterEndpoint</code> or the <code>DomainARN</code> field.</p>
    #
    #   @return [String]
    #
    # @!attribute index_name
    #   <p>The Elasticsearch index name.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per
    #            index. If you try to specify a new type for an existing index that already has another
    #            type, Kinesis Data Firehose returns an error during runtime.</p>
    #
    #            <p>If you upgrade Elasticsearch from 6.x to 7.x and don’t update your delivery stream,
    #            Kinesis Data Firehose still delivers data to Elasticsearch with the old index name and type
    #            name. If you want to update your delivery stream with a new index name, provide an empty
    #            string for <code>TypeName</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute index_rotation_period
    #   <p>The Elasticsearch index rotation period. Index rotation appends a timestamp to
    #               <code>IndexName</code> to facilitate the expiration of old data. For more information,
    #            see <a href="https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html es-index-rotation">Index Rotation for the
    #               Amazon ES Destination</a>. Default value is <code>OneDay</code>.</p>
    #
    #   Enum, one of: ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified,
    #               <code>ElasticsearchBufferingHints</code> object default values are used. </p>
    #
    #   @return [ElasticsearchBufferingHints]
    #
    # @!attribute retry_options
    #   <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
    #            Amazon ES. The default value is 300 (5 minutes).</p>
    #
    #   @return [ElasticsearchRetryOptions]
    #
    # @!attribute s3_update
    #   <p>The Amazon S3 destination.</p>
    #
    #   @return [S3DestinationUpdate]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    ElasticsearchDestinationUpdate = ::Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ElasticsearchIndexRotationPeriod
    #
    module ElasticsearchIndexRotationPeriod
      # No documentation available.
      #
      NoRotation = "NoRotation"

      # No documentation available.
      #
      OneHour = "OneHour"

      # No documentation available.
      #
      OneDay = "OneDay"

      # No documentation available.
      #
      OneWeek = "OneWeek"

      # No documentation available.
      #
      OneMonth = "OneMonth"
    end

    # <p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver
    #          documents to Amazon ES.</p>
    #
    # @!attribute duration_in_seconds
    #   <p>After an initial failure to deliver to Amazon ES, the total amount of time during
    #            which Kinesis Data Firehose retries delivery (including the first attempt). After this time
    #            has elapsed, the failed documents are written to Amazon S3. Default value is 300 seconds (5
    #            minutes). A value of 0 (zero) results in no retries.</p>
    #
    #   @return [Integer]
    #
    ElasticsearchRetryOptions = ::Struct.new(
      :duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ElasticsearchS3BackupMode
    #
    module ElasticsearchS3BackupMode
      # No documentation available.
      #
      FailedDocumentsOnly = "FailedDocumentsOnly"

      # No documentation available.
      #
      AllDocuments = "AllDocuments"
    end

    # <p>Describes the encryption for a destination in Amazon S3.</p>
    #
    # @!attribute no_encryption_config
    #   <p>Specifically override existing encryption information to ensure that no encryption is
    #            used.</p>
    #
    #   Enum, one of: ["NoEncryption"]
    #
    #   @return [String]
    #
    # @!attribute kms_encryption_config
    #   <p>The encryption key.</p>
    #
    #   @return [KMSEncryptionConfig]
    #
    EncryptionConfiguration = ::Struct.new(
      :no_encryption_config,
      :kms_encryption_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration of a destination in Amazon S3.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #               AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_output_prefix
    #   <p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #   <p>The buffering option.</p>
    #
    #   @return [BufferingHints]
    #
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #            UNCOMPRESSED.</p>
    #
    #   Enum, one of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode. After you create a delivery stream, you can update it to
    #            enable Amazon S3 backup if it is disabled. If backup is enabled, you can't update the
    #            delivery stream to disable it. </p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute s3_backup_configuration
    #   <p>The configuration for backup in Amazon S3.</p>
    #
    #   @return [S3DestinationConfiguration]
    #
    # @!attribute data_format_conversion_configuration
    #   <p>The serializer, deserializer, and schema for converting data from the JSON format to
    #            the Parquet or ORC format before writing it to Amazon S3.</p>
    #
    #   @return [DataFormatConversionConfiguration]
    #
    # @!attribute dynamic_partitioning_configuration
    #   <p>The configuration of the dynamic partitioning mechanism that creates smaller data sets
    #            from the streaming data by partitioning it based on partition keys. Currently, dynamic
    #            partitioning is only supported for Amazon S3 destinations. For more information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html">https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html</a>
    #            </p>
    #
    #   @return [DynamicPartitioningConfiguration]
    #
    ExtendedS3DestinationConfiguration = ::Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_configuration,
      :data_format_conversion_configuration,
      :dynamic_partitioning_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a destination in Amazon S3.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #               AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_output_prefix
    #   <p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #   <p>The buffering option.</p>
    #
    #   @return [BufferingHints]
    #
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #               <code>UNCOMPRESSED</code>.</p>
    #
    #   Enum, one of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute s3_backup_description
    #   <p>The configuration for backup in Amazon S3.</p>
    #
    #   @return [S3DestinationDescription]
    #
    # @!attribute data_format_conversion_configuration
    #   <p>The serializer, deserializer, and schema for converting data from the JSON format to
    #            the Parquet or ORC format before writing it to Amazon S3.</p>
    #
    #   @return [DataFormatConversionConfiguration]
    #
    # @!attribute dynamic_partitioning_configuration
    #   <p>The configuration of the dynamic partitioning mechanism that creates smaller data sets
    #            from the streaming data by partitioning it based on partition keys. Currently, dynamic
    #            partitioning is only supported for Amazon S3 destinations. For more information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html">https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html</a>
    #            </p>
    #
    #   @return [DynamicPartitioningConfiguration]
    #
    ExtendedS3DestinationDescription = ::Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_description,
      :data_format_conversion_configuration,
      :dynamic_partitioning_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an update for a destination in Amazon S3.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #               AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_output_prefix
    #   <p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #   <p>The buffering option.</p>
    #
    #   @return [BufferingHints]
    #
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #               <code>UNCOMPRESSED</code>. </p>
    #
    #   Enum, one of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute s3_backup_mode
    #   <p>You can update a delivery stream to enable Amazon S3 backup if it is disabled. If
    #            backup is enabled, you can't update the delivery stream to disable it. </p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute s3_backup_update
    #   <p>The Amazon S3 destination for backup.</p>
    #
    #   @return [S3DestinationUpdate]
    #
    # @!attribute data_format_conversion_configuration
    #   <p>The serializer, deserializer, and schema for converting data from the JSON format to
    #            the Parquet or ORC format before writing it to Amazon S3.</p>
    #
    #   @return [DataFormatConversionConfiguration]
    #
    # @!attribute dynamic_partitioning_configuration
    #   <p>The configuration of the dynamic partitioning mechanism that creates smaller data sets
    #            from the streaming data by partitioning it based on partition keys. Currently, dynamic
    #            partitioning is only supported for Amazon S3 destinations. For more information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html">https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html</a>
    #            </p>
    #
    #   @return [DynamicPartitioningConfiguration]
    #
    ExtendedS3DestinationUpdate = ::Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_update,
      :data_format_conversion_configuration,
      :dynamic_partitioning_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides details in case one of the following operations fails due to an error related
    #          to KMS: <a>CreateDeliveryStream</a>, <a>DeleteDeliveryStream</a>,
    #             <a>StartDeliveryStreamEncryption</a>, <a>StopDeliveryStreamEncryption</a>.</p>
    #
    # @!attribute type
    #   <p>The type of error that caused the failure.</p>
    #
    #   Enum, one of: ["RETIRE_KMS_GRANT_FAILED", "CREATE_KMS_GRANT_FAILED", "KMS_ACCESS_DENIED", "DISABLED_KMS_KEY", "INVALID_KMS_KEY", "KMS_KEY_NOT_FOUND", "KMS_OPT_IN_REQUIRED", "CREATE_ENI_FAILED", "DELETE_ENI_FAILED", "SUBNET_NOT_FOUND", "SECURITY_GROUP_NOT_FOUND", "ENI_ACCESS_DENIED", "SUBNET_ACCESS_DENIED", "SECURITY_GROUP_ACCESS_DENIED", "UNKNOWN_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>A message providing details about the error that caused the failure.</p>
    #
    #   @return [String]
    #
    FailureDescription = ::Struct.new(
      :type,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HECEndpointType
    #
    module HECEndpointType
      # No documentation available.
      #
      Raw = "Raw"

      # No documentation available.
      #
      Event = "Event"
    end

    # <p>The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for deserializing
    #          data, which means converting it from the JSON format in preparation for serializing it to
    #          the Parquet or ORC format. This is one of two deserializers you can choose, depending on
    #          which one offers the functionality you need. The other option is the OpenX SerDe.</p>
    #
    # @!attribute timestamp_formats
    #   <p>Indicates how you want Kinesis Data Firehose to parse the date and timestamps that
    #            may be present in your input data JSON. To specify these format strings, follow the pattern
    #            syntax of JodaTime's DateTimeFormat format strings. For more information, see <a href="https://www.joda.org/joda-time/apidocs/org/joda/time/format/DateTimeFormat.html">Class DateTimeFormat</a>. You can also use the special value <code>millis</code> to
    #            parse timestamps in epoch milliseconds. If you don't specify a format, Kinesis Data
    #            Firehose uses <code>java.sql.Timestamp::valueOf</code> by default.</p>
    #
    #   @return [Array<String>]
    #
    HiveJsonSerDe = ::Struct.new(
      :timestamp_formats,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the buffering options that can be applied before data is delivered to the HTTP
    #          endpoint destination. Kinesis Data Firehose treats these options as hints, and it might
    #          choose to use more optimal values. The <code>SizeInMBs</code> and
    #             <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #          one of them, you must also provide a value for the other. </p>
    #
    # @!attribute size_in_m_bs
    #   <p>Buffer incoming data to the specified size, in MBs, before delivering it to the
    #            destination. The default value is 5. </p>
    #            <p>We recommend setting this parameter to a value greater than the amount of data you
    #            typically ingest into the delivery stream in 10 seconds. For example, if you typically
    #            ingest data at 1 MB/sec, the value should be 10 MB or higher. </p>
    #
    #   @return [Integer]
    #
    # @!attribute interval_in_seconds
    #   <p>Buffer incoming data for the specified period of time, in seconds, before delivering it
    #            to the destination. The default value is 300 (5 minutes). </p>
    #
    #   @return [Integer]
    #
    HttpEndpointBufferingHints = ::Struct.new(
      :size_in_m_bs,
      :interval_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the metadata that's delivered to the specified HTTP endpoint
    #          destination.</p>
    #
    # @!attribute attribute_name
    #   <p>The name of the HTTP endpoint common attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_value
    #   <p>The value of the HTTP endpoint common attribute.</p>
    #
    #   @return [String]
    #
    HttpEndpointCommonAttribute = ::Struct.new(
      :attribute_name,
      :attribute_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Firehose::Types::HttpEndpointCommonAttribute "\
          "attribute_name=\"[SENSITIVE]\", "\
          "attribute_value=\"[SENSITIVE]\">"
      end
    end

    # <p>Describes the configuration of the HTTP endpoint to which Kinesis Firehose delivers
    #          data.</p>
    #
    # @!attribute url
    #   <p>The URL of the HTTP endpoint selected as the destination.</p>
    #            <important>
    #               <p>If you choose an HTTP endpoint as your destination, review and follow the
    #               instructions in the <a href="https://docs.aws.amazon.com/firehose/latest/dev/httpdeliveryrequestresponse.html">Appendix - HTTP Endpoint
    #                  Delivery Request and Response Specifications</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the HTTP endpoint selected as the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute access_key
    #   <p>The access key required for Kinesis Firehose to authenticate with the HTTP endpoint
    #            selected as the destination.</p>
    #
    #   @return [String]
    #
    HttpEndpointConfiguration = ::Struct.new(
      :url,
      :name,
      :access_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Firehose::Types::HttpEndpointConfiguration "\
          "url=\"[SENSITIVE]\", "\
          "name=#{name || 'nil'}, "\
          "access_key=\"[SENSITIVE]\">"
      end
    end

    # <p>Describes the HTTP endpoint selected as the destination. </p>
    #
    # @!attribute url
    #   <p>The URL of the HTTP endpoint selected as the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the HTTP endpoint selected as the destination.</p>
    #
    #   @return [String]
    #
    HttpEndpointDescription = ::Struct.new(
      :url,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Firehose::Types::HttpEndpointDescription "\
          "url=\"[SENSITIVE]\", "\
          "name=#{name || 'nil'}>"
      end
    end

    # <p>Describes the configuration of the HTTP endpoint destination.</p>
    #
    # @!attribute endpoint_configuration
    #   <p>The configuration of the HTTP endpoint selected as the destination.</p>
    #
    #   @return [HttpEndpointConfiguration]
    #
    # @!attribute buffering_hints
    #   <p>The buffering options that can be used before data is delivered to the specified
    #            destination. Kinesis Data Firehose treats these options as hints, and it might choose to
    #            use more optimal values. The <code>SizeInMBs</code> and <code>IntervalInSeconds</code>
    #            parameters are optional. However, if you specify a value for one of them, you must also
    #            provide a value for the other. </p>
    #
    #   @return [HttpEndpointBufferingHints]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    # @!attribute request_configuration
    #   <p>The configuration of the requeste sent to the HTTP endpoint specified as the
    #            destination.</p>
    #
    #   @return [HttpEndpointRequestConfiguration]
    #
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute role_arn
    #   <p>Kinesis Data Firehose uses this IAM role for all the permissions that the delivery
    #            stream needs.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_options
    #   <p>Describes the retry behavior in case Kinesis Data Firehose is unable to deliver data to
    #            the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
    #            receipt from the specified HTTP endpoint destination.</p>
    #
    #   @return [HttpEndpointRetryOptions]
    #
    # @!attribute s3_backup_mode
    #   <p>Describes the S3 bucket backup options for the data that Kinesis Data Firehose delivers
    #            to the HTTP endpoint destination. You can back up all documents (<code>AllData</code>) or
    #            only the documents that Kinesis Data Firehose could not deliver to the specified HTTP
    #            endpoint destination (<code>FailedDataOnly</code>).</p>
    #
    #   Enum, one of: ["FailedDataOnly", "AllData"]
    #
    #   @return [String]
    #
    # @!attribute s3_configuration
    #   <p>Describes the configuration of a destination in Amazon S3.</p>
    #
    #   @return [S3DestinationConfiguration]
    #
    HttpEndpointDestinationConfiguration = ::Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the HTTP endpoint destination.</p>
    #
    # @!attribute endpoint_configuration
    #   <p>The configuration of the specified HTTP endpoint destination.</p>
    #
    #   @return [HttpEndpointDescription]
    #
    # @!attribute buffering_hints
    #   <p>Describes buffering options that can be applied to the data before it is delivered to
    #            the HTTPS endpoint destination. Kinesis Data Firehose teats these options as hints, and it
    #            might choose to use more optimal values. The <code>SizeInMBs</code> and
    #               <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #            one of them, you must also provide a value for the other. </p>
    #
    #   @return [HttpEndpointBufferingHints]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    # @!attribute request_configuration
    #   <p>The configuration of request sent to the HTTP endpoint specified as the
    #            destination.</p>
    #
    #   @return [HttpEndpointRequestConfiguration]
    #
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute role_arn
    #   <p>Kinesis Data Firehose uses this IAM role for all the permissions that the delivery
    #            stream needs.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_options
    #   <p>Describes the retry behavior in case Kinesis Data Firehose is unable to deliver data to
    #            the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
    #            receipt from the specified HTTP endpoint destination.</p>
    #
    #   @return [HttpEndpointRetryOptions]
    #
    # @!attribute s3_backup_mode
    #   <p>Describes the S3 bucket backup options for the data that Kinesis Firehose delivers to
    #            the HTTP endpoint destination. You can back up all documents (<code>AllData</code>) or only
    #            the documents that Kinesis Data Firehose could not deliver to the specified HTTP endpoint
    #            destination (<code>FailedDataOnly</code>).</p>
    #
    #   Enum, one of: ["FailedDataOnly", "AllData"]
    #
    #   @return [String]
    #
    # @!attribute s3_destination_description
    #   <p>Describes a destination in Amazon S3.</p>
    #
    #   @return [S3DestinationDescription]
    #
    HttpEndpointDestinationDescription = ::Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates the specified HTTP endpoint destination.</p>
    #
    # @!attribute endpoint_configuration
    #   <p>Describes the configuration of the HTTP endpoint destination.</p>
    #
    #   @return [HttpEndpointConfiguration]
    #
    # @!attribute buffering_hints
    #   <p>Describes buffering options that can be applied to the data before it is delivered to
    #            the HTTPS endpoint destination. Kinesis Data Firehose teats these options as hints, and it
    #            might choose to use more optimal values. The <code>SizeInMBs</code> and
    #               <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #            one of them, you must also provide a value for the other. </p>
    #
    #   @return [HttpEndpointBufferingHints]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    # @!attribute request_configuration
    #   <p>The configuration of the request sent to the HTTP endpoint specified as the
    #            destination.</p>
    #
    #   @return [HttpEndpointRequestConfiguration]
    #
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute role_arn
    #   <p>Kinesis Data Firehose uses this IAM role for all the permissions that the delivery
    #            stream needs.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_options
    #   <p>Describes the retry behavior in case Kinesis Data Firehose is unable to deliver data to
    #            the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
    #            receipt from the specified HTTP endpoint destination.</p>
    #
    #   @return [HttpEndpointRetryOptions]
    #
    # @!attribute s3_backup_mode
    #   <p>Describes the S3 bucket backup options for the data that Kinesis Firehose delivers to
    #            the HTTP endpoint destination. You can back up all documents (<code>AllData</code>) or only
    #            the documents that Kinesis Data Firehose could not deliver to the specified HTTP endpoint
    #            destination (<code>FailedDataOnly</code>).</p>
    #
    #   Enum, one of: ["FailedDataOnly", "AllData"]
    #
    #   @return [String]
    #
    # @!attribute s3_update
    #   <p>Describes an update for a destination in Amazon S3.</p>
    #
    #   @return [S3DestinationUpdate]
    #
    HttpEndpointDestinationUpdate = ::Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of the HTTP endpoint request.</p>
    #
    # @!attribute content_encoding
    #   <p>Kinesis Data Firehose uses the content encoding to compress the body of a request before
    #            sending the request to the destination. For more information, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Encoding">Content-Encoding</a> in MDN Web Docs, the official Mozilla documentation.</p>
    #
    #   Enum, one of: ["NONE", "GZIP"]
    #
    #   @return [String]
    #
    # @!attribute common_attributes
    #   <p>Describes the metadata sent to the HTTP endpoint destination.</p>
    #
    #   @return [Array<HttpEndpointCommonAttribute>]
    #
    HttpEndpointRequestConfiguration = ::Struct.new(
      :content_encoding,
      :common_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the retry behavior in case Kinesis Data Firehose is unable to deliver data to
    #          the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
    #          receipt from the specified HTTP endpoint destination.</p>
    #
    # @!attribute duration_in_seconds
    #   <p>The total amount of time that Kinesis Data Firehose spends on retries. This duration
    #            starts after the initial attempt to send data to the custom destination via HTTPS endpoint
    #            fails. It doesn't include the periods during which Kinesis Data Firehose waits for
    #            acknowledgment from the specified destination after each attempt. </p>
    #
    #   @return [Integer]
    #
    HttpEndpointRetryOptions = ::Struct.new(
      :duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HttpEndpointS3BackupMode
    #
    module HttpEndpointS3BackupMode
      # No documentation available.
      #
      FailedDataOnly = "FailedDataOnly"

      # No documentation available.
      #
      AllData = "AllData"
    end

    # <p>Specifies the deserializer you want to use to convert the format of the input data.
    #          This parameter is required if <code>Enabled</code> is set to true.</p>
    #
    # @!attribute deserializer
    #   <p>Specifies which deserializer to use. You can choose either the Apache Hive JSON SerDe
    #            or the OpenX JSON SerDe. If both are non-null, the server rejects the request.</p>
    #
    #   @return [Deserializer]
    #
    InputFormatConfiguration = ::Struct.new(
      :deserializer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified input parameter has a value that is not valid.</p>
    #
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #
    #   @return [String]
    #
    InvalidArgumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Kinesis Data Firehose throws this exception when an attempt to put records or to start
    #          or stop delivery stream encryption fails. This happens when the KMS service throws one of
    #          the following exception types: <code>AccessDeniedException</code>,
    #             <code>InvalidStateException</code>, <code>DisabledException</code>, or
    #             <code>NotFoundException</code>.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidKMSResourceException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an encryption key for a destination in Amazon S3.</p>
    #
    # @!attribute awskms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the encryption key. Must belong to the same AWS
    #            Region as the destination Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    KMSEncryptionConfig = ::Struct.new(
      :awskms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeyType
    #
    module KeyType
      # No documentation available.
      #
      AWS_OWNED_CMK = "AWS_OWNED_CMK"

      # No documentation available.
      #
      CUSTOMER_MANAGED_CMK = "CUSTOMER_MANAGED_CMK"
    end

    # <p>The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as
    #          the source for a delivery stream.</p>
    #
    # @!attribute kinesis_stream_arn
    #   <p>The ARN of the source Kinesis data stream. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-kinesis-streams">Amazon
    #               Kinesis Data Streams ARN Format</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that provides access to the source Kinesis data stream. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-iam">AWS Identity and
    #               Access Management (IAM) ARN Format</a>.</p>
    #
    #   @return [String]
    #
    KinesisStreamSourceConfiguration = ::Struct.new(
      :kinesis_stream_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a Kinesis data stream used as the source for a Kinesis Data Firehose
    #          delivery stream.</p>
    #
    # @!attribute kinesis_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the source Kinesis data stream. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-kinesis-streams">Amazon
    #               Kinesis Data Streams ARN Format</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role used by the source Kinesis data stream. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-iam">AWS Identity and
    #               Access Management (IAM) ARN Format</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_start_timestamp
    #   <p>Kinesis Data Firehose starts retrieving records from the Kinesis data stream starting
    #            with this timestamp.</p>
    #
    #   @return [Time]
    #
    KinesisStreamSourceDescription = ::Struct.new(
      :kinesis_stream_arn,
      :role_arn,
      :delivery_start_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have already reached the limit for a requested resource.</p>
    #
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute limit
    #   <p>The maximum number of delivery streams to list. The default value is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute delivery_stream_type
    #   <p>The delivery stream type. This can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DirectPut</code>: Provider applications access the delivery stream
    #                  directly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KinesisStreamAsSource</code>: The delivery stream uses a Kinesis data
    #                  stream as a source.</p>
    #               </li>
    #            </ul>
    #            <p>This parameter is optional. If this parameter is omitted, delivery streams of all
    #            types are returned.</p>
    #
    #   Enum, one of: ["DirectPut", "KinesisStreamAsSource"]
    #
    #   @return [String]
    #
    # @!attribute exclusive_start_delivery_stream_name
    #   <p>The list of delivery streams returned by this call to
    #               <code>ListDeliveryStreams</code> will start with the delivery stream whose name comes
    #            alphabetically immediately after the name you specify in
    #               <code>ExclusiveStartDeliveryStreamName</code>.</p>
    #
    #   @return [String]
    #
    ListDeliveryStreamsInput = ::Struct.new(
      :limit,
      :delivery_stream_type,
      :exclusive_start_delivery_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream_names
    #   <p>The names of the delivery streams.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute has_more_delivery_streams
    #   <p>Indicates whether there are more delivery streams available to list.</p>
    #
    #   @return [Boolean]
    #
    ListDeliveryStreamsOutput = ::Struct.new(
      :delivery_stream_names,
      :has_more_delivery_streams,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream whose tags you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute exclusive_start_tag_key
    #   <p>The key to use as the starting point for the list of tags. If you set this parameter,
    #               <code>ListTagsForDeliveryStream</code> gets all tags that occur after
    #               <code>ExclusiveStartTagKey</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The number of tags to return. If this number is less than the total number of tags
    #            associated with the delivery stream, <code>HasMoreTags</code> is set to <code>true</code>
    #            in the response. To list additional tags, set <code>ExclusiveStartTagKey</code> to the last
    #            key in the response. </p>
    #
    #   @return [Integer]
    #
    ListTagsForDeliveryStreamInput = ::Struct.new(
      :delivery_stream_name,
      :exclusive_start_tag_key,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A list of tags associated with <code>DeliveryStreamName</code>, starting with the
    #            first tag after <code>ExclusiveStartTagKey</code> and up to the specified
    #               <code>Limit</code>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute has_more_tags
    #   <p>If this is <code>true</code> in the response, more tags are available. To list the
    #            remaining tags, set <code>ExclusiveStartTagKey</code> to the key of the last tag returned
    #            and call <code>ListTagsForDeliveryStream</code> again.</p>
    #
    #   @return [Boolean]
    #
    ListTagsForDeliveryStreamOutput = ::Struct.new(
      :tags,
      :has_more_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NoEncryptionConfig
    #
    module NoEncryptionConfig
      # No documentation available.
      #
      NoEncryption = "NoEncryption"
    end

    # <p>The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data, which means
    #          converting it from the JSON format in preparation for serializing it to the Parquet or ORC
    #          format. This is one of two deserializers you can choose, depending on which one offers the
    #          functionality you need. The other option is the native Hive / HCatalog JsonSerDe.</p>
    #
    # @!attribute convert_dots_in_json_keys_to_underscores
    #   <p>When set to <code>true</code>, specifies that the names of the keys include dots and
    #            that you want Kinesis Data Firehose to replace them with underscores. This is useful
    #            because Apache Hive does not allow dots in column names. For example, if the JSON contains
    #            a key whose name is "a.b", you can define the column name to be "a_b" when using this
    #            option.</p>
    #            <p>The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute case_insensitive
    #   <p>When set to <code>true</code>, which is the default, Kinesis Data Firehose converts
    #            JSON keys to lowercase before deserializing them.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute column_to_json_key_mappings
    #   <p>Maps column names to JSON keys that aren't identical to the column names. This is
    #            useful when the JSON contains keys that are Hive keywords. For example,
    #               <code>timestamp</code> is a Hive keyword. If you have a JSON key named
    #               <code>timestamp</code>, set this parameter to <code>{"ts": "timestamp"}</code> to map
    #            this key to a column named <code>ts</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    OpenXJsonSerDe = ::Struct.new(
      :convert_dots_in_json_keys_to_underscores,
      :case_insensitive,
      :column_to_json_key_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrcCompression
    #
    module OrcCompression
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      ZLIB = "ZLIB"

      # No documentation available.
      #
      SNAPPY = "SNAPPY"
    end

    # Includes enum constants for OrcFormatVersion
    #
    module OrcFormatVersion
      # No documentation available.
      #
      V0_11 = "V0_11"

      # No documentation available.
      #
      V0_12 = "V0_12"
    end

    # <p>A serializer to use for converting data to the ORC format before storing it in Amazon
    #          S3. For more information, see <a href="https://orc.apache.org/docs/">Apache
    #          ORC</a>.</p>
    #
    # @!attribute stripe_size_bytes
    #   <p>The number of bytes in each stripe. The default is 64 MiB and the minimum is 8
    #            MiB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute block_size_bytes
    #   <p>The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to
    #            copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the
    #            minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.</p>
    #
    #   @return [Integer]
    #
    # @!attribute row_index_stride
    #   <p>The number of rows between index entries. The default is 10,000 and the minimum is
    #            1,000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_padding
    #   <p>Set this to <code>true</code> to indicate that you want stripes to be padded to the HDFS
    #            block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS
    #            before querying. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute padding_tolerance
    #   <p>A number between 0 and 1 that defines the tolerance for block padding as a decimal
    #            fraction of stripe size. The default value is 0.05, which means 5 percent of stripe
    #            size.</p>
    #            <p>For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block
    #            padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB
    #            block. In such a case, if the available size within the block is more than 3.2 MiB, a new,
    #            smaller stripe is inserted to fit within that space. This ensures that no stripe crosses
    #            block boundaries and causes remote reads within a node-local task.</p>
    #            <p>Kinesis Data Firehose ignores this parameter when <a>OrcSerDe$EnablePadding</a> is <code>false</code>.</p>
    #
    #   @return [Float]
    #
    # @!attribute compression
    #   <p>The compression code to use over data blocks. The default is <code>SNAPPY</code>.</p>
    #
    #   Enum, one of: ["NONE", "ZLIB", "SNAPPY"]
    #
    #   @return [String]
    #
    # @!attribute bloom_filter_columns
    #   <p>The column names for which you want Kinesis Data Firehose to create bloom filters. The
    #            default is <code>null</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute bloom_filter_false_positive_probability
    #   <p>The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the
    #            Bloom filter. The default value is 0.05, the minimum is 0, and the maximum is 1.</p>
    #
    #   @return [Float]
    #
    # @!attribute dictionary_key_threshold
    #   <p>Represents the fraction of the total number of non-null rows. To turn off dictionary
    #            encoding, set this fraction to a number that is less than the number of distinct keys in a
    #            dictionary. To always use dictionary encoding, set this threshold to 1.</p>
    #
    #   @return [Float]
    #
    # @!attribute format_version
    #   <p>The version of the file to write. The possible values are <code>V0_11</code> and
    #               <code>V0_12</code>. The default is <code>V0_12</code>.</p>
    #
    #   Enum, one of: ["V0_11", "V0_12"]
    #
    #   @return [String]
    #
    OrcSerDe = ::Struct.new(
      :stripe_size_bytes,
      :block_size_bytes,
      :row_index_stride,
      :enable_padding,
      :padding_tolerance,
      :compression,
      :bloom_filter_columns,
      :bloom_filter_false_positive_probability,
      :dictionary_key_threshold,
      :format_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the serializer that you want Kinesis Data Firehose to use to convert the
    #          format of your data before it writes it to Amazon S3. This parameter is required if
    #             <code>Enabled</code> is set to true.</p>
    #
    # @!attribute serializer
    #   <p>Specifies which serializer to use. You can choose either the ORC SerDe or the Parquet
    #            SerDe. If both are non-null, the server rejects the request.</p>
    #
    #   @return [Serializer]
    #
    OutputFormatConfiguration = ::Struct.new(
      :serializer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParquetCompression
    #
    module ParquetCompression
      # No documentation available.
      #
      UNCOMPRESSED = "UNCOMPRESSED"

      # No documentation available.
      #
      GZIP = "GZIP"

      # No documentation available.
      #
      SNAPPY = "SNAPPY"
    end

    # <p>A serializer to use for converting data to the Parquet format before storing it in
    #          Amazon S3. For more information, see <a href="https://parquet.apache.org/documentation/latest/">Apache Parquet</a>.</p>
    #
    # @!attribute block_size_bytes
    #   <p>The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to
    #            copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the
    #            minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_size_bytes
    #   <p>The Parquet page size. Column chunks are divided into pages. A page is conceptually an
    #            indivisible unit (in terms of compression and encoding). The minimum value is 64 KiB and
    #            the default is 1 MiB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compression
    #   <p>The compression code to use over data blocks. The possible values are
    #               <code>UNCOMPRESSED</code>, <code>SNAPPY</code>, and <code>GZIP</code>, with the default
    #            being <code>SNAPPY</code>. Use <code>SNAPPY</code> for higher decompression speed. Use
    #               <code>GZIP</code> if the compression ratio is more important than speed.</p>
    #
    #   Enum, one of: ["UNCOMPRESSED", "GZIP", "SNAPPY"]
    #
    #   @return [String]
    #
    # @!attribute enable_dictionary_compression
    #   <p>Indicates whether to enable dictionary compression.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_padding_bytes
    #   <p>The maximum amount of padding to apply. This is useful if you intend to copy the data
    #            from Amazon S3 to HDFS before querying. The default is 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute writer_version
    #   <p>Indicates the version of row format to output. The possible values are <code>V1</code>
    #            and <code>V2</code>. The default is <code>V1</code>.</p>
    #
    #   Enum, one of: ["V1", "V2"]
    #
    #   @return [String]
    #
    ParquetSerDe = ::Struct.new(
      :block_size_bytes,
      :page_size_bytes,
      :compression,
      :enable_dictionary_compression,
      :max_padding_bytes,
      :writer_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParquetWriterVersion
    #
    module ParquetWriterVersion
      # No documentation available.
      #
      V1 = "V1"

      # No documentation available.
      #
      V2 = "V2"
    end

    # <p>Describes a data processing configuration.</p>
    #
    # @!attribute enabled
    #   <p>Enables or disables data processing.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute processors
    #   <p>The data processors.</p>
    #
    #   @return [Array<Processor>]
    #
    ProcessingConfiguration = ::Struct.new(
      :enabled,
      :processors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a data processor.</p>
    #
    # @!attribute type
    #   <p>The type of processor.</p>
    #
    #   Enum, one of: ["RecordDeAggregation", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"]
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The processor parameters.</p>
    #
    #   @return [Array<ProcessorParameter>]
    #
    Processor = ::Struct.new(
      :type,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the processor parameter.</p>
    #
    # @!attribute parameter_name
    #   <p>The name of the parameter.</p>
    #
    #   Enum, one of: ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter"]
    #
    #   @return [String]
    #
    # @!attribute parameter_value
    #   <p>The parameter value.</p>
    #
    #   @return [String]
    #
    ProcessorParameter = ::Struct.new(
      :parameter_name,
      :parameter_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProcessorParameterName
    #
    module ProcessorParameterName
      # No documentation available.
      #
      LAMBDA_ARN = "LambdaArn"

      # No documentation available.
      #
      LAMBDA_NUMBER_OF_RETRIES = "NumberOfRetries"

      # No documentation available.
      #
      METADATA_EXTRACTION_QUERY = "MetadataExtractionQuery"

      # No documentation available.
      #
      JSON_PARSING_ENGINE = "JsonParsingEngine"

      # No documentation available.
      #
      ROLE_ARN = "RoleArn"

      # No documentation available.
      #
      BUFFER_SIZE_IN_MB = "BufferSizeInMBs"

      # No documentation available.
      #
      BUFFER_INTERVAL_IN_SECONDS = "BufferIntervalInSeconds"

      # No documentation available.
      #
      SUB_RECORD_TYPE = "SubRecordType"

      # No documentation available.
      #
      Delimiter = "Delimiter"
    end

    # Includes enum constants for ProcessorType
    #
    module ProcessorType
      # No documentation available.
      #
      RecordDeAggregation = "RecordDeAggregation"

      # No documentation available.
      #
      Lambda = "Lambda"

      # No documentation available.
      #
      MetadataExtraction = "MetadataExtraction"

      # No documentation available.
      #
      AppendDelimiterToRecord = "AppendDelimiterToRecord"
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    #   @return [String]
    #
    # @!attribute records
    #   <p>One or more records.</p>
    #
    #   @return [Array<Record>]
    #
    PutRecordBatchInput = ::Struct.new(
      :delivery_stream_name,
      :records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_put_count
    #   <p>The number of records that might have failed processing. This number might be greater
    #            than 0 even if the <a>PutRecordBatch</a> call succeeds. Check
    #               <code>FailedPutCount</code> to determine whether there are records that you need to
    #            resend.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encrypted
    #   <p>Indicates whether server-side encryption (SSE) was enabled during this operation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute request_responses
    #   <p>The results array. For each record, the index of the response element is the same as
    #            the index used in the request array.</p>
    #
    #   @return [Array<PutRecordBatchResponseEntry>]
    #
    PutRecordBatchOutput = ::Struct.new(
      :failed_put_count,
      :encrypted,
      :request_responses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the result for an individual record from a <a>PutRecordBatch</a>
    #          request. If the record is successfully added to your delivery stream, it receives a record
    #          ID. If the record fails to be added to your delivery stream, the result includes an error
    #          code and an error message.</p>
    #
    # @!attribute record_id
    #   <p>The ID of the record.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code for an individual record result.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message for an individual record result.</p>
    #
    #   @return [String]
    #
    PutRecordBatchResponseEntry = ::Struct.new(
      :record_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    #   @return [String]
    #
    # @!attribute record
    #   <p>The record.</p>
    #
    #   @return [Record]
    #
    PutRecordInput = ::Struct.new(
      :delivery_stream_name,
      :record,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute record_id
    #   <p>The ID of the record.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>Indicates whether server-side encryption (SSE) was enabled during this operation.</p>
    #
    #   @return [Boolean]
    #
    PutRecordOutput = ::Struct.new(
      :record_id,
      :encrypted,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The unit of data in a delivery stream.</p>
    #
    # @!attribute data
    #   <p>The data blob, which is base64-encoded when the blob is serialized. The maximum size
    #            of the data blob, before base64-encoding, is 1,000 KiB.</p>
    #
    #   @return [String]
    #
    Record = ::Struct.new(
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration of a destination in Amazon Redshift.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_jdbcurl
    #   <p>The database connection string.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_command
    #   <p>The <code>COPY</code> command.</p>
    #
    #   @return [CopyCommand]
    #
    # @!attribute username
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The user password.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_options
    #   <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
    #            Amazon Redshift. Default value is 3600 (60 minutes).</p>
    #
    #   @return [RedshiftRetryOptions]
    #
    # @!attribute s3_configuration
    #   <p>The configuration for the intermediate Amazon S3 location from which Amazon Redshift
    #            obtains data. Restrictions are described in the topic for <a>CreateDeliveryStream</a>.</p>
    #            <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
    #            in <code>RedshiftDestinationConfiguration.S3Configuration</code> because the Amazon
    #            Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't support these
    #            compression formats.</p>
    #
    #   @return [S3DestinationConfiguration]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode. After you create a delivery stream, you can update it to
    #            enable Amazon S3 backup if it is disabled. If backup is enabled, you can't update the
    #            delivery stream to disable it. </p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute s3_backup_configuration
    #   <p>The configuration for backup in Amazon S3.</p>
    #
    #   @return [S3DestinationConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    RedshiftDestinationConfiguration = ::Struct.new(
      :role_arn,
      :cluster_jdbcurl,
      :copy_command,
      :username,
      :password,
      :retry_options,
      :s3_configuration,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Firehose::Types::RedshiftDestinationConfiguration "\
          "role_arn=#{role_arn || 'nil'}, "\
          "cluster_jdbcurl=#{cluster_jdbcurl || 'nil'}, "\
          "copy_command=#{copy_command || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "password=\"[SENSITIVE]\", "\
          "retry_options=#{retry_options || 'nil'}, "\
          "s3_configuration=#{s3_configuration || 'nil'}, "\
          "processing_configuration=#{processing_configuration || 'nil'}, "\
          "s3_backup_mode=#{s3_backup_mode || 'nil'}, "\
          "s3_backup_configuration=#{s3_backup_configuration || 'nil'}, "\
          "cloud_watch_logging_options=#{cloud_watch_logging_options || 'nil'}>"
      end
    end

    # <p>Describes a destination in Amazon Redshift.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_jdbcurl
    #   <p>The database connection string.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_command
    #   <p>The <code>COPY</code> command.</p>
    #
    #   @return [CopyCommand]
    #
    # @!attribute username
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_options
    #   <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
    #            Amazon Redshift. Default value is 3600 (60 minutes).</p>
    #
    #   @return [RedshiftRetryOptions]
    #
    # @!attribute s3_destination_description
    #   <p>The Amazon S3 destination.</p>
    #
    #   @return [S3DestinationDescription]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute s3_backup_description
    #   <p>The configuration for backup in Amazon S3.</p>
    #
    #   @return [S3DestinationDescription]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    RedshiftDestinationDescription = ::Struct.new(
      :role_arn,
      :cluster_jdbcurl,
      :copy_command,
      :username,
      :retry_options,
      :s3_destination_description,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_description,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Firehose::Types::RedshiftDestinationDescription "\
          "role_arn=#{role_arn || 'nil'}, "\
          "cluster_jdbcurl=#{cluster_jdbcurl || 'nil'}, "\
          "copy_command=#{copy_command || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "retry_options=#{retry_options || 'nil'}, "\
          "s3_destination_description=#{s3_destination_description || 'nil'}, "\
          "processing_configuration=#{processing_configuration || 'nil'}, "\
          "s3_backup_mode=#{s3_backup_mode || 'nil'}, "\
          "s3_backup_description=#{s3_backup_description || 'nil'}, "\
          "cloud_watch_logging_options=#{cloud_watch_logging_options || 'nil'}>"
      end
    end

    # <p>Describes an update for a destination in Amazon Redshift.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_jdbcurl
    #   <p>The database connection string.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_command
    #   <p>The <code>COPY</code> command.</p>
    #
    #   @return [CopyCommand]
    #
    # @!attribute username
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The user password.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_options
    #   <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
    #            Amazon Redshift. Default value is 3600 (60 minutes).</p>
    #
    #   @return [RedshiftRetryOptions]
    #
    # @!attribute s3_update
    #   <p>The Amazon S3 destination.</p>
    #            <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
    #            in <code>RedshiftDestinationUpdate.S3Update</code> because the Amazon Redshift
    #               <code>COPY</code> operation that reads from the S3 bucket doesn't support these
    #            compression formats.</p>
    #
    #   @return [S3DestinationUpdate]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute s3_backup_mode
    #   <p>You can update a delivery stream to enable Amazon S3 backup if it is disabled. If
    #            backup is enabled, you can't update the delivery stream to disable it. </p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute s3_backup_update
    #   <p>The Amazon S3 destination for backup.</p>
    #
    #   @return [S3DestinationUpdate]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    RedshiftDestinationUpdate = ::Struct.new(
      :role_arn,
      :cluster_jdbcurl,
      :copy_command,
      :username,
      :password,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_update,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Firehose::Types::RedshiftDestinationUpdate "\
          "role_arn=#{role_arn || 'nil'}, "\
          "cluster_jdbcurl=#{cluster_jdbcurl || 'nil'}, "\
          "copy_command=#{copy_command || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "password=\"[SENSITIVE]\", "\
          "retry_options=#{retry_options || 'nil'}, "\
          "s3_update=#{s3_update || 'nil'}, "\
          "processing_configuration=#{processing_configuration || 'nil'}, "\
          "s3_backup_mode=#{s3_backup_mode || 'nil'}, "\
          "s3_backup_update=#{s3_backup_update || 'nil'}, "\
          "cloud_watch_logging_options=#{cloud_watch_logging_options || 'nil'}>"
      end
    end

    # <p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver
    #          documents to Amazon Redshift.</p>
    #
    # @!attribute duration_in_seconds
    #   <p>The length of time during which Kinesis Data Firehose retries delivery after a
    #            failure, starting from the initial request and including the first attempt. The default
    #            value is 3600 seconds (60 minutes). Kinesis Data Firehose does not retry if the value of
    #               <code>DurationInSeconds</code> is 0 (zero) or if the first delivery attempt takes longer
    #            than the current value.</p>
    #
    #   @return [Integer]
    #
    RedshiftRetryOptions = ::Struct.new(
      :duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RedshiftS3BackupMode
    #
    module RedshiftS3BackupMode
      # No documentation available.
      #
      Disabled = "Disabled"

      # No documentation available.
      #
      Enabled = "Enabled"
    end

    # <p>The resource is already in use and not available for this operation.</p>
    #
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource could not be found.</p>
    #
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The retry behavior in case Kinesis Data Firehose is unable to deliver data to an Amazon
    #          S3 prefix.</p>
    #
    # @!attribute duration_in_seconds
    #   <p>The period of time during which Kinesis Data Firehose retries to deliver data to the
    #            specified Amazon S3 prefix.</p>
    #
    #   @return [Integer]
    #
    RetryOptions = ::Struct.new(
      :duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3BackupMode
    #
    module S3BackupMode
      # No documentation available.
      #
      Disabled = "Disabled"

      # No documentation available.
      #
      Enabled = "Enabled"
    end

    # <p>Describes the configuration of a destination in Amazon S3.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #               AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_output_prefix
    #   <p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #   <p>The buffering option. If no value is specified, <code>BufferingHints</code> object
    #            default values are used.</p>
    #
    #   @return [BufferingHints]
    #
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #               <code>UNCOMPRESSED</code>.</p>
    #            <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
    #            for Amazon Redshift destinations because they are not supported by the Amazon Redshift
    #               <code>COPY</code> operation that reads from the S3 bucket.</p>
    #
    #   Enum, one of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    S3DestinationConfiguration = ::Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a destination in Amazon S3.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #               AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_output_prefix
    #   <p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #   <p>The buffering option. If no value is specified, <code>BufferingHints</code> object
    #            default values are used.</p>
    #
    #   @return [BufferingHints]
    #
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #               <code>UNCOMPRESSED</code>.</p>
    #
    #   Enum, one of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    S3DestinationDescription = ::Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an update for a destination in Amazon S3.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #               AWS Service Namespaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_output_prefix
    #   <p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute buffering_hints
    #   <p>The buffering option. If no value is specified, <code>BufferingHints</code> object
    #            default values are used.</p>
    #
    #   @return [BufferingHints]
    #
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #               <code>UNCOMPRESSED</code>.</p>
    #            <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
    #            for Amazon Redshift destinations because they are not supported by the Amazon Redshift
    #               <code>COPY</code> operation that reads from the S3 bucket.</p>
    #
    #   Enum, one of: ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    S3DestinationUpdate = ::Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the schema to which you want Kinesis Data Firehose to configure your data
    #          before it writes it to Amazon S3. This parameter is required if <code>Enabled</code> is set
    #          to true.</p>
    #
    # @!attribute role_arn
    #   <p>The role that Kinesis Data Firehose can use to access AWS Glue. This role must be in
    #            the same account you use for Kinesis Data Firehose. Cross-account roles aren't
    #            allowed.</p>
    #            <important>
    #               <p>If the <code>SchemaConfiguration</code> request parameter is used as part of invoking
    #               the <code>CreateDeliveryStream</code> API, then the <code>RoleARN</code> property is
    #               required and its value must be specified.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute catalog_id
    #   <p>The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS account ID is
    #            used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Specifies the name of the AWS Glue database that contains the schema for the output
    #            data.</p>
    #            <important>
    #               <p>If the <code>SchemaConfiguration</code> request parameter is used as part of invoking
    #               the <code>CreateDeliveryStream</code> API, then the <code>DatabaseName</code> property
    #               is required and its value must be specified.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>Specifies the AWS Glue table that contains the column information that constitutes your
    #            data schema.</p>
    #            <important>
    #               <p>If the <code>SchemaConfiguration</code> request parameter is used as part of invoking
    #               the <code>CreateDeliveryStream</code> API, then the <code>TableName</code> property is
    #               required and its value must be specified.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>If you don't specify an AWS Region, the default is the current Region.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>Specifies the table version for the output data schema. If you don't specify this
    #            version ID, or if you set it to <code>LATEST</code>, Kinesis Data Firehose uses the most
    #            recent version. This means that any updates to the table are automatically picked
    #            up.</p>
    #
    #   @return [String]
    #
    SchemaConfiguration = ::Struct.new(
      :role_arn,
      :catalog_id,
      :database_name,
      :table_name,
      :region,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The serializer that you want Kinesis Data Firehose to use to convert data to the target
    #          format before writing it to Amazon S3. Kinesis Data Firehose supports two types of
    #          serializers: the <a href="https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/orc/OrcSerde.html">ORC SerDe</a> and the <a href="https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/parquet/serde/ParquetHiveSerDe.html">Parquet SerDe</a>.</p>
    #
    # @!attribute parquet_ser_de
    #   <p>A serializer to use for converting data to the Parquet format before storing it in
    #            Amazon S3. For more information, see <a href="https://parquet.apache.org/documentation/latest/">Apache Parquet</a>.</p>
    #
    #   @return [ParquetSerDe]
    #
    # @!attribute orc_ser_de
    #   <p>A serializer to use for converting data to the ORC format before storing it in Amazon
    #            S3. For more information, see <a href="https://orc.apache.org/docs/">Apache
    #            ORC</a>.</p>
    #
    #   @return [OrcSerDe]
    #
    Serializer = ::Struct.new(
      :parquet_ser_de,
      :orc_ser_de,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is unavailable. Back off and retry the operation. If you continue to see
    #          the exception, throughput limits for the delivery stream may have been exceeded. For more
    #          information about limits and how to request an increase, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Kinesis Data Firehose
    #          Limits</a>.</p>
    #
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a Kinesis data stream used as the source for a Kinesis Data Firehose
    #          delivery stream.</p>
    #
    # @!attribute kinesis_stream_source_description
    #   <p>The <a>KinesisStreamSourceDescription</a> value for the source Kinesis
    #            data stream.</p>
    #
    #   @return [KinesisStreamSourceDescription]
    #
    SourceDescription = ::Struct.new(
      :kinesis_stream_source_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration of a destination in Splunk.</p>
    #
    # @!attribute hec_endpoint
    #   <p>The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your
    #            data.</p>
    #
    #   @return [String]
    #
    # @!attribute hec_endpoint_type
    #   <p>This type can be either "Raw" or "Event."</p>
    #
    #   Enum, one of: ["Raw", "Event"]
    #
    #   @return [String]
    #
    # @!attribute hec_token
    #   <p>This is a GUID that you obtain from your Splunk cluster when you create a new HEC
    #            endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute hec_acknowledgment_timeout_in_seconds
    #   <p>The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from
    #            Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose
    #            either tries to send the data again or considers it an error, based on your retry
    #            settings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retry_options
    #   <p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk,
    #            or if it doesn't receive an acknowledgment of receipt from Splunk.</p>
    #
    #   @return [SplunkRetryOptions]
    #
    # @!attribute s3_backup_mode
    #   <p>Defines how documents should be delivered to Amazon S3. When set to
    #               <code>FailedEventsOnly</code>, Kinesis Data Firehose writes any data that could not be
    #            indexed to the configured Amazon S3 destination. When set to <code>AllEvents</code>,
    #            Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed
    #            documents to Amazon S3. The default value is <code>FailedEventsOnly</code>.</p>
    #            <p>You can update this backup mode from <code>FailedEventsOnly</code> to
    #               <code>AllEvents</code>. You can't update it from <code>AllEvents</code> to
    #               <code>FailedEventsOnly</code>.</p>
    #
    #   Enum, one of: ["FailedEventsOnly", "AllEvents"]
    #
    #   @return [String]
    #
    # @!attribute s3_configuration
    #   <p>The configuration for the backup Amazon S3 location.</p>
    #
    #   @return [S3DestinationConfiguration]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    SplunkDestinationConfiguration = ::Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a destination in Splunk.</p>
    #
    # @!attribute hec_endpoint
    #   <p>The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your
    #            data.</p>
    #
    #   @return [String]
    #
    # @!attribute hec_endpoint_type
    #   <p>This type can be either "Raw" or "Event."</p>
    #
    #   Enum, one of: ["Raw", "Event"]
    #
    #   @return [String]
    #
    # @!attribute hec_token
    #   <p>A GUID you obtain from your Splunk cluster when you create a new HEC
    #            endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute hec_acknowledgment_timeout_in_seconds
    #   <p>The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from
    #            Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose
    #            either tries to send the data again or considers it an error, based on your retry
    #            settings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retry_options
    #   <p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk
    #            or if it doesn't receive an acknowledgment of receipt from Splunk.</p>
    #
    #   @return [SplunkRetryOptions]
    #
    # @!attribute s3_backup_mode
    #   <p>Defines how documents should be delivered to Amazon S3. When set to
    #               <code>FailedDocumentsOnly</code>, Kinesis Data Firehose writes any data that could not
    #            be indexed to the configured Amazon S3 destination. When set to <code>AllDocuments</code>,
    #            Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed
    #            documents to Amazon S3. Default value is <code>FailedDocumentsOnly</code>. </p>
    #
    #   Enum, one of: ["FailedEventsOnly", "AllEvents"]
    #
    #   @return [String]
    #
    # @!attribute s3_destination_description
    #   <p>The Amazon S3 destination.></p>
    #
    #   @return [S3DestinationDescription]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    SplunkDestinationDescription = ::Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an update for a destination in Splunk.</p>
    #
    # @!attribute hec_endpoint
    #   <p>The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your
    #            data.</p>
    #
    #   @return [String]
    #
    # @!attribute hec_endpoint_type
    #   <p>This type can be either "Raw" or "Event."</p>
    #
    #   Enum, one of: ["Raw", "Event"]
    #
    #   @return [String]
    #
    # @!attribute hec_token
    #   <p>A GUID that you obtain from your Splunk cluster when you create a new HEC
    #            endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute hec_acknowledgment_timeout_in_seconds
    #   <p>The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from
    #            Splunk after it sends data. At the end of the timeout period, Kinesis Data Firehose either
    #            tries to send the data again or considers it an error, based on your retry
    #            settings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retry_options
    #   <p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk
    #            or if it doesn't receive an acknowledgment of receipt from Splunk.</p>
    #
    #   @return [SplunkRetryOptions]
    #
    # @!attribute s3_backup_mode
    #   <p>Specifies how you want Kinesis Data Firehose to back up documents to Amazon S3. When
    #            set to <code>FailedDocumentsOnly</code>, Kinesis Data Firehose writes any data that could
    #            not be indexed to the configured Amazon S3 destination. When set to <code>AllEvents</code>,
    #            Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed
    #            documents to Amazon S3. The default value is <code>FailedEventsOnly</code>.</p>
    #            <p>You can update this backup mode from <code>FailedEventsOnly</code> to
    #               <code>AllEvents</code>. You can't update it from <code>AllEvents</code> to
    #               <code>FailedEventsOnly</code>.</p>
    #
    #   Enum, one of: ["FailedEventsOnly", "AllEvents"]
    #
    #   @return [String]
    #
    # @!attribute s3_update
    #   <p>Your update to the configuration of the backup Amazon S3 location.</p>
    #
    #   @return [S3DestinationUpdate]
    #
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #
    #   @return [ProcessingConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your delivery stream.</p>
    #
    #   @return [CloudWatchLoggingOptions]
    #
    SplunkDestinationUpdate = ::Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver
    #          documents to Splunk, or if it doesn't receive an acknowledgment from Splunk.</p>
    #
    # @!attribute duration_in_seconds
    #   <p>The total amount of time that Kinesis Data Firehose spends on retries. This duration
    #            starts after the initial attempt to send data to Splunk fails. It doesn't include the
    #            periods during which Kinesis Data Firehose waits for acknowledgment from Splunk after each
    #            attempt.</p>
    #
    #   @return [Integer]
    #
    SplunkRetryOptions = ::Struct.new(
      :duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SplunkS3BackupMode
    #
    module SplunkS3BackupMode
      # No documentation available.
      #
      FailedEventsOnly = "FailedEventsOnly"

      # No documentation available.
      #
      AllEvents = "AllEvents"
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream for which you want to enable server-side encryption
    #            (SSE).</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_stream_encryption_configuration_input
    #   <p>Used to specify the type and Amazon Resource Name (ARN) of the KMS key needed for
    #            Server-Side Encryption (SSE).</p>
    #
    #   @return [DeliveryStreamEncryptionConfigurationInput]
    #
    StartDeliveryStreamEncryptionInput = ::Struct.new(
      :delivery_stream_name,
      :delivery_stream_encryption_configuration_input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartDeliveryStreamEncryptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream for which you want to disable server-side encryption
    #            (SSE).</p>
    #
    #   @return [String]
    #
    StopDeliveryStreamEncryptionInput = ::Struct.new(
      :delivery_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopDeliveryStreamEncryptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata that you can assign to a delivery stream, consisting of a key-value
    #          pair.</p>
    #
    # @!attribute key
    #   <p>A unique identifier for the tag. Maximum length: 128 characters. Valid characters:
    #            Unicode letters, digits, white space, _ . / = + - % @</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>An optional string, which you can use to describe or define the tag. Maximum length:
    #            256 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - %
    #            @</p>
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

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream to which you want to add the tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A set of key-value pairs to use to create the tags.</p>
    #
    #   @return [Array<Tag>]
    #
    TagDeliveryStreamInput = ::Struct.new(
      :delivery_stream_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagDeliveryStreamOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag keys. Each corresponding tag is removed from the delivery
    #            stream.</p>
    #
    #   @return [Array<String>]
    #
    UntagDeliveryStreamInput = ::Struct.new(
      :delivery_stream_name,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagDeliveryStreamOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    #   @return [String]
    #
    # @!attribute current_delivery_stream_version_id
    #   <p>Obtain this value from the <code>VersionId</code> result of <a>DeliveryStreamDescription</a>. This value is required, and helps the service
    #            perform conditional operations. For example, if there is an interleaving update and this
    #            value is null, then the update destination fails. After the update is successful, the
    #               <code>VersionId</code> value is updated. The service then performs a merge of the old
    #            configuration with the new configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_id
    #   <p>The ID of the destination.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_destination_update
    #   <p>[Deprecated] Describes an update for a destination in Amazon S3.</p>
    #
    #   @deprecated
    #
    #   @return [S3DestinationUpdate]
    #
    # @!attribute extended_s3_destination_update
    #   <p>Describes an update for a destination in Amazon S3.</p>
    #
    #   @return [ExtendedS3DestinationUpdate]
    #
    # @!attribute redshift_destination_update
    #   <p>Describes an update for a destination in Amazon Redshift.</p>
    #
    #   @return [RedshiftDestinationUpdate]
    #
    # @!attribute elasticsearch_destination_update
    #   <p>Describes an update for a destination in Amazon ES.</p>
    #
    #   @return [ElasticsearchDestinationUpdate]
    #
    # @!attribute amazonopensearchservice_destination_update
    #
    #   @return [AmazonopensearchserviceDestinationUpdate]
    #
    # @!attribute splunk_destination_update
    #   <p>Describes an update for a destination in Splunk.</p>
    #
    #   @return [SplunkDestinationUpdate]
    #
    # @!attribute http_endpoint_destination_update
    #   <p>Describes an update to the specified HTTP endpoint destination.</p>
    #
    #   @return [HttpEndpointDestinationUpdate]
    #
    UpdateDestinationInput = ::Struct.new(
      :delivery_stream_name,
      :current_delivery_stream_version_id,
      :destination_id,
      :s3_destination_update,
      :extended_s3_destination_update,
      :redshift_destination_update,
      :elasticsearch_destination_update,
      :amazonopensearchservice_destination_update,
      :splunk_destination_update,
      :http_endpoint_destination_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the VPC of the Amazon ES destination.</p>
    #
    # @!attribute subnet_ids
    #   <p>The IDs of the subnets that you want Kinesis Data Firehose to use to create ENIs in the
    #            VPC of the Amazon ES destination. Make sure that the routing tables and inbound and
    #            outbound rules allow traffic to flow from the subnets whose IDs are specified here to the
    #            subnets that have the destination Amazon ES endpoints. Kinesis Data Firehose creates at
    #            least one ENI in each of the subnets that are specified here. Do not delete or modify these
    #            ENIs.</p>
    #            <p>The number of ENIs that Kinesis Data Firehose creates in the subnets specified here
    #            scales up and down automatically based on throughput. To enable Kinesis Data Firehose to
    #            scale up the number of ENIs to match throughput, ensure that you have sufficient quota. To
    #            help you calculate the quota you need, assume that Kinesis Data Firehose can create up to
    #            three ENIs for this delivery stream for each of the subnets specified here. For more
    #            information about ENI quota, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html vpc-limits-enis">Network Interfaces
    #            </a> in the Amazon VPC Quotas topic.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that you want the delivery stream to use to create endpoints in
    #            the destination VPC. You can use your existing Kinesis Data Firehose delivery role or you
    #            can specify a new role. In either case, make sure that the role trusts the Kinesis Data
    #            Firehose service principal and that it grants the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeVpcs</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeVpcAttribute</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeSubnets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeSecurityGroups</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeNetworkInterfaces</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:CreateNetworkInterface</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:CreateNetworkInterfacePermission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DeleteNetworkInterface</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you revoke these permissions after you create the delivery stream, Kinesis Data
    #            Firehose can't scale out by creating more ENIs when necessary. You might therefore see a
    #            degradation in performance.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups that you want Kinesis Data Firehose to use when it
    #            creates ENIs in the VPC of the Amazon ES destination. You can use the same security group
    #            that the Amazon ES domain uses or different ones. If you specify different security groups
    #            here, ensure that they allow outbound HTTPS traffic to the Amazon ES domain's security
    #            group. Also ensure that the Amazon ES domain's security group allows HTTPS traffic from the
    #            security groups specified here. If you use the same security group for both your delivery
    #            stream and the Amazon ES domain, make sure the security group inbound rule allows HTTPS
    #            traffic. For more information about security group rules, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html SecurityGroupRules">Security group
    #               rules</a> in the Amazon VPC documentation.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfiguration = ::Struct.new(
      :subnet_ids,
      :role_arn,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the VPC of the Amazon ES destination.</p>
    #
    # @!attribute subnet_ids
    #   <p>The IDs of the subnets that Kinesis Data Firehose uses to create ENIs in the VPC of the
    #            Amazon ES destination. Make sure that the routing tables and inbound and outbound rules
    #            allow traffic to flow from the subnets whose IDs are specified here to the subnets that
    #            have the destination Amazon ES endpoints. Kinesis Data Firehose creates at least one ENI in
    #            each of the subnets that are specified here. Do not delete or modify these ENIs.</p>
    #            <p>The number of ENIs that Kinesis Data Firehose creates in the subnets specified here
    #            scales up and down automatically based on throughput. To enable Kinesis Data Firehose to
    #            scale up the number of ENIs to match throughput, ensure that you have sufficient quota. To
    #            help you calculate the quota you need, assume that Kinesis Data Firehose can create up to
    #            three ENIs for this delivery stream for each of the subnets specified here. For more
    #            information about ENI quota, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html vpc-limits-enis">Network Interfaces
    #            </a> in the Amazon VPC Quotas topic.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that the delivery stream uses to create endpoints in the
    #            destination VPC. You can use your existing Kinesis Data Firehose delivery role or you can
    #            specify a new role. In either case, make sure that the role trusts the Kinesis Data
    #            Firehose service principal and that it grants the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeVpcs</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeVpcAttribute</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeSubnets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeSecurityGroups</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeNetworkInterfaces</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:CreateNetworkInterface</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:CreateNetworkInterfacePermission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DeleteNetworkInterface</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you revoke these permissions after you create the delivery stream, Kinesis Data
    #            Firehose can't scale out by creating more ENIs when necessary. You might therefore see a
    #            degradation in performance.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups that Kinesis Data Firehose uses when it creates ENIs in
    #            the VPC of the Amazon ES destination. You can use the same security group that the Amazon
    #            ES domain uses or different ones. If you specify different security groups, ensure that
    #            they allow outbound HTTPS traffic to the Amazon ES domain's security group. Also ensure
    #            that the Amazon ES domain's security group allows HTTPS traffic from the security groups
    #            specified here. If you use the same security group for both your delivery stream and the
    #            Amazon ES domain, make sure the security group inbound rule allows HTTPS traffic. For more
    #            information about security group rules, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html SecurityGroupRules">Security group
    #               rules</a> in the Amazon VPC documentation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_id
    #   <p>The ID of the Amazon ES destination's VPC.</p>
    #
    #   @return [String]
    #
    VpcConfigurationDescription = ::Struct.new(
      :subnet_ids,
      :role_arn,
      :security_group_ids,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
