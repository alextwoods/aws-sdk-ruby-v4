# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Honeycode
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AutomationExecutionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationExecutionException, context: context)
        type = Types::AutomationExecutionException.new
        type.message = params[:message]
        type
      end
    end

    module AutomationExecutionTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationExecutionTimeoutException, context: context)
        type = Types::AutomationExecutionTimeoutException.new
        type.message = params[:message]
        type
      end
    end

    module BatchCreateTableRowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateTableRowsInput, context: context)
        type = Types::BatchCreateTableRowsInput.new
        type.workbook_id = params[:workbook_id]
        type.table_id = params[:table_id]
        type.rows_to_create = CreateRowDataList.build(params[:rows_to_create], context: "#{context}[:rows_to_create]") unless params[:rows_to_create].nil?
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module BatchCreateTableRowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateTableRowsOutput, context: context)
        type = Types::BatchCreateTableRowsOutput.new
        type.workbook_cursor = params[:workbook_cursor]
        type.created_rows = CreatedRowsMap.build(params[:created_rows], context: "#{context}[:created_rows]") unless params[:created_rows].nil?
        type.failed_batch_items = FailedBatchItems.build(params[:failed_batch_items], context: "#{context}[:failed_batch_items]") unless params[:failed_batch_items].nil?
        type
      end
    end

    module BatchDeleteTableRowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteTableRowsInput, context: context)
        type = Types::BatchDeleteTableRowsInput.new
        type.workbook_id = params[:workbook_id]
        type.table_id = params[:table_id]
        type.row_ids = RowIdList.build(params[:row_ids], context: "#{context}[:row_ids]") unless params[:row_ids].nil?
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module BatchDeleteTableRowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteTableRowsOutput, context: context)
        type = Types::BatchDeleteTableRowsOutput.new
        type.workbook_cursor = params[:workbook_cursor]
        type.failed_batch_items = FailedBatchItems.build(params[:failed_batch_items], context: "#{context}[:failed_batch_items]") unless params[:failed_batch_items].nil?
        type
      end
    end

    module BatchUpdateTableRowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateTableRowsInput, context: context)
        type = Types::BatchUpdateTableRowsInput.new
        type.workbook_id = params[:workbook_id]
        type.table_id = params[:table_id]
        type.rows_to_update = UpdateRowDataList.build(params[:rows_to_update], context: "#{context}[:rows_to_update]") unless params[:rows_to_update].nil?
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module BatchUpdateTableRowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateTableRowsOutput, context: context)
        type = Types::BatchUpdateTableRowsOutput.new
        type.workbook_cursor = params[:workbook_cursor]
        type.failed_batch_items = FailedBatchItems.build(params[:failed_batch_items], context: "#{context}[:failed_batch_items]") unless params[:failed_batch_items].nil?
        type
      end
    end

    module BatchUpsertTableRowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpsertTableRowsInput, context: context)
        type = Types::BatchUpsertTableRowsInput.new
        type.workbook_id = params[:workbook_id]
        type.table_id = params[:table_id]
        type.rows_to_upsert = UpsertRowDataList.build(params[:rows_to_upsert], context: "#{context}[:rows_to_upsert]") unless params[:rows_to_upsert].nil?
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module BatchUpsertTableRowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpsertTableRowsOutput, context: context)
        type = Types::BatchUpsertTableRowsOutput.new
        type.rows = UpsertRowsResultMap.build(params[:rows], context: "#{context}[:rows]") unless params[:rows].nil?
        type.workbook_cursor = params[:workbook_cursor]
        type.failed_batch_items = FailedBatchItems.build(params[:failed_batch_items], context: "#{context}[:failed_batch_items]") unless params[:failed_batch_items].nil?
        type
      end
    end

    module Cell
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cell, context: context)
        type = Types::Cell.new
        type.formula = params[:formula]
        type.format = params[:format]
        type.raw_value = params[:raw_value]
        type.formatted_value = params[:formatted_value]
        type.formatted_values = FormattedValuesList.build(params[:formatted_values], context: "#{context}[:formatted_values]") unless params[:formatted_values].nil?
        type
      end
    end

    module CellInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CellInput, context: context)
        type = Types::CellInput.new
        type.fact = params[:fact]
        type.facts = FactList.build(params[:facts], context: "#{context}[:facts]") unless params[:facts].nil?
        type
      end
    end

    module Cells
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cell.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnMetadata, context: context)
        type = Types::ColumnMetadata.new
        type.name = params[:name]
        type.format = params[:format]
        type
      end
    end

    module CreateRowData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRowData, context: context)
        type = Types::CreateRowData.new
        type.batch_item_id = params[:batch_item_id]
        type.cells_to_create = RowDataInput.build(params[:cells_to_create], context: "#{context}[:cells_to_create]") unless params[:cells_to_create].nil?
        type
      end
    end

    module CreateRowDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateRowData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreatedRowsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DataItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataItem, context: context)
        type = Types::DataItem.new
        type.override_format = params[:override_format]
        type.raw_value = params[:raw_value]
        type.formatted_value = params[:formatted_value]
        type
      end
    end

    module DataItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DelimitedTextImportOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelimitedTextImportOptions, context: context)
        type = Types::DelimitedTextImportOptions.new
        type.delimiter = params[:delimiter]
        type.has_header_row = params[:has_header_row]
        type.ignore_empty_rows = params[:ignore_empty_rows]
        type.data_character_encoding = params[:data_character_encoding]
        type
      end
    end

    module DescribeTableDataImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableDataImportJobInput, context: context)
        type = Types::DescribeTableDataImportJobInput.new
        type.workbook_id = params[:workbook_id]
        type.table_id = params[:table_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeTableDataImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableDataImportJobOutput, context: context)
        type = Types::DescribeTableDataImportJobOutput.new
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.job_metadata = TableDataImportJobMetadata.build(params[:job_metadata], context: "#{context}[:job_metadata]") unless params[:job_metadata].nil?
        type.error_code = params[:error_code]
        type
      end
    end

    module DestinationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationOptions, context: context)
        type = Types::DestinationOptions.new
        type.column_map = ImportColumnMap.build(params[:column_map], context: "#{context}[:column_map]") unless params[:column_map].nil?
        type
      end
    end

    module FactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FailedBatchItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedBatchItem, context: context)
        type = Types::FailedBatchItem.new
        type.id = params[:id]
        type.error_message = params[:error_message]
        type
      end
    end

    module FailedBatchItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedBatchItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.formula = params[:formula]
        type.context_row_id = params[:context_row_id]
        type
      end
    end

    module FormattedValuesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetScreenDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetScreenDataInput, context: context)
        type = Types::GetScreenDataInput.new
        type.workbook_id = params[:workbook_id]
        type.app_id = params[:app_id]
        type.screen_id = params[:screen_id]
        type.variables = VariableValueMap.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetScreenDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetScreenDataOutput, context: context)
        type = Types::GetScreenDataOutput.new
        type.results = ResultSetMap.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.workbook_cursor = params[:workbook_cursor]
        type.next_token = params[:next_token]
        type
      end
    end

    module ImportColumnMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = SourceDataColumnProperties.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ImportDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportDataSource, context: context)
        type = Types::ImportDataSource.new
        type.data_source_config = ImportDataSourceConfig.build(params[:data_source_config], context: "#{context}[:data_source_config]") unless params[:data_source_config].nil?
        type
      end
    end

    module ImportDataSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportDataSourceConfig, context: context)
        type = Types::ImportDataSourceConfig.new
        type.data_source_url = params[:data_source_url]
        type
      end
    end

    module ImportJobSubmitter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportJobSubmitter, context: context)
        type = Types::ImportJobSubmitter.new
        type.email = params[:email]
        type.user_arn = params[:user_arn]
        type
      end
    end

    module ImportOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportOptions, context: context)
        type = Types::ImportOptions.new
        type.destination_options = DestinationOptions.build(params[:destination_options], context: "#{context}[:destination_options]") unless params[:destination_options].nil?
        type.delimited_text_options = DelimitedTextImportOptions.build(params[:delimited_text_options], context: "#{context}[:delimited_text_options]") unless params[:delimited_text_options].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvokeScreenAutomationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeScreenAutomationInput, context: context)
        type = Types::InvokeScreenAutomationInput.new
        type.workbook_id = params[:workbook_id]
        type.app_id = params[:app_id]
        type.screen_id = params[:screen_id]
        type.screen_automation_id = params[:screen_automation_id]
        type.variables = VariableValueMap.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.row_id = params[:row_id]
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module InvokeScreenAutomationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeScreenAutomationOutput, context: context)
        type = Types::InvokeScreenAutomationOutput.new
        type.workbook_cursor = params[:workbook_cursor]
        type
      end
    end

    module ListTableColumnsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTableColumnsInput, context: context)
        type = Types::ListTableColumnsInput.new
        type.workbook_id = params[:workbook_id]
        type.table_id = params[:table_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTableColumnsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTableColumnsOutput, context: context)
        type = Types::ListTableColumnsOutput.new
        type.table_columns = TableColumns.build(params[:table_columns], context: "#{context}[:table_columns]") unless params[:table_columns].nil?
        type.next_token = params[:next_token]
        type.workbook_cursor = params[:workbook_cursor]
        type
      end
    end

    module ListTableRowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTableRowsInput, context: context)
        type = Types::ListTableRowsInput.new
        type.workbook_id = params[:workbook_id]
        type.table_id = params[:table_id]
        type.row_ids = RowIdList.build(params[:row_ids], context: "#{context}[:row_ids]") unless params[:row_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTableRowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTableRowsOutput, context: context)
        type = Types::ListTableRowsOutput.new
        type.column_ids = ResourceIds.build(params[:column_ids], context: "#{context}[:column_ids]") unless params[:column_ids].nil?
        type.rows = TableRows.build(params[:rows], context: "#{context}[:rows]") unless params[:rows].nil?
        type.row_ids_not_found = RowIdList.build(params[:row_ids_not_found], context: "#{context}[:row_ids_not_found]") unless params[:row_ids_not_found].nil?
        type.next_token = params[:next_token]
        type.workbook_cursor = params[:workbook_cursor]
        type
      end
    end

    module ListTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTablesInput, context: context)
        type = Types::ListTablesInput.new
        type.workbook_id = params[:workbook_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTablesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTablesOutput, context: context)
        type = Types::ListTablesOutput.new
        type.tables = Tables.build(params[:tables], context: "#{context}[:tables]") unless params[:tables].nil?
        type.next_token = params[:next_token]
        type.workbook_cursor = params[:workbook_cursor]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module QueryTableRowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryTableRowsInput, context: context)
        type = Types::QueryTableRowsInput.new
        type.workbook_id = params[:workbook_id]
        type.table_id = params[:table_id]
        type.filter_formula = Filter.build(params[:filter_formula], context: "#{context}[:filter_formula]") unless params[:filter_formula].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module QueryTableRowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryTableRowsOutput, context: context)
        type = Types::QueryTableRowsOutput.new
        type.column_ids = ResourceIds.build(params[:column_ids], context: "#{context}[:column_ids]") unless params[:column_ids].nil?
        type.rows = TableRows.build(params[:rows], context: "#{context}[:rows]") unless params[:rows].nil?
        type.next_token = params[:next_token]
        type.workbook_cursor = params[:workbook_cursor]
        type
      end
    end

    module RequestTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestTimeoutException, context: context)
        type = Types::RequestTimeoutException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResultHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResultRow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultRow, context: context)
        type = Types::ResultRow.new
        type.row_id = params[:row_id]
        type.data_items = DataItems.build(params[:data_items], context: "#{context}[:data_items]") unless params[:data_items].nil?
        type
      end
    end

    module ResultRows
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResultRow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResultSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultSet, context: context)
        type = Types::ResultSet.new
        type.headers = ResultHeader.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type.rows = ResultRows.build(params[:rows], context: "#{context}[:rows]") unless params[:rows].nil?
        type
      end
    end

    module ResultSetMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ResultSet.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module RowDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = CellInput.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module RowIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module SourceDataColumnProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceDataColumnProperties, context: context)
        type = Types::SourceDataColumnProperties.new
        type.column_index = params[:column_index]
        type
      end
    end

    module StartTableDataImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTableDataImportJobInput, context: context)
        type = Types::StartTableDataImportJobInput.new
        type.workbook_id = params[:workbook_id]
        type.data_source = ImportDataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.data_format = params[:data_format]
        type.destination_table_id = params[:destination_table_id]
        type.import_options = ImportOptions.build(params[:import_options], context: "#{context}[:import_options]") unless params[:import_options].nil?
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module StartTableDataImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTableDataImportJobOutput, context: context)
        type = Types::StartTableDataImportJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module Table
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Table, context: context)
        type = Types::Table.new
        type.table_id = params[:table_id]
        type.table_name = params[:table_name]
        type
      end
    end

    module TableColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableColumn, context: context)
        type = Types::TableColumn.new
        type.table_column_id = params[:table_column_id]
        type.table_column_name = params[:table_column_name]
        type.format = params[:format]
        type
      end
    end

    module TableColumns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableDataImportJobMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableDataImportJobMetadata, context: context)
        type = Types::TableDataImportJobMetadata.new
        type.submitter = ImportJobSubmitter.build(params[:submitter], context: "#{context}[:submitter]") unless params[:submitter].nil?
        type.submit_time = params[:submit_time]
        type.import_options = ImportOptions.build(params[:import_options], context: "#{context}[:import_options]") unless params[:import_options].nil?
        type.data_source = ImportDataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type
      end
    end

    module TableRow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableRow, context: context)
        type = Types::TableRow.new
        type.row_id = params[:row_id]
        type.cells = Cells.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type
      end
    end

    module TableRows
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableRow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Table.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeysList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TagsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeysList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateRowData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRowData, context: context)
        type = Types::UpdateRowData.new
        type.row_id = params[:row_id]
        type.cells_to_update = RowDataInput.build(params[:cells_to_update], context: "#{context}[:cells_to_update]") unless params[:cells_to_update].nil?
        type
      end
    end

    module UpdateRowDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateRowData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpsertRowData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpsertRowData, context: context)
        type = Types::UpsertRowData.new
        type.batch_item_id = params[:batch_item_id]
        type.filter = Filter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.cells_to_update = RowDataInput.build(params[:cells_to_update], context: "#{context}[:cells_to_update]") unless params[:cells_to_update].nil?
        type
      end
    end

    module UpsertRowDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpsertRowData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpsertRowsResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpsertRowsResult, context: context)
        type = Types::UpsertRowsResult.new
        type.row_ids = RowIdList.build(params[:row_ids], context: "#{context}[:row_ids]") unless params[:row_ids].nil?
        type.upsert_action = params[:upsert_action]
        type
      end
    end

    module UpsertRowsResultMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = UpsertRowsResult.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module VariableValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VariableValue, context: context)
        type = Types::VariableValue.new
        type.raw_value = params[:raw_value]
        type
      end
    end

    module VariableValueMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = VariableValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

  end
end
