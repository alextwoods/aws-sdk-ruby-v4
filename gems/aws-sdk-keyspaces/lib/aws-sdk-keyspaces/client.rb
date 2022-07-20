# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Keyspaces
  # An API client for KeyspacesService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Keyspaces (for Apache Cassandra) is a scalable,
  #         highly available, and managed Apache Cassandra-compatible database service. Amazon Keyspaces makes it easy to migrate,
  #         run, and scale Cassandra workloads in the Amazon Web Services Cloud. With just a few clicks on the Amazon Web Services Management Console or a few lines of code,
  #         you can create keyspaces and tables in Amazon Keyspaces, without deploying any infrastructure or installing software. </p>
  #          <p>In addition to supporting Cassandra Query Language (CQL) requests via open-source Cassandra drivers,
  #         Amazon Keyspaces supports data definition language (DDL) operations to manage keyspaces and tables using the Amazon Web Services SDK and CLI. This API reference describes
  #         the supported DDL operations in detail.</p>
  #          <p>For the list of all supported CQL APIs, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html">Supported Cassandra APIs, operations, and data types
  #         in Amazon Keyspaces</a> in the <i>Amazon Keyspaces Developer
  #               Guide</i>.</p>
  #          <p>To learn how Amazon Keyspaces API actions are recorded with CloudTrail, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail">Amazon Keyspaces information in CloudTrail</a> in the <i>Amazon Keyspaces Developer
  #             Guide</i>.</p>
  #          <p>For more information about Amazon Web Services APIs, for example how to implement retry logic or how to sign Amazon Web Services API requests, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-apis.html">Amazon Web Services APIs</a> in the <i>General Reference</i>.</p>
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
    def initialize(config = AWS::SDK::Keyspaces::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>The <code>CreateKeyspace</code> operation adds a new keyspace to your account. In an Amazon Web Services account, keyspace names
    #       must be unique within each Region.</p>
    #          <p>
    #             <code>CreateKeyspace</code> is an asynchronous operation. You can monitor the creation status of the new keyspace
    #           by using the <code>GetKeyspace</code> operation.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-keyspaces.html#keyspaces-create">Creating keyspaces</a> in the <i>Amazon Keyspaces Developer
    #              Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateKeyspaceInput}.
    #
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace to be created.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of key-value pair tags to be attached to the keyspace.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @return [Types::CreateKeyspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_keyspace(
    #     keyspace_name: 'keyspaceName', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateKeyspaceOutput
    #   resp.data.resource_arn #=> String
    #
    def create_keyspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateKeyspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateKeyspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateKeyspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateKeyspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateKeyspace,
        stubs: @stubs,
        params_class: Params::CreateKeyspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_keyspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>CreateTable</code> operation adds a new table to the specified keyspace. Within a keyspace, table names
    #          must be unique.</p>
    #          <p>
    #             <code>CreateTable</code> is an asynchronous operation. When the request is received, the status of the table is set to <code>CREATING</code>.
    #          You can monitor the creation status of the new table by using the <code>GetTable</code>
    #          operation, which returns the current <code>status</code> of the table. You can start using a table when the status is <code>ACTIVE</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-tables.html#tables-create">Creating tables</a> in the <i>Amazon Keyspaces Developer
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTableInput}.
    #
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace that the table is going to be created in.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    #
    # @option params [SchemaDefinition] :schema_definition
    #   <p>The <code>schemaDefinition</code> consists of the
    #            following parameters.</p>
    #            <p>For each column to be created:</p>
    #            <p>• <code>name</code>  -  The name
    #                              of the column.</p>
    #            <p>• <code>type</code>  -  An Amazon Keyspaces
    #                              data type. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types">Data types</a> in the <i>Amazon Keyspaces Developer
    #                                    Guide</i>.</p>
    #            <p>The primary key of the table consists of the
    #                        following columns:</p>
    #            <p>• <code>partitionKeys</code> - The partition key can be a single column, or it can be a
    #                              compound value composed of two or more columns. The partition
    #                              key portion of the primary key is required and determines how
    #                              Amazon Keyspaces stores your data.</p>
    #            <p>• <code>name</code> - The name of each partition key column.</p>
    #            <p>• <code>clusteringKeys</code> - The optional clustering column portion of your primary key
    #                              determines how the data is clustered and sorted within each
    #                              partition.</p>
    #            <p>• <code>name</code> - The name of the clustering column. </p>
    #            <p>• <code>orderBy</code> - Sets the
    #                                    ascendant (<code>ASC</code>) or descendant (<code>DESC</code>) order modifier.</p>
    #            <p>To define a column as static use <code>staticColumns</code>  -
    #            Static columns store values that are shared by all rows in the same partition:</p>
    #            <p>• <code>name</code>  -  The name
    #                  of the column.</p>
    #            <p>• <code>type</code>  -  An Amazon Keyspaces
    #                  data type.</p>
    #
    # @option params [Comment] :comment
    #   <p>This parameter allows to enter a description of the table.</p>
    #
    # @option params [CapacitySpecification] :capacity_specification
    #   <p>Specifies the read/write throughput capacity mode for the table. The options are:</p>
    #            <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
    #            <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
    #                     <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
    #            <p>The default is
    #            <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [EncryptionSpecification] :encryption_specification
    #   <p>Specifies how the encryption key for encryption at rest is managed for the table.
    #            You can choose one of the following KMS key (KMS key):</p>
    #            <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>
    #            <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you.
    #                  This option
    #                  requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input.</p>
    #            <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [PointInTimeRecovery] :point_in_time_recovery
    #   <p>Specifies if <code>pointInTimeRecovery</code> is enabled or disabled for the
    #               table. The options are:</p>
    #            <p>• <code>ENABLED</code>
    #            </p>
    #            <p>• <code>DISABLED</code>
    #            </p>
    #            <p>If it's not specified, the
    #                  default is <code>DISABLED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [TimeToLive] :ttl
    #   <p>Enables Time to Live custom settings for the
    #               table. The options are:</p>
    #            <p>• <code>status:enabled</code>
    #            </p>
    #            <p>• <code>status:disabled</code>
    #            </p>
    #            <p>The default is <code>status:disabled</code>. After
    #               <code>ttl</code> is enabled, you can't disable it
    #               for the table.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [Integer] :default_time_to_live
    #   <p>The default Time to Live setting in seconds for the
    #            table.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of key-value pair tags to be
    #            attached to the resource. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @return [Types::CreateTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table(
    #     keyspace_name: 'keyspaceName', # required
    #     table_name: 'tableName', # required
    #     schema_definition: {
    #       all_columns: [
    #         {
    #           name: 'name', # required
    #           type: 'type' # required
    #         }
    #       ], # required
    #       partition_keys: [
    #         {
    #           name: 'name' # required
    #         }
    #       ], # required
    #       clustering_keys: [
    #         {
    #           name: 'name', # required
    #           order_by: 'ASC' # required - accepts ["ASC", "DESC"]
    #         }
    #       ],
    #       static_columns: [
    #         {
    #           name: 'name' # required
    #         }
    #       ]
    #     }, # required
    #     comment: {
    #       message: 'message' # required
    #     },
    #     capacity_specification: {
    #       throughput_mode: 'PAY_PER_REQUEST', # required - accepts ["PAY_PER_REQUEST", "PROVISIONED"]
    #       read_capacity_units: 1,
    #       write_capacity_units: 1
    #     },
    #     encryption_specification: {
    #       type: 'CUSTOMER_MANAGED_KMS_KEY', # required - accepts ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"]
    #       kms_key_identifier: 'kmsKeyIdentifier'
    #     },
    #     point_in_time_recovery: {
    #       status: 'ENABLED' # required - accepts ["ENABLED", "DISABLED"]
    #     },
    #     ttl: {
    #       status: 'ENABLED' # required - accepts ["ENABLED"]
    #     },
    #     default_time_to_live: 1,
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTableOutput
    #   resp.data.resource_arn #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
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

    # <p>The <code>DeleteKeyspace</code> operation deletes a keyspace and all of its tables. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteKeyspaceInput}.
    #
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace to be deleted.</p>
    #
    # @return [Types::DeleteKeyspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_keyspace(
    #     keyspace_name: 'keyspaceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteKeyspaceOutput
    #
    def delete_keyspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteKeyspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteKeyspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteKeyspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteKeyspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteKeyspace,
        stubs: @stubs,
        params_class: Params::DeleteKeyspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_keyspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>DeleteTable</code> operation deletes a table and all of its data. After a <code>DeleteTable</code> request is received,
    #          the specified table is in the <code>DELETING</code> state until Amazon Keyspaces completes the deletion. If the table
    #          is in the <code>ACTIVE</code> state, you can delete it. If a table is either in the <code>CREATING</code> or <code>UPDATING</code> states, then
    #          Amazon Keyspaces returns a <code>ResourceInUseException</code>. If the specified table does not exist, Amazon Keyspaces returns
    #          a <code>ResourceNotFoundException</code>. If the table is already in the <code>DELETING</code> state, no error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTableInput}.
    #
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace of the to be deleted table.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the table to be deleted.</p>
    #
    # @return [Types::DeleteTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table(
    #     keyspace_name: 'keyspaceName', # required
    #     table_name: 'tableName' # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
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

    # <p>Returns the name and the Amazon Resource Name (ARN) of the specified table.</p>
    #
    # @param [Hash] params
    #   See {Types::GetKeyspaceInput}.
    #
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace.</p>
    #
    # @return [Types::GetKeyspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_keyspace(
    #     keyspace_name: 'keyspaceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetKeyspaceOutput
    #   resp.data.keyspace_name #=> String
    #   resp.data.resource_arn #=> String
    #
    def get_keyspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetKeyspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetKeyspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetKeyspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetKeyspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetKeyspace,
        stubs: @stubs,
        params_class: Params::GetKeyspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_keyspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the table, including the table's name and current status, the keyspace name,
    #          configuration settings, and metadata.</p>
    #          <p>To read table metadata using <code>GetTable</code>, <code>Select</code> action
    #          permissions for the table and system tables are required to complete the operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTableInput}.
    #
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace that the table is stored in.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    #
    # @return [Types::GetTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table(
    #     keyspace_name: 'keyspaceName', # required
    #     table_name: 'tableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTableOutput
    #   resp.data.keyspace_name #=> String
    #   resp.data.table_name #=> String
    #   resp.data.resource_arn #=> String
    #   resp.data.creation_timestamp #=> Time
    #   resp.data.status #=> String, one of ["ACTIVE", "CREATING", "UPDATING", "DELETING", "DELETED", "RESTORING", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.schema_definition #=> Types::SchemaDefinition
    #   resp.data.schema_definition.all_columns #=> Array<ColumnDefinition>
    #   resp.data.schema_definition.all_columns[0] #=> Types::ColumnDefinition
    #   resp.data.schema_definition.all_columns[0].name #=> String
    #   resp.data.schema_definition.all_columns[0].type #=> String
    #   resp.data.schema_definition.partition_keys #=> Array<PartitionKey>
    #   resp.data.schema_definition.partition_keys[0] #=> Types::PartitionKey
    #   resp.data.schema_definition.partition_keys[0].name #=> String
    #   resp.data.schema_definition.clustering_keys #=> Array<ClusteringKey>
    #   resp.data.schema_definition.clustering_keys[0] #=> Types::ClusteringKey
    #   resp.data.schema_definition.clustering_keys[0].name #=> String
    #   resp.data.schema_definition.clustering_keys[0].order_by #=> String, one of ["ASC", "DESC"]
    #   resp.data.schema_definition.static_columns #=> Array<StaticColumn>
    #   resp.data.schema_definition.static_columns[0] #=> Types::StaticColumn
    #   resp.data.schema_definition.static_columns[0].name #=> String
    #   resp.data.capacity_specification #=> Types::CapacitySpecificationSummary
    #   resp.data.capacity_specification.throughput_mode #=> String, one of ["PAY_PER_REQUEST", "PROVISIONED"]
    #   resp.data.capacity_specification.read_capacity_units #=> Integer
    #   resp.data.capacity_specification.write_capacity_units #=> Integer
    #   resp.data.capacity_specification.last_update_to_pay_per_request_timestamp #=> Time
    #   resp.data.encryption_specification #=> Types::EncryptionSpecification
    #   resp.data.encryption_specification.type #=> String, one of ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"]
    #   resp.data.encryption_specification.kms_key_identifier #=> String
    #   resp.data.point_in_time_recovery #=> Types::PointInTimeRecoverySummary
    #   resp.data.point_in_time_recovery.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.point_in_time_recovery.earliest_restorable_timestamp #=> Time
    #   resp.data.ttl #=> Types::TimeToLive
    #   resp.data.ttl.status #=> String, one of ["ENABLED"]
    #   resp.data.default_time_to_live #=> Integer
    #   resp.data.comment #=> Types::Comment
    #   resp.data.comment.message #=> String
    #
    def get_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTable,
        stubs: @stubs,
        params_class: Params::GetTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of keyspaces.</p>
    #
    # @param [Hash] params
    #   See {Types::ListKeyspacesInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of keyspaces to return in the output. If the total number of keyspaces available
    #            is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination,
    #            provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #
    # @return [Types::ListKeyspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_keyspaces(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListKeyspacesOutput
    #   resp.data.next_token #=> String
    #   resp.data.keyspaces #=> Array<KeyspaceSummary>
    #   resp.data.keyspaces[0] #=> Types::KeyspaceSummary
    #   resp.data.keyspaces[0].keyspace_name #=> String
    #   resp.data.keyspaces[0].resource_arn #=> String
    #
    def list_keyspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListKeyspacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListKeyspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListKeyspaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListKeyspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListKeyspaces,
        stubs: @stubs,
        params_class: Params::ListKeyspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_keyspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tables for a specified keyspace.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTablesInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of tables to return in the output. If the total number of tables available
    #            is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination,
    #            provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace.</p>
    #
    # @return [Types::ListTablesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     keyspace_name: 'keyspaceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTablesOutput
    #   resp.data.next_token #=> String
    #   resp.data.tables #=> Array<TableSummary>
    #   resp.data.tables[0] #=> Types::TableSummary
    #   resp.data.tables[0].keyspace_name #=> String
    #   resp.data.tables[0].table_name #=> String
    #   resp.data.tables[0].resource_arn #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
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

    # <p>Returns a list of all tags associated with the specified Amazon Keyspaces resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of tags to return in the output. If the total number of tags available
    #            is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination,
    #            provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.next_token #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
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

    # <p>Restores the specified table to the specified point in time within the
    #          <code>earliest_restorable_timestamp</code> and the current time. For more information about restore points, see
    #          <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_window">
    #             Time window for PITR continuous backups</a> in the <i>Amazon Keyspaces Developer Guide</i>.
    #       </p>
    #          <p>Any number of users can execute up to 4 concurrent restores (any type of restore) in a given account.</p>
    #          <p>When you restore using point in time recovery,
    #          Amazon Keyspaces restores your source table's schema and data to the state
    #          based on the selected timestamp <code>(day:hour:minute:second)</code> to a new table. The Time to Live (TTL) settings
    #       are also restored to the state based on the selected timestamp.</p>
    #          <p>In addition to the table's schema, data, and TTL settings,
    #          <code>RestoreTable</code> restores the capacity mode, encryption, and
    #          point-in-time recovery settings from the source table.
    #          Unlike the table's schema data and TTL settings, which are restored based on the selected timestamp,
    #          these settings are always restored based on the table's settings as of the current time or when the table was deleted.</p>
    #          <p>You can also overwrite
    #             these settings during restore:</p>
    #          <p>• Read/write capacity mode</p>
    #          <p>• Provisioned throughput capacity settings</p>
    #          <p>• Point-in-time (PITR) settings</p>
    #          <p>• Tags</p>
    #          <p>For more
    #                information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_settings">PITR restore settings</a> in the <i>Amazon Keyspaces Developer
    #             Guide</i>.</p>
    #          <p>Note that the following settings are not restored, and you must configure them manually for
    #          the new table:</p>
    #          <p>• Automatic scaling policies (for tables that use provisioned capacity
    #                mode)</p>
    #          <p>• Identity and Access Management (IAM) policies</p>
    #          <p>• Amazon CloudWatch metrics and alarms</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreTableInput}.
    #
    # @option params [String] :source_keyspace_name
    #   <p>The keyspace name of the source table.</p>
    #
    # @option params [String] :source_table_name
    #   <p>The name of the source table.</p>
    #
    # @option params [String] :target_keyspace_name
    #   <p>The name of the target keyspace.</p>
    #
    # @option params [String] :target_table_name
    #   <p>The name of the target table.</p>
    #
    # @option params [Time] :restore_timestamp
    #   <p>The restore timestamp in ISO 8601 format.</p>
    #
    # @option params [CapacitySpecification] :capacity_specification_override
    #   <p>Specifies the read/write throughput capacity mode for the target table. The options are:</p>
    #            <p>• <code>throughputMode:PAY_PER_REQUEST</code>
    #            </p>
    #            <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
    #               <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
    #            <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [EncryptionSpecification] :encryption_specification_override
    #   <p>Specifies the encryption settings for the target table. You can choose one of the following KMS key (KMS key):</p>
    #            <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>
    #            <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you.
    #                  This option
    #                  requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p>
    #            <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [PointInTimeRecovery] :point_in_time_recovery_override
    #   <p>Specifies the <code>pointInTimeRecovery</code> settings for the target
    #               table. The options are:</p>
    #            <p>• <code>ENABLED</code>
    #            </p>
    #            <p>• <code>DISABLED</code>
    #            </p>
    #            <p>If it's not specified, the default is <code>DISABLED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
    #                  Guide</i>.</p>
    #
    # @option params [Array<Tag>] :tags_override
    #   <p>A list of key-value pair tags to be
    #            attached to the restored table. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @return [Types::RestoreTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table(
    #     source_keyspace_name: 'sourceKeyspaceName', # required
    #     source_table_name: 'sourceTableName', # required
    #     target_keyspace_name: 'targetKeyspaceName', # required
    #     target_table_name: 'targetTableName', # required
    #     restore_timestamp: Time.now,
    #     capacity_specification_override: {
    #       throughput_mode: 'PAY_PER_REQUEST', # required - accepts ["PAY_PER_REQUEST", "PROVISIONED"]
    #       read_capacity_units: 1,
    #       write_capacity_units: 1
    #     },
    #     encryption_specification_override: {
    #       type: 'CUSTOMER_MANAGED_KMS_KEY', # required - accepts ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"]
    #       kms_key_identifier: 'kmsKeyIdentifier'
    #     },
    #     point_in_time_recovery_override: {
    #       status: 'ENABLED' # required - accepts ["ENABLED", "DISABLED"]
    #     },
    #     tags_override: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreTableOutput
    #   resp.data.restored_table_arn #=> String
    #
    def restore_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::RestoreTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreTable,
        stubs: @stubs,
        params_class: Params::RestoreTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a set of tags with a Amazon Keyspaces resource. You can then
    #          activate these user-defined tags so that they appear on the Cost Management Console for cost allocation tracking.
    #       For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
    #             Guide</i>.</p>
    #          <p>For IAM policy examples that show how to control access to Amazon Keyspaces resources based on tags,
    #          see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/security_iam_id-based-policy-examples-tags">Amazon Keyspaces resource access based on tags</a>
    #          in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource to which to add tags.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the Amazon Keyspaces resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
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

    # <p>Removes the association of tags from a Amazon Keyspaces resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Keyspaces resource that the tags will be removed from. This value is an Amazon Resource Name (ARN).</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of existing tags to be removed from the Amazon Keyspaces resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
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

    # <p>Adds new columns to the table or updates one of the table's settings, for example
    #          capacity mode, encryption, point-in-time recovery, or ttl settings.
    #       Note that you can only update one specific table setting per update operation.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTableInput}.
    #
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace the specified table is stored in.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    #
    # @option params [Array<ColumnDefinition>] :add_columns
    #   <p>For each column to be added to the specified table:</p>
    #            <p>• <code>name</code>  -  The name
    #                  of the column.</p>
    #            <p>• <code>type</code>  -  An Amazon Keyspaces
    #                  data type. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types">Data types</a> in the <i>Amazon Keyspaces Developer
    #                        Guide</i>.</p>
    #
    # @option params [CapacitySpecification] :capacity_specification
    #   <p>Modifies the read/write throughput capacity mode for the table. The options are:</p>
    #            <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
    #            <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
    #                  <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
    #            <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [EncryptionSpecification] :encryption_specification
    #   <p>Modifies the encryption settings of the table. You can choose one of the following KMS key (KMS key):</p>
    #            <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>
    #            <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you.
    #                  This option
    #                  requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p>
    #            <p>The default is <code>AWS_OWNED_KMS_KEY</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [PointInTimeRecovery] :point_in_time_recovery
    #   <p>Modifies the <code>pointInTimeRecovery</code> settings of the table. The options are:</p>
    #            <p>• <code>ENABLED</code>
    #            </p>
    #            <p>• <code>DISABLED</code>
    #            </p>
    #            <p>If it's not specified, the default is <code>DISABLED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [TimeToLive] :ttl
    #   <p>Modifies Time to Live custom settings for the table. The options are:</p>
    #            <p>• <code>status:enabled</code>
    #            </p>
    #            <p>• <code>status:disabled</code>
    #            </p>
    #            <p>The default is <code>status:disabled</code>. After
    #            <code>ttl</code> is enabled, you can't disable it
    #            for the table.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @option params [Integer] :default_time_to_live
    #   <p>The default Time to Live setting in seconds for the table.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer
    #               Guide</i>.</p>
    #
    # @return [Types::UpdateTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table(
    #     keyspace_name: 'keyspaceName', # required
    #     table_name: 'tableName', # required
    #     add_columns: [
    #       {
    #         name: 'name', # required
    #         type: 'type' # required
    #       }
    #     ],
    #     capacity_specification: {
    #       throughput_mode: 'PAY_PER_REQUEST', # required - accepts ["PAY_PER_REQUEST", "PROVISIONED"]
    #       read_capacity_units: 1,
    #       write_capacity_units: 1
    #     },
    #     encryption_specification: {
    #       type: 'CUSTOMER_MANAGED_KMS_KEY', # required - accepts ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"]
    #       kms_key_identifier: 'kmsKeyIdentifier'
    #     },
    #     point_in_time_recovery: {
    #       status: 'ENABLED' # required - accepts ["ENABLED", "DISABLED"]
    #     },
    #     ttl: {
    #       status: 'ENABLED' # required - accepts ["ENABLED"]
    #     },
    #     default_time_to_live: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTableOutput
    #   resp.data.resource_arn #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
