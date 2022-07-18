# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Honeycode
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutomationExecutionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationExecutionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutomationExecutionTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationExecutionTimeoutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchCreateTableRowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateTableRowsInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        CreateRowDataList.validate!(input[:rows_to_create], context: "#{context}[:rows_to_create]") unless input[:rows_to_create].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class BatchCreateTableRowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateTableRowsOutput, context: context)
        Hearth::Validator.validate!(input[:workbook_cursor], ::Integer, context: "#{context}[:workbook_cursor]")
        CreatedRowsMap.validate!(input[:created_rows], context: "#{context}[:created_rows]") unless input[:created_rows].nil?
        FailedBatchItems.validate!(input[:failed_batch_items], context: "#{context}[:failed_batch_items]") unless input[:failed_batch_items].nil?
      end
    end

    class BatchDeleteTableRowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteTableRowsInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        RowIdList.validate!(input[:row_ids], context: "#{context}[:row_ids]") unless input[:row_ids].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class BatchDeleteTableRowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteTableRowsOutput, context: context)
        Hearth::Validator.validate!(input[:workbook_cursor], ::Integer, context: "#{context}[:workbook_cursor]")
        FailedBatchItems.validate!(input[:failed_batch_items], context: "#{context}[:failed_batch_items]") unless input[:failed_batch_items].nil?
      end
    end

    class BatchUpdateTableRowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateTableRowsInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        UpdateRowDataList.validate!(input[:rows_to_update], context: "#{context}[:rows_to_update]") unless input[:rows_to_update].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class BatchUpdateTableRowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateTableRowsOutput, context: context)
        Hearth::Validator.validate!(input[:workbook_cursor], ::Integer, context: "#{context}[:workbook_cursor]")
        FailedBatchItems.validate!(input[:failed_batch_items], context: "#{context}[:failed_batch_items]") unless input[:failed_batch_items].nil?
      end
    end

    class BatchUpsertTableRowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpsertTableRowsInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        UpsertRowDataList.validate!(input[:rows_to_upsert], context: "#{context}[:rows_to_upsert]") unless input[:rows_to_upsert].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class BatchUpsertTableRowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpsertTableRowsOutput, context: context)
        UpsertRowsResultMap.validate!(input[:rows], context: "#{context}[:rows]") unless input[:rows].nil?
        Hearth::Validator.validate!(input[:workbook_cursor], ::Integer, context: "#{context}[:workbook_cursor]")
        FailedBatchItems.validate!(input[:failed_batch_items], context: "#{context}[:failed_batch_items]") unless input[:failed_batch_items].nil?
      end
    end

    class Cell
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cell, context: context)
        Hearth::Validator.validate!(input[:formula], ::String, context: "#{context}[:formula]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:raw_value], ::String, context: "#{context}[:raw_value]")
        Hearth::Validator.validate!(input[:formatted_value], ::String, context: "#{context}[:formatted_value]")
        FormattedValuesList.validate!(input[:formatted_values], context: "#{context}[:formatted_values]") unless input[:formatted_values].nil?
      end
    end

    class CellInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CellInput, context: context)
        Hearth::Validator.validate!(input[:fact], ::String, context: "#{context}[:fact]")
        FactList.validate!(input[:facts], context: "#{context}[:facts]") unless input[:facts].nil?
      end
    end

    class Cells
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Cell.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class CreateRowData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRowData, context: context)
        Hearth::Validator.validate!(input[:batch_item_id], ::String, context: "#{context}[:batch_item_id]")
        RowDataInput.validate!(input[:cells_to_create], context: "#{context}[:cells_to_create]") unless input[:cells_to_create].nil?
      end
    end

    class CreateRowDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateRowData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreatedRowsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DataItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataItem, context: context)
        Hearth::Validator.validate!(input[:override_format], ::String, context: "#{context}[:override_format]")
        Hearth::Validator.validate!(input[:raw_value], ::String, context: "#{context}[:raw_value]")
        Hearth::Validator.validate!(input[:formatted_value], ::String, context: "#{context}[:formatted_value]")
      end
    end

    class DataItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DelimitedTextImportOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelimitedTextImportOptions, context: context)
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:has_header_row], ::TrueClass, ::FalseClass, context: "#{context}[:has_header_row]")
        Hearth::Validator.validate!(input[:ignore_empty_rows], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_empty_rows]")
        Hearth::Validator.validate!(input[:data_character_encoding], ::String, context: "#{context}[:data_character_encoding]")
      end
    end

    class DescribeTableDataImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableDataImportJobInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeTableDataImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableDataImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        TableDataImportJobMetadata.validate!(input[:job_metadata], context: "#{context}[:job_metadata]") unless input[:job_metadata].nil?
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
      end
    end

    class DestinationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationOptions, context: context)
        ImportColumnMap.validate!(input[:column_map], context: "#{context}[:column_map]") unless input[:column_map].nil?
      end
    end

    class FactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FailedBatchItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedBatchItem, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class FailedBatchItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FailedBatchItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:formula], ::String, context: "#{context}[:formula]")
        Hearth::Validator.validate!(input[:context_row_id], ::String, context: "#{context}[:context_row_id]")
      end
    end

    class FormattedValuesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetScreenDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetScreenDataInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:screen_id], ::String, context: "#{context}[:screen_id]")
        VariableValueMap.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetScreenDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetScreenDataOutput, context: context)
        ResultSetMap.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Hearth::Validator.validate!(input[:workbook_cursor], ::Integer, context: "#{context}[:workbook_cursor]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ImportColumnMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          SourceDataColumnProperties.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ImportDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportDataSource, context: context)
        ImportDataSourceConfig.validate!(input[:data_source_config], context: "#{context}[:data_source_config]") unless input[:data_source_config].nil?
      end
    end

    class ImportDataSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportDataSourceConfig, context: context)
        Hearth::Validator.validate!(input[:data_source_url], ::String, context: "#{context}[:data_source_url]")
      end
    end

    class ImportJobSubmitter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportJobSubmitter, context: context)
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class ImportOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportOptions, context: context)
        DestinationOptions.validate!(input[:destination_options], context: "#{context}[:destination_options]") unless input[:destination_options].nil?
        DelimitedTextImportOptions.validate!(input[:delimited_text_options], context: "#{context}[:delimited_text_options]") unless input[:delimited_text_options].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvokeScreenAutomationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeScreenAutomationInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:screen_id], ::String, context: "#{context}[:screen_id]")
        Hearth::Validator.validate!(input[:screen_automation_id], ::String, context: "#{context}[:screen_automation_id]")
        VariableValueMap.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Hearth::Validator.validate!(input[:row_id], ::String, context: "#{context}[:row_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class InvokeScreenAutomationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeScreenAutomationOutput, context: context)
        Hearth::Validator.validate!(input[:workbook_cursor], ::Integer, context: "#{context}[:workbook_cursor]")
      end
    end

    class ListTableColumnsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTableColumnsInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTableColumnsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTableColumnsOutput, context: context)
        TableColumns.validate!(input[:table_columns], context: "#{context}[:table_columns]") unless input[:table_columns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:workbook_cursor], ::Integer, context: "#{context}[:workbook_cursor]")
      end
    end

    class ListTableRowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTableRowsInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        RowIdList.validate!(input[:row_ids], context: "#{context}[:row_ids]") unless input[:row_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTableRowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTableRowsOutput, context: context)
        ResourceIds.validate!(input[:column_ids], context: "#{context}[:column_ids]") unless input[:column_ids].nil?
        TableRows.validate!(input[:rows], context: "#{context}[:rows]") unless input[:rows].nil?
        RowIdList.validate!(input[:row_ids_not_found], context: "#{context}[:row_ids_not_found]") unless input[:row_ids_not_found].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:workbook_cursor], ::Integer, context: "#{context}[:workbook_cursor]")
      end
    end

    class ListTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTablesInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTablesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTablesOutput, context: context)
        Tables.validate!(input[:tables], context: "#{context}[:tables]") unless input[:tables].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:workbook_cursor], ::Integer, context: "#{context}[:workbook_cursor]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class QueryTableRowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryTableRowsInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        Filter.validate!(input[:filter_formula], context: "#{context}[:filter_formula]") unless input[:filter_formula].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class QueryTableRowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryTableRowsOutput, context: context)
        ResourceIds.validate!(input[:column_ids], context: "#{context}[:column_ids]") unless input[:column_ids].nil?
        TableRows.validate!(input[:rows], context: "#{context}[:rows]") unless input[:rows].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:workbook_cursor], ::Integer, context: "#{context}[:workbook_cursor]")
      end
    end

    class RequestTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestTimeoutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResultHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResultRow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultRow, context: context)
        Hearth::Validator.validate!(input[:row_id], ::String, context: "#{context}[:row_id]")
        DataItems.validate!(input[:data_items], context: "#{context}[:data_items]") unless input[:data_items].nil?
      end
    end

    class ResultRows
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResultRow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResultSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultSet, context: context)
        ResultHeader.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
        ResultRows.validate!(input[:rows], context: "#{context}[:rows]") unless input[:rows].nil?
      end
    end

    class ResultSetMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ResultSet.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class RowDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          CellInput.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class RowIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceDataColumnProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceDataColumnProperties, context: context)
        Hearth::Validator.validate!(input[:column_index], ::Integer, context: "#{context}[:column_index]")
      end
    end

    class StartTableDataImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTableDataImportJobInput, context: context)
        Hearth::Validator.validate!(input[:workbook_id], ::String, context: "#{context}[:workbook_id]")
        ImportDataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
        Hearth::Validator.validate!(input[:destination_table_id], ::String, context: "#{context}[:destination_table_id]")
        ImportOptions.validate!(input[:import_options], context: "#{context}[:import_options]") unless input[:import_options].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class StartTableDataImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTableDataImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class Table
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Table, context: context)
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class TableColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableColumn, context: context)
        Hearth::Validator.validate!(input[:table_column_id], ::String, context: "#{context}[:table_column_id]")
        Hearth::Validator.validate!(input[:table_column_name], ::String, context: "#{context}[:table_column_name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class TableColumns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TableColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableDataImportJobMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableDataImportJobMetadata, context: context)
        ImportJobSubmitter.validate!(input[:submitter], context: "#{context}[:submitter]") unless input[:submitter].nil?
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        ImportOptions.validate!(input[:import_options], context: "#{context}[:import_options]") unless input[:import_options].nil?
        ImportDataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
      end
    end

    class TableRow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableRow, context: context)
        Hearth::Validator.validate!(input[:row_id], ::String, context: "#{context}[:row_id]")
        Cells.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
      end
    end

    class TableRows
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TableRow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Table.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeysList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeysList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateRowData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRowData, context: context)
        Hearth::Validator.validate!(input[:row_id], ::String, context: "#{context}[:row_id]")
        RowDataInput.validate!(input[:cells_to_update], context: "#{context}[:cells_to_update]") unless input[:cells_to_update].nil?
      end
    end

    class UpdateRowDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpdateRowData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpsertRowData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpsertRowData, context: context)
        Hearth::Validator.validate!(input[:batch_item_id], ::String, context: "#{context}[:batch_item_id]")
        Filter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        RowDataInput.validate!(input[:cells_to_update], context: "#{context}[:cells_to_update]") unless input[:cells_to_update].nil?
      end
    end

    class UpsertRowDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpsertRowData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpsertRowsResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpsertRowsResult, context: context)
        RowIdList.validate!(input[:row_ids], context: "#{context}[:row_ids]") unless input[:row_ids].nil?
        Hearth::Validator.validate!(input[:upsert_action], ::String, context: "#{context}[:upsert_action]")
      end
    end

    class UpsertRowsResultMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          UpsertRowsResult.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VariableValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VariableValue, context: context)
        Hearth::Validator.validate!(input[:raw_value], ::String, context: "#{context}[:raw_value]")
      end
    end

    class VariableValueMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          VariableValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

  end
end
