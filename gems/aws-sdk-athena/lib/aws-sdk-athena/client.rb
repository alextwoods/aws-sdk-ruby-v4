# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Athena
  # An API client for AmazonAthena
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Athena is an interactive query service that lets you use standard SQL
  #             to analyze data directly in Amazon S3. You can point Athena at your
  #             data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena is serverless, so there is no infrastructure to set up or manage. You pay
  #             only for the queries you run. Athena scales automatically—executing queries
  #             in parallel—so results are fast, even with large datasets and complex queries. For more
  #             information, see <a href="http://docs.aws.amazon.com/athena/latest/ug/what-is.html">What is Amazon Athena</a> in the <i>Amazon Athena User
  #                 Guide</i>.</p>
  #         <p>If you connect to Athena using the JDBC driver, use version 1.1.0 of the
  #             driver or later with the Amazon Athena API. Earlier version drivers do not
  #             support the API. For more information and to download the driver, see <a href="https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html">Accessing
  #                     Amazon Athena with JDBC</a>.</p>
  #         <p>For code samples using the Amazon Web Services SDK for Java, see <a href="https://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and
  #                 Code Samples</a> in the <i>Amazon Athena User
  #             Guide</i>.</p>
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
    def initialize(config = AWS::SDK::Athena::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Returns the details of a single named query or a list of up to 50 queries, which you
    #             provide as an array of query ID strings. Requires you to have access to the workgroup in
    #             which the queries were saved. Use <a>ListNamedQueriesInput</a> to get the
    #             list of named query IDs in the specified workgroup. If information could not be
    #             retrieved for a submitted query ID, information about the query ID submitted is listed
    #             under <a>UnprocessedNamedQueryId</a>. Named queries differ from executed
    #             queries. Use <a>BatchGetQueryExecutionInput</a> to get details about each
    #             unique query execution, and <a>ListQueryExecutionsInput</a> to get a list of
    #             query execution IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetNamedQueryInput}.
    #
    # @option params [Array<String>] :named_query_ids
    #   <p>An array of query IDs.</p>
    #
    # @return [Types::BatchGetNamedQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_named_query(
    #     named_query_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetNamedQueryOutput
    #   resp.data.named_queries #=> Array<NamedQuery>
    #   resp.data.named_queries[0] #=> Types::NamedQuery
    #   resp.data.named_queries[0].name #=> String
    #   resp.data.named_queries[0].description #=> String
    #   resp.data.named_queries[0].database #=> String
    #   resp.data.named_queries[0].query_string #=> String
    #   resp.data.named_queries[0].named_query_id #=> String
    #   resp.data.named_queries[0].work_group #=> String
    #   resp.data.unprocessed_named_query_ids #=> Array<UnprocessedNamedQueryId>
    #   resp.data.unprocessed_named_query_ids[0] #=> Types::UnprocessedNamedQueryId
    #   resp.data.unprocessed_named_query_ids[0].named_query_id #=> String
    #   resp.data.unprocessed_named_query_ids[0].error_code #=> String
    #   resp.data.unprocessed_named_query_ids[0].error_message #=> String
    #
    def batch_get_named_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetNamedQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetNamedQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetNamedQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::BatchGetNamedQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetNamedQuery,
        stubs: @stubs,
        params_class: Params::BatchGetNamedQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_named_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of a single query execution or a list of up to 50 query
    #             executions, which you provide as an array of query execution ID strings. Requires you to
    #             have access to the workgroup in which the queries ran. To get a list of query execution
    #             IDs, use <a>ListQueryExecutionsInput$WorkGroup</a>. Query executions differ
    #             from named (saved) queries. Use <a>BatchGetNamedQueryInput</a> to get details
    #             about named queries.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetQueryExecutionInput}.
    #
    # @option params [Array<String>] :query_execution_ids
    #   <p>An array of query execution IDs.</p>
    #
    # @return [Types::BatchGetQueryExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_query_execution(
    #     query_execution_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetQueryExecutionOutput
    #   resp.data.query_executions #=> Array<QueryExecution>
    #   resp.data.query_executions[0] #=> Types::QueryExecution
    #   resp.data.query_executions[0].query_execution_id #=> String
    #   resp.data.query_executions[0].query #=> String
    #   resp.data.query_executions[0].statement_type #=> String, one of ["DDL", "DML", "UTILITY"]
    #   resp.data.query_executions[0].result_configuration #=> Types::ResultConfiguration
    #   resp.data.query_executions[0].result_configuration.output_location #=> String
    #   resp.data.query_executions[0].result_configuration.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.query_executions[0].result_configuration.encryption_configuration.encryption_option #=> String, one of ["SSE_S3", "SSE_KMS", "CSE_KMS"]
    #   resp.data.query_executions[0].result_configuration.encryption_configuration.kms_key #=> String
    #   resp.data.query_executions[0].result_configuration.expected_bucket_owner #=> String
    #   resp.data.query_executions[0].result_configuration.acl_configuration #=> Types::AclConfiguration
    #   resp.data.query_executions[0].result_configuration.acl_configuration.s3_acl_option #=> String, one of ["BUCKET_OWNER_FULL_CONTROL"]
    #   resp.data.query_executions[0].query_execution_context #=> Types::QueryExecutionContext
    #   resp.data.query_executions[0].query_execution_context.database #=> String
    #   resp.data.query_executions[0].query_execution_context.catalog #=> String
    #   resp.data.query_executions[0].status #=> Types::QueryExecutionStatus
    #   resp.data.query_executions[0].status.state #=> String, one of ["QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"]
    #   resp.data.query_executions[0].status.state_change_reason #=> String
    #   resp.data.query_executions[0].status.submission_date_time #=> Time
    #   resp.data.query_executions[0].status.completion_date_time #=> Time
    #   resp.data.query_executions[0].status.athena_error #=> Types::AthenaError
    #   resp.data.query_executions[0].status.athena_error.error_category #=> Integer
    #   resp.data.query_executions[0].status.athena_error.error_type #=> Integer
    #   resp.data.query_executions[0].status.athena_error.retryable #=> Boolean
    #   resp.data.query_executions[0].status.athena_error.error_message #=> String
    #   resp.data.query_executions[0].statistics #=> Types::QueryExecutionStatistics
    #   resp.data.query_executions[0].statistics.engine_execution_time_in_millis #=> Integer
    #   resp.data.query_executions[0].statistics.data_scanned_in_bytes #=> Integer
    #   resp.data.query_executions[0].statistics.data_manifest_location #=> String
    #   resp.data.query_executions[0].statistics.total_execution_time_in_millis #=> Integer
    #   resp.data.query_executions[0].statistics.query_queue_time_in_millis #=> Integer
    #   resp.data.query_executions[0].statistics.query_planning_time_in_millis #=> Integer
    #   resp.data.query_executions[0].statistics.service_processing_time_in_millis #=> Integer
    #   resp.data.query_executions[0].work_group #=> String
    #   resp.data.query_executions[0].engine_version #=> Types::EngineVersion
    #   resp.data.query_executions[0].engine_version.selected_engine_version #=> String
    #   resp.data.query_executions[0].engine_version.effective_engine_version #=> String
    #   resp.data.unprocessed_query_execution_ids #=> Array<UnprocessedQueryExecutionId>
    #   resp.data.unprocessed_query_execution_ids[0] #=> Types::UnprocessedQueryExecutionId
    #   resp.data.unprocessed_query_execution_ids[0].query_execution_id #=> String
    #   resp.data.unprocessed_query_execution_ids[0].error_code #=> String
    #   resp.data.unprocessed_query_execution_ids[0].error_message #=> String
    #
    def batch_get_query_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetQueryExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetQueryExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetQueryExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::BatchGetQueryExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetQueryExecution,
        stubs: @stubs,
        params_class: Params::BatchGetQueryExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_query_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates (registers) a data catalog with the specified name and properties. Catalogs
    #             created are visible to all users of the same Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataCatalogInput}.
    #
    # @option params [String] :name
    #   <p>The name of the data catalog to create. The catalog name must be unique for the
    #                   Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at
    #               sign, or hyphen characters. The remainder of the length constraint of 256 is reserved
    #               for use by Athena.</p>
    #
    # @option params [String] :type
    #   <p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog,
    #                   <code>HIVE</code> for an external hive metastore, or <code>GLUE</code> for an
    #                   Glue Data Catalog.</p>
    #
    # @option params [String] :description
    #   <p>A description of the data catalog to be created.</p>
    #
    # @option params [Hash<String, String>] :parameters
    #   <p>Specifies the Lambda function or functions to use for creating the data
    #               catalog. This is a mapping whose values depend on the catalog type. </p>
    #           <ul>
    #               <li>
    #                   <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    #                           <code>metadata-function</code> parameter is required. <code>The
    #                           sdk-version</code> parameter is optional and defaults to the currently
    #                       supported version.</p>
    #                   <p>
    #                     <code>metadata-function=<i>lambda_arn</i>,
    #                               sdk-version=<i>version_number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    #                       of required parameters, but not both.</p>
    #                   <ul>
    #                     <li>
    #                           <p>If you have one Lambda function that processes metadata
    #                               and another for reading the actual data, use the following syntax. Both
    #                               parameters are required.</p>
    #                           <p>
    #                           <code>metadata-function=<i>lambda_arn</i>,
    #                                       record-function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p> If you have a composite Lambda function that processes
    #                               both metadata and data, use the following syntax to specify your Lambda function.</p>
    #                           <p>
    #                           <code>function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>The <code>GLUE</code> type takes a catalog ID parameter and is required. The
    #                               <code>
    #                        <i>catalog_id</i>
    #                     </code> is the account ID of the
    #                           Amazon Web Services account to which the Glue Data Catalog
    #                       belongs.</p>
    #                   <p>
    #                     <code>catalog-id=<i>catalog_id</i>
    #                     </code>
    #                  </p>
    #                   <ul>
    #                     <li>
    #                           <p>The <code>GLUE</code> data catalog type also applies to the default
    #                                   <code>AwsDataCatalog</code> that already exists in your account, of
    #                               which you can have only one and cannot modify.</p>
    #                       </li>
    #                     <li>
    #                           <p>Queries that specify a Glue Data Catalog other than the default
    #                                   <code>AwsDataCatalog</code> must be run on Athena engine
    #                               version 2.</p>
    #                       </li>
    #                     <li>
    #                           <p>In Regions where Athena engine version 2 is not available,
    #                               creating new Glue data catalogs results in an
    #                                   <code>INVALID_INPUT</code> error.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of comma separated tags to add to the data catalog that is created.</p>
    #
    # @return [Types::CreateDataCatalogOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_catalog(
    #     name: 'Name', # required
    #     type: 'LAMBDA', # required - accepts ["LAMBDA", "GLUE", "HIVE"]
    #     description: 'Description',
    #     parameters: {
    #       'key' => 'value'
    #     },
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataCatalogOutput
    #
    def create_data_catalog(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataCatalogInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataCatalogInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataCatalog
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateDataCatalog
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataCatalog,
        stubs: @stubs,
        params_class: Params::CreateDataCatalogOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_catalog
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a named query in the specified workgroup. Requires that you have access to the
    #             workgroup.</p>
    #         <p>For code samples using the Amazon Web Services SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and
    #                 Code Samples</a> in the <i>Amazon Athena User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateNamedQueryInput}.
    #
    # @option params [String] :name
    #   <p>The query name.</p>
    #
    # @option params [String] :description
    #   <p>The query description.</p>
    #
    # @option params [String] :database
    #   <p>The database to which the query belongs.</p>
    #
    # @option params [String] :query_string
    #   <p>The contents of the query with all query statements.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the query is
    #               idempotent (executes only once). If another <code>CreateNamedQuery</code> request is
    #               received, the same response is returned and another query is not created. If a parameter
    #               has changed, for example, the <code>QueryString</code>, an error is returned.</p>
    #           <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #           </important>
    #
    # @option params [String] :work_group
    #   <p>The name of the workgroup in which the named query is being created.</p>
    #
    # @return [Types::CreateNamedQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_named_query(
    #     name: 'Name', # required
    #     description: 'Description',
    #     database: 'Database', # required
    #     query_string: 'QueryString', # required
    #     client_request_token: 'ClientRequestToken',
    #     work_group: 'WorkGroup'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNamedQueryOutput
    #   resp.data.named_query_id #=> String
    #
    def create_named_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNamedQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNamedQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNamedQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateNamedQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNamedQuery,
        stubs: @stubs,
        params_class: Params::CreateNamedQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_named_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a prepared statement for use with SQL queries in Athena.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePreparedStatementInput}.
    #
    # @option params [String] :statement_name
    #   <p>The name of the prepared statement.</p>
    #
    # @option params [String] :work_group
    #   <p>The name of the workgroup to which the prepared statement belongs.</p>
    #
    # @option params [String] :query_statement
    #   <p>The query string for the prepared statement.</p>
    #
    # @option params [String] :description
    #   <p>The description of the prepared statement.</p>
    #
    # @return [Types::CreatePreparedStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_prepared_statement(
    #     statement_name: 'StatementName', # required
    #     work_group: 'WorkGroup', # required
    #     query_statement: 'QueryStatement', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePreparedStatementOutput
    #
    def create_prepared_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePreparedStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePreparedStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePreparedStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreatePreparedStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePreparedStatement,
        stubs: @stubs,
        params_class: Params::CreatePreparedStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_prepared_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a workgroup with the specified name.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkGroupInput}.
    #
    # @option params [String] :name
    #   <p>The workgroup name.</p>
    #
    # @option params [WorkGroupConfiguration] :configuration
    #   <p>The configuration for the workgroup, which includes the location in Amazon S3
    #               where query results are stored, the encryption configuration, if any, used for
    #               encrypting query results, whether the Amazon CloudWatch Metrics are enabled for the
    #               workgroup, the limit for the amount of bytes scanned (cutoff) per query, if it is
    #               specified, and whether workgroup's settings (specified with
    #                   <code>EnforceWorkGroupConfiguration</code>) in the
    #                   <code>WorkGroupConfiguration</code> override client-side settings. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #
    # @option params [String] :description
    #   <p>The workgroup description.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of comma separated tags to add to the workgroup that is created.</p>
    #
    # @return [Types::CreateWorkGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_work_group(
    #     name: 'Name', # required
    #     configuration: {
    #       result_configuration: {
    #         output_location: 'OutputLocation',
    #         encryption_configuration: {
    #           encryption_option: 'SSE_S3', # required - accepts ["SSE_S3", "SSE_KMS", "CSE_KMS"]
    #           kms_key: 'KmsKey'
    #         },
    #         expected_bucket_owner: 'ExpectedBucketOwner',
    #         acl_configuration: {
    #           s3_acl_option: 'BUCKET_OWNER_FULL_CONTROL' # required - accepts ["BUCKET_OWNER_FULL_CONTROL"]
    #         }
    #       },
    #       enforce_work_group_configuration: false,
    #       publish_cloud_watch_metrics_enabled: false,
    #       bytes_scanned_cutoff_per_query: 1,
    #       requester_pays_enabled: false,
    #       engine_version: {
    #         selected_engine_version: 'SelectedEngineVersion',
    #         effective_engine_version: 'EffectiveEngineVersion'
    #       }
    #     },
    #     description: 'Description',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkGroupOutput
    #
    def create_work_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateWorkGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkGroup,
        stubs: @stubs,
        params_class: Params::CreateWorkGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_work_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a data catalog.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataCatalogInput}.
    #
    # @option params [String] :name
    #   <p>The name of the data catalog to delete.</p>
    #
    # @return [Types::DeleteDataCatalogOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_catalog(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataCatalogOutput
    #
    def delete_data_catalog(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataCatalogInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataCatalogInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataCatalog
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteDataCatalog
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataCatalog,
        stubs: @stubs,
        params_class: Params::DeleteDataCatalogOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_data_catalog
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the named query if you have access to the workgroup in which the query was
    #             saved.</p>
    #         <p>For code samples using the Amazon Web Services SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and
    #                 Code Samples</a> in the <i>Amazon Athena User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNamedQueryInput}.
    #
    # @option params [String] :named_query_id
    #   <p>The unique ID of the query to delete.</p>
    #
    # @return [Types::DeleteNamedQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_named_query(
    #     named_query_id: 'NamedQueryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNamedQueryOutput
    #
    def delete_named_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNamedQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNamedQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNamedQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteNamedQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNamedQuery,
        stubs: @stubs,
        params_class: Params::DeleteNamedQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_named_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the prepared statement with the specified name from the specified
    #             workgroup.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePreparedStatementInput}.
    #
    # @option params [String] :statement_name
    #   <p>The name of the prepared statement to delete.</p>
    #
    # @option params [String] :work_group
    #   <p>The workgroup to which the statement to be deleted belongs.</p>
    #
    # @return [Types::DeletePreparedStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_prepared_statement(
    #     statement_name: 'StatementName', # required
    #     work_group: 'WorkGroup' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePreparedStatementOutput
    #
    def delete_prepared_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePreparedStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePreparedStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePreparedStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeletePreparedStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePreparedStatement,
        stubs: @stubs,
        params_class: Params::DeletePreparedStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_prepared_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the workgroup with the specified name. The primary workgroup cannot be
    #             deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkGroupInput}.
    #
    # @option params [String] :work_group
    #   <p>The unique name of the workgroup to delete.</p>
    #
    # @option params [Boolean] :recursive_delete_option
    #   <p>The option to delete the workgroup and its contents even if the workgroup contains any
    #               named queries or query executions.</p>
    #
    # @return [Types::DeleteWorkGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_work_group(
    #     work_group: 'WorkGroup', # required
    #     recursive_delete_option: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkGroupOutput
    #
    def delete_work_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteWorkGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkGroup,
        stubs: @stubs,
        params_class: Params::DeleteWorkGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_work_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the specified data catalog.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDataCatalogInput}.
    #
    # @option params [String] :name
    #   <p>The name of the data catalog to return.</p>
    #
    # @return [Types::GetDataCatalogOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_catalog(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataCatalogOutput
    #   resp.data.data_catalog #=> Types::DataCatalog
    #   resp.data.data_catalog.name #=> String
    #   resp.data.data_catalog.description #=> String
    #   resp.data.data_catalog.type #=> String, one of ["LAMBDA", "GLUE", "HIVE"]
    #   resp.data.data_catalog.parameters #=> Hash<String, String>
    #   resp.data.data_catalog.parameters['key'] #=> String
    #
    def get_data_catalog(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataCatalogInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataCatalogInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataCatalog
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetDataCatalog
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataCatalog,
        stubs: @stubs,
        params_class: Params::GetDataCatalogOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_catalog
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a database object for the specified database and data catalog.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDatabaseInput}.
    #
    # @option params [String] :catalog_name
    #   <p>The name of the data catalog that contains the database to return.</p>
    #
    # @option params [String] :database_name
    #   <p>The name of the database to return.</p>
    #
    # @return [Types::GetDatabaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_database(
    #     catalog_name: 'CatalogName', # required
    #     database_name: 'DatabaseName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDatabaseOutput
    #   resp.data.database #=> Types::Database
    #   resp.data.database.name #=> String
    #   resp.data.database.description #=> String
    #   resp.data.database.parameters #=> Hash<String, String>
    #   resp.data.database.parameters['key'] #=> String
    #
    def get_database(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDatabaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDatabaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDatabase
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::MetadataException]),
        data_parser: Parsers::GetDatabase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDatabase,
        stubs: @stubs,
        params_class: Params::GetDatabaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_database
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a single query. Requires that you have access to the
    #             workgroup in which the query was saved.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNamedQueryInput}.
    #
    # @option params [String] :named_query_id
    #   <p>The unique ID of the query. Use <a>ListNamedQueries</a> to get query
    #               IDs.</p>
    #
    # @return [Types::GetNamedQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_named_query(
    #     named_query_id: 'NamedQueryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNamedQueryOutput
    #   resp.data.named_query #=> Types::NamedQuery
    #   resp.data.named_query.name #=> String
    #   resp.data.named_query.description #=> String
    #   resp.data.named_query.database #=> String
    #   resp.data.named_query.query_string #=> String
    #   resp.data.named_query.named_query_id #=> String
    #   resp.data.named_query.work_group #=> String
    #
    def get_named_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNamedQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNamedQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNamedQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetNamedQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNamedQuery,
        stubs: @stubs,
        params_class: Params::GetNamedQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_named_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the prepared statement with the specified name from the specified
    #             workgroup.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPreparedStatementInput}.
    #
    # @option params [String] :statement_name
    #   <p>The name of the prepared statement to retrieve.</p>
    #
    # @option params [String] :work_group
    #   <p>The workgroup to which the statement to be retrieved belongs.</p>
    #
    # @return [Types::GetPreparedStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_prepared_statement(
    #     statement_name: 'StatementName', # required
    #     work_group: 'WorkGroup' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPreparedStatementOutput
    #   resp.data.prepared_statement #=> Types::PreparedStatement
    #   resp.data.prepared_statement.statement_name #=> String
    #   resp.data.prepared_statement.query_statement #=> String
    #   resp.data.prepared_statement.work_group_name #=> String
    #   resp.data.prepared_statement.description #=> String
    #   resp.data.prepared_statement.last_modified_time #=> Time
    #
    def get_prepared_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPreparedStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPreparedStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPreparedStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetPreparedStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPreparedStatement,
        stubs: @stubs,
        params_class: Params::GetPreparedStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_prepared_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a single execution of a query if you have access to the
    #             workgroup in which the query ran. Each time a query executes, information about the
    #             query execution is saved with a unique ID.</p>
    #
    # @param [Hash] params
    #   See {Types::GetQueryExecutionInput}.
    #
    # @option params [String] :query_execution_id
    #   <p>The unique ID of the query execution.</p>
    #
    # @return [Types::GetQueryExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_execution(
    #     query_execution_id: 'QueryExecutionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQueryExecutionOutput
    #   resp.data.query_execution #=> Types::QueryExecution
    #   resp.data.query_execution.query_execution_id #=> String
    #   resp.data.query_execution.query #=> String
    #   resp.data.query_execution.statement_type #=> String, one of ["DDL", "DML", "UTILITY"]
    #   resp.data.query_execution.result_configuration #=> Types::ResultConfiguration
    #   resp.data.query_execution.result_configuration.output_location #=> String
    #   resp.data.query_execution.result_configuration.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.query_execution.result_configuration.encryption_configuration.encryption_option #=> String, one of ["SSE_S3", "SSE_KMS", "CSE_KMS"]
    #   resp.data.query_execution.result_configuration.encryption_configuration.kms_key #=> String
    #   resp.data.query_execution.result_configuration.expected_bucket_owner #=> String
    #   resp.data.query_execution.result_configuration.acl_configuration #=> Types::AclConfiguration
    #   resp.data.query_execution.result_configuration.acl_configuration.s3_acl_option #=> String, one of ["BUCKET_OWNER_FULL_CONTROL"]
    #   resp.data.query_execution.query_execution_context #=> Types::QueryExecutionContext
    #   resp.data.query_execution.query_execution_context.database #=> String
    #   resp.data.query_execution.query_execution_context.catalog #=> String
    #   resp.data.query_execution.status #=> Types::QueryExecutionStatus
    #   resp.data.query_execution.status.state #=> String, one of ["QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"]
    #   resp.data.query_execution.status.state_change_reason #=> String
    #   resp.data.query_execution.status.submission_date_time #=> Time
    #   resp.data.query_execution.status.completion_date_time #=> Time
    #   resp.data.query_execution.status.athena_error #=> Types::AthenaError
    #   resp.data.query_execution.status.athena_error.error_category #=> Integer
    #   resp.data.query_execution.status.athena_error.error_type #=> Integer
    #   resp.data.query_execution.status.athena_error.retryable #=> Boolean
    #   resp.data.query_execution.status.athena_error.error_message #=> String
    #   resp.data.query_execution.statistics #=> Types::QueryExecutionStatistics
    #   resp.data.query_execution.statistics.engine_execution_time_in_millis #=> Integer
    #   resp.data.query_execution.statistics.data_scanned_in_bytes #=> Integer
    #   resp.data.query_execution.statistics.data_manifest_location #=> String
    #   resp.data.query_execution.statistics.total_execution_time_in_millis #=> Integer
    #   resp.data.query_execution.statistics.query_queue_time_in_millis #=> Integer
    #   resp.data.query_execution.statistics.query_planning_time_in_millis #=> Integer
    #   resp.data.query_execution.statistics.service_processing_time_in_millis #=> Integer
    #   resp.data.query_execution.work_group #=> String
    #   resp.data.query_execution.engine_version #=> Types::EngineVersion
    #   resp.data.query_execution.engine_version.selected_engine_version #=> String
    #   resp.data.query_execution.engine_version.effective_engine_version #=> String
    #
    def get_query_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQueryExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQueryExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQueryExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetQueryExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQueryExecution,
        stubs: @stubs,
        params_class: Params::GetQueryExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_query_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Streams the results of a single query execution specified by
    #                 <code>QueryExecutionId</code> from the Athena query results location in
    #                 Amazon S3. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/querying.html">Query Results</a> in the <i>Amazon Athena User Guide</i>. This request does not execute the query
    #             but returns results. Use <a>StartQueryExecution</a> to run a query.</p>
    #         <p>To stream query results successfully, the IAM principal with permission to call
    #                 <code>GetQueryResults</code> also must have permissions to the Amazon S3
    #             <code>GetObject</code> action for the Athena query results location.</p>
    #         <important>
    #             <p>IAM principals with permission to the Amazon S3
    #                 <code>GetObject</code> action for the query results location are able to retrieve
    #                 query results from Amazon S3 even if permission to the
    #                     <code>GetQueryResults</code> action is denied. To restrict user or role access,
    #                 ensure that Amazon S3 permissions to the Athena query location
    #                 are denied.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::GetQueryResultsInput}.
    #
    # @option params [String] :query_execution_id
    #   <p>The unique ID of the query execution.</p>
    #
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results (rows) to return in this request.</p>
    #
    # @return [Types::GetQueryResultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results(
    #     query_execution_id: 'QueryExecutionId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQueryResultsOutput
    #   resp.data.update_count #=> Integer
    #   resp.data.result_set #=> Types::ResultSet
    #   resp.data.result_set.rows #=> Array<Row>
    #   resp.data.result_set.rows[0] #=> Types::Row
    #   resp.data.result_set.rows[0].data #=> Array<Datum>
    #   resp.data.result_set.rows[0].data[0] #=> Types::Datum
    #   resp.data.result_set.rows[0].data[0].var_char_value #=> String
    #   resp.data.result_set.result_set_metadata #=> Types::ResultSetMetadata
    #   resp.data.result_set.result_set_metadata.column_info #=> Array<ColumnInfo>
    #   resp.data.result_set.result_set_metadata.column_info[0] #=> Types::ColumnInfo
    #   resp.data.result_set.result_set_metadata.column_info[0].catalog_name #=> String
    #   resp.data.result_set.result_set_metadata.column_info[0].schema_name #=> String
    #   resp.data.result_set.result_set_metadata.column_info[0].table_name #=> String
    #   resp.data.result_set.result_set_metadata.column_info[0].name #=> String
    #   resp.data.result_set.result_set_metadata.column_info[0].label #=> String
    #   resp.data.result_set.result_set_metadata.column_info[0].type #=> String
    #   resp.data.result_set.result_set_metadata.column_info[0].precision #=> Integer
    #   resp.data.result_set.result_set_metadata.column_info[0].scale #=> Integer
    #   resp.data.result_set.result_set_metadata.column_info[0].nullable #=> String, one of ["NOT_NULL", "NULLABLE", "UNKNOWN"]
    #   resp.data.result_set.result_set_metadata.column_info[0].case_sensitive #=> Boolean
    #   resp.data.next_token #=> String
    #
    def get_query_results(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQueryResultsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQueryResultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQueryResults
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetQueryResults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQueryResults,
        stubs: @stubs,
        params_class: Params::GetQueryResultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_query_results
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns table metadata for the specified catalog, database, and table.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTableMetadataInput}.
    #
    # @option params [String] :catalog_name
    #   <p>The name of the data catalog that contains the database and table metadata to
    #               return.</p>
    #
    # @option params [String] :database_name
    #   <p>The name of the database that contains the table metadata to return.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the table for which metadata is returned.</p>
    #
    # @return [Types::GetTableMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_metadata(
    #     catalog_name: 'CatalogName', # required
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTableMetadataOutput
    #   resp.data.table_metadata #=> Types::TableMetadata
    #   resp.data.table_metadata.name #=> String
    #   resp.data.table_metadata.create_time #=> Time
    #   resp.data.table_metadata.last_access_time #=> Time
    #   resp.data.table_metadata.table_type #=> String
    #   resp.data.table_metadata.columns #=> Array<Column>
    #   resp.data.table_metadata.columns[0] #=> Types::Column
    #   resp.data.table_metadata.columns[0].name #=> String
    #   resp.data.table_metadata.columns[0].type #=> String
    #   resp.data.table_metadata.columns[0].comment #=> String
    #   resp.data.table_metadata.partition_keys #=> Array<Column>
    #   resp.data.table_metadata.parameters #=> Hash<String, String>
    #   resp.data.table_metadata.parameters['key'] #=> String
    #
    def get_table_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTableMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTableMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTableMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::MetadataException]),
        data_parser: Parsers::GetTableMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTableMetadata,
        stubs: @stubs,
        params_class: Params::GetTableMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_table_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the workgroup with the specified name.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWorkGroupInput}.
    #
    # @option params [String] :work_group
    #   <p>The name of the workgroup.</p>
    #
    # @return [Types::GetWorkGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_work_group(
    #     work_group: 'WorkGroup' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWorkGroupOutput
    #   resp.data.work_group #=> Types::WorkGroup
    #   resp.data.work_group.name #=> String
    #   resp.data.work_group.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.work_group.configuration #=> Types::WorkGroupConfiguration
    #   resp.data.work_group.configuration.result_configuration #=> Types::ResultConfiguration
    #   resp.data.work_group.configuration.result_configuration.output_location #=> String
    #   resp.data.work_group.configuration.result_configuration.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.work_group.configuration.result_configuration.encryption_configuration.encryption_option #=> String, one of ["SSE_S3", "SSE_KMS", "CSE_KMS"]
    #   resp.data.work_group.configuration.result_configuration.encryption_configuration.kms_key #=> String
    #   resp.data.work_group.configuration.result_configuration.expected_bucket_owner #=> String
    #   resp.data.work_group.configuration.result_configuration.acl_configuration #=> Types::AclConfiguration
    #   resp.data.work_group.configuration.result_configuration.acl_configuration.s3_acl_option #=> String, one of ["BUCKET_OWNER_FULL_CONTROL"]
    #   resp.data.work_group.configuration.enforce_work_group_configuration #=> Boolean
    #   resp.data.work_group.configuration.publish_cloud_watch_metrics_enabled #=> Boolean
    #   resp.data.work_group.configuration.bytes_scanned_cutoff_per_query #=> Integer
    #   resp.data.work_group.configuration.requester_pays_enabled #=> Boolean
    #   resp.data.work_group.configuration.engine_version #=> Types::EngineVersion
    #   resp.data.work_group.configuration.engine_version.selected_engine_version #=> String
    #   resp.data.work_group.configuration.engine_version.effective_engine_version #=> String
    #   resp.data.work_group.description #=> String
    #   resp.data.work_group.creation_time #=> Time
    #
    def get_work_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWorkGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWorkGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWorkGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetWorkGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWorkGroup,
        stubs: @stubs,
        params_class: Params::GetWorkGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_work_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the data catalogs in the current Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataCatalogsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of data catalogs to return.</p>
    #
    # @return [Types::ListDataCatalogsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_catalogs(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataCatalogsOutput
    #   resp.data.data_catalogs_summary #=> Array<DataCatalogSummary>
    #   resp.data.data_catalogs_summary[0] #=> Types::DataCatalogSummary
    #   resp.data.data_catalogs_summary[0].catalog_name #=> String
    #   resp.data.data_catalogs_summary[0].type #=> String, one of ["LAMBDA", "GLUE", "HIVE"]
    #   resp.data.next_token #=> String
    #
    def list_data_catalogs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataCatalogsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataCatalogsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataCatalogs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListDataCatalogs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataCatalogs,
        stubs: @stubs,
        params_class: Params::ListDataCatalogsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_catalogs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the databases in the specified data catalog.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatabasesInput}.
    #
    # @option params [String] :catalog_name
    #   <p>The name of the data catalog that contains the databases to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to return.</p>
    #
    # @return [Types::ListDatabasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_databases(
    #     catalog_name: 'CatalogName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatabasesOutput
    #   resp.data.database_list #=> Array<Database>
    #   resp.data.database_list[0] #=> Types::Database
    #   resp.data.database_list[0].name #=> String
    #   resp.data.database_list[0].description #=> String
    #   resp.data.database_list[0].parameters #=> Hash<String, String>
    #   resp.data.database_list[0].parameters['key'] #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::MetadataException]),
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

    # <p>Returns a list of engine versions that are available to choose from, including the
    #             Auto option.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEngineVersionsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of engine versions to return in this request.</p>
    #
    # @return [Types::ListEngineVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engine_versions(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEngineVersionsOutput
    #   resp.data.engine_versions #=> Array<EngineVersion>
    #   resp.data.engine_versions[0] #=> Types::EngineVersion
    #   resp.data.engine_versions[0].selected_engine_version #=> String
    #   resp.data.engine_versions[0].effective_engine_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_engine_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEngineVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEngineVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEngineVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListEngineVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEngineVersions,
        stubs: @stubs,
        params_class: Params::ListEngineVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_engine_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of available query IDs only for queries saved in the specified
    #             workgroup. Requires that you have access to the specified workgroup. If a workgroup is
    #             not specified, lists the saved queries for the primary workgroup.</p>
    #         <p>For code samples using the Amazon Web Services SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and
    #                 Code Samples</a> in the <i>Amazon Athena User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNamedQueriesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of queries to return in this request.</p>
    #
    # @option params [String] :work_group
    #   <p>The name of the workgroup from which the named queries are being returned. If a
    #               workgroup is not specified, the saved queries for the primary workgroup are
    #               returned.</p>
    #
    # @return [Types::ListNamedQueriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_named_queries(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     work_group: 'WorkGroup'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNamedQueriesOutput
    #   resp.data.named_query_ids #=> Array<String>
    #   resp.data.named_query_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_named_queries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNamedQueriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNamedQueriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNamedQueries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListNamedQueries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNamedQueries,
        stubs: @stubs,
        params_class: Params::ListNamedQueriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_named_queries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the prepared statements in the specfied workgroup.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPreparedStatementsInput}.
    #
    # @option params [String] :work_group
    #   <p>The workgroup to list the prepared statements for.</p>
    #
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #
    # @return [Types::ListPreparedStatementsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_prepared_statements(
    #     work_group: 'WorkGroup', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPreparedStatementsOutput
    #   resp.data.prepared_statements #=> Array<PreparedStatementSummary>
    #   resp.data.prepared_statements[0] #=> Types::PreparedStatementSummary
    #   resp.data.prepared_statements[0].statement_name #=> String
    #   resp.data.prepared_statements[0].last_modified_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_prepared_statements(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPreparedStatementsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPreparedStatementsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPreparedStatements
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListPreparedStatements
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPreparedStatements,
        stubs: @stubs,
        params_class: Params::ListPreparedStatementsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_prepared_statements
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of available query execution IDs for the queries in the specified
    #             workgroup. If a workgroup is not specified, returns a list of query execution IDs for
    #             the primary workgroup. Requires you to have access to the workgroup in which the queries
    #             ran.</p>
    #         <p>For code samples using the Amazon Web Services SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and
    #                 Code Samples</a> in the <i>Amazon Athena User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListQueryExecutionsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of query executions to return in this request.</p>
    #
    # @option params [String] :work_group
    #   <p>The name of the workgroup from which queries are being returned. If a workgroup is not
    #               specified, a list of available query execution IDs for the queries in the primary
    #               workgroup is returned.</p>
    #
    # @return [Types::ListQueryExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_query_executions(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     work_group: 'WorkGroup'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListQueryExecutionsOutput
    #   resp.data.query_execution_ids #=> Array<String>
    #   resp.data.query_execution_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_query_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListQueryExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListQueryExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListQueryExecutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListQueryExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListQueryExecutions,
        stubs: @stubs,
        params_class: Params::ListQueryExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_query_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the metadata for the tables in the specified data catalog database.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTableMetadataInput}.
    #
    # @option params [String] :catalog_name
    #   <p>The name of the data catalog for which table metadata should be returned.</p>
    #
    # @option params [String] :database_name
    #   <p>The name of the database for which table metadata should be returned.</p>
    #
    # @option params [String] :expression
    #   <p>A regex filter that pattern-matches table names. If no expression is supplied,
    #               metadata for all tables are listed.</p>
    #
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to return.</p>
    #
    # @return [Types::ListTableMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_table_metadata(
    #     catalog_name: 'CatalogName', # required
    #     database_name: 'DatabaseName', # required
    #     expression: 'Expression',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTableMetadataOutput
    #   resp.data.table_metadata_list #=> Array<TableMetadata>
    #   resp.data.table_metadata_list[0] #=> Types::TableMetadata
    #   resp.data.table_metadata_list[0].name #=> String
    #   resp.data.table_metadata_list[0].create_time #=> Time
    #   resp.data.table_metadata_list[0].last_access_time #=> Time
    #   resp.data.table_metadata_list[0].table_type #=> String
    #   resp.data.table_metadata_list[0].columns #=> Array<Column>
    #   resp.data.table_metadata_list[0].columns[0] #=> Types::Column
    #   resp.data.table_metadata_list[0].columns[0].name #=> String
    #   resp.data.table_metadata_list[0].columns[0].type #=> String
    #   resp.data.table_metadata_list[0].columns[0].comment #=> String
    #   resp.data.table_metadata_list[0].partition_keys #=> Array<Column>
    #   resp.data.table_metadata_list[0].parameters #=> Hash<String, String>
    #   resp.data.table_metadata_list[0].parameters['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_table_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTableMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTableMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTableMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::MetadataException]),
        data_parser: Parsers::ListTableMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTableMetadata,
        stubs: @stubs,
        params_class: Params::ListTableMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_table_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags associated with an Athena workgroup or data catalog
    #             resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Lists the tags for the resource with the specified ARN.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no additional results for
    #               this request, where the request lists the tags for the resource with the specified
    #               ARN.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request that lists the tags for the
    #               resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN', # required
    #     next_token: 'NextToken',
    #     max_results: 1
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Lists available workgroups for the account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of workgroups to return in this request.</p>
    #
    # @return [Types::ListWorkGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_work_groups(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkGroupsOutput
    #   resp.data.work_groups #=> Array<WorkGroupSummary>
    #   resp.data.work_groups[0] #=> Types::WorkGroupSummary
    #   resp.data.work_groups[0].name #=> String
    #   resp.data.work_groups[0].state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.work_groups[0].description #=> String
    #   resp.data.work_groups[0].creation_time #=> Time
    #   resp.data.work_groups[0].engine_version #=> Types::EngineVersion
    #   resp.data.work_groups[0].engine_version.selected_engine_version #=> String
    #   resp.data.work_groups[0].engine_version.effective_engine_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_work_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListWorkGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkGroups,
        stubs: @stubs,
        params_class: Params::ListWorkGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_work_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs the SQL query statements contained in the <code>Query</code>. Requires you to
    #             have access to the workgroup in which the query ran. Running queries against an external
    #             catalog requires <a>GetDataCatalog</a> permission to the catalog. For code
    #             samples using the Amazon Web Services SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and
    #                 Code Samples</a> in the <i>Amazon Athena User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartQueryExecutionInput}.
    #
    # @option params [String] :query_string
    #   <p>The SQL query statements to be executed.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the query is
    #               idempotent (executes only once). If another <code>StartQueryExecution</code> request is
    #               received, the same response is returned and another query is not created. If a parameter
    #               has changed, for example, the <code>QueryString</code>, an error is returned.</p>
    #           <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #           </important>
    #
    # @option params [QueryExecutionContext] :query_execution_context
    #   <p>The database within which the query executes.</p>
    #
    # @option params [ResultConfiguration] :result_configuration
    #   <p>Specifies information about where and how to save the results of the query execution.
    #               If the query runs in a workgroup, then workgroup's settings may override query settings.
    #               This affects the query results location. The workgroup settings override is specified in
    #               EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #
    # @option params [String] :work_group
    #   <p>The name of the workgroup in which the query is being started.</p>
    #
    # @return [Types::StartQueryExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query_execution(
    #     query_string: 'QueryString', # required
    #     client_request_token: 'ClientRequestToken',
    #     query_execution_context: {
    #       database: 'Database',
    #       catalog: 'Catalog'
    #     },
    #     result_configuration: {
    #       output_location: 'OutputLocation',
    #       encryption_configuration: {
    #         encryption_option: 'SSE_S3', # required - accepts ["SSE_S3", "SSE_KMS", "CSE_KMS"]
    #         kms_key: 'KmsKey'
    #       },
    #       expected_bucket_owner: 'ExpectedBucketOwner',
    #       acl_configuration: {
    #         s3_acl_option: 'BUCKET_OWNER_FULL_CONTROL' # required - accepts ["BUCKET_OWNER_FULL_CONTROL"]
    #       }
    #     },
    #     work_group: 'WorkGroup'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartQueryExecutionOutput
    #   resp.data.query_execution_id #=> String
    #
    def start_query_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartQueryExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartQueryExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartQueryExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::StartQueryExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartQueryExecution,
        stubs: @stubs,
        params_class: Params::StartQueryExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_query_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a query execution. Requires you to have access to the workgroup in which the
    #             query ran.</p>
    #         <p>For code samples using the Amazon Web Services SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and
    #                 Code Samples</a> in the <i>Amazon Athena User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopQueryExecutionInput}.
    #
    # @option params [String] :query_execution_id
    #   <p>The unique ID of the query execution to stop.</p>
    #
    # @return [Types::StopQueryExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_query_execution(
    #     query_execution_id: 'QueryExecutionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopQueryExecutionOutput
    #
    def stop_query_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopQueryExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopQueryExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopQueryExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopQueryExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopQueryExecution,
        stubs: @stubs,
        params_class: Params::StopQueryExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_query_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to an Athena resource. A tag is a label that you
    #             assign to a resource. In Athena, a resource can be a workgroup or data
    #             catalog. Each tag consists of a key and an optional value, both of which you define. For
    #             example, you can use tags to categorize Athena workgroups or data catalogs
    #             by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to
    #             search and filter workgroups or data catalogs in your account. For best practices, see
    #                 <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">Tagging Best Practices</a>. Tag keys can be from 1 to 128 UTF-8 Unicode
    #             characters, and tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use
    #             letters and numbers representable in UTF-8, and the following characters: + - = . _ : /
    #             @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you
    #             specify more than one tag, separate them by commas.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Specifies the ARN of the Athena resource (workgroup or data catalog) to
    #               which tags are to be added.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of one or more tags, separated by commas, to be added to an Athena workgroup or data catalog resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Removes one or more tags from a data catalog or workgroup resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Specifies the ARN of the resource from which tags are to be removed.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A comma-separated list of one or more tag keys whose tags are to be removed from the
    #               specified resource.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Updates the data catalog that has the specified name.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataCatalogInput}.
    #
    # @option params [String] :name
    #   <p>The name of the data catalog to update. The catalog name must be unique for the
    #                   Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at
    #               sign, or hyphen characters. The remainder of the length constraint of 256 is reserved
    #               for use by Athena.</p>
    #
    # @option params [String] :type
    #   <p>Specifies the type of data catalog to update. Specify <code>LAMBDA</code> for a
    #               federated catalog, <code>HIVE</code> for an external hive metastore, or
    #                   <code>GLUE</code> for an Glue Data Catalog.</p>
    #
    # @option params [String] :description
    #   <p>New or modified text that describes the data catalog.</p>
    #
    # @option params [Hash<String, String>] :parameters
    #   <p>Specifies the Lambda function or functions to use for updating the data
    #               catalog. This is a mapping whose values depend on the catalog type. </p>
    #           <ul>
    #               <li>
    #                   <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    #                           <code>metadata-function</code> parameter is required. <code>The
    #                           sdk-version</code> parameter is optional and defaults to the currently
    #                       supported version.</p>
    #                   <p>
    #                     <code>metadata-function=<i>lambda_arn</i>,
    #                               sdk-version=<i>version_number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    #                       of required parameters, but not both.</p>
    #                   <ul>
    #                     <li>
    #                           <p>If you have one Lambda function that processes metadata
    #                               and another for reading the actual data, use the following syntax. Both
    #                               parameters are required.</p>
    #                           <p>
    #                           <code>metadata-function=<i>lambda_arn</i>,
    #                                       record-function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p> If you have a composite Lambda function that processes
    #                               both metadata and data, use the following syntax to specify your Lambda function.</p>
    #                           <p>
    #                           <code>function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateDataCatalogOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_catalog(
    #     name: 'Name', # required
    #     type: 'LAMBDA', # required - accepts ["LAMBDA", "GLUE", "HIVE"]
    #     description: 'Description',
    #     parameters: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataCatalogOutput
    #
    def update_data_catalog(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataCatalogInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataCatalogInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataCatalog
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateDataCatalog
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataCatalog,
        stubs: @stubs,
        params_class: Params::UpdateDataCatalogOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_catalog
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a <a>NamedQuery</a> object. The database or workgroup cannot be
    #             updated.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNamedQueryInput}.
    #
    # @option params [String] :named_query_id
    #   <p>The unique identifier (UUID) of the query.</p>
    #
    # @option params [String] :name
    #   <p>The name of the query.</p>
    #
    # @option params [String] :description
    #   <p>The query description.</p>
    #
    # @option params [String] :query_string
    #   <p>The contents of the query with all query statements.</p>
    #
    # @return [Types::UpdateNamedQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_named_query(
    #     named_query_id: 'NamedQueryId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     query_string: 'QueryString' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNamedQueryOutput
    #
    def update_named_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNamedQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNamedQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNamedQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateNamedQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNamedQuery,
        stubs: @stubs,
        params_class: Params::UpdateNamedQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_named_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a prepared statement.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePreparedStatementInput}.
    #
    # @option params [String] :statement_name
    #   <p>The name of the prepared statement.</p>
    #
    # @option params [String] :work_group
    #   <p>The workgroup for the prepared statement.</p>
    #
    # @option params [String] :query_statement
    #   <p>The query string for the prepared statement.</p>
    #
    # @option params [String] :description
    #   <p>The description of the prepared statement.</p>
    #
    # @return [Types::UpdatePreparedStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_prepared_statement(
    #     statement_name: 'StatementName', # required
    #     work_group: 'WorkGroup', # required
    #     query_statement: 'QueryStatement', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePreparedStatementOutput
    #
    def update_prepared_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePreparedStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePreparedStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePreparedStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdatePreparedStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePreparedStatement,
        stubs: @stubs,
        params_class: Params::UpdatePreparedStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_prepared_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the workgroup with the specified name. The workgroup's name cannot be
    #             changed.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWorkGroupInput}.
    #
    # @option params [String] :work_group
    #   <p>The specified workgroup that will be updated.</p>
    #
    # @option params [String] :description
    #   <p>The workgroup description.</p>
    #
    # @option params [WorkGroupConfigurationUpdates] :configuration_updates
    #   <p>The workgroup configuration that will be updated for the given workgroup.</p>
    #
    # @option params [String] :state
    #   <p>The workgroup state that will be updated for the given workgroup.</p>
    #
    # @return [Types::UpdateWorkGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_work_group(
    #     work_group: 'WorkGroup', # required
    #     description: 'Description',
    #     configuration_updates: {
    #       enforce_work_group_configuration: false,
    #       result_configuration_updates: {
    #         output_location: 'OutputLocation',
    #         remove_output_location: false,
    #         encryption_configuration: {
    #           encryption_option: 'SSE_S3', # required - accepts ["SSE_S3", "SSE_KMS", "CSE_KMS"]
    #           kms_key: 'KmsKey'
    #         },
    #         remove_encryption_configuration: false,
    #         expected_bucket_owner: 'ExpectedBucketOwner',
    #         remove_expected_bucket_owner: false,
    #         acl_configuration: {
    #           s3_acl_option: 'BUCKET_OWNER_FULL_CONTROL' # required - accepts ["BUCKET_OWNER_FULL_CONTROL"]
    #         },
    #         remove_acl_configuration: false
    #       },
    #       publish_cloud_watch_metrics_enabled: false,
    #       bytes_scanned_cutoff_per_query: 1,
    #       remove_bytes_scanned_cutoff_per_query: false,
    #       requester_pays_enabled: false,
    #       engine_version: {
    #         selected_engine_version: 'SelectedEngineVersion',
    #         effective_engine_version: 'EffectiveEngineVersion'
    #       }
    #     },
    #     state: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWorkGroupOutput
    #
    def update_work_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWorkGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWorkGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWorkGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateWorkGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWorkGroup,
        stubs: @stubs,
        params_class: Params::UpdateWorkGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_work_group
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
