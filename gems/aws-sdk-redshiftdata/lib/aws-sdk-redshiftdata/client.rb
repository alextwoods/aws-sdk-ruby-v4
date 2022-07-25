# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::RedshiftData
  # An API client for RedshiftData
  # See {#initialize} for a full list of supported configuration options
  # <p>You can use the Amazon Redshift Data API to run queries on Amazon Redshift tables. You
  #       can run SQL statements, which are committed if the statement succeeds. </p>
  #          <p>For more information about the Amazon Redshift Data API, see
  #        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the
  #        <i>Amazon Redshift Cluster Management Guide</i>. </p>
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
    def initialize(config = AWS::SDK::RedshiftData::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Runs one or more SQL statements, which can be data manipulation language (DML) or data definition
    #       language (DDL).
    #       Depending on the authorization
    #       method, use one of the following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    # When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name. </p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    # Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.
    # When connecting to a serverless endpoint, specify the database name. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::BatchExecuteStatementInput}.
    #
    # @option params [Array<String>] :sqls
    #   <p>One or more SQL statements to run. </p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    #
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster and authenticating using temporary credentials. </p>
    #
    # @option params [String] :database
    #   <p>The name of the database. This parameter is required when authenticating using either Secrets Manager or temporary credentials. </p>
    #
    # @option params [Boolean] :with_event
    #   <p>A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statements run. </p>
    #
    # @option params [String] :statement_name
    #   <p>The name of the SQL statements. You can name the SQL statements when you create them to identify the query. </p>
    #
    # @return [Types::BatchExecuteStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_execute_statement(
    #     sqls: [
    #       'member'
    #     ], # required
    #     cluster_identifier: 'ClusterIdentifier',
    #     secret_arn: 'SecretArn',
    #     db_user: 'DbUser',
    #     database: 'Database', # required
    #     with_event: false,
    #     statement_name: 'StatementName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchExecuteStatementOutput
    #   resp.data.id #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.cluster_identifier #=> String
    #   resp.data.db_user #=> String
    #   resp.data.database #=> String
    #   resp.data.secret_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActiveStatementsExceededException, Errors::BatchExecuteStatementException, Errors::ValidationException]),
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

    # <p>Cancels a running query. To be canceled, a query must be running. </p>
    #
    # @param [Hash] params
    #   See {Types::CancelStatementInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the SQL statement to cancel. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API.
    #           This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatment</code>, and <code>ListStatements</code>. </p>
    #
    # @return [Types::CancelStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_statement(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelStatementOutput
    #   resp.data.status #=> Boolean
    #
    def cancel_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::DatabaseConnectionException, Errors::ValidationException]),
        data_parser: Parsers::CancelStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelStatement,
        stubs: @stubs,
        params_class: Params::CancelStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the details about a specific instance when a query was run by the Amazon Redshift Data API. The information
    #       includes when the query started, when it finished, the query status, the number of rows returned, and the SQL
    #       statement. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStatementInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the SQL statement to describe. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API.
    #          A suffix indicates the number of the SQL statement.
    #          For example, <code>d9b6c0c9-0747-4bf4-b142-e8883122f766:2</code> has a suffix of <code>:2</code> that indicates the second SQL statement of a batch query.
    #          This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatement</code>, and <code>ListStatements</code>. </p>
    #
    # @return [Types::DescribeStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_statement(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStatementOutput
    #   resp.data.id #=> String
    #   resp.data.secret_arn #=> String
    #   resp.data.db_user #=> String
    #   resp.data.database #=> String
    #   resp.data.cluster_identifier #=> String
    #   resp.data.duration #=> Integer
    #   resp.data.error #=> String
    #   resp.data.status #=> String, one of ["SUBMITTED", "PICKED", "STARTED", "FINISHED", "ABORTED", "FAILED", "ALL"]
    #   resp.data.created_at #=> Time
    #   resp.data.updated_at #=> Time
    #   resp.data.redshift_pid #=> Integer
    #   resp.data.has_result_set #=> Boolean
    #   resp.data.query_string #=> String
    #   resp.data.result_rows #=> Integer
    #   resp.data.result_size #=> Integer
    #   resp.data.redshift_query_id #=> Integer
    #   resp.data.query_parameters #=> Array<SqlParameter>
    #   resp.data.query_parameters[0] #=> Types::SqlParameter
    #   resp.data.query_parameters[0].name #=> String
    #   resp.data.query_parameters[0].value #=> String
    #   resp.data.sub_statements #=> Array<SubStatementData>
    #   resp.data.sub_statements[0] #=> Types::SubStatementData
    #   resp.data.sub_statements[0].id #=> String
    #   resp.data.sub_statements[0].duration #=> Integer
    #   resp.data.sub_statements[0].error #=> String
    #   resp.data.sub_statements[0].status #=> String, one of ["SUBMITTED", "PICKED", "STARTED", "FINISHED", "ABORTED", "FAILED"]
    #   resp.data.sub_statements[0].created_at #=> Time
    #   resp.data.sub_statements[0].updated_at #=> Time
    #   resp.data.sub_statements[0].query_string #=> String
    #   resp.data.sub_statements[0].result_rows #=> Integer
    #   resp.data.sub_statements[0].result_size #=> Integer
    #   resp.data.sub_statements[0].redshift_query_id #=> Integer
    #   resp.data.sub_statements[0].has_result_set #=> Boolean
    #
    def describe_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStatement,
        stubs: @stubs,
        params_class: Params::DescribeStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the detailed information about a table from metadata in the cluster. The
    #       information includes its columns.
    #       A token is returned to page through the column list.
    #       Depending on the authorization method, use one of the
    #       following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    # When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name. </p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    # Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.
    # When connecting to a serverless endpoint, specify the database name. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeTableInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    #
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster and authenticating using temporary credentials. </p>
    #
    # @option params [String] :database
    #   <p>The name of the database that contains the tables to be described.
    #         If <code>ConnectedDatabase</code> is not specified, this is also the database to connect to with your authentication credentials.</p>
    #
    # @option params [String] :connected_database
    #   <p>A database name. The connected database is specified when you connect with your authentication credentials. </p>
    #
    # @option params [String] :schema
    #   <p>The schema that contains the table. If no schema is specified, then matching tables for all schemas are returned. </p>
    #
    # @option params [String] :table
    #   <p>The table name. If no table is specified, then all tables for all matching schemas are returned.
    #          If no table and no schema is specified, then all tables for all schemas in the database are returned</p>
    #
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tables to return in the response.
    #         If more tables exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>
    #
    # @return [Types::DescribeTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table(
    #     cluster_identifier: 'ClusterIdentifier',
    #     secret_arn: 'SecretArn',
    #     db_user: 'DbUser',
    #     database: 'Database', # required
    #     connected_database: 'ConnectedDatabase',
    #     schema: 'Schema',
    #     table: 'Table',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTableOutput
    #   resp.data.table_name #=> String
    #   resp.data.column_list #=> Array<ColumnMetadata>
    #   resp.data.column_list[0] #=> Types::ColumnMetadata
    #   resp.data.column_list[0].is_case_sensitive #=> Boolean
    #   resp.data.column_list[0].is_currency #=> Boolean
    #   resp.data.column_list[0].is_signed #=> Boolean
    #   resp.data.column_list[0].label #=> String
    #   resp.data.column_list[0].name #=> String
    #   resp.data.column_list[0].nullable #=> Integer
    #   resp.data.column_list[0].precision #=> Integer
    #   resp.data.column_list[0].scale #=> Integer
    #   resp.data.column_list[0].schema_name #=> String
    #   resp.data.column_list[0].table_name #=> String
    #   resp.data.column_list[0].type_name #=> String
    #   resp.data.column_list[0].length #=> Integer
    #   resp.data.column_list[0].column_default #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::DatabaseConnectionException, Errors::ValidationException]),
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

    # <p>Runs an SQL statement, which can be data manipulation language (DML) or data definition
    #       language (DDL). This statement must be a single SQL statement.
    #       Depending on the authorization
    #       method, use one of the following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    # When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name. </p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    # Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.
    # When connecting to a serverless endpoint, specify the database name. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ExecuteStatementInput}.
    #
    # @option params [String] :sql
    #   <p>The SQL statement text to run. </p>
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    #
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster and authenticating using temporary credentials. </p>
    #
    # @option params [String] :database
    #   <p>The name of the database. This parameter is required when authenticating using either Secrets Manager or temporary credentials. </p>
    #
    # @option params [Boolean] :with_event
    #   <p>A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs. </p>
    #
    # @option params [String] :statement_name
    #   <p>The name of the SQL statement. You can name the SQL statement when you create it to identify the query. </p>
    #
    # @option params [Array<SqlParameter>] :parameters
    #   <p>The parameters for the SQL statement.</p>
    #
    # @return [Types::ExecuteStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_statement(
    #     sql: 'Sql', # required
    #     cluster_identifier: 'ClusterIdentifier',
    #     secret_arn: 'SecretArn',
    #     db_user: 'DbUser',
    #     database: 'Database', # required
    #     with_event: false,
    #     statement_name: 'StatementName',
    #     parameters: [
    #       {
    #         name: 'name', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteStatementOutput
    #   resp.data.id #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.cluster_identifier #=> String
    #   resp.data.db_user #=> String
    #   resp.data.database #=> String
    #   resp.data.secret_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExecuteStatementException, Errors::ActiveStatementsExceededException, Errors::ValidationException]),
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

    # <p>Fetches the temporarily cached result of an SQL statement.
    #        A token is returned to page through the statement results. </p>
    #
    # @param [Hash] params
    #   See {Types::GetStatementResultInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the SQL statement whose results are to be fetched. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API.
    #          A suffix indicates then number of the SQL statement.
    #          For example, <code>d9b6c0c9-0747-4bf4-b142-e8883122f766:2</code> has a suffix of <code>:2</code> that indicates the second SQL statement of a batch query.
    #          This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatment</code>, and <code>ListStatements</code>. </p>
    #
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    #
    # @return [Types::GetStatementResultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_statement_result(
    #     id: 'Id', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStatementResultOutput
    #   resp.data.records #=> Array<Array<Field>>
    #   resp.data.records[0] #=> Array<Field>
    #   resp.data.records[0][0] #=> Types::Field, one of [IsNull, BooleanValue, LongValue, DoubleValue, StringValue, BlobValue]
    #   resp.data.records[0][0].is_null #=> Boolean
    #   resp.data.records[0][0].boolean_value #=> Boolean
    #   resp.data.records[0][0].long_value #=> Integer
    #   resp.data.records[0][0].double_value #=> Float
    #   resp.data.records[0][0].string_value #=> String
    #   resp.data.records[0][0].blob_value #=> String
    #   resp.data.column_metadata #=> Array<ColumnMetadata>
    #   resp.data.column_metadata[0] #=> Types::ColumnMetadata
    #   resp.data.column_metadata[0].is_case_sensitive #=> Boolean
    #   resp.data.column_metadata[0].is_currency #=> Boolean
    #   resp.data.column_metadata[0].is_signed #=> Boolean
    #   resp.data.column_metadata[0].label #=> String
    #   resp.data.column_metadata[0].name #=> String
    #   resp.data.column_metadata[0].nullable #=> Integer
    #   resp.data.column_metadata[0].precision #=> Integer
    #   resp.data.column_metadata[0].scale #=> Integer
    #   resp.data.column_metadata[0].schema_name #=> String
    #   resp.data.column_metadata[0].table_name #=> String
    #   resp.data.column_metadata[0].type_name #=> String
    #   resp.data.column_metadata[0].length #=> Integer
    #   resp.data.column_metadata[0].column_default #=> String
    #   resp.data.total_num_rows #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_statement_result(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStatementResultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStatementResultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStatementResult
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetStatementResult
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStatementResult,
        stubs: @stubs,
        params_class: Params::GetStatementResultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_statement_result
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the databases in a cluster.
    #       A token is returned to page through the database list.
    #       Depending on the authorization method, use one of the
    #       following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    # When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name. </p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    # Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.
    # When connecting to a serverless endpoint, specify the database name. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListDatabasesInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    #
    # @option params [String] :database
    #   <p>The name of the database. This parameter is required when authenticating using either Secrets Manager or temporary credentials. </p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    #
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster and authenticating using temporary credentials. </p>
    #
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of databases to return in the response.
    #          If more databases exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>
    #
    # @return [Types::ListDatabasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_databases(
    #     cluster_identifier: 'ClusterIdentifier',
    #     database: 'Database', # required
    #     secret_arn: 'SecretArn',
    #     db_user: 'DbUser',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatabasesOutput
    #   resp.data.databases #=> Array<String>
    #   resp.data.databases[0] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::DatabaseConnectionException, Errors::ValidationException]),
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

    # <p>Lists the schemas in a database.
    #       A token is returned to page through the schema list.
    #       Depending on the authorization method, use one of the
    #       following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    # When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name. </p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    # Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.
    # When connecting to a serverless endpoint, specify the database name. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListSchemasInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    #
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster and authenticating using temporary credentials. </p>
    #
    # @option params [String] :database
    #   <p>The name of the database that contains the schemas to list.
    #        If <code>ConnectedDatabase</code> is not specified, this is also the database to connect to with your authentication credentials.</p>
    #
    # @option params [String] :connected_database
    #   <p>A database name. The connected database is specified when you connect with your authentication credentials. </p>
    #
    # @option params [String] :schema_pattern
    #   <p>A pattern to filter results by schema name. Within a schema pattern, "%" means match any
    #         substring of 0 or more characters and "_" means match any one character. Only schema name
    #         entries matching the search pattern are returned. </p>
    #
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of schemas to return in the response.
    #          If more schemas exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>
    #
    # @return [Types::ListSchemasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schemas(
    #     cluster_identifier: 'ClusterIdentifier',
    #     secret_arn: 'SecretArn',
    #     db_user: 'DbUser',
    #     database: 'Database', # required
    #     connected_database: 'ConnectedDatabase',
    #     schema_pattern: 'SchemaPattern',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSchemasOutput
    #   resp.data.schemas #=> Array<String>
    #   resp.data.schemas[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_schemas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSchemasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSchemasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSchemas
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::DatabaseConnectionException, Errors::ValidationException]),
        data_parser: Parsers::ListSchemas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSchemas,
        stubs: @stubs,
        params_class: Params::ListSchemasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_schemas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List of SQL statements. By default, only finished statements are shown.
    #         A token is returned to page through the statement list. </p>
    #
    # @param [Hash] params
    #   See {Types::ListStatementsInput}.
    #
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of SQL statements to return in the response.
    #          If more SQL statements exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>
    #
    # @option params [String] :statement_name
    #   <p>The name of the SQL statement specified as input to <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> to identify the query.
    #         You can list multiple statements by providing a prefix that matches the beginning of the statement name.
    #         For example, to list myStatement1, myStatement2, myStatement3, and so on, then provide the a value of <code>myStatement</code>.
    #         Data API does a case-sensitive match of SQL statement names to the prefix value you provide. </p>
    #
    # @option params [String] :status
    #   <p>The status of the SQL statement to list. Status values are defined as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>ABORTED - The query run was stopped by the user. </p>
    #               </li>
    #               <li>
    #                  <p>ALL -  A status value that includes all query statuses. This value can be used to filter results. </p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The query run failed. </p>
    #               </li>
    #               <li>
    #                  <p>FINISHED - The query has finished running. </p>
    #               </li>
    #               <li>
    #                  <p>PICKED - The query has been chosen to be run. </p>
    #               </li>
    #               <li>
    #                  <p>STARTED - The query run has started. </p>
    #               </li>
    #               <li>
    #                  <p>SUBMITTED - The query was submitted, but not yet processed. </p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :role_level
    #   <p>A value that filters which statements to return in the response. If true, all statements run by the caller's IAM role are returned.
    #         If false, only statements run by the caller's IAM role in the current IAM session are returned.  The default is true. </p>
    #
    # @return [Types::ListStatementsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_statements(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     statement_name: 'StatementName',
    #     status: 'SUBMITTED', # accepts ["SUBMITTED", "PICKED", "STARTED", "FINISHED", "ABORTED", "FAILED", "ALL"]
    #     role_level: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStatementsOutput
    #   resp.data.statements #=> Array<StatementData>
    #   resp.data.statements[0] #=> Types::StatementData
    #   resp.data.statements[0].id #=> String
    #   resp.data.statements[0].query_string #=> String
    #   resp.data.statements[0].query_strings #=> Array<String>
    #   resp.data.statements[0].query_strings[0] #=> String
    #   resp.data.statements[0].secret_arn #=> String
    #   resp.data.statements[0].status #=> String, one of ["SUBMITTED", "PICKED", "STARTED", "FINISHED", "ABORTED", "FAILED", "ALL"]
    #   resp.data.statements[0].statement_name #=> String
    #   resp.data.statements[0].created_at #=> Time
    #   resp.data.statements[0].updated_at #=> Time
    #   resp.data.statements[0].query_parameters #=> Array<SqlParameter>
    #   resp.data.statements[0].query_parameters[0] #=> Types::SqlParameter
    #   resp.data.statements[0].query_parameters[0].name #=> String
    #   resp.data.statements[0].query_parameters[0].value #=> String
    #   resp.data.statements[0].is_batch_statement #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_statements(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStatementsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStatementsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStatements
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListStatements
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStatements,
        stubs: @stubs,
        params_class: Params::ListStatementsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_statements
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the tables in a database. If neither <code>SchemaPattern</code> nor <code>TablePattern</code> are specified, then
    #        all tables in the database are returned.
    #       A token is returned to page through the table list.
    #       Depending on the authorization method, use one of the
    #       following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.
    # When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name. </p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name.
    # Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.
    # When connecting to a serverless endpoint, specify the database name. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListTablesInput}.
    #
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    #
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    #
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster and authenticating using temporary credentials. </p>
    #
    # @option params [String] :database
    #   <p>The name of the database that contains the tables to list.
    #         If <code>ConnectedDatabase</code> is not specified, this is also the database to connect to with your authentication credentials.</p>
    #
    # @option params [String] :connected_database
    #   <p>A database name. The connected database is specified when you connect with your authentication credentials. </p>
    #
    # @option params [String] :schema_pattern
    #   <p>A pattern to filter results by schema name. Within a schema pattern, "%" means match any
    #         substring of 0 or more characters and "_" means match any one character. Only schema name
    #         entries matching the search pattern are returned. If <code>SchemaPattern</code> is not specified, then all tables that match
    #          <code>TablePattern</code> are returned.
    #          If neither <code>SchemaPattern</code> or <code>TablePattern</code> are specified, then all tables are returned. </p>
    #
    # @option params [String] :table_pattern
    #   <p>A pattern to filter results by table name. Within a table pattern, "%" means match any
    #         substring of 0 or more characters and "_" means match any one character. Only table name
    #         entries matching the search pattern are returned. If <code>TablePattern</code> is not specified, then all tables that match
    #          <code>SchemaPattern</code>are returned.
    #          If neither <code>SchemaPattern</code> or <code>TablePattern</code> are specified, then all tables are returned. </p>
    #
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tables to return in the response.
    #          If more tables exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>
    #
    # @return [Types::ListTablesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables(
    #     cluster_identifier: 'ClusterIdentifier',
    #     secret_arn: 'SecretArn',
    #     db_user: 'DbUser',
    #     database: 'Database', # required
    #     connected_database: 'ConnectedDatabase',
    #     schema_pattern: 'SchemaPattern',
    #     table_pattern: 'TablePattern',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTablesOutput
    #   resp.data.tables #=> Array<TableMember>
    #   resp.data.tables[0] #=> Types::TableMember
    #   resp.data.tables[0].name #=> String
    #   resp.data.tables[0].type #=> String
    #   resp.data.tables[0].schema #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::DatabaseConnectionException, Errors::ValidationException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
