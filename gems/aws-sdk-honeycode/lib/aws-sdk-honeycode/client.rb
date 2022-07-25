# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Honeycode
  # An API client for SheetsPublicApiService
  # See {#initialize} for a full list of supported configuration options
  # <p>
  #       Amazon Honeycode is a fully managed service that allows you to quickly build mobile and web apps for teams—without
  #       programming. Build Honeycode apps for managing almost anything, like projects, customers, operations, approvals,
  #       resources, and even your team.
  #     </p>
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
    def initialize(config = AWS::SDK::Honeycode::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>
    #             The BatchCreateTableRows API allows you to create one or more rows at the end of a table in a workbook.
    #             The API allows you to specify the values to set in some or all of the columns in the new rows.
    #         </p>
    #         <p>
    #             If a column is not explicitly set in a specific row, then the column level formula specified in the table
    #             will be applied to the new row. If there is no column level formula but the last row of the table has a
    #             formula, then that formula will be copied down to the new row. If there is no column level formula and
    #             no formula in the last row of the table, then that column will be left blank for the new rows.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::BatchCreateTableRowsInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook where the new rows are being added.</p>
    #           <p>
    #               If a workbook with the specified ID could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [String] :table_id
    #   <p>The ID of the table where the new rows are being added.</p>
    #           <p>
    #               If a table with the specified ID could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [Array<CreateRowData>] :rows_to_create
    #   <p>
    #               The list of rows to create at the end of the table. Each item in this list needs to have a batch item id
    #               to uniquely identify the element in the request and the cells to create for that row.
    #               You need to specify at least one item in this list.
    #           </p>
    #           <p>
    #               Note that if one of the column ids in any of the rows in the request does not exist in the table, then the
    #               request fails and no updates are made to the table.
    #           </p>
    #
    # @option params [String] :client_request_token
    #   <p>
    #               The request token for performing the batch create operation.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will not perform
    #               the operation again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    # @return [Types::BatchCreateTableRowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_table_rows(
    #     workbook_id: 'workbookId', # required
    #     table_id: 'tableId', # required
    #     rows_to_create: [
    #       {
    #         batch_item_id: 'batchItemId', # required
    #         cells_to_create: {
    #           'key' => {
    #             fact: 'fact',
    #             facts: [
    #               'member'
    #             ]
    #           }
    #         } # required
    #       }
    #     ], # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchCreateTableRowsOutput
    #   resp.data.workbook_cursor #=> Integer
    #   resp.data.created_rows #=> Hash<String, String>
    #   resp.data.created_rows['key'] #=> String
    #   resp.data.failed_batch_items #=> Array<FailedBatchItem>
    #   resp.data.failed_batch_items[0] #=> Types::FailedBatchItem
    #   resp.data.failed_batch_items[0].id #=> String
    #   resp.data.failed_batch_items[0].error_message #=> String
    #
    def batch_create_table_rows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchCreateTableRowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchCreateTableRowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchCreateTableRows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::BatchCreateTableRows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchCreateTableRows,
        stubs: @stubs,
        params_class: Params::BatchCreateTableRowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_create_table_rows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The BatchDeleteTableRows API allows you to delete one or more rows from a table in a workbook.
    #             You need to specify the ids of the rows that you want to delete from the table.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteTableRowsInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook where the rows are being deleted.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [String] :table_id
    #   <p>The ID of the table where the rows are being deleted.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [Array<String>] :row_ids
    #   <p>
    #               The list of row ids to delete from the table. You need to specify at least one row id in this list.
    #           </p>
    #           <p>
    #               Note that if one of the row ids provided in the request does not exist in the table, then the request fails
    #               and no rows are deleted from the table.
    #           </p>
    #
    # @option params [String] :client_request_token
    #   <p>
    #               The request token for performing the delete action.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will not perform
    #               the action again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    # @return [Types::BatchDeleteTableRowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_table_rows(
    #     workbook_id: 'workbookId', # required
    #     table_id: 'tableId', # required
    #     row_ids: [
    #       'member'
    #     ], # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteTableRowsOutput
    #   resp.data.workbook_cursor #=> Integer
    #   resp.data.failed_batch_items #=> Array<FailedBatchItem>
    #   resp.data.failed_batch_items[0] #=> Types::FailedBatchItem
    #   resp.data.failed_batch_items[0].id #=> String
    #   resp.data.failed_batch_items[0].error_message #=> String
    #
    def batch_delete_table_rows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteTableRowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteTableRowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteTableRows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::BatchDeleteTableRows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteTableRows,
        stubs: @stubs,
        params_class: Params::BatchDeleteTableRowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_table_rows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The BatchUpdateTableRows API allows you to update one or more rows in a table in a workbook.
    #         </p>
    #         <p>
    #             You can specify the values to set in some or all of the columns in the table for the specified
    #             rows.
    #             If a column is not explicitly specified in a particular row, then that column will not be updated
    #             for that row. To clear out the data in a specific cell, you need to set the value as an empty string
    #             ("").
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::BatchUpdateTableRowsInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook where the rows are being updated.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [String] :table_id
    #   <p>The ID of the table where the rows are being updated.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [Array<UpdateRowData>] :rows_to_update
    #   <p>
    #               The list of rows to update in the table. Each item in this list needs to contain the row id to update
    #               along with the map of column id to cell values for each column in that row that needs to be updated.
    #               You need to specify at least one row in this list, and for each row, you need to specify at least one
    #               column to update.
    #           </p>
    #           <p>
    #               Note that if one of the row or column ids in the request does not exist in the table, then the request fails
    #               and no updates are made to the table.
    #           </p>
    #
    # @option params [String] :client_request_token
    #   <p>
    #               The request token for performing the update action.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will not perform
    #               the action again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    # @return [Types::BatchUpdateTableRowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_table_rows(
    #     workbook_id: 'workbookId', # required
    #     table_id: 'tableId', # required
    #     rows_to_update: [
    #       {
    #         row_id: 'rowId', # required
    #         cells_to_update: {
    #           'key' => {
    #             fact: 'fact',
    #             facts: [
    #               'member'
    #             ]
    #           }
    #         } # required
    #       }
    #     ], # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchUpdateTableRowsOutput
    #   resp.data.workbook_cursor #=> Integer
    #   resp.data.failed_batch_items #=> Array<FailedBatchItem>
    #   resp.data.failed_batch_items[0] #=> Types::FailedBatchItem
    #   resp.data.failed_batch_items[0].id #=> String
    #   resp.data.failed_batch_items[0].error_message #=> String
    #
    def batch_update_table_rows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchUpdateTableRowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchUpdateTableRowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchUpdateTableRows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::BatchUpdateTableRows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchUpdateTableRows,
        stubs: @stubs,
        params_class: Params::BatchUpdateTableRowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_update_table_rows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The BatchUpsertTableRows API allows you to upsert one or more rows in a table. The upsert
    #             operation takes a filter expression as input and evaluates it to find matching rows on the destination
    #             table. If matching rows are found, it will update the cells in the matching rows to new values specified
    #             in the request. If no matching rows are found, a new row is added at the end of the table and the cells in
    #             that row are set to the new values specified in the request.
    #         </p>
    #         <p>
    #             You can specify the values to set in some or all of the columns in the table for the
    #             matching or newly appended rows. If a column is not explicitly specified for a particular row, then that
    #             column will not be updated for that row. To clear out the data in a specific cell, you need to set the value
    #             as an empty string ("").
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::BatchUpsertTableRowsInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook where the rows are being upserted.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [String] :table_id
    #   <p>The ID of the table where the rows are being upserted.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [Array<UpsertRowData>] :rows_to_upsert
    #   <p>
    #               The list of rows to upsert in the table. Each item in this list needs to have a batch item id to uniquely
    #               identify the element in the request, a filter expression to find the rows to update for that element
    #               and the cell values to set for each column in the upserted rows. You need to specify
    #               at least one item in this list.
    #           </p>
    #           <p>
    #               Note that if one of the filter formulas in the request fails to evaluate because of an error or one of the
    #               column ids in any of the rows does not exist in the table, then the request fails
    #               and no updates are made to the table.
    #           </p>
    #
    # @option params [String] :client_request_token
    #   <p>
    #               The request token for performing the update action.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will not perform
    #               the action again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    # @return [Types::BatchUpsertTableRowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_upsert_table_rows(
    #     workbook_id: 'workbookId', # required
    #     table_id: 'tableId', # required
    #     rows_to_upsert: [
    #       {
    #         batch_item_id: 'batchItemId', # required
    #         filter: {
    #           formula: 'formula', # required
    #           context_row_id: 'contextRowId'
    #         }, # required
    #         cells_to_update: {
    #           'key' => {
    #             fact: 'fact',
    #             facts: [
    #               'member'
    #             ]
    #           }
    #         } # required
    #       }
    #     ], # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchUpsertTableRowsOutput
    #   resp.data.rows #=> Hash<String, UpsertRowsResult>
    #   resp.data.rows['key'] #=> Types::UpsertRowsResult
    #   resp.data.rows['key'].row_ids #=> Array<String>
    #   resp.data.rows['key'].row_ids[0] #=> String
    #   resp.data.rows['key'].upsert_action #=> String, one of ["UPDATED", "APPENDED"]
    #   resp.data.workbook_cursor #=> Integer
    #   resp.data.failed_batch_items #=> Array<FailedBatchItem>
    #   resp.data.failed_batch_items[0] #=> Types::FailedBatchItem
    #   resp.data.failed_batch_items[0].id #=> String
    #   resp.data.failed_batch_items[0].error_message #=> String
    #
    def batch_upsert_table_rows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchUpsertTableRowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchUpsertTableRowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchUpsertTableRows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::BatchUpsertTableRows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchUpsertTableRows,
        stubs: @stubs,
        params_class: Params::BatchUpsertTableRowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_upsert_table_rows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The DescribeTableDataImportJob API allows you to retrieve the status and details of a table data import job.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTableDataImportJobInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook into which data was imported.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [String] :table_id
    #   <p>The ID of the table into which data was imported.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [String] :job_id
    #   <p>The ID of the job that was returned by the StartTableDataImportJob request.</p>
    #           <p>
    #               If a job with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @return [Types::DescribeTableDataImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table_data_import_job(
    #     workbook_id: 'workbookId', # required
    #     table_id: 'tableId', # required
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTableDataImportJobOutput
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.message #=> String
    #   resp.data.job_metadata #=> Types::TableDataImportJobMetadata
    #   resp.data.job_metadata.submitter #=> Types::ImportJobSubmitter
    #   resp.data.job_metadata.submitter.email #=> String
    #   resp.data.job_metadata.submitter.user_arn #=> String
    #   resp.data.job_metadata.submit_time #=> Time
    #   resp.data.job_metadata.import_options #=> Types::ImportOptions
    #   resp.data.job_metadata.import_options.destination_options #=> Types::DestinationOptions
    #   resp.data.job_metadata.import_options.destination_options.column_map #=> Hash<String, SourceDataColumnProperties>
    #   resp.data.job_metadata.import_options.destination_options.column_map['key'] #=> Types::SourceDataColumnProperties
    #   resp.data.job_metadata.import_options.destination_options.column_map['key'].column_index #=> Integer
    #   resp.data.job_metadata.import_options.delimited_text_options #=> Types::DelimitedTextImportOptions
    #   resp.data.job_metadata.import_options.delimited_text_options.delimiter #=> String
    #   resp.data.job_metadata.import_options.delimited_text_options.has_header_row #=> Boolean
    #   resp.data.job_metadata.import_options.delimited_text_options.ignore_empty_rows #=> Boolean
    #   resp.data.job_metadata.import_options.delimited_text_options.data_character_encoding #=> String, one of ["UTF-8", "US-ASCII", "ISO-8859-1", "UTF-16BE", "UTF-16LE", "UTF-16"]
    #   resp.data.job_metadata.data_source #=> Types::ImportDataSource
    #   resp.data.job_metadata.data_source.data_source_config #=> Types::ImportDataSourceConfig
    #   resp.data.job_metadata.data_source.data_source_config.data_source_url #=> String
    #   resp.data.error_code #=> String, one of ["ACCESS_DENIED", "INVALID_URL_ERROR", "INVALID_IMPORT_OPTIONS_ERROR", "INVALID_TABLE_ID_ERROR", "INVALID_TABLE_COLUMN_ID_ERROR", "TABLE_NOT_FOUND_ERROR", "FILE_EMPTY_ERROR", "INVALID_FILE_TYPE_ERROR", "FILE_PARSING_ERROR", "FILE_SIZE_LIMIT_ERROR", "FILE_NOT_FOUND_ERROR", "UNKNOWN_ERROR", "RESOURCE_NOT_FOUND_ERROR", "SYSTEM_LIMIT_ERROR"]
    #
    def describe_table_data_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTableDataImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTableDataImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTableDataImportJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeTableDataImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTableDataImportJob,
        stubs: @stubs,
        params_class: Params::DescribeTableDataImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_table_data_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The GetScreenData API allows retrieval of data from a screen in a Honeycode app.
    #             The API allows setting local variables in the screen to filter, sort or otherwise affect what will be
    #             displayed on the screen.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetScreenDataInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook that contains the screen.</p>
    #
    # @option params [String] :app_id
    #   <p>The ID of the app that contains the screen.</p>
    #
    # @option params [String] :screen_id
    #   <p>The ID of the screen.</p>
    #
    # @option params [Hash<String, VariableValue>] :variables
    #   <p>
    #               Variables are optional and are needed only if the screen requires them to render correctly. Variables are
    #               specified as a map where the key is the name of the variable as defined on the screen. The value is an
    #               object which currently has only one property, rawValue, which holds the value of the variable to be passed
    #               to the screen.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #               The number of results to be returned on a single page.
    #               Specify a number between 1 and 100. The maximum value is 100.
    #           </p>
    #           <p>
    #               This parameter is optional. If you don't specify this parameter, the default page size is 100.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>
    #               This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
    #           </p>
    #           <p>
    #               Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
    #               will throw ValidationException.
    #           </p>
    #
    # @return [Types::GetScreenDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_screen_data(
    #     workbook_id: 'workbookId', # required
    #     app_id: 'appId', # required
    #     screen_id: 'screenId', # required
    #     variables: {
    #       'key' => {
    #         raw_value: 'rawValue' # required
    #       }
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetScreenDataOutput
    #   resp.data.results #=> Hash<String, ResultSet>
    #   resp.data.results['key'] #=> Types::ResultSet
    #   resp.data.results['key'].headers #=> Array<ColumnMetadata>
    #   resp.data.results['key'].headers[0] #=> Types::ColumnMetadata
    #   resp.data.results['key'].headers[0].name #=> String
    #   resp.data.results['key'].headers[0].format #=> String, one of ["AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"]
    #   resp.data.results['key'].rows #=> Array<ResultRow>
    #   resp.data.results['key'].rows[0] #=> Types::ResultRow
    #   resp.data.results['key'].rows[0].row_id #=> String
    #   resp.data.results['key'].rows[0].data_items #=> Array<DataItem>
    #   resp.data.results['key'].rows[0].data_items[0] #=> Types::DataItem
    #   resp.data.results['key'].rows[0].data_items[0].override_format #=> String, one of ["AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"]
    #   resp.data.results['key'].rows[0].data_items[0].raw_value #=> String
    #   resp.data.results['key'].rows[0].data_items[0].formatted_value #=> String
    #   resp.data.workbook_cursor #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_screen_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetScreenDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetScreenDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetScreenData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetScreenData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetScreenData,
        stubs: @stubs,
        params_class: Params::GetScreenDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_screen_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The InvokeScreenAutomation API allows invoking an action defined in a screen in a Honeycode app.
    #             The API allows setting local variables, which can then be used in the automation being invoked.
    #             This allows automating the Honeycode app interactions to write, update or delete data in the workbook.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::InvokeScreenAutomationInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook that contains the screen automation.</p>
    #
    # @option params [String] :app_id
    #   <p>The ID of the app that contains the screen automation.</p>
    #
    # @option params [String] :screen_id
    #   <p>The ID of the screen that contains the screen automation.</p>
    #
    # @option params [String] :screen_automation_id
    #   <p>The ID of the automation action to be performed.</p>
    #
    # @option params [Hash<String, VariableValue>] :variables
    #   <p>
    #               Variables are specified as a map where the key is the name of the variable as defined on the screen. The value is an
    #               object which currently has only one property, rawValue, which holds the value of the variable to be passed
    #               to the screen. Any variables defined in a screen are required to be passed in the call.
    #           </p>
    #
    # @option params [String] :row_id
    #   <p>
    #               The row ID for the automation if the automation is defined inside a block with source or list.
    #           </p>
    #
    # @option params [String] :client_request_token
    #   <p>
    #               The request token for performing the automation action.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will return the
    #               response of the previous call rather than performing the action again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    # @return [Types::InvokeScreenAutomationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_screen_automation(
    #     workbook_id: 'workbookId', # required
    #     app_id: 'appId', # required
    #     screen_id: 'screenId', # required
    #     screen_automation_id: 'screenAutomationId', # required
    #     variables: {
    #       'key' => {
    #         raw_value: 'rawValue' # required
    #       }
    #     },
    #     row_id: 'rowId',
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InvokeScreenAutomationOutput
    #   resp.data.workbook_cursor #=> Integer
    #
    def invoke_screen_automation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InvokeScreenAutomationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InvokeScreenAutomationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InvokeScreenAutomation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::AutomationExecutionTimeoutException, Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::InternalServerException, Errors::AutomationExecutionException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::InvokeScreenAutomation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InvokeScreenAutomation,
        stubs: @stubs,
        params_class: Params::InvokeScreenAutomationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :invoke_screen_automation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The ListTableColumns API allows you to retrieve a list of all the columns in a table in a workbook.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListTableColumnsInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook that contains the table whose columns are being retrieved.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [String] :table_id
    #   <p>The ID of the table whose columns are being retrieved.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>
    #               This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
    #           </p>
    #           <p>
    #               Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
    #               will throw ValidationException.
    #           </p>
    #
    # @return [Types::ListTableColumnsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_table_columns(
    #     workbook_id: 'workbookId', # required
    #     table_id: 'tableId', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTableColumnsOutput
    #   resp.data.table_columns #=> Array<TableColumn>
    #   resp.data.table_columns[0] #=> Types::TableColumn
    #   resp.data.table_columns[0].table_column_id #=> String
    #   resp.data.table_columns[0].table_column_name #=> String
    #   resp.data.table_columns[0].format #=> String, one of ["AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"]
    #   resp.data.next_token #=> String
    #   resp.data.workbook_cursor #=> Integer
    #
    def list_table_columns(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTableColumnsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTableColumnsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTableColumns
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListTableColumns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTableColumns,
        stubs: @stubs,
        params_class: Params::ListTableColumnsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_table_columns
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The ListTableRows API allows you to retrieve a list of all the rows in a table in a workbook.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListTableRowsInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook that contains the table whose rows are being retrieved.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [String] :table_id
    #   <p>The ID of the table whose rows are being retrieved.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [Array<String>] :row_ids
    #   <p>
    #               This parameter is optional. If one or more row ids are specified in this list, then only the specified
    #               row ids are returned in the result. If no row ids are specified here, then all the rows in the table are
    #               returned.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of rows to return in each page of the results.</p>
    #
    # @option params [String] :next_token
    #   <p>
    #               This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
    #           </p>
    #           <p>
    #               Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
    #               will throw ValidationException.
    #           </p>
    #
    # @return [Types::ListTableRowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_table_rows(
    #     workbook_id: 'workbookId', # required
    #     table_id: 'tableId', # required
    #     row_ids: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTableRowsOutput
    #   resp.data.column_ids #=> Array<String>
    #   resp.data.column_ids[0] #=> String
    #   resp.data.rows #=> Array<TableRow>
    #   resp.data.rows[0] #=> Types::TableRow
    #   resp.data.rows[0].row_id #=> String
    #   resp.data.rows[0].cells #=> Array<Cell>
    #   resp.data.rows[0].cells[0] #=> Types::Cell
    #   resp.data.rows[0].cells[0].formula #=> String
    #   resp.data.rows[0].cells[0].format #=> String, one of ["AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"]
    #   resp.data.rows[0].cells[0].raw_value #=> String
    #   resp.data.rows[0].cells[0].formatted_value #=> String
    #   resp.data.rows[0].cells[0].formatted_values #=> Array<String>
    #   resp.data.rows[0].cells[0].formatted_values[0] #=> String
    #   resp.data.row_ids_not_found #=> Array<String>
    #   resp.data.row_ids_not_found[0] #=> String
    #   resp.data.next_token #=> String
    #   resp.data.workbook_cursor #=> Integer
    #
    def list_table_rows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTableRowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTableRowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTableRows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListTableRows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTableRows,
        stubs: @stubs,
        params_class: Params::ListTableRowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_table_rows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The ListTables API allows you to retrieve a list of all the tables in a workbook.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListTablesInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook whose tables are being retrieved.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tables to return in each page of the results.</p>
    #
    # @option params [String] :next_token
    #   <p>
    #               This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
    #           </p>
    #           <p>
    #               Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
    #               will throw ValidationException.
    #           </p>
    #
    # @return [Types::ListTablesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables(
    #     workbook_id: 'workbookId', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTablesOutput
    #   resp.data.tables #=> Array<Table>
    #   resp.data.tables[0] #=> Types::Table
    #   resp.data.tables[0].table_id #=> String
    #   resp.data.tables[0].table_name #=> String
    #   resp.data.next_token #=> String
    #   resp.data.workbook_cursor #=> Integer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
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
    #             The ListTagsForResource API allows you to return a resource's tags.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
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
    #             The QueryTableRows API allows you to use a filter formula to query for specific rows in a table.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::QueryTableRowsInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook whose table rows are being queried.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [String] :table_id
    #   <p>The ID of the table whose rows are being queried.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [Filter] :filter_formula
    #   <p>An object that represents a filter formula along with the id of the context row under which the filter
    #               function needs to evaluate.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of rows to return in each page of the results.</p>
    #
    # @option params [String] :next_token
    #   <p>
    #               This parameter is optional. If a nextToken is not specified, the API returns the first page of data.
    #           </p>
    #           <p>
    #               Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API
    #               will throw ValidationException.
    #           </p>
    #
    # @return [Types::QueryTableRowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query_table_rows(
    #     workbook_id: 'workbookId', # required
    #     table_id: 'tableId', # required
    #     filter_formula: {
    #       formula: 'formula', # required
    #       context_row_id: 'contextRowId'
    #     }, # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::QueryTableRowsOutput
    #   resp.data.column_ids #=> Array<String>
    #   resp.data.column_ids[0] #=> String
    #   resp.data.rows #=> Array<TableRow>
    #   resp.data.rows[0] #=> Types::TableRow
    #   resp.data.rows[0].row_id #=> String
    #   resp.data.rows[0].cells #=> Array<Cell>
    #   resp.data.rows[0].cells[0] #=> Types::Cell
    #   resp.data.rows[0].cells[0].formula #=> String
    #   resp.data.rows[0].cells[0].format #=> String, one of ["AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"]
    #   resp.data.rows[0].cells[0].raw_value #=> String
    #   resp.data.rows[0].cells[0].formatted_value #=> String
    #   resp.data.rows[0].cells[0].formatted_values #=> Array<String>
    #   resp.data.rows[0].cells[0].formatted_values[0] #=> String
    #   resp.data.next_token #=> String
    #   resp.data.workbook_cursor #=> Integer
    #
    def query_table_rows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::QueryTableRowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::QueryTableRowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::QueryTableRows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::QueryTableRows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::QueryTableRows,
        stubs: @stubs,
        params_class: Params::QueryTableRowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :query_table_rows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The StartTableDataImportJob API allows you to start an import job on a table. This API will only return
    #             the id of the job that was started. To find out the status of the import request, you need to call the
    #             DescribeTableDataImportJob API.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::StartTableDataImportJobInput}.
    #
    # @option params [String] :workbook_id
    #   <p>The ID of the workbook where the rows are being imported.</p>
    #           <p>
    #               If a workbook with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [ImportDataSource] :data_source
    #   <p>
    #               The source of the data that is being imported. The size of source must be no larger than 100 MB.
    #               Source must have no more than 100,000 cells and no more than 1,000 rows.
    #           </p>
    #
    # @option params [String] :data_format
    #   <p>
    #               The format of the data that is being imported. Currently the only option supported is "DELIMITED_TEXT".
    #           </p>
    #
    # @option params [String] :destination_table_id
    #   <p>The ID of the table where the rows are being imported.</p>
    #           <p>
    #               If a table with the specified id could not be found, this API throws ResourceNotFoundException.
    #           </p>
    #
    # @option params [ImportOptions] :import_options
    #   <p>
    #               The options for customizing this import request.
    #           </p>
    #
    # @option params [String] :client_request_token
    #   <p>
    #               The request token for performing the update action.
    #               Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    #               like a failed network connection, you can retry the call with the same request token. The service ensures
    #               that if the first call using that request token is successfully performed, the second call will not perform
    #               the action again.
    #           </p>
    #           <p>
    #               Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    #               spanning hours or days.
    #           </p>
    #
    # @return [Types::StartTableDataImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_table_data_import_job(
    #     workbook_id: 'workbookId', # required
    #     data_source: {
    #       data_source_config: {
    #         data_source_url: 'dataSourceUrl'
    #       } # required
    #     }, # required
    #     data_format: 'DELIMITED_TEXT', # required - accepts ["DELIMITED_TEXT"]
    #     destination_table_id: 'destinationTableId', # required
    #     import_options: {
    #       destination_options: {
    #         column_map: {
    #           'key' => {
    #             column_index: 1
    #           }
    #         }
    #       },
    #       delimited_text_options: {
    #         delimiter: 'delimiter', # required
    #         has_header_row: false,
    #         ignore_empty_rows: false,
    #         data_character_encoding: 'UTF-8' # accepts ["UTF-8", "US-ASCII", "ISO-8859-1", "UTF-16BE", "UTF-16LE", "UTF-16"]
    #       }
    #     }, # required
    #     client_request_token: 'clientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTableDataImportJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"]
    #
    def start_table_data_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTableDataImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTableDataImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTableDataImportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::StartTableDataImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTableDataImportJob,
        stubs: @stubs,
        params_class: Params::StartTableDataImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_table_data_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The TagResource API allows you to add tags to an ARN-able resource. Resource includes workbook, table,
    #             screen and screen-automation.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to apply to the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
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
    #             The UntagResource API allows you to removes tags from an ARN-able resource. Resource includes workbook, table,
    #             screen and screen-automation.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::RequestTimeoutException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
