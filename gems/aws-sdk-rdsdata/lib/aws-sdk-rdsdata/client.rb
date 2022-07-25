# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::RDSData
  # An API client for RdsDataService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon RDS Data Service</fullname>
  #         <p>Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon Aurora
  #             Serverless DB cluster. To run these statements, you work with the Data Service
  #             API.</p>
  #         <p>For more information about the Data Service API, see
  #           <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using the Data API</a>
  #           in the <i>Amazon Aurora User Guide</i>.</p>
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
    def initialize(config = AWS::SDK::RDSData::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Runs a batch SQL statement over an array of data.</p>
    #         <p>You can run bulk update and insert operations for multiple records using a DML
    #             statement with different parameter sets. Bulk operations can provide a significant
    #             performance improvement over individual insert and update operations.</p>
    #         <important>
    #             <p>If a call isn't part of a transaction because it doesn't include the
    #                     <code>transactionID</code> parameter, changes that result from the call are
    #                 committed automatically.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::BatchExecuteStatementInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #
    # @option params [String] :sql
    #   <p>The SQL statement to run.</p>
    #
    # @option params [String] :database
    #   <p>The name of the database.</p>
    #
    # @option params [String] :schema
    #   <p>The name of the database schema.</p>
    #
    # @option params [Array<Array<SqlParameter>>] :parameter_sets
    #   <p>The parameter set for the batch operation.</p>
    #           <p>The SQL statement is executed as many times as the number of parameter sets provided.
    #             To execute a SQL statement with no parameters, use one of the following options:</p>
    #           <ul>
    #               <li>
    #                   <p>Specify one or more empty parameter sets.</p>
    #               </li>
    #               <li>
    #                   <p>Use the <code>ExecuteStatement</code> operation instead of the <code>BatchExecuteStatement</code> operation.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Array parameters are not supported.</p>
    #           </note>
    #
    # @option params [String] :transaction_id
    #   <p>The identifier of a transaction that was started by using the
    #                   <code>BeginTransaction</code> operation. Specify the transaction ID of the
    #               transaction that you want to include the SQL statement in.</p>
    #           <p>If the SQL statement is not part of a transaction, don't set this
    #               parameter.</p>
    #
    # @return [Types::BatchExecuteStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_execute_statement(
    #     resource_arn: 'resourceArn', # required
    #     secret_arn: 'secretArn', # required
    #     sql: 'sql', # required
    #     database: 'database',
    #     schema: 'schema',
    #     parameter_sets: [
    #       [
    #         {
    #           name: 'name',
    #           value: {
    #             # One of:
    #             is_null: false,
    #             boolean_value: false,
    #             long_value: 1,
    #             double_value: 1.0,
    #             string_value: 'stringValue',
    #             blob_value: 'blobValue',
    #             array_value: {
    #               # One of:
    #               boolean_values: [
    #                 false
    #               ],
    #               long_values: [
    #                 1
    #               ],
    #               double_values: [
    #                 1.0
    #               ],
    #               string_values: [
    #                 'member'
    #               ],
    #             }
    #           },
    #           type_hint: 'JSON' # accepts ["JSON", "UUID", "TIMESTAMP", "DATE", "TIME", "DECIMAL"]
    #         }
    #       ]
    #     ],
    #     transaction_id: 'transactionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchExecuteStatementOutput
    #   resp.data.update_results #=> Array<UpdateResult>
    #   resp.data.update_results[0] #=> Types::UpdateResult
    #   resp.data.update_results[0].generated_fields #=> Array<Field>
    #   resp.data.update_results[0].generated_fields[0] #=> Types::Field, one of [IsNull, BooleanValue, LongValue, DoubleValue, StringValue, BlobValue, ArrayValue]
    #   resp.data.update_results[0].generated_fields[0].is_null #=> Boolean
    #   resp.data.update_results[0].generated_fields[0].boolean_value #=> Boolean
    #   resp.data.update_results[0].generated_fields[0].long_value #=> Integer
    #   resp.data.update_results[0].generated_fields[0].double_value #=> Float
    #   resp.data.update_results[0].generated_fields[0].string_value #=> String
    #   resp.data.update_results[0].generated_fields[0].blob_value #=> String
    #   resp.data.update_results[0].generated_fields[0].array_value #=> Types::ArrayValue, one of [BooleanValues, LongValues, DoubleValues, StringValues, ArrayValues]
    #   resp.data.update_results[0].generated_fields[0].array_value.boolean_values #=> Array<Boolean>
    #   resp.data.update_results[0].generated_fields[0].array_value.boolean_values[0] #=> Boolean
    #   resp.data.update_results[0].generated_fields[0].array_value.long_values #=> Array<Integer>
    #   resp.data.update_results[0].generated_fields[0].array_value.long_values[0] #=> Integer
    #   resp.data.update_results[0].generated_fields[0].array_value.double_values #=> Array<Float>
    #   resp.data.update_results[0].generated_fields[0].array_value.double_values[0] #=> Float
    #   resp.data.update_results[0].generated_fields[0].array_value.string_values #=> Array<String>
    #   resp.data.update_results[0].generated_fields[0].array_value.string_values[0] #=> String
    #   resp.data.update_results[0].generated_fields[0].array_value.array_values #=> Array<ArrayValue>
    #
    def batch_execute_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchExecuteStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchExecuteStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchExecuteStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableError, Errors::AccessDeniedException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::StatementTimeoutException]),
        data_parser: Parsers::BatchExecuteStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchExecuteStatement,
        stubs: @stubs,
        params_class: Params::BatchExecuteStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_execute_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a SQL transaction.</p>
    #
    #         <important>
    #             <p>A transaction can run for a maximum of 24 hours. A transaction is terminated and
    #                 rolled back automatically after 24 hours.</p>
    #             <p>A transaction times out if no calls use its transaction ID in three minutes.
    #                 If a transaction times out before it's committed, it's rolled back
    #                 automatically.</p>
    #             <p>DDL statements inside a transaction cause an implicit commit. We recommend
    #                 that you run each DDL statement in a separate <code>ExecuteStatement</code> call with
    #                 <code>continueAfterTimeout</code> enabled.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::BeginTransactionInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #
    # @option params [String] :database
    #   <p>The name of the database.</p>
    #
    # @option params [String] :schema
    #   <p>The name of the database schema.</p>
    #
    # @return [Types::BeginTransactionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.begin_transaction(
    #     resource_arn: 'resourceArn', # required
    #     secret_arn: 'secretArn', # required
    #     database: 'database',
    #     schema: 'schema'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BeginTransactionOutput
    #   resp.data.transaction_id #=> String
    #
    def begin_transaction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BeginTransactionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BeginTransactionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BeginTransaction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableError, Errors::AccessDeniedException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::StatementTimeoutException]),
        data_parser: Parsers::BeginTransaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BeginTransaction,
        stubs: @stubs,
        params_class: Params::BeginTransactionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :begin_transaction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Ends a SQL transaction started with the <code>BeginTransaction</code> operation and
    #             commits the changes.</p>
    #
    # @param [Hash] params
    #   See {Types::CommitTransactionInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #
    # @option params [String] :transaction_id
    #   <p>The identifier of the transaction to end and commit.</p>
    #
    # @return [Types::CommitTransactionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.commit_transaction(
    #     resource_arn: 'resourceArn', # required
    #     secret_arn: 'secretArn', # required
    #     transaction_id: 'transactionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CommitTransactionOutput
    #   resp.data.transaction_status #=> String
    #
    def commit_transaction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CommitTransactionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CommitTransactionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CommitTransaction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableError, Errors::AccessDeniedException, Errors::NotFoundException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::StatementTimeoutException]),
        data_parser: Parsers::CommitTransaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CommitTransaction,
        stubs: @stubs,
        params_class: Params::CommitTransactionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :commit_transaction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs one or more SQL statements.</p>
    #         <important>
    #             <p>This operation is deprecated. Use the <code>BatchExecuteStatement</code> or
    #                     <code>ExecuteStatement</code> operation.</p>
    #         </important>
    #
    # @deprecated
    #   The ExecuteSql API is deprecated, please use the ExecuteStatement API.
    #   Since: 2019-03-21
    #
    # @param [Hash] params
    #   See {Types::ExecuteSqlInput}.
    #
    # @option params [String] :db_cluster_or_instance_arn
    #   <p>The ARN of the Aurora Serverless DB cluster.</p>
    #
    # @option params [String] :aws_secret_store_arn
    #   <p>The Amazon Resource Name (ARN) of the secret that enables access to the DB cluster.</p>
    #
    # @option params [String] :sql_statements
    #   <p>One or more SQL statements to run on the DB cluster.</p>
    #           <p>You can separate SQL statements from each other with a semicolon (;). Any valid SQL
    #               statement is permitted, including data definition, data manipulation, and commit
    #               statements. </p>
    #
    # @option params [String] :database
    #   <p>The name of the database.</p>
    #
    # @option params [String] :schema
    #   <p>The name of the database schema.</p>
    #
    # @return [Types::ExecuteSqlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_sql(
    #     db_cluster_or_instance_arn: 'dbClusterOrInstanceArn', # required
    #     aws_secret_store_arn: 'awsSecretStoreArn', # required
    #     sql_statements: 'sqlStatements', # required
    #     database: 'database',
    #     schema: 'schema'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteSqlOutput
    #   resp.data.sql_statement_results #=> Array<SqlStatementResult>
    #   resp.data.sql_statement_results[0] #=> Types::SqlStatementResult
    #   resp.data.sql_statement_results[0].result_frame #=> Types::ResultFrame
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata #=> Types::ResultSetMetadata
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_count #=> Integer
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata #=> Array<ColumnMetadata>
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0] #=> Types::ColumnMetadata
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].name #=> String
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].type #=> Integer
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].type_name #=> String
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].label #=> String
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].schema_name #=> String
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].table_name #=> String
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].is_auto_increment #=> Boolean
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].is_signed #=> Boolean
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].is_currency #=> Boolean
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].is_case_sensitive #=> Boolean
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].nullable #=> Integer
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].precision #=> Integer
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].scale #=> Integer
    #   resp.data.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].array_base_column_type #=> Integer
    #   resp.data.sql_statement_results[0].result_frame.records #=> Array<Record>
    #   resp.data.sql_statement_results[0].result_frame.records[0] #=> Types::Record
    #   resp.data.sql_statement_results[0].result_frame.records[0].values #=> Array<Value>
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0] #=> Types::Value, one of [IsNull, BitValue, BigIntValue, IntValue, DoubleValue, RealValue, StringValue, BlobValue, ArrayValues, StructValue]
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].is_null #=> Boolean
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].bit_value #=> Boolean
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].big_int_value #=> Integer
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].int_value #=> Integer
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].double_value #=> Float
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].real_value #=> Float
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].string_value #=> String
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].blob_value #=> String
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].array_values #=> Array<Value>
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].struct_value #=> Types::StructValue
    #   resp.data.sql_statement_results[0].result_frame.records[0].values[0].struct_value.attributes #=> Array<Value>
    #   resp.data.sql_statement_results[0].number_of_records_updated #=> Integer
    #
    def execute_sql(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteSqlInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteSqlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteSql
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableError, Errors::AccessDeniedException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ExecuteSql
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteSql,
        stubs: @stubs,
        params_class: Params::ExecuteSqlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_sql
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs a SQL statement against a database.</p>
    #         <important>
    #             <p>If a call isn't part of a transaction because it doesn't include the
    #                     <code>transactionID</code> parameter, changes that result from the call are
    #                 committed automatically.</p>
    #         </important>
    #         <p>If the binary response data from the database is more than 1 MB, the call is terminated.</p>
    #
    # @param [Hash] params
    #   See {Types::ExecuteStatementInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #
    # @option params [String] :sql
    #   <p>The SQL statement to run.</p>
    #
    # @option params [String] :database
    #   <p>The name of the database.</p>
    #
    # @option params [String] :schema
    #   <p>The name of the database schema.</p>
    #           <note>
    #               <p>Currently, the <code>schema</code> parameter isn't supported.</p>
    #           </note>
    #
    # @option params [Array<SqlParameter>] :parameters
    #   <p>The parameters for the SQL statement.</p>
    #           <note>
    #               <p>Array parameters are not supported.</p>
    #           </note>
    #
    # @option params [String] :transaction_id
    #   <p>The identifier of a transaction that was started by using the
    #                   <code>BeginTransaction</code> operation. Specify the transaction ID of the
    #               transaction that you want to include the SQL statement in.</p>
    #           <p>If the SQL statement is not part of a transaction, don't set this parameter.</p>
    #
    # @option params [Boolean] :include_result_metadata
    #   <p>A value that indicates whether to include metadata in the results.</p>
    #
    # @option params [Boolean] :continue_after_timeout
    #   <p>A value that indicates whether to continue running the statement after
    #               the call times out. By default, the statement stops running when the call
    #               times out.</p>
    #           <important>
    #               <p>For DDL statements, we recommend continuing to run the statement after
    #                  the call times out. When a DDL statement terminates before it is finished
    #                  running, it can result in errors and possibly corrupted data structures.</p>
    #           </important>
    #
    # @option params [ResultSetOptions] :result_set_options
    #   <p>Options that control how the result set is returned.</p>
    #
    # @option params [String] :format_records_as
    #   <p>A value that indicates whether to format the result set as a single JSON string.
    #           This parameter only applies to <code>SELECT</code> statements and is ignored for
    #           other types of statements. Allowed values are <code>NONE</code> and <code>JSON</code>.
    #           The default value is <code>NONE</code>. The result is returned in the <code>formattedRecords</code> field.</p>
    #           <p>For usage information about the JSON format for result sets, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using the Data API</a>
    #             in the <i>Amazon Aurora User Guide</i>.</p>
    #
    # @return [Types::ExecuteStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_statement(
    #     resource_arn: 'resourceArn', # required
    #     secret_arn: 'secretArn', # required
    #     sql: 'sql', # required
    #     database: 'database',
    #     schema: 'schema',
    #     parameters: [
    #       {
    #         name: 'name',
    #         value: {
    #           # One of:
    #           is_null: false,
    #           boolean_value: false,
    #           long_value: 1,
    #           double_value: 1.0,
    #           string_value: 'stringValue',
    #           blob_value: 'blobValue',
    #           array_value: {
    #             # One of:
    #             boolean_values: [
    #               false
    #             ],
    #             long_values: [
    #               1
    #             ],
    #             double_values: [
    #               1.0
    #             ],
    #             string_values: [
    #               'member'
    #             ],
    #           }
    #         },
    #         type_hint: 'JSON' # accepts ["JSON", "UUID", "TIMESTAMP", "DATE", "TIME", "DECIMAL"]
    #       }
    #     ],
    #     transaction_id: 'transactionId',
    #     include_result_metadata: false,
    #     continue_after_timeout: false,
    #     result_set_options: {
    #       decimal_return_type: 'STRING', # accepts ["STRING", "DOUBLE_OR_LONG"]
    #       long_return_type: 'STRING' # accepts ["STRING", "LONG"]
    #     },
    #     format_records_as: 'NONE' # accepts ["NONE", "JSON"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteStatementOutput
    #   resp.data.records #=> Array<Array<Field>>
    #   resp.data.records[0] #=> Array<Field>
    #   resp.data.records[0][0] #=> Types::Field, one of [IsNull, BooleanValue, LongValue, DoubleValue, StringValue, BlobValue, ArrayValue]
    #   resp.data.records[0][0].is_null #=> Boolean
    #   resp.data.records[0][0].boolean_value #=> Boolean
    #   resp.data.records[0][0].long_value #=> Integer
    #   resp.data.records[0][0].double_value #=> Float
    #   resp.data.records[0][0].string_value #=> String
    #   resp.data.records[0][0].blob_value #=> String
    #   resp.data.records[0][0].array_value #=> Types::ArrayValue, one of [BooleanValues, LongValues, DoubleValues, StringValues, ArrayValues]
    #   resp.data.records[0][0].array_value.boolean_values #=> Array<Boolean>
    #   resp.data.records[0][0].array_value.boolean_values[0] #=> Boolean
    #   resp.data.records[0][0].array_value.long_values #=> Array<Integer>
    #   resp.data.records[0][0].array_value.long_values[0] #=> Integer
    #   resp.data.records[0][0].array_value.double_values #=> Array<Float>
    #   resp.data.records[0][0].array_value.double_values[0] #=> Float
    #   resp.data.records[0][0].array_value.string_values #=> Array<String>
    #   resp.data.records[0][0].array_value.string_values[0] #=> String
    #   resp.data.records[0][0].array_value.array_values #=> Array<ArrayValue>
    #   resp.data.column_metadata #=> Array<ColumnMetadata>
    #   resp.data.column_metadata[0] #=> Types::ColumnMetadata
    #   resp.data.column_metadata[0].name #=> String
    #   resp.data.column_metadata[0].type #=> Integer
    #   resp.data.column_metadata[0].type_name #=> String
    #   resp.data.column_metadata[0].label #=> String
    #   resp.data.column_metadata[0].schema_name #=> String
    #   resp.data.column_metadata[0].table_name #=> String
    #   resp.data.column_metadata[0].is_auto_increment #=> Boolean
    #   resp.data.column_metadata[0].is_signed #=> Boolean
    #   resp.data.column_metadata[0].is_currency #=> Boolean
    #   resp.data.column_metadata[0].is_case_sensitive #=> Boolean
    #   resp.data.column_metadata[0].nullable #=> Integer
    #   resp.data.column_metadata[0].precision #=> Integer
    #   resp.data.column_metadata[0].scale #=> Integer
    #   resp.data.column_metadata[0].array_base_column_type #=> Integer
    #   resp.data.number_of_records_updated #=> Integer
    #   resp.data.generated_fields #=> Array<Field>
    #   resp.data.formatted_records #=> String
    #
    def execute_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableError, Errors::AccessDeniedException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::StatementTimeoutException]),
        data_parser: Parsers::ExecuteStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteStatement,
        stubs: @stubs,
        params_class: Params::ExecuteStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Performs a rollback of a transaction. Rolling back a transaction cancels its changes.</p>
    #
    # @param [Hash] params
    #   See {Types::RollbackTransactionInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    #
    # @option params [String] :transaction_id
    #   <p>The identifier of the transaction to roll back.</p>
    #
    # @return [Types::RollbackTransactionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rollback_transaction(
    #     resource_arn: 'resourceArn', # required
    #     secret_arn: 'secretArn', # required
    #     transaction_id: 'transactionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RollbackTransactionOutput
    #   resp.data.transaction_status #=> String
    #
    def rollback_transaction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RollbackTransactionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RollbackTransactionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RollbackTransaction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableError, Errors::AccessDeniedException, Errors::NotFoundException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::StatementTimeoutException]),
        data_parser: Parsers::RollbackTransaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RollbackTransaction,
        stubs: @stubs,
        params_class: Params::RollbackTransactionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rollback_transaction
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
