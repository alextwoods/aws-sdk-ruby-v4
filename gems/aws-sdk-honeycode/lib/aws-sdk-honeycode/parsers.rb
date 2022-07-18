# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Honeycode
  module Parsers

    # Operation Parser for BatchCreateTableRows
    class BatchCreateTableRows
      def self.parse(http_resp)
        data = Types::BatchCreateTableRowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workbook_cursor = map['workbookCursor']
        data.created_rows = (Parsers::CreatedRowsMap.parse(map['createdRows']) unless map['createdRows'].nil?)
        data.failed_batch_items = (Parsers::FailedBatchItems.parse(map['failedBatchItems']) unless map['failedBatchItems'].nil?)
        data
      end
    end

    class FailedBatchItems
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FailedBatchItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class FailedBatchItem
      def self.parse(map)
        data = Types::FailedBatchItem.new
        data.id = map['id']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class CreatedRowsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for RequestTimeoutException
    class RequestTimeoutException
      def self.parse(http_resp)
        data = Types::RequestTimeoutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchDeleteTableRows
    class BatchDeleteTableRows
      def self.parse(http_resp)
        data = Types::BatchDeleteTableRowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workbook_cursor = map['workbookCursor']
        data.failed_batch_items = (Parsers::FailedBatchItems.parse(map['failedBatchItems']) unless map['failedBatchItems'].nil?)
        data
      end
    end

    # Operation Parser for BatchUpdateTableRows
    class BatchUpdateTableRows
      def self.parse(http_resp)
        data = Types::BatchUpdateTableRowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workbook_cursor = map['workbookCursor']
        data.failed_batch_items = (Parsers::FailedBatchItems.parse(map['failedBatchItems']) unless map['failedBatchItems'].nil?)
        data
      end
    end

    # Operation Parser for BatchUpsertTableRows
    class BatchUpsertTableRows
      def self.parse(http_resp)
        data = Types::BatchUpsertTableRowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.rows = (Parsers::UpsertRowsResultMap.parse(map['rows']) unless map['rows'].nil?)
        data.workbook_cursor = map['workbookCursor']
        data.failed_batch_items = (Parsers::FailedBatchItems.parse(map['failedBatchItems']) unless map['failedBatchItems'].nil?)
        data
      end
    end

    class UpsertRowsResultMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::UpsertRowsResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class UpsertRowsResult
      def self.parse(map)
        data = Types::UpsertRowsResult.new
        data.row_ids = (Parsers::RowIdList.parse(map['rowIds']) unless map['rowIds'].nil?)
        data.upsert_action = map['upsertAction']
        return data
      end
    end

    class RowIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeTableDataImportJob
    class DescribeTableDataImportJob
      def self.parse(http_resp)
        data = Types::DescribeTableDataImportJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_status = map['jobStatus']
        data.message = map['message'] || map['Message']
        data.job_metadata = (Parsers::TableDataImportJobMetadata.parse(map['jobMetadata']) unless map['jobMetadata'].nil?)
        data.error_code = map['errorCode']
        data
      end
    end

    class TableDataImportJobMetadata
      def self.parse(map)
        data = Types::TableDataImportJobMetadata.new
        data.submitter = (Parsers::ImportJobSubmitter.parse(map['submitter']) unless map['submitter'].nil?)
        data.submit_time = Time.at(map['submitTime'].to_i) if map['submitTime']
        data.import_options = (Parsers::ImportOptions.parse(map['importOptions']) unless map['importOptions'].nil?)
        data.data_source = (Parsers::ImportDataSource.parse(map['dataSource']) unless map['dataSource'].nil?)
        return data
      end
    end

    class ImportDataSource
      def self.parse(map)
        data = Types::ImportDataSource.new
        data.data_source_config = (Parsers::ImportDataSourceConfig.parse(map['dataSourceConfig']) unless map['dataSourceConfig'].nil?)
        return data
      end
    end

    class ImportDataSourceConfig
      def self.parse(map)
        data = Types::ImportDataSourceConfig.new
        data.data_source_url = map['dataSourceUrl']
        return data
      end
    end

    class ImportOptions
      def self.parse(map)
        data = Types::ImportOptions.new
        data.destination_options = (Parsers::DestinationOptions.parse(map['destinationOptions']) unless map['destinationOptions'].nil?)
        data.delimited_text_options = (Parsers::DelimitedTextImportOptions.parse(map['delimitedTextOptions']) unless map['delimitedTextOptions'].nil?)
        return data
      end
    end

    class DelimitedTextImportOptions
      def self.parse(map)
        data = Types::DelimitedTextImportOptions.new
        data.delimiter = map['delimiter']
        data.has_header_row = map['hasHeaderRow']
        data.ignore_empty_rows = map['ignoreEmptyRows']
        data.data_character_encoding = map['dataCharacterEncoding']
        return data
      end
    end

    class DestinationOptions
      def self.parse(map)
        data = Types::DestinationOptions.new
        data.column_map = (Parsers::ImportColumnMap.parse(map['columnMap']) unless map['columnMap'].nil?)
        return data
      end
    end

    class ImportColumnMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::SourceDataColumnProperties.parse(value) unless value.nil?
        end
        data
      end
    end

    class SourceDataColumnProperties
      def self.parse(map)
        data = Types::SourceDataColumnProperties.new
        data.column_index = map['columnIndex']
        return data
      end
    end

    class ImportJobSubmitter
      def self.parse(map)
        data = Types::ImportJobSubmitter.new
        data.email = map['email']
        data.user_arn = map['userArn']
        return data
      end
    end

    # Operation Parser for GetScreenData
    class GetScreenData
      def self.parse(http_resp)
        data = Types::GetScreenDataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.results = (Parsers::ResultSetMap.parse(map['results']) unless map['results'].nil?)
        data.workbook_cursor = map['workbookCursor']
        data.next_token = map['nextToken']
        data
      end
    end

    class ResultSetMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ResultSet.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResultSet
      def self.parse(map)
        data = Types::ResultSet.new
        data.headers = (Parsers::ResultHeader.parse(map['headers']) unless map['headers'].nil?)
        data.rows = (Parsers::ResultRows.parse(map['rows']) unless map['rows'].nil?)
        return data
      end
    end

    class ResultRows
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResultRow.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResultRow
      def self.parse(map)
        data = Types::ResultRow.new
        data.row_id = map['rowId']
        data.data_items = (Parsers::DataItems.parse(map['dataItems']) unless map['dataItems'].nil?)
        return data
      end
    end

    class DataItems
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataItem
      def self.parse(map)
        data = Types::DataItem.new
        data.override_format = map['overrideFormat']
        data.raw_value = map['rawValue']
        data.formatted_value = map['formattedValue']
        return data
      end
    end

    class ResultHeader
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ColumnMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnMetadata
      def self.parse(map)
        data = Types::ColumnMetadata.new
        data.name = map['name']
        data.format = map['format']
        return data
      end
    end

    # Operation Parser for InvokeScreenAutomation
    class InvokeScreenAutomation
      def self.parse(http_resp)
        data = Types::InvokeScreenAutomationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workbook_cursor = map['workbookCursor']
        data
      end
    end

    # Error Parser for AutomationExecutionTimeoutException
    class AutomationExecutionTimeoutException
      def self.parse(http_resp)
        data = Types::AutomationExecutionTimeoutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AutomationExecutionException
    class AutomationExecutionException
      def self.parse(http_resp)
        data = Types::AutomationExecutionException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListTableColumns
    class ListTableColumns
      def self.parse(http_resp)
        data = Types::ListTableColumnsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.table_columns = (Parsers::TableColumns.parse(map['tableColumns']) unless map['tableColumns'].nil?)
        data.next_token = map['nextToken']
        data.workbook_cursor = map['workbookCursor']
        data
      end
    end

    class TableColumns
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TableColumn.parse(value) unless value.nil?
        end
        data
      end
    end

    class TableColumn
      def self.parse(map)
        data = Types::TableColumn.new
        data.table_column_id = map['tableColumnId']
        data.table_column_name = map['tableColumnName']
        data.format = map['format']
        return data
      end
    end

    # Operation Parser for ListTableRows
    class ListTableRows
      def self.parse(http_resp)
        data = Types::ListTableRowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.column_ids = (Parsers::ResourceIds.parse(map['columnIds']) unless map['columnIds'].nil?)
        data.rows = (Parsers::TableRows.parse(map['rows']) unless map['rows'].nil?)
        data.row_ids_not_found = (Parsers::RowIdList.parse(map['rowIdsNotFound']) unless map['rowIdsNotFound'].nil?)
        data.next_token = map['nextToken']
        data.workbook_cursor = map['workbookCursor']
        data
      end
    end

    class TableRows
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TableRow.parse(value) unless value.nil?
        end
        data
      end
    end

    class TableRow
      def self.parse(map)
        data = Types::TableRow.new
        data.row_id = map['rowId']
        data.cells = (Parsers::Cells.parse(map['cells']) unless map['cells'].nil?)
        return data
      end
    end

    class Cells
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Cell.parse(value) unless value.nil?
        end
        data
      end
    end

    class Cell
      def self.parse(map)
        data = Types::Cell.new
        data.formula = map['formula']
        data.format = map['format']
        data.raw_value = map['rawValue']
        data.formatted_value = map['formattedValue']
        data.formatted_values = (Parsers::FormattedValuesList.parse(map['formattedValues']) unless map['formattedValues'].nil?)
        return data
      end
    end

    class FormattedValuesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ResourceIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTables
    class ListTables
      def self.parse(http_resp)
        data = Types::ListTablesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tables = (Parsers::Tables.parse(map['tables']) unless map['tables'].nil?)
        data.next_token = map['nextToken']
        data.workbook_cursor = map['workbookCursor']
        data
      end
    end

    class Tables
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Table.parse(value) unless value.nil?
        end
        data
      end
    end

    class Table
      def self.parse(map)
        data = Types::Table.new
        data.table_id = map['tableId']
        data.table_name = map['tableName']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for QueryTableRows
    class QueryTableRows
      def self.parse(http_resp)
        data = Types::QueryTableRowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.column_ids = (Parsers::ResourceIds.parse(map['columnIds']) unless map['columnIds'].nil?)
        data.rows = (Parsers::TableRows.parse(map['rows']) unless map['rows'].nil?)
        data.next_token = map['nextToken']
        data.workbook_cursor = map['workbookCursor']
        data
      end
    end

    # Operation Parser for StartTableDataImportJob
    class StartTableDataImportJob
      def self.parse(http_resp)
        data = Types::StartTableDataImportJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['jobId']
        data.job_status = map['jobStatus']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
