# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::TimestreamWrite
  # An API client for Timestream_20181101
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Timestream Write</fullname>
  #          <p>Amazon Timestream is a fast, scalable, fully managed time series database service that makes it easy to store and analyze trillions of time series data points per day.
  #        With Timestream, you can easily store and analyze IoT sensor data to derive insights from your IoT applications.
  #          You can analyze industrial telemetry to streamline equipment management and maintenance.
  #          You can also store and analyze log data and metrics to improve the performance and availability of your applications.
  #        Timestream is built from the ground up to effectively ingest, process,
  #          and store time series data. It organizes data to optimize query processing. It automatically scales based on the volume of data ingested and on the query volume to ensure you receive optimal performance while inserting and querying data. As your data grows over time, Timestream’s adaptive query processing engine spans across storage tiers to provide fast analysis while reducing costs.</p>
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
    def initialize(config = AWS::SDK::TimestreamWrite::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a new Timestream database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS
    #          key located in your account.
    #          Refer to <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed KMS keys</a> for more info.
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>.
    #          See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-db.html">code sample</a> for details.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatabaseInput}.
    #
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The KMS key for the database.
    #            If the KMS key is not specified, the database will be encrypted with a Timestream
    #            managed KMS key located in your account.
    #            Refer to <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed KMS keys</a> for more info.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>
    #         A list of key-value pairs to label the table.
    #      </p>
    #
    # @return [Types::CreateDatabaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_database(
    #     database_name: 'DatabaseName', # required
    #     kms_key_id: 'KmsKeyId',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatabaseOutput
    #   resp.data.database #=> Types::Database
    #   resp.data.database.arn #=> String
    #   resp.data.database.database_name #=> String
    #   resp.data.database.table_count #=> Integer
    #   resp.data.database.kms_key_id #=> String
    #   resp.data.database.creation_time #=> Time
    #   resp.data.database.last_updated_time #=> Time
    #
    def create_database(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatabaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatabaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDatabase
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::ConflictException, Errors::InvalidEndpointException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateDatabase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDatabase,
        stubs: @stubs,
        params_class: Params::CreateDatabaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_database
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The CreateTable operation adds a new table to an existing database in your account. In an Amazon Web Services account,
    #       table names must be at least unique within each Region if they are in the same database.
    #       You may have identical table names in the same Region if the tables are in separate databases.
    #          While creating the table, you must specify the table name, database name,
    #          and the retention properties.
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>.
    #          See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-table.html">code sample</a> for details.
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateTableInput}.
    #
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the Timestream table.</p>
    #
    # @option params [RetentionProperties] :retention_properties
    #   <p>The duration for which your time series data must be stored in the memory store and the magnetic store.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>
    #         A list of key-value pairs to label the table.
    #      </p>
    #
    # @option params [MagneticStoreWriteProperties] :magnetic_store_write_properties
    #   <p>Contains properties to set on the table when enabling magnetic store writes.</p>
    #
    # @return [Types::CreateTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table(
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName', # required
    #     retention_properties: {
    #       memory_store_retention_period_in_hours: 1, # required
    #       magnetic_store_retention_period_in_days: 1 # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     magnetic_store_write_properties: {
    #       enable_magnetic_store_writes: false, # required
    #       magnetic_store_rejected_data_location: {
    #         s3_configuration: {
    #           bucket_name: 'BucketName',
    #           object_key_prefix: 'ObjectKeyPrefix',
    #           encryption_option: 'SSE_S3', # accepts ["SSE_S3", "SSE_KMS"]
    #           kms_key_id: 'KmsKeyId'
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTableOutput
    #   resp.data.table #=> Types::Table
    #   resp.data.table.arn #=> String
    #   resp.data.table.table_name #=> String
    #   resp.data.table.database_name #=> String
    #   resp.data.table.table_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.table.retention_properties #=> Types::RetentionProperties
    #   resp.data.table.retention_properties.memory_store_retention_period_in_hours #=> Integer
    #   resp.data.table.retention_properties.magnetic_store_retention_period_in_days #=> Integer
    #   resp.data.table.creation_time #=> Time
    #   resp.data.table.last_updated_time #=> Time
    #   resp.data.table.magnetic_store_write_properties #=> Types::MagneticStoreWriteProperties
    #   resp.data.table.magnetic_store_write_properties.enable_magnetic_store_writes #=> Boolean
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location #=> Types::MagneticStoreRejectedDataLocation
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration #=> Types::S3Configuration
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.bucket_name #=> String
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.object_key_prefix #=> String
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.encryption_option #=> String, one of ["SSE_S3", "SSE_KMS"]
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.kms_key_id #=> String
    #
    def create_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::ConflictException, Errors::InvalidEndpointException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTable,
        stubs: @stubs,
        params_class: Params::CreateTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a given Timestream database. <i>This is an irreversible operation.
    #       After a database is deleted, the time series data from its tables cannot be recovered.</i>
    #          </p>
    #
    #          <note>
    #             <p>All tables in the database must be deleted first, or a ValidationException error will be thrown.
    #       </p>
    #
    #             <p>Due to the nature of distributed retries,
    #          the operation can return either success or a ResourceNotFoundException. Clients should consider them equivalent.</p>
    #          </note>
    #
    #          <p>See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-db.html">code sample</a> for details.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatabaseInput}.
    #
    # @option params [String] :database_name
    #   <p>The name of the Timestream database to be deleted.</p>
    #
    # @return [Types::DeleteDatabaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_database(
    #     database_name: 'DatabaseName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatabaseOutput
    #
    def delete_database(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDatabaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDatabaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDatabase
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException]),
        data_parser: Parsers::DeleteDatabase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDatabase,
        stubs: @stubs,
        params_class: Params::DeleteDatabaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_database
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a given Timestream table. This is an irreversible operation.
    #        After a Timestream database table is deleted, the time series data stored in
    #        the table cannot be recovered.
    #        </p>
    #          <note>
    #             <p>Due to the nature of distributed retries,
    #          the operation can return either success or a ResourceNotFoundException. Clients should consider them equivalent.</p>
    #          </note>
    #          <p>See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-table.html">code sample</a> for details.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTableInput}.
    #
    # @option params [String] :database_name
    #   <p>The name of the database where the Timestream database is to be deleted.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the Timestream table to be deleted.</p>
    #
    # @return [Types::DeleteTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table(
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTableOutput
    #
    def delete_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException]),
        data_parser: Parsers::DeleteTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTable,
        stubs: @stubs,
        params_class: Params::DeleteTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the database, including the database name, time that the database was created,
    #          and the total number of tables found within the database.
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>. See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-db.html">code sample</a> for details.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatabaseInput}.
    #
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    #
    # @return [Types::DescribeDatabaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_database(
    #     database_name: 'DatabaseName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatabaseOutput
    #   resp.data.database #=> Types::Database
    #   resp.data.database.arn #=> String
    #   resp.data.database.database_name #=> String
    #   resp.data.database.table_count #=> Integer
    #   resp.data.database.kms_key_id #=> String
    #   resp.data.database.creation_time #=> Time
    #   resp.data.database.last_updated_time #=> Time
    #
    def describe_database(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDatabaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDatabaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDatabase
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException]),
        data_parser: Parsers::DescribeDatabase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDatabase,
        stubs: @stubs,
        params_class: Params::DescribeDatabaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_database
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>DescribeEndpoints returns a list of available endpoints to make Timestream API calls against.
    #          This API is available through both Write and Query.</p>
    #          <p>Because the Timestream SDKs are designed to transparently work with the service’s architecture,
    #          including the management and mapping of the service endpoints,
    #          <i>it is not recommended that you use this API unless</i>:</p>
    #          <ul>
    #             <li>
    #                <p>You are using <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints">VPC endpoints (Amazon Web Services PrivateLink) with Timestream</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Your application uses a programming language that does not yet have SDK support</p>
    #             </li>
    #             <li>
    #                <p>You require better control over the client-side implementation</p>
    #             </li>
    #          </ul>
    #          <p>For detailed information on how and when to use and implement DescribeEndpoints,
    #          see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery">The Endpoint Discovery Pattern</a>.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Returns information about the table, including the table name, database name,
    #       retention duration of the memory store and the magnetic store.
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>. See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-table.html">code sample</a> for details.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTableInput}.
    #
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the Timestream table.</p>
    #
    # @return [Types::DescribeTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table(
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTableOutput
    #   resp.data.table #=> Types::Table
    #   resp.data.table.arn #=> String
    #   resp.data.table.table_name #=> String
    #   resp.data.table.database_name #=> String
    #   resp.data.table.table_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.table.retention_properties #=> Types::RetentionProperties
    #   resp.data.table.retention_properties.memory_store_retention_period_in_hours #=> Integer
    #   resp.data.table.retention_properties.magnetic_store_retention_period_in_days #=> Integer
    #   resp.data.table.creation_time #=> Time
    #   resp.data.table.last_updated_time #=> Time
    #   resp.data.table.magnetic_store_write_properties #=> Types::MagneticStoreWriteProperties
    #   resp.data.table.magnetic_store_write_properties.enable_magnetic_store_writes #=> Boolean
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location #=> Types::MagneticStoreRejectedDataLocation
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration #=> Types::S3Configuration
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.bucket_name #=> String
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.object_key_prefix #=> String
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.encryption_option #=> String, one of ["SSE_S3", "SSE_KMS"]
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.kms_key_id #=> String
    #
    def describe_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException]),
        data_parser: Parsers::DescribeTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTable,
        stubs: @stubs,
        params_class: Params::DescribeTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of your Timestream databases.
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>. See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-db.html">code sample</a> for details.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListDatabasesInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #
    # @return [Types::ListDatabasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_databases(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatabasesOutput
    #   resp.data.databases #=> Array<Database>
    #   resp.data.databases[0] #=> Types::Database
    #   resp.data.databases[0].arn #=> String
    #   resp.data.databases[0].database_name #=> String
    #   resp.data.databases[0].table_count #=> Integer
    #   resp.data.databases[0].kms_key_id #=> String
    #   resp.data.databases[0].creation_time #=> Time
    #   resp.data.databases[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_databases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatabasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatabasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatabases
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException]),
        data_parser: Parsers::ListDatabases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatabases,
        stubs: @stubs,
        params_class: Params::ListDatabasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_databases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A list of tables, along with the name, status and retention properties of each table.
    #          See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-table.html">code sample</a> for details.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListTablesInput}.
    #
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #
    # @return [Types::ListTablesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables(
    #     database_name: 'DatabaseName',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTablesOutput
    #   resp.data.tables #=> Array<Table>
    #   resp.data.tables[0] #=> Types::Table
    #   resp.data.tables[0].arn #=> String
    #   resp.data.tables[0].table_name #=> String
    #   resp.data.tables[0].database_name #=> String
    #   resp.data.tables[0].table_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.tables[0].retention_properties #=> Types::RetentionProperties
    #   resp.data.tables[0].retention_properties.memory_store_retention_period_in_hours #=> Integer
    #   resp.data.tables[0].retention_properties.magnetic_store_retention_period_in_days #=> Integer
    #   resp.data.tables[0].creation_time #=> Time
    #   resp.data.tables[0].last_updated_time #=> Time
    #   resp.data.tables[0].magnetic_store_write_properties #=> Types::MagneticStoreWriteProperties
    #   resp.data.tables[0].magnetic_store_write_properties.enable_magnetic_store_writes #=> Boolean
    #   resp.data.tables[0].magnetic_store_write_properties.magnetic_store_rejected_data_location #=> Types::MagneticStoreRejectedDataLocation
    #   resp.data.tables[0].magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration #=> Types::S3Configuration
    #   resp.data.tables[0].magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.bucket_name #=> String
    #   resp.data.tables[0].magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.object_key_prefix #=> String
    #   resp.data.tables[0].magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.encryption_option #=> String, one of ["SSE_S3", "SSE_KMS"]
    #   resp.data.tables[0].magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.kms_key_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_tables(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTablesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTablesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTables
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException]),
        data_parser: Parsers::ListTables
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTables,
        stubs: @stubs,
        params_class: Params::ListTablesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tables
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # List all tags on a Timestream resource.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #   The Timestream resource with tags to be listed. This value is an Amazon Resource Name (ARN).
    #   </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException]),
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

    # <p>
    #     Associate a set of tags with a Timestream resource. You can then activate
    #     these user-defined tags so that they appear on the Billing and Cost
    #     Management console for cost allocation tracking.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #       Identifies the Timestream resource to which tags should be added. This value is an
    #       Amazon Resource Name (ARN).
    #   </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>
    #   The tags to be assigned to the Timestream resource.
    #   </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException, Errors::ServiceQuotaExceededException]),
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

    # <p>
    #     Removes the association of tags from a Timestream resource.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #       The Timestream resource that the tags will be removed from. This value
    #       is an Amazon Resource Name (ARN).
    #   </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>
    #       A list of tags keys. Existing tags of the resource whose keys are members of this
    #       list will be removed from the Timestream resource.
    #   </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException, Errors::ServiceQuotaExceededException]),
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

    # <p>
    #     Modifies the KMS key for an existing database. While updating the database,
    #     you must specify the database name and the identifier of the new KMS key to be used (<code>KmsKeyId</code>).
    #     If there are any concurrent <code>UpdateDatabase</code> requests, first writer wins.
    #    </p>
    #          <p>See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-db.html">code sample</a> for details.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDatabaseInput}.
    #
    # @option params [String] :database_name
    #   <p>
    #        The name of the database.
    #      </p>
    #
    # @option params [String] :kms_key_id
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
    # @return [Types::UpdateDatabaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_database(
    #     database_name: 'DatabaseName', # required
    #     kms_key_id: 'KmsKeyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDatabaseOutput
    #   resp.data.database #=> Types::Database
    #   resp.data.database.arn #=> String
    #   resp.data.database.database_name #=> String
    #   resp.data.database.table_count #=> Integer
    #   resp.data.database.kms_key_id #=> String
    #   resp.data.database.creation_time #=> Time
    #   resp.data.database.last_updated_time #=> Time
    #
    def update_database(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDatabaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDatabaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDatabase
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateDatabase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDatabase,
        stubs: @stubs,
        params_class: Params::UpdateDatabaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_database
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the retention duration of the memory store and magnetic store for your Timestream table.
    #          Note that the change in retention duration takes effect immediately.
    #          For example, if the retention period of the memory store was initially set to 2 hours and then changed to 24 hours,
    #          the memory store will be capable of holding 24 hours of data, but will
    #          be populated with 24 hours of data 22 hours after this change was made.
    #          Timestream does not retrieve data from the magnetic store to populate the memory store. </p>
    #          <p>See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-table.html">code sample</a> for details.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTableInput}.
    #
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the Timestream table.</p>
    #
    # @option params [RetentionProperties] :retention_properties
    #   <p>The retention duration of the memory store and the magnetic store.</p>
    #
    # @option params [MagneticStoreWriteProperties] :magnetic_store_write_properties
    #   <p>Contains properties to set on the table when enabling magnetic store writes.</p>
    #
    # @return [Types::UpdateTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table(
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName', # required
    #     retention_properties: {
    #       memory_store_retention_period_in_hours: 1, # required
    #       magnetic_store_retention_period_in_days: 1 # required
    #     },
    #     magnetic_store_write_properties: {
    #       enable_magnetic_store_writes: false, # required
    #       magnetic_store_rejected_data_location: {
    #         s3_configuration: {
    #           bucket_name: 'BucketName',
    #           object_key_prefix: 'ObjectKeyPrefix',
    #           encryption_option: 'SSE_S3', # accepts ["SSE_S3", "SSE_KMS"]
    #           kms_key_id: 'KmsKeyId'
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTableOutput
    #   resp.data.table #=> Types::Table
    #   resp.data.table.arn #=> String
    #   resp.data.table.table_name #=> String
    #   resp.data.table.database_name #=> String
    #   resp.data.table.table_status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.table.retention_properties #=> Types::RetentionProperties
    #   resp.data.table.retention_properties.memory_store_retention_period_in_hours #=> Integer
    #   resp.data.table.retention_properties.magnetic_store_retention_period_in_days #=> Integer
    #   resp.data.table.creation_time #=> Time
    #   resp.data.table.last_updated_time #=> Time
    #   resp.data.table.magnetic_store_write_properties #=> Types::MagneticStoreWriteProperties
    #   resp.data.table.magnetic_store_write_properties.enable_magnetic_store_writes #=> Boolean
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location #=> Types::MagneticStoreRejectedDataLocation
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration #=> Types::S3Configuration
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.bucket_name #=> String
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.object_key_prefix #=> String
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.encryption_option #=> String, one of ["SSE_S3", "SSE_KMS"]
    #   resp.data.table.magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration.kms_key_id #=> String
    #
    def update_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException]),
        data_parser: Parsers::UpdateTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTable,
        stubs: @stubs,
        params_class: Params::UpdateTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The WriteRecords operation enables you to write your time series
    #       data into Timestream. You can specify a single data point or a batch
    #       of data points to be inserted into the system. Timestream offers you
    #       with a flexible schema that auto detects the column names and data types
    #       for your Timestream tables based on the dimension names and data types of
    #       the data points you specify when invoking writes into the database.
    #       Timestream support eventual consistency read semantics. This means that
    #       when you query data immediately after writing a batch of data into Timestream,
    #       the query results might not reflect the results of a recently completed write
    #       operation. The results may also include some stale data. If you repeat the
    #       query request after a short time, the results should return the latest data.
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>.
    #         </p>
    #
    #          <p>See
    #          <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.write.html">code sample</a> for details.</p>
    #
    #          <p>
    #             <b>Upserts</b>
    #          </p>
    #
    #          <p>You can use the <code>Version</code> parameter in a <code>WriteRecords</code> request to update data points.
    #          Timestream tracks a version number with each record. <code>Version</code> defaults to <code>1</code> when not specified for the record in the request.
    #          Timestream will update an existing record’s measure value along with its <code>Version</code> upon receiving a write request with a higher
    #          <code>Version</code> number for that record.
    #          Upon receiving an update request where the measure value is the same as that of the existing record,
    #          Timestream still updates <code>Version</code>, if it is greater than the existing value of <code>Version</code>.
    #          You can update a data point as many times as desired, as long as the value of <code>Version</code> continuously increases.
    #       </p>
    #          <p>
    #          For example, suppose you write a new record without indicating <code>Version</code> in the request.
    #          Timestream will store this record, and set <code>Version</code> to <code>1</code>.
    #          Now, suppose you try to update this record with a <code>WriteRecords</code> request of the same record with a different measure value but,
    #          like before, do not provide <code>Version</code>.
    #          In this case, Timestream will reject this update with a <code>RejectedRecordsException</code> since the updated record’s version is not greater than the existing value of Version.
    #          However, if you were to resend the update request with <code>Version</code> set to <code>2</code>,
    #          Timestream would then succeed in updating the record’s value,
    #          and the <code>Version</code> would be set to <code>2</code>.
    #          Next, suppose you sent a <code>WriteRecords</code> request with this same record and an identical measure value,
    #          but with <code>Version</code> set to <code>3</code>.
    #          In this case, Timestream would only update <code>Version</code> to <code>3</code>.
    #          Any further updates would need to send a version number greater than <code>3</code>,
    #          or the update requests would receive a <code>RejectedRecordsException</code>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::WriteRecordsInput}.
    #
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the Timestream table.</p>
    #
    # @option params [Record] :common_attributes
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
    # @option params [Array<Record>] :records
    #   <p>An array of records containing the unique measure, dimension, time, and version
    #          attributes for each time series data point.
    #          </p>
    #
    # @return [Types::WriteRecordsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.write_records(
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName', # required
    #     common_attributes: {
    #       dimensions: [
    #         {
    #           name: 'Name', # required
    #           value: 'Value', # required
    #           dimension_value_type: 'VARCHAR' # accepts ["VARCHAR"]
    #         }
    #       ],
    #       measure_name: 'MeasureName',
    #       measure_value: 'MeasureValue',
    #       measure_value_type: 'DOUBLE', # accepts ["DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP", "MULTI"]
    #       time: 'Time',
    #       time_unit: 'MILLISECONDS', # accepts ["MILLISECONDS", "SECONDS", "MICROSECONDS", "NANOSECONDS"]
    #       version: 1,
    #       measure_values: [
    #         {
    #           name: 'Name', # required
    #           value: 'Value', # required
    #           type: 'DOUBLE' # required - accepts ["DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP", "MULTI"]
    #         }
    #       ]
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::WriteRecordsOutput
    #   resp.data.records_ingested #=> Types::RecordsIngested
    #   resp.data.records_ingested.total #=> Integer
    #   resp.data.records_ingested.memory_store #=> Integer
    #   resp.data.records_ingested.magnetic_store #=> Integer
    #
    def write_records(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::WriteRecordsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::WriteRecordsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::WriteRecords
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RejectedRecordsException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InvalidEndpointException]),
        data_parser: Parsers::WriteRecords
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::WriteRecords,
        stubs: @stubs,
        params_class: Params::WriteRecordsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :write_records
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
