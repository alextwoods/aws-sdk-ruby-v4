# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Firehose
  # An API client for Firehose_20150804
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Kinesis Data Firehose API Reference</fullname>
  #          <p>Amazon Kinesis Data Firehose is a fully managed service that delivers real-time
  #          streaming data to destinations such as Amazon Simple Storage Service (Amazon S3), Amazon
  #          Elasticsearch Service (Amazon ES), Amazon Redshift, and Splunk.</p>
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
    def initialize(config = AWS::SDK::Firehose::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a Kinesis Data Firehose delivery stream.</p>
    #
    #          <p>By default, you can create up to 50 delivery streams per AWS Region.</p>
    #          <p>This is an asynchronous operation that immediately returns. The initial status of the
    #          delivery stream is <code>CREATING</code>. After the delivery stream is created, its status
    #          is <code>ACTIVE</code> and it now accepts data. If the delivery stream creation fails, the
    #          status transitions to <code>CREATING_FAILED</code>. Attempts to send data to a delivery
    #          stream that is not in the <code>ACTIVE</code> state cause an exception. To check the state
    #          of a delivery stream, use <a>DescribeDeliveryStream</a>.</p>
    #          <p>If the status of a delivery stream is <code>CREATING_FAILED</code>, this status
    #          doesn't change, and you can't invoke <code>CreateDeliveryStream</code> again on it.
    #          However, you can invoke the <a>DeleteDeliveryStream</a> operation to delete
    #          it.</p>
    #          <p>A Kinesis Data Firehose delivery stream can be configured to receive records directly
    #          from providers using <a>PutRecord</a> or <a>PutRecordBatch</a>, or it
    #          can be configured to use an existing Kinesis stream as its source. To specify a Kinesis
    #          data stream as input, set the <code>DeliveryStreamType</code> parameter to
    #             <code>KinesisStreamAsSource</code>, and provide the Kinesis stream Amazon Resource Name
    #          (ARN) and role ARN in the <code>KinesisStreamSourceConfiguration</code>
    #          parameter.</p>
    #          <p>To create a delivery stream with server-side encryption (SSE) enabled, include <a>DeliveryStreamEncryptionConfigurationInput</a> in your request. This is
    #          optional. You can also invoke <a>StartDeliveryStreamEncryption</a> to turn on
    #          SSE for an existing delivery stream that doesn't have SSE enabled.</p>
    #          <p>A delivery stream is configured with a single destination: Amazon S3, Amazon ES,
    #          Amazon Redshift, or Splunk. You must specify only one of the following destination
    #          configuration parameters: <code>ExtendedS3DestinationConfiguration</code>,
    #             <code>S3DestinationConfiguration</code>,
    #             <code>ElasticsearchDestinationConfiguration</code>,
    #             <code>RedshiftDestinationConfiguration</code>, or
    #             <code>SplunkDestinationConfiguration</code>.</p>
    #          <p>When you specify <code>S3DestinationConfiguration</code>, you can also provide the
    #          following optional values: BufferingHints, <code>EncryptionConfiguration</code>, and
    #             <code>CompressionFormat</code>. By default, if no <code>BufferingHints</code> value is
    #          provided, Kinesis Data Firehose buffers data up to 5 MB or for 5 minutes, whichever
    #          condition is satisfied first. <code>BufferingHints</code> is a hint, so there are some
    #          cases where the service cannot adhere to these conditions strictly. For example, record
    #          boundaries might be such that the size is a little over or under the configured buffering
    #          size. By default, no encryption is performed. We strongly recommend that you enable
    #          encryption to ensure secure data storage in Amazon S3.</p>
    #
    #          <p>A few notes about Amazon Redshift as a destination:</p>
    #          <ul>
    #             <li>
    #                <p>An Amazon Redshift destination requires an S3 bucket as intermediate location.
    #                Kinesis Data Firehose first delivers data to Amazon S3 and then uses
    #                   <code>COPY</code> syntax to load data into an Amazon Redshift table. This is
    #                specified in the <code>RedshiftDestinationConfiguration.S3Configuration</code>
    #                parameter.</p>
    #
    #             </li>
    #             <li>
    #                <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be
    #                specified in <code>RedshiftDestinationConfiguration.S3Configuration</code> because
    #                the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't
    #                support these compression formats.</p>
    #             </li>
    #             <li>
    #                <p>We strongly recommend that you use the user name and password you provide
    #                exclusively with Kinesis Data Firehose, and that the permissions for the account are
    #                restricted for Amazon Redshift <code>INSERT</code> permissions.</p>
    #
    #             </li>
    #          </ul>
    #          <p>Kinesis Data Firehose assumes the IAM role that is configured as part of the
    #          destination. The role should allow the Kinesis Data Firehose principal to assume the role,
    #          and the role should have permissions that allow the service to deliver the data. For more
    #          information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Grant Kinesis Data
    #             Firehose Access to an Amazon S3 Destination</a> in the <i>Amazon Kinesis Data
    #             Firehose Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeliveryStreamInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream. This name must be unique per AWS account in the same
    #            AWS Region. If the delivery streams are in different accounts or different Regions, you can
    #            have multiple delivery streams with the same name.</p>
    #
    # @option params [String] :delivery_stream_type
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
    # @option params [KinesisStreamSourceConfiguration] :kinesis_stream_source_configuration
    #   <p>When a Kinesis data stream is used as the source for the delivery stream, a <a>KinesisStreamSourceConfiguration</a> containing the Kinesis data stream Amazon
    #            Resource Name (ARN) and the role ARN for the source stream.</p>
    #
    # @option params [DeliveryStreamEncryptionConfigurationInput] :delivery_stream_encryption_configuration_input
    #   <p>Used to specify the type and Amazon Resource Name (ARN) of the KMS key needed for
    #            Server-Side Encryption (SSE).</p>
    #
    # @option params [S3DestinationConfiguration] :s3_destination_configuration
    #   <p>[Deprecated]
    #            The destination in Amazon S3. You can specify only one destination.</p>
    #
    # @option params [ExtendedS3DestinationConfiguration] :extended_s3_destination_configuration
    #   <p>The destination in Amazon S3. You can specify only one destination.</p>
    #
    # @option params [RedshiftDestinationConfiguration] :redshift_destination_configuration
    #   <p>The destination in Amazon Redshift. You can specify only one destination.</p>
    #
    # @option params [ElasticsearchDestinationConfiguration] :elasticsearch_destination_configuration
    #   <p>The destination in Amazon ES. You can specify only one destination.</p>
    #
    # @option params [SplunkDestinationConfiguration] :splunk_destination_configuration
    #   <p>The destination in Splunk. You can specify only one destination.</p>
    #
    # @option params [HttpEndpointDestinationConfiguration] :http_endpoint_destination_configuration
    #   <p>Enables configuring Kinesis Firehose to deliver data to any HTTP endpoint destination.
    #            You can specify only one destination.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A set of tags to assign to the delivery stream. A tag is a key-value pair that you can
    #            define and assign to AWS resources. Tags are metadata. For example, you can add friendly
    #            names and descriptions or other types of information that can help you distinguish the
    #            delivery stream. For more information about tags, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    #               Tags</a> in the AWS Billing and Cost Management User Guide.</p>
    #
    #            <p>You can specify up to 50 tags when creating a delivery stream.</p>
    #
    # @return [Types::CreateDeliveryStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_delivery_stream(
    #     delivery_stream_name: 'DeliveryStreamName', # required
    #     delivery_stream_type: 'DirectPut', # accepts ["DirectPut", "KinesisStreamAsSource"]
    #     kinesis_stream_source_configuration: {
    #       kinesis_stream_arn: 'KinesisStreamARN', # required
    #       role_arn: 'RoleARN' # required
    #     },
    #     delivery_stream_encryption_configuration_input: {
    #       key_arn: 'KeyARN',
    #       key_type: 'AWS_OWNED_CMK' # required - accepts ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #     },
    #     s3_destination_configuration: {
    #       role_arn: 'RoleARN', # required
    #       bucket_arn: 'BucketARN', # required
    #       prefix: 'Prefix',
    #       error_output_prefix: 'ErrorOutputPrefix',
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       compression_format: 'UNCOMPRESSED', # accepts ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #       encryption_configuration: {
    #         no_encryption_config: 'NoEncryption', # accepts ["NoEncryption"]
    #         kms_encryption_config: {
    #           awskms_key_arn: 'AWSKMSKeyARN' # required
    #         }
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: 'LogGroupName',
    #         log_stream_name: 'LogStreamName'
    #       }
    #     },
    #     extended_s3_destination_configuration: {
    #       role_arn: 'RoleARN', # required
    #       bucket_arn: 'BucketARN', # required
    #       prefix: 'Prefix',
    #       error_output_prefix: 'ErrorOutputPrefix',
    #       compression_format: 'UNCOMPRESSED', # accepts ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: 'RecordDeAggregation', # required - accepts ["RecordDeAggregation", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"]
    #             parameters: [
    #               {
    #                 parameter_name: 'LambdaArn', # required - accepts ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter"]
    #                 parameter_value: 'ParameterValue' # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       s3_backup_mode: 'Disabled', # accepts ["Disabled", "Enabled"]
    #       data_format_conversion_configuration: {
    #         schema_configuration: {
    #           role_arn: 'RoleARN',
    #           catalog_id: 'CatalogId',
    #           database_name: 'DatabaseName',
    #           table_name: 'TableName',
    #           region: 'Region',
    #           version_id: 'VersionId'
    #         },
    #         input_format_configuration: {
    #           deserializer: {
    #             open_x_json_ser_de: {
    #               convert_dots_in_json_keys_to_underscores: false,
    #               case_insensitive: false,
    #               column_to_json_key_mappings: {
    #                 'key' => 'value'
    #               }
    #             },
    #             hive_json_ser_de: {
    #               timestamp_formats: [
    #                 'member'
    #               ]
    #             }
    #           }
    #         },
    #         output_format_configuration: {
    #           serializer: {
    #             parquet_ser_de: {
    #               block_size_bytes: 1,
    #               page_size_bytes: 1,
    #               compression: 'UNCOMPRESSED', # accepts ["UNCOMPRESSED", "GZIP", "SNAPPY"]
    #               enable_dictionary_compression: false,
    #               max_padding_bytes: 1,
    #               writer_version: 'V1' # accepts ["V1", "V2"]
    #             },
    #             orc_ser_de: {
    #               stripe_size_bytes: 1,
    #               block_size_bytes: 1,
    #               row_index_stride: 1,
    #               enable_padding: false,
    #               padding_tolerance: 1.0,
    #               compression: 'NONE', # accepts ["NONE", "ZLIB", "SNAPPY"]
    #               bloom_filter_columns: [
    #                 'member'
    #               ],
    #               bloom_filter_false_positive_probability: 1.0,
    #               dictionary_key_threshold: 1.0,
    #               format_version: 'V0_11' # accepts ["V0_11", "V0_12"]
    #             }
    #           }
    #         },
    #         enabled: false
    #       },
    #       dynamic_partitioning_configuration: {
    #         retry_options: {
    #           duration_in_seconds: 1
    #         },
    #         enabled: false
    #       }
    #     },
    #     redshift_destination_configuration: {
    #       role_arn: 'RoleARN', # required
    #       cluster_jdbcurl: 'ClusterJDBCURL', # required
    #       copy_command: {
    #         data_table_name: 'DataTableName', # required
    #         data_table_columns: 'DataTableColumns',
    #         copy_options: 'CopyOptions'
    #       }, # required
    #       username: 'Username', # required
    #       password: 'Password', # required
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: 'Disabled', # accepts ["Disabled", "Enabled"]
    #     },
    #     elasticsearch_destination_configuration: {
    #       role_arn: 'RoleARN', # required
    #       domain_arn: 'DomainARN',
    #       cluster_endpoint: 'ClusterEndpoint',
    #       index_name: 'IndexName', # required
    #       type_name: 'TypeName',
    #       index_rotation_period: 'NoRotation', # accepts ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: 'FailedDocumentsOnly', # accepts ["FailedDocumentsOnly", "AllDocuments"]
    #       vpc_configuration: {
    #         subnet_ids: [
    #           'member'
    #         ], # required
    #         role_arn: 'RoleARN', # required
    #         security_group_ids: [
    #           'member'
    #         ] # required
    #       }
    #     },
    #     amazonopensearchservice_destination_configuration: {
    #       role_arn: 'RoleARN', # required
    #       domain_arn: 'DomainARN',
    #       cluster_endpoint: 'ClusterEndpoint',
    #       index_name: 'IndexName', # required
    #       type_name: 'TypeName',
    #       index_rotation_period: 'NoRotation', # accepts ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: 'FailedDocumentsOnly', # accepts ["FailedDocumentsOnly", "AllDocuments"]
    #     },
    #     splunk_destination_configuration: {
    #       hec_endpoint: 'HECEndpoint', # required
    #       hec_endpoint_type: 'Raw', # required - accepts ["Raw", "Event"]
    #       hec_token: 'HECToken', # required
    #       hec_acknowledgment_timeout_in_seconds: 1,
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: 'FailedEventsOnly', # accepts ["FailedEventsOnly", "AllEvents"]
    #     },
    #     http_endpoint_destination_configuration: {
    #       endpoint_configuration: {
    #         url: 'Url', # required
    #         name: 'Name',
    #         access_key: 'AccessKey'
    #       }, # required
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       request_configuration: {
    #         content_encoding: 'NONE', # accepts ["NONE", "GZIP"]
    #         common_attributes: [
    #           {
    #             attribute_name: 'AttributeName', # required
    #             attribute_value: 'AttributeValue' # required
    #           }
    #         ]
    #       },
    #       role_arn: 'RoleARN',
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: 'FailedDataOnly', # accepts ["FailedDataOnly", "AllData"]
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeliveryStreamOutput
    #   resp.data.delivery_stream_arn #=> String
    #
    def create_delivery_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeliveryStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeliveryStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeliveryStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InvalidKMSResourceException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateDeliveryStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeliveryStream,
        stubs: @stubs,
        params_class: Params::CreateDeliveryStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_delivery_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a delivery stream and its data.</p>
    #          <p>To check the state of a delivery stream, use <a>DescribeDeliveryStream</a>. You can delete a delivery stream only if it is in one of the following states:
    #             <code>ACTIVE</code>, <code>DELETING</code>, <code>CREATING_FAILED</code>, or
    #             <code>DELETING_FAILED</code>. You can't delete a delivery stream that is in the
    #             <code>CREATING</code> state. While the deletion request is in process, the delivery
    #          stream is in the <code>DELETING</code> state.</p>
    #          <p>While the delivery stream is in the <code>DELETING</code> state, the service might
    #          continue to accept records, but it doesn't make any guarantees with respect to delivering
    #          the data. Therefore, as a best practice, first stop any applications that are sending
    #          records before you delete a delivery stream.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeliveryStreamInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    # @option params [Boolean] :allow_force_delete
    #   <p>Set this to true if you want to delete the delivery stream even if Kinesis Data Firehose
    #            is unable to retire the grant for the CMK. Kinesis Data Firehose might be unable to retire
    #            the grant due to a customer error, such as when the CMK or the grant are in an invalid
    #            state. If you force deletion, you can then use the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html">RevokeGrant</a> operation to
    #            revoke the grant you gave to Kinesis Data Firehose. If a failure to retire the grant
    #            happens due to an AWS KMS issue, Kinesis Data Firehose keeps retrying the delete
    #            operation.</p>
    #            <p>The default value is false.</p>
    #
    # @return [Types::DeleteDeliveryStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_delivery_stream(
    #     delivery_stream_name: 'DeliveryStreamName', # required
    #     allow_force_delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeliveryStreamOutput
    #
    def delete_delivery_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeliveryStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeliveryStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDeliveryStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteDeliveryStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDeliveryStream,
        stubs: @stubs,
        params_class: Params::DeleteDeliveryStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_delivery_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified delivery stream and its status. For example, after your
    #          delivery stream is created, call <code>DescribeDeliveryStream</code> to see whether the
    #          delivery stream is <code>ACTIVE</code> and therefore ready for data to be sent to it. </p>
    #          <p>If the status of a delivery stream is <code>CREATING_FAILED</code>, this status
    #          doesn't change, and you can't invoke <a>CreateDeliveryStream</a> again on it.
    #          However, you can invoke the <a>DeleteDeliveryStream</a> operation to delete it.
    #          If the status is <code>DELETING_FAILED</code>, you can force deletion by invoking <a>DeleteDeliveryStream</a> again but with <a>DeleteDeliveryStreamInput$AllowForceDelete</a> set to true.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDeliveryStreamInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    # @option params [Integer] :limit
    #   <p>The limit on the number of destinations to return. You can have one destination per
    #            delivery stream.</p>
    #
    # @option params [String] :exclusive_start_destination_id
    #   <p>The ID of the destination to start returning the destination information. Kinesis
    #            Data Firehose supports one destination per delivery stream.</p>
    #
    # @return [Types::DescribeDeliveryStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_delivery_stream(
    #     delivery_stream_name: 'DeliveryStreamName', # required
    #     limit: 1,
    #     exclusive_start_destination_id: 'ExclusiveStartDestinationId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeliveryStreamOutput
    #   resp.data.delivery_stream_description #=> Types::DeliveryStreamDescription
    #   resp.data.delivery_stream_description.delivery_stream_name #=> String
    #   resp.data.delivery_stream_description.delivery_stream_arn #=> String
    #   resp.data.delivery_stream_description.delivery_stream_status #=> String, one of ["CREATING", "CREATING_FAILED", "DELETING", "DELETING_FAILED", "ACTIVE"]
    #   resp.data.delivery_stream_description.failure_description #=> Types::FailureDescription
    #   resp.data.delivery_stream_description.failure_description.type #=> String, one of ["RETIRE_KMS_GRANT_FAILED", "CREATE_KMS_GRANT_FAILED", "KMS_ACCESS_DENIED", "DISABLED_KMS_KEY", "INVALID_KMS_KEY", "KMS_KEY_NOT_FOUND", "KMS_OPT_IN_REQUIRED", "CREATE_ENI_FAILED", "DELETE_ENI_FAILED", "SUBNET_NOT_FOUND", "SECURITY_GROUP_NOT_FOUND", "ENI_ACCESS_DENIED", "SUBNET_ACCESS_DENIED", "SECURITY_GROUP_ACCESS_DENIED", "UNKNOWN_ERROR"]
    #   resp.data.delivery_stream_description.failure_description.details #=> String
    #   resp.data.delivery_stream_description.delivery_stream_encryption_configuration #=> Types::DeliveryStreamEncryptionConfiguration
    #   resp.data.delivery_stream_description.delivery_stream_encryption_configuration.key_arn #=> String
    #   resp.data.delivery_stream_description.delivery_stream_encryption_configuration.key_type #=> String, one of ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #   resp.data.delivery_stream_description.delivery_stream_encryption_configuration.status #=> String, one of ["ENABLED", "ENABLING", "ENABLING_FAILED", "DISABLED", "DISABLING", "DISABLING_FAILED"]
    #   resp.data.delivery_stream_description.delivery_stream_encryption_configuration.failure_description #=> Types::FailureDescription
    #   resp.data.delivery_stream_description.delivery_stream_type #=> String, one of ["DirectPut", "KinesisStreamAsSource"]
    #   resp.data.delivery_stream_description.version_id #=> String
    #   resp.data.delivery_stream_description.create_timestamp #=> Time
    #   resp.data.delivery_stream_description.last_update_timestamp #=> Time
    #   resp.data.delivery_stream_description.source #=> Types::SourceDescription
    #   resp.data.delivery_stream_description.source.kinesis_stream_source_description #=> Types::KinesisStreamSourceDescription
    #   resp.data.delivery_stream_description.source.kinesis_stream_source_description.kinesis_stream_arn #=> String
    #   resp.data.delivery_stream_description.source.kinesis_stream_source_description.role_arn #=> String
    #   resp.data.delivery_stream_description.source.kinesis_stream_source_description.delivery_start_timestamp #=> Time
    #   resp.data.delivery_stream_description.destinations #=> Array<DestinationDescription>
    #   resp.data.delivery_stream_description.destinations[0] #=> Types::DestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].destination_id #=> String
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description #=> Types::S3DestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.role_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.bucket_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.prefix #=> String
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.error_output_prefix #=> String
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.buffering_hints #=> Types::BufferingHints
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.compression_format #=> String, one of ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of ["NoEncryption"]
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.encryption_configuration.kms_encryption_config #=> Types::KMSEncryptionConfig
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options #=> Types::CloudWatchLoggingOptions
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.data.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description #=> Types::ExtendedS3DestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.role_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.bucket_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.prefix #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.error_output_prefix #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.buffering_hints #=> Types::BufferingHints
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.compression_format #=> String, one of ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.cloud_watch_logging_options #=> Types::CloudWatchLoggingOptions
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration #=> Types::ProcessingConfiguration
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors #=> Array<Processor>
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0] #=> Types::Processor
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].type #=> String, one of ["RecordDeAggregation", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"]
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].parameters #=> Array<ProcessorParameter>
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].parameters[0] #=> Types::ProcessorParameter
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter"]
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_mode #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description #=> Types::S3DestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration #=> Types::DataFormatConversionConfiguration
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration #=> Types::SchemaConfiguration
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.role_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.catalog_id #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.database_name #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.table_name #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.region #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.version_id #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration #=> Types::InputFormatConfiguration
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer #=> Types::Deserializer
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de #=> Types::OpenXJsonSerDe
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.convert_dots_in_json_keys_to_underscores #=> Boolean
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.case_insensitive #=> Boolean
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.column_to_json_key_mappings #=> Hash<String, String>
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.column_to_json_key_mappings['key'] #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.hive_json_ser_de #=> Types::HiveJsonSerDe
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.hive_json_ser_de.timestamp_formats #=> Array<String>
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.hive_json_ser_de.timestamp_formats[0] #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration #=> Types::OutputFormatConfiguration
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer #=> Types::Serializer
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de #=> Types::ParquetSerDe
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.block_size_bytes #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.page_size_bytes #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.compression #=> String, one of ["UNCOMPRESSED", "GZIP", "SNAPPY"]
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.enable_dictionary_compression #=> Boolean
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.max_padding_bytes #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.writer_version #=> String, one of ["V1", "V2"]
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de #=> Types::OrcSerDe
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.stripe_size_bytes #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.block_size_bytes #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.row_index_stride #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.enable_padding #=> Boolean
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.padding_tolerance #=> Float
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.compression #=> String, one of ["NONE", "ZLIB", "SNAPPY"]
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.bloom_filter_columns #=> Array<String>
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.bloom_filter_columns[0] #=> String
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.bloom_filter_false_positive_probability #=> Float
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.dictionary_key_threshold #=> Float
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.format_version #=> String, one of ["V0_11", "V0_12"]
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.enabled #=> Boolean
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.dynamic_partitioning_configuration #=> Types::DynamicPartitioningConfiguration
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.dynamic_partitioning_configuration.retry_options #=> Types::RetryOptions
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.dynamic_partitioning_configuration.retry_options.duration_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].extended_s3_destination_description.dynamic_partitioning_configuration.enabled #=> Boolean
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description #=> Types::RedshiftDestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.role_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.cluster_jdbcurl #=> String
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.copy_command #=> Types::CopyCommand
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.copy_command.data_table_name #=> String
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.copy_command.data_table_columns #=> String
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.copy_command.copy_options #=> String
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.username #=> String
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.retry_options #=> Types::RedshiftRetryOptions
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description #=> Types::S3DestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration #=> Types::ProcessingConfiguration
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_mode #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description #=> Types::S3DestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].redshift_destination_description.cloud_watch_logging_options #=> Types::CloudWatchLoggingOptions
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description #=> Types::ElasticsearchDestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.role_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.domain_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.cluster_endpoint #=> String
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.index_name #=> String
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.type_name #=> String
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.index_rotation_period #=> String, one of ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.buffering_hints #=> Types::ElasticsearchBufferingHints
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.retry_options #=> Types::ElasticsearchRetryOptions
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_backup_mode #=> String, one of ["FailedDocumentsOnly", "AllDocuments"]
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description #=> Types::S3DestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration #=> Types::ProcessingConfiguration
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.cloud_watch_logging_options #=> Types::CloudWatchLoggingOptions
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description #=> Types::VpcConfigurationDescription
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.subnet_ids #=> Array<String>
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.subnet_ids[0] #=> String
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.role_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.security_group_ids #=> Array<String>
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.security_group_ids[0] #=> String
    #   resp.data.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.vpc_id #=> String
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description #=> Types::AmazonopensearchserviceDestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.role_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.domain_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.cluster_endpoint #=> String
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.index_name #=> String
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.type_name #=> String
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.index_rotation_period #=> String, one of ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.buffering_hints #=> Types::AmazonopensearchserviceBufferingHints
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.retry_options #=> Types::AmazonopensearchserviceRetryOptions
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_backup_mode #=> String, one of ["FailedDocumentsOnly", "AllDocuments"]
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description #=> Types::S3DestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.processing_configuration #=> Types::ProcessingConfiguration
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.cloud_watch_logging_options #=> Types::CloudWatchLoggingOptions
    #   resp.data.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.vpc_configuration_description #=> Types::VpcConfigurationDescription
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description #=> Types::SplunkDestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description.hec_endpoint #=> String
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description.hec_endpoint_type #=> String, one of ["Raw", "Event"]
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description.hec_token #=> String
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description.hec_acknowledgment_timeout_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description.retry_options #=> Types::SplunkRetryOptions
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description.s3_backup_mode #=> String, one of ["FailedEventsOnly", "AllEvents"]
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description #=> Types::S3DestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration #=> Types::ProcessingConfiguration
    #   resp.data.delivery_stream_description.destinations[0].splunk_destination_description.cloud_watch_logging_options #=> Types::CloudWatchLoggingOptions
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description #=> Types::HttpEndpointDestinationDescription
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.endpoint_configuration #=> Types::HttpEndpointDescription
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.endpoint_configuration.url #=> String
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.endpoint_configuration.name #=> String
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.buffering_hints #=> Types::HttpEndpointBufferingHints
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.cloud_watch_logging_options #=> Types::CloudWatchLoggingOptions
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration #=> Types::HttpEndpointRequestConfiguration
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.content_encoding #=> String, one of ["NONE", "GZIP"]
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.common_attributes #=> Array<HttpEndpointCommonAttribute>
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.common_attributes[0] #=> Types::HttpEndpointCommonAttribute
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.common_attributes[0].attribute_name #=> String
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.common_attributes[0].attribute_value #=> String
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration #=> Types::ProcessingConfiguration
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.role_arn #=> String
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.retry_options #=> Types::HttpEndpointRetryOptions
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_backup_mode #=> String, one of ["FailedDataOnly", "AllData"]
    #   resp.data.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description #=> Types::S3DestinationDescription
    #   resp.data.delivery_stream_description.has_more_destinations #=> Boolean
    #
    def describe_delivery_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeliveryStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeliveryStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDeliveryStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeDeliveryStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDeliveryStream,
        stubs: @stubs,
        params_class: Params::DescribeDeliveryStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_delivery_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your delivery streams in alphabetical order of their names.</p>
    #          <p>The number of delivery streams might be too large to return using a single call to
    #             <code>ListDeliveryStreams</code>. You can limit the number of delivery streams returned,
    #          using the <code>Limit</code> parameter. To determine whether there are more delivery
    #          streams to list, check the value of <code>HasMoreDeliveryStreams</code> in the output. If
    #          there are more delivery streams to list, you can request them by calling this operation
    #          again and setting the <code>ExclusiveStartDeliveryStreamName</code> parameter to the name
    #          of the last delivery stream returned in the last call.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeliveryStreamsInput}.
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of delivery streams to list. The default value is 10.</p>
    #
    # @option params [String] :delivery_stream_type
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
    # @option params [String] :exclusive_start_delivery_stream_name
    #   <p>The list of delivery streams returned by this call to
    #               <code>ListDeliveryStreams</code> will start with the delivery stream whose name comes
    #            alphabetically immediately after the name you specify in
    #               <code>ExclusiveStartDeliveryStreamName</code>.</p>
    #
    # @return [Types::ListDeliveryStreamsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_delivery_streams(
    #     limit: 1,
    #     delivery_stream_type: 'DirectPut', # accepts ["DirectPut", "KinesisStreamAsSource"]
    #     exclusive_start_delivery_stream_name: 'ExclusiveStartDeliveryStreamName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeliveryStreamsOutput
    #   resp.data.delivery_stream_names #=> Array<String>
    #   resp.data.delivery_stream_names[0] #=> String
    #   resp.data.has_more_delivery_streams #=> Boolean
    #
    def list_delivery_streams(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeliveryStreamsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeliveryStreamsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeliveryStreams
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
        data_parser: Parsers::ListDeliveryStreams
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeliveryStreams,
        stubs: @stubs,
        params_class: Params::ListDeliveryStreamsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_delivery_streams
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified delivery stream. This operation has a limit of five
    #          transactions per second per account. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForDeliveryStreamInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream whose tags you want to list.</p>
    #
    # @option params [String] :exclusive_start_tag_key
    #   <p>The key to use as the starting point for the list of tags. If you set this parameter,
    #               <code>ListTagsForDeliveryStream</code> gets all tags that occur after
    #               <code>ExclusiveStartTagKey</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>The number of tags to return. If this number is less than the total number of tags
    #            associated with the delivery stream, <code>HasMoreTags</code> is set to <code>true</code>
    #            in the response. To list additional tags, set <code>ExclusiveStartTagKey</code> to the last
    #            key in the response. </p>
    #
    # @return [Types::ListTagsForDeliveryStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_delivery_stream(
    #     delivery_stream_name: 'DeliveryStreamName', # required
    #     exclusive_start_tag_key: 'ExclusiveStartTagKey',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForDeliveryStreamOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.has_more_tags #=> Boolean
    #
    def list_tags_for_delivery_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForDeliveryStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForDeliveryStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForDeliveryStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTagsForDeliveryStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForDeliveryStream,
        stubs: @stubs,
        params_class: Params::ListTagsForDeliveryStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_delivery_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Writes a single data record into an Amazon Kinesis Data Firehose delivery stream. To
    #          write multiple data records into a delivery stream, use <a>PutRecordBatch</a>.
    #          Applications using these operations are referred to as producers.</p>
    #          <p>By default, each delivery stream can take in up to 2,000 transactions per second,
    #          5,000 records per second, or 5 MB per second. If you use <a>PutRecord</a> and
    #             <a>PutRecordBatch</a>, the limits are an aggregate across these two
    #          operations for each delivery stream. For more information about limits and how to request
    #          an increase, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon
    #             Kinesis Data Firehose Limits</a>. </p>
    #          <p>You must specify the name of the delivery stream and the data record when using <a>PutRecord</a>. The data record consists of a data blob that can be up to 1,000
    #          KiB in size, and any kind of data. For example, it can be a segment from a log file,
    #          geographic location data, website clickstream data, and so on.</p>
    #          <p>Kinesis Data Firehose buffers records before delivering them to the destination. To
    #          disambiguate the data blobs at the destination, a common solution is to use delimiters in
    #          the data, such as a newline (<code>\n</code>) or some other character unique within the
    #          data. This allows the consumer application to parse individual data items when reading the
    #          data from the destination.</p>
    #          <p>The <code>PutRecord</code> operation returns a <code>RecordId</code>, which is a
    #          unique string assigned to each record. Producer applications can use this ID for purposes
    #          such as auditability and investigation.</p>
    #          <p>If the <code>PutRecord</code> operation throws a
    #             <code>ServiceUnavailableException</code>, back off and retry. If the exception persists,
    #          it is possible that the throughput limits have been exceeded for the delivery stream. </p>
    #          <p>Data records sent to Kinesis Data Firehose are stored for 24 hours from the time they
    #          are added to a delivery stream as it tries to send the records to the destination. If the
    #          destination is unreachable for more than 24 hours, the data is no longer
    #          available.</p>
    #
    #          <important>
    #             <p>Don't concatenate two or more base64 strings to form the data fields of your records.
    #             Instead, concatenate the raw data, then perform base64 encoding.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::PutRecordInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    # @option params [Record] :record
    #   <p>The record.</p>
    #
    # @return [Types::PutRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_record(
    #     delivery_stream_name: 'DeliveryStreamName', # required
    #     record: {
    #       data: 'Data' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRecordOutput
    #   resp.data.record_id #=> String
    #   resp.data.encrypted #=> Boolean
    #
    def put_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRecordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRecordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRecord
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InvalidKMSResourceException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutRecord
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRecord,
        stubs: @stubs,
        params_class: Params::PutRecordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_record
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Writes multiple data records into a delivery stream in a single call, which can
    #          achieve higher throughput per producer than when writing single records. To write single
    #          data records into a delivery stream, use <a>PutRecord</a>. Applications using
    #          these operations are referred to as producers.</p>
    #          <p>For information about service quota, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Kinesis Data Firehose
    #          Quota</a>.</p>
    #          <p>Each <a>PutRecordBatch</a> request supports up to 500 records. Each record
    #          in the request can be as large as 1,000 KB (before base64 encoding), up to a limit of 4 MB
    #          for the entire request. These limits cannot be changed.</p>
    #          <p>You must specify the name of the delivery stream and the data record when using <a>PutRecord</a>. The data record consists of a data blob that can be up to 1,000
    #          KB in size, and any kind of data. For example, it could be a segment from a log file,
    #          geographic location data, website clickstream data, and so on.</p>
    #          <p>Kinesis Data Firehose buffers records before delivering them to the destination. To
    #          disambiguate the data blobs at the destination, a common solution is to use delimiters in
    #          the data, such as a newline (<code>\n</code>) or some other character unique within the
    #          data. This allows the consumer application to parse individual data items when reading the
    #          data from the destination.</p>
    #          <p>The <a>PutRecordBatch</a> response includes a count of failed records,
    #             <code>FailedPutCount</code>, and an array of responses, <code>RequestResponses</code>.
    #          Even if the <a>PutRecordBatch</a> call succeeds, the value of
    #             <code>FailedPutCount</code> may be greater than 0, indicating that there are records for
    #          which the operation didn't succeed. Each entry in the <code>RequestResponses</code> array
    #          provides additional information about the processed record. It directly correlates with a
    #          record in the request array using the same ordering, from the top to the bottom. The
    #          response array always includes the same number of records as the request array.
    #             <code>RequestResponses</code> includes both successfully and unsuccessfully processed
    #          records. Kinesis Data Firehose tries to process all records in each <a>PutRecordBatch</a> request. A single record failure does not stop the processing
    #          of subsequent records. </p>
    #          <p>A successfully processed record includes a <code>RecordId</code> value, which is
    #          unique for the record. An unsuccessfully processed record includes <code>ErrorCode</code>
    #          and <code>ErrorMessage</code> values. <code>ErrorCode</code> reflects the type of error,
    #          and is one of the following values: <code>ServiceUnavailableException</code> or
    #             <code>InternalFailure</code>. <code>ErrorMessage</code> provides more detailed
    #          information about the error.</p>
    #          <p>If there is an internal server error or a timeout, the write might have completed or
    #          it might have failed. If <code>FailedPutCount</code> is greater than 0, retry the request,
    #          resending only those records that might have failed processing. This minimizes the possible
    #          duplicate records and also reduces the total bytes sent (and corresponding charges). We
    #          recommend that you handle any duplicates at the destination.</p>
    #          <p>If <a>PutRecordBatch</a> throws <code>ServiceUnavailableException</code>,
    #          back off and retry. If the exception persists, it is possible that the throughput limits
    #          have been exceeded for the delivery stream.</p>
    #
    #          <p>Data records sent to Kinesis Data Firehose are stored for 24 hours from the time they
    #          are added to a delivery stream as it attempts to send the records to the destination. If
    #          the destination is unreachable for more than 24 hours, the data is no longer
    #          available.</p>
    #          <important>
    #             <p>Don't concatenate two or more base64 strings to form the data fields of your records.
    #             Instead, concatenate the raw data, then perform base64 encoding.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::PutRecordBatchInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    # @option params [Array<Record>] :records
    #   <p>One or more records.</p>
    #
    # @return [Types::PutRecordBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_record_batch(
    #     delivery_stream_name: 'DeliveryStreamName', # required
    #     records: [
    #       {
    #         data: 'Data' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRecordBatchOutput
    #   resp.data.failed_put_count #=> Integer
    #   resp.data.encrypted #=> Boolean
    #   resp.data.request_responses #=> Array<PutRecordBatchResponseEntry>
    #   resp.data.request_responses[0] #=> Types::PutRecordBatchResponseEntry
    #   resp.data.request_responses[0].record_id #=> String
    #   resp.data.request_responses[0].error_code #=> String
    #   resp.data.request_responses[0].error_message #=> String
    #
    def put_record_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRecordBatchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRecordBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRecordBatch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InvalidKMSResourceException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutRecordBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRecordBatch,
        stubs: @stubs,
        params_class: Params::PutRecordBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_record_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables server-side encryption (SSE) for the delivery stream. </p>
    #          <p>This operation is asynchronous. It returns immediately. When you invoke it, Kinesis Data
    #          Firehose first sets the encryption status of the stream to <code>ENABLING</code>, and then
    #          to <code>ENABLED</code>. The encryption status of a delivery stream is the
    #             <code>Status</code> property in <a>DeliveryStreamEncryptionConfiguration</a>.
    #          If the operation fails, the encryption status changes to <code>ENABLING_FAILED</code>. You
    #          can continue to read and write data to your delivery stream while the encryption status is
    #             <code>ENABLING</code>, but the data is not encrypted. It can take up to 5 seconds after
    #          the encryption status changes to <code>ENABLED</code> before all records written to the
    #          delivery stream are encrypted. To find out whether a record or a batch of records was
    #          encrypted, check the response elements <a>PutRecordOutput$Encrypted</a> and
    #             <a>PutRecordBatchOutput$Encrypted</a>, respectively.</p>
    #          <p>To check the encryption status of a delivery stream, use <a>DescribeDeliveryStream</a>.</p>
    #          <p>Even if encryption is currently enabled for a delivery stream, you can still invoke this
    #          operation on it to change the ARN of the CMK or both its type and ARN. If you invoke this
    #          method to change the CMK, and the old CMK is of type <code>CUSTOMER_MANAGED_CMK</code>,
    #          Kinesis Data Firehose schedules the grant it had on the old CMK for retirement. If the new
    #          CMK is of type <code>CUSTOMER_MANAGED_CMK</code>, Kinesis Data Firehose creates a grant
    #          that enables it to use the new CMK to encrypt and decrypt data and to manage the
    #          grant.</p>
    #          <p>If a delivery stream already has encryption enabled and then you invoke this operation
    #          to change the ARN of the CMK or both its type and ARN and you get
    #             <code>ENABLING_FAILED</code>, this only means that the attempt to change the CMK failed.
    #          In this case, encryption remains enabled with the old CMK.</p>
    #          <p>If the encryption status of your delivery stream is <code>ENABLING_FAILED</code>, you
    #          can invoke this operation again with a valid CMK. The CMK must be enabled and the key
    #          policy mustn't explicitly deny the permission for Kinesis Data Firehose to invoke KMS
    #          encrypt and decrypt operations.</p>
    #          <p>You can enable SSE for a delivery stream only if it's a delivery stream that uses
    #             <code>DirectPut</code> as its source. </p>
    #          <p>The <code>StartDeliveryStreamEncryption</code> and
    #             <code>StopDeliveryStreamEncryption</code> operations have a combined limit of 25 calls
    #          per delivery stream per 24 hours. For example, you reach the limit if you call
    #             <code>StartDeliveryStreamEncryption</code> 13 times and
    #             <code>StopDeliveryStreamEncryption</code> 12 times for the same delivery stream in a
    #          24-hour period.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDeliveryStreamEncryptionInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream for which you want to enable server-side encryption
    #            (SSE).</p>
    #
    # @option params [DeliveryStreamEncryptionConfigurationInput] :delivery_stream_encryption_configuration_input
    #   <p>Used to specify the type and Amazon Resource Name (ARN) of the KMS key needed for
    #            Server-Side Encryption (SSE).</p>
    #
    # @return [Types::StartDeliveryStreamEncryptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_delivery_stream_encryption(
    #     delivery_stream_name: 'DeliveryStreamName', # required
    #     delivery_stream_encryption_configuration_input: {
    #       key_arn: 'KeyARN',
    #       key_type: 'AWS_OWNED_CMK' # required - accepts ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDeliveryStreamEncryptionOutput
    #
    def start_delivery_stream_encryption(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDeliveryStreamEncryptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDeliveryStreamEncryptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDeliveryStreamEncryption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InvalidKMSResourceException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartDeliveryStreamEncryption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDeliveryStreamEncryption,
        stubs: @stubs,
        params_class: Params::StartDeliveryStreamEncryptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_delivery_stream_encryption
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables server-side encryption (SSE) for the delivery stream. </p>
    #          <p>This operation is asynchronous. It returns immediately. When you invoke it, Kinesis Data
    #          Firehose first sets the encryption status of the stream to <code>DISABLING</code>, and then
    #          to <code>DISABLED</code>. You can continue to read and write data to your stream while its
    #          status is <code>DISABLING</code>. It can take up to 5 seconds after the encryption status
    #          changes to <code>DISABLED</code> before all records written to the delivery stream are no
    #          longer subject to encryption. To find out whether a record or a batch of records was
    #          encrypted, check the response elements <a>PutRecordOutput$Encrypted</a> and
    #             <a>PutRecordBatchOutput$Encrypted</a>, respectively.</p>
    #          <p>To check the encryption state of a delivery stream, use <a>DescribeDeliveryStream</a>. </p>
    #          <p>If SSE is enabled using a customer managed CMK and then you invoke
    #             <code>StopDeliveryStreamEncryption</code>, Kinesis Data Firehose schedules the related
    #          KMS grant for retirement and then retires it after it ensures that it is finished
    #          delivering records to the destination.</p>
    #          <p>The <code>StartDeliveryStreamEncryption</code> and
    #             <code>StopDeliveryStreamEncryption</code> operations have a combined limit of 25 calls
    #          per delivery stream per 24 hours. For example, you reach the limit if you call
    #             <code>StartDeliveryStreamEncryption</code> 13 times and
    #             <code>StopDeliveryStreamEncryption</code> 12 times for the same delivery stream in a
    #          24-hour period.</p>
    #
    # @param [Hash] params
    #   See {Types::StopDeliveryStreamEncryptionInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream for which you want to disable server-side encryption
    #            (SSE).</p>
    #
    # @return [Types::StopDeliveryStreamEncryptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_delivery_stream_encryption(
    #     delivery_stream_name: 'DeliveryStreamName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopDeliveryStreamEncryptionOutput
    #
    def stop_delivery_stream_encryption(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopDeliveryStreamEncryptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopDeliveryStreamEncryptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopDeliveryStreamEncryption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopDeliveryStreamEncryption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopDeliveryStreamEncryption,
        stubs: @stubs,
        params_class: Params::StopDeliveryStreamEncryptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_delivery_stream_encryption
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates tags for the specified delivery stream. A tag is a key-value pair
    #          that you can define and assign to AWS resources. If you specify a tag that already exists,
    #          the tag value is replaced with the value that you specify in the request. Tags are
    #          metadata. For example, you can add friendly names and descriptions or other types of
    #          information that can help you distinguish the delivery stream. For more information about
    #          tags, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    #             Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>. </p>
    #          <p>Each delivery stream can have up to 50 tags. </p>
    #          <p>This operation has a limit of five transactions per second per account. </p>
    #
    # @param [Hash] params
    #   See {Types::TagDeliveryStreamInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream to which you want to add the tags.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A set of key-value pairs to use to create the tags.</p>
    #
    # @return [Types::TagDeliveryStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_delivery_stream(
    #     delivery_stream_name: 'DeliveryStreamName', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagDeliveryStreamOutput
    #
    def tag_delivery_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagDeliveryStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagDeliveryStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagDeliveryStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::TagDeliveryStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagDeliveryStream,
        stubs: @stubs,
        params_class: Params::TagDeliveryStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_delivery_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from the specified delivery stream. Removed tags are deleted, and you
    #          can't recover them after this operation successfully completes.</p>
    #          <p>If you specify a tag that doesn't exist, the operation ignores it.</p>
    #          <p>This operation has a limit of five transactions per second per account. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagDeliveryStreamInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Each corresponding tag is removed from the delivery
    #            stream.</p>
    #
    # @return [Types::UntagDeliveryStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_delivery_stream(
    #     delivery_stream_name: 'DeliveryStreamName', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagDeliveryStreamOutput
    #
    def untag_delivery_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagDeliveryStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagDeliveryStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagDeliveryStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UntagDeliveryStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagDeliveryStream,
        stubs: @stubs,
        params_class: Params::UntagDeliveryStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_delivery_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified destination of the specified delivery stream.</p>
    #
    #          <p>Use this operation to change the destination type (for example, to replace the Amazon
    #          S3 destination with Amazon Redshift) or change the parameters associated with a destination
    #          (for example, to change the bucket name of the Amazon S3 destination). The update might not
    #          occur immediately. The target delivery stream remains active while the configurations are
    #          updated, so data writes to the delivery stream can continue during this process. The
    #          updated configurations are usually effective within a few minutes.</p>
    #          <p>Switching between Amazon ES and other services is not supported. For an Amazon ES
    #          destination, you can only update to another Amazon ES destination.</p>
    #          <p>If the destination type is the same, Kinesis Data Firehose merges the configuration
    #          parameters specified with the destination configuration that already exists on the delivery
    #          stream. If any of the parameters are not specified in the call, the existing values are
    #          retained. For example, in the Amazon S3 destination, if <a>EncryptionConfiguration</a> is not specified, then the existing
    #             <code>EncryptionConfiguration</code> is maintained on the destination.</p>
    #          <p>If the destination type is not the same, for example, changing the destination from
    #          Amazon S3 to Amazon Redshift, Kinesis Data Firehose does not merge any parameters. In this
    #          case, all parameters must be specified.</p>
    #
    #          <p>Kinesis Data Firehose uses <code>CurrentDeliveryStreamVersionId</code> to avoid race
    #          conditions and conflicting merges. This is a required field, and the service updates the
    #          configuration only if the existing configuration has a version ID that matches. After the
    #          update is applied successfully, the version ID is updated, and can be retrieved using <a>DescribeDeliveryStream</a>. Use the new version ID to set
    #             <code>CurrentDeliveryStreamVersionId</code> in the next call.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDestinationInput}.
    #
    # @option params [String] :delivery_stream_name
    #   <p>The name of the delivery stream.</p>
    #
    # @option params [String] :current_delivery_stream_version_id
    #   <p>Obtain this value from the <code>VersionId</code> result of <a>DeliveryStreamDescription</a>. This value is required, and helps the service
    #            perform conditional operations. For example, if there is an interleaving update and this
    #            value is null, then the update destination fails. After the update is successful, the
    #               <code>VersionId</code> value is updated. The service then performs a merge of the old
    #            configuration with the new configuration.</p>
    #
    # @option params [String] :destination_id
    #   <p>The ID of the destination.</p>
    #
    # @option params [S3DestinationUpdate] :s3_destination_update
    #   <p>[Deprecated] Describes an update for a destination in Amazon S3.</p>
    #
    # @option params [ExtendedS3DestinationUpdate] :extended_s3_destination_update
    #   <p>Describes an update for a destination in Amazon S3.</p>
    #
    # @option params [RedshiftDestinationUpdate] :redshift_destination_update
    #   <p>Describes an update for a destination in Amazon Redshift.</p>
    #
    # @option params [ElasticsearchDestinationUpdate] :elasticsearch_destination_update
    #   <p>Describes an update for a destination in Amazon ES.</p>
    #
    # @option params [SplunkDestinationUpdate] :splunk_destination_update
    #   <p>Describes an update for a destination in Splunk.</p>
    #
    # @option params [HttpEndpointDestinationUpdate] :http_endpoint_destination_update
    #   <p>Describes an update to the specified HTTP endpoint destination.</p>
    #
    # @return [Types::UpdateDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_destination(
    #     delivery_stream_name: 'DeliveryStreamName', # required
    #     current_delivery_stream_version_id: 'CurrentDeliveryStreamVersionId', # required
    #     destination_id: 'DestinationId', # required
    #     s3_destination_update: {
    #       role_arn: 'RoleARN',
    #       bucket_arn: 'BucketARN',
    #       prefix: 'Prefix',
    #       error_output_prefix: 'ErrorOutputPrefix',
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       compression_format: 'UNCOMPRESSED', # accepts ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #       encryption_configuration: {
    #         no_encryption_config: 'NoEncryption', # accepts ["NoEncryption"]
    #         kms_encryption_config: {
    #           awskms_key_arn: 'AWSKMSKeyARN' # required
    #         }
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: 'LogGroupName',
    #         log_stream_name: 'LogStreamName'
    #       }
    #     },
    #     extended_s3_destination_update: {
    #       role_arn: 'RoleARN',
    #       bucket_arn: 'BucketARN',
    #       prefix: 'Prefix',
    #       error_output_prefix: 'ErrorOutputPrefix',
    #       compression_format: 'UNCOMPRESSED', # accepts ["UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"]
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: 'RecordDeAggregation', # required - accepts ["RecordDeAggregation", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"]
    #             parameters: [
    #               {
    #                 parameter_name: 'LambdaArn', # required - accepts ["LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter"]
    #                 parameter_value: 'ParameterValue' # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       s3_backup_mode: 'Disabled', # accepts ["Disabled", "Enabled"]
    #       data_format_conversion_configuration: {
    #         schema_configuration: {
    #           role_arn: 'RoleARN',
    #           catalog_id: 'CatalogId',
    #           database_name: 'DatabaseName',
    #           table_name: 'TableName',
    #           region: 'Region',
    #           version_id: 'VersionId'
    #         },
    #         input_format_configuration: {
    #           deserializer: {
    #             open_x_json_ser_de: {
    #               convert_dots_in_json_keys_to_underscores: false,
    #               case_insensitive: false,
    #               column_to_json_key_mappings: {
    #                 'key' => 'value'
    #               }
    #             },
    #             hive_json_ser_de: {
    #               timestamp_formats: [
    #                 'member'
    #               ]
    #             }
    #           }
    #         },
    #         output_format_configuration: {
    #           serializer: {
    #             parquet_ser_de: {
    #               block_size_bytes: 1,
    #               page_size_bytes: 1,
    #               compression: 'UNCOMPRESSED', # accepts ["UNCOMPRESSED", "GZIP", "SNAPPY"]
    #               enable_dictionary_compression: false,
    #               max_padding_bytes: 1,
    #               writer_version: 'V1' # accepts ["V1", "V2"]
    #             },
    #             orc_ser_de: {
    #               stripe_size_bytes: 1,
    #               block_size_bytes: 1,
    #               row_index_stride: 1,
    #               enable_padding: false,
    #               padding_tolerance: 1.0,
    #               compression: 'NONE', # accepts ["NONE", "ZLIB", "SNAPPY"]
    #               bloom_filter_columns: [
    #                 'member'
    #               ],
    #               bloom_filter_false_positive_probability: 1.0,
    #               dictionary_key_threshold: 1.0,
    #               format_version: 'V0_11' # accepts ["V0_11", "V0_12"]
    #             }
    #           }
    #         },
    #         enabled: false
    #       },
    #       dynamic_partitioning_configuration: {
    #         retry_options: {
    #           duration_in_seconds: 1
    #         },
    #         enabled: false
    #       }
    #     },
    #     redshift_destination_update: {
    #       role_arn: 'RoleARN',
    #       cluster_jdbcurl: 'ClusterJDBCURL',
    #       copy_command: {
    #         data_table_name: 'DataTableName', # required
    #         data_table_columns: 'DataTableColumns',
    #         copy_options: 'CopyOptions'
    #       },
    #       username: 'Username',
    #       password: 'Password',
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: 'Disabled', # accepts ["Disabled", "Enabled"]
    #     },
    #     elasticsearch_destination_update: {
    #       role_arn: 'RoleARN',
    #       domain_arn: 'DomainARN',
    #       cluster_endpoint: 'ClusterEndpoint',
    #       index_name: 'IndexName',
    #       type_name: 'TypeName',
    #       index_rotation_period: 'NoRotation', # accepts ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #     },
    #     amazonopensearchservice_destination_update: {
    #       role_arn: 'RoleARN',
    #       domain_arn: 'DomainARN',
    #       cluster_endpoint: 'ClusterEndpoint',
    #       index_name: 'IndexName',
    #       type_name: 'TypeName',
    #       index_rotation_period: 'NoRotation', # accepts ["NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"]
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #     },
    #     splunk_destination_update: {
    #       hec_endpoint: 'HECEndpoint',
    #       hec_endpoint_type: 'Raw', # accepts ["Raw", "Event"]
    #       hec_token: 'HECToken',
    #       hec_acknowledgment_timeout_in_seconds: 1,
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: 'FailedEventsOnly', # accepts ["FailedEventsOnly", "AllEvents"]
    #     },
    #     http_endpoint_destination_update: {
    #       endpoint_configuration: {
    #         url: 'Url', # required
    #         name: 'Name',
    #         access_key: 'AccessKey'
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1
    #       },
    #       request_configuration: {
    #         content_encoding: 'NONE', # accepts ["NONE", "GZIP"]
    #         common_attributes: [
    #           {
    #             attribute_name: 'AttributeName', # required
    #             attribute_value: 'AttributeValue' # required
    #           }
    #         ]
    #       },
    #       role_arn: 'RoleARN',
    #       retry_options: {
    #         duration_in_seconds: 1
    #       },
    #       s3_backup_mode: 'FailedDataOnly', # accepts ["FailedDataOnly", "AllData"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDestinationOutput
    #
    def update_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidArgumentException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDestination,
        stubs: @stubs,
        params_class: Params::UpdateDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_destination
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
