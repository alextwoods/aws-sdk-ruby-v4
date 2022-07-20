# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Honeycode
  module Stubs

    # Operation Stubber for BatchCreateTableRows
    class BatchCreateTableRows
      def self.default(visited=[])
        {
          workbook_cursor: 1,
          created_rows: CreatedRowsMap.default(visited),
          failed_batch_items: FailedBatchItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workbookCursor'] = stub[:workbook_cursor] unless stub[:workbook_cursor].nil?
        data['createdRows'] = CreatedRowsMap.stub(stub[:created_rows]) unless stub[:created_rows].nil?
        data['failedBatchItems'] = FailedBatchItems.stub(stub[:failed_batch_items]) unless stub[:failed_batch_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FailedBatchItems
    class FailedBatchItems
      def self.default(visited=[])
        return nil if visited.include?('FailedBatchItems')
        visited = visited + ['FailedBatchItems']
        [
          FailedBatchItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedBatchItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedBatchItem
    class FailedBatchItem
      def self.default(visited=[])
        return nil if visited.include?('FailedBatchItem')
        visited = visited + ['FailedBatchItem']
        {
          id: 'id',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedBatchItem.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Map Stubber for CreatedRowsMap
    class CreatedRowsMap
      def self.default(visited=[])
        return nil if visited.include?('CreatedRowsMap')
        visited = visited + ['CreatedRowsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for BatchDeleteTableRows
    class BatchDeleteTableRows
      def self.default(visited=[])
        {
          workbook_cursor: 1,
          failed_batch_items: FailedBatchItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workbookCursor'] = stub[:workbook_cursor] unless stub[:workbook_cursor].nil?
        data['failedBatchItems'] = FailedBatchItems.stub(stub[:failed_batch_items]) unless stub[:failed_batch_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchUpdateTableRows
    class BatchUpdateTableRows
      def self.default(visited=[])
        {
          workbook_cursor: 1,
          failed_batch_items: FailedBatchItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workbookCursor'] = stub[:workbook_cursor] unless stub[:workbook_cursor].nil?
        data['failedBatchItems'] = FailedBatchItems.stub(stub[:failed_batch_items]) unless stub[:failed_batch_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchUpsertTableRows
    class BatchUpsertTableRows
      def self.default(visited=[])
        {
          rows: UpsertRowsResultMap.default(visited),
          workbook_cursor: 1,
          failed_batch_items: FailedBatchItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['rows'] = UpsertRowsResultMap.stub(stub[:rows]) unless stub[:rows].nil?
        data['workbookCursor'] = stub[:workbook_cursor] unless stub[:workbook_cursor].nil?
        data['failedBatchItems'] = FailedBatchItems.stub(stub[:failed_batch_items]) unless stub[:failed_batch_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for UpsertRowsResultMap
    class UpsertRowsResultMap
      def self.default(visited=[])
        return nil if visited.include?('UpsertRowsResultMap')
        visited = visited + ['UpsertRowsResultMap']
        {
          test_key: UpsertRowsResult.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = UpsertRowsResult.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for UpsertRowsResult
    class UpsertRowsResult
      def self.default(visited=[])
        return nil if visited.include?('UpsertRowsResult')
        visited = visited + ['UpsertRowsResult']
        {
          row_ids: RowIdList.default(visited),
          upsert_action: 'upsert_action',
        }
      end

      def self.stub(stub)
        stub ||= Types::UpsertRowsResult.new
        data = {}
        data['rowIds'] = RowIdList.stub(stub[:row_ids]) unless stub[:row_ids].nil?
        data['upsertAction'] = stub[:upsert_action] unless stub[:upsert_action].nil?
        data
      end
    end

    # List Stubber for RowIdList
    class RowIdList
      def self.default(visited=[])
        return nil if visited.include?('RowIdList')
        visited = visited + ['RowIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeTableDataImportJob
    class DescribeTableDataImportJob
      def self.default(visited=[])
        {
          job_status: 'job_status',
          message: 'message',
          job_metadata: TableDataImportJobMetadata.default(visited),
          error_code: 'error_code',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['jobMetadata'] = TableDataImportJobMetadata.stub(stub[:job_metadata]) unless stub[:job_metadata].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TableDataImportJobMetadata
    class TableDataImportJobMetadata
      def self.default(visited=[])
        return nil if visited.include?('TableDataImportJobMetadata')
        visited = visited + ['TableDataImportJobMetadata']
        {
          submitter: ImportJobSubmitter.default(visited),
          submit_time: Time.now,
          import_options: ImportOptions.default(visited),
          data_source: ImportDataSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableDataImportJobMetadata.new
        data = {}
        data['submitter'] = ImportJobSubmitter.stub(stub[:submitter]) unless stub[:submitter].nil?
        data['submitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['importOptions'] = ImportOptions.stub(stub[:import_options]) unless stub[:import_options].nil?
        data['dataSource'] = ImportDataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data
      end
    end

    # Structure Stubber for ImportDataSource
    class ImportDataSource
      def self.default(visited=[])
        return nil if visited.include?('ImportDataSource')
        visited = visited + ['ImportDataSource']
        {
          data_source_config: ImportDataSourceConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportDataSource.new
        data = {}
        data['dataSourceConfig'] = ImportDataSourceConfig.stub(stub[:data_source_config]) unless stub[:data_source_config].nil?
        data
      end
    end

    # Structure Stubber for ImportDataSourceConfig
    class ImportDataSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('ImportDataSourceConfig')
        visited = visited + ['ImportDataSourceConfig']
        {
          data_source_url: 'data_source_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportDataSourceConfig.new
        data = {}
        data['dataSourceUrl'] = stub[:data_source_url] unless stub[:data_source_url].nil?
        data
      end
    end

    # Structure Stubber for ImportOptions
    class ImportOptions
      def self.default(visited=[])
        return nil if visited.include?('ImportOptions')
        visited = visited + ['ImportOptions']
        {
          destination_options: DestinationOptions.default(visited),
          delimited_text_options: DelimitedTextImportOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportOptions.new
        data = {}
        data['destinationOptions'] = DestinationOptions.stub(stub[:destination_options]) unless stub[:destination_options].nil?
        data['delimitedTextOptions'] = DelimitedTextImportOptions.stub(stub[:delimited_text_options]) unless stub[:delimited_text_options].nil?
        data
      end
    end

    # Structure Stubber for DelimitedTextImportOptions
    class DelimitedTextImportOptions
      def self.default(visited=[])
        return nil if visited.include?('DelimitedTextImportOptions')
        visited = visited + ['DelimitedTextImportOptions']
        {
          delimiter: 'delimiter',
          has_header_row: false,
          ignore_empty_rows: false,
          data_character_encoding: 'data_character_encoding',
        }
      end

      def self.stub(stub)
        stub ||= Types::DelimitedTextImportOptions.new
        data = {}
        data['delimiter'] = stub[:delimiter] unless stub[:delimiter].nil?
        data['hasHeaderRow'] = stub[:has_header_row] unless stub[:has_header_row].nil?
        data['ignoreEmptyRows'] = stub[:ignore_empty_rows] unless stub[:ignore_empty_rows].nil?
        data['dataCharacterEncoding'] = stub[:data_character_encoding] unless stub[:data_character_encoding].nil?
        data
      end
    end

    # Structure Stubber for DestinationOptions
    class DestinationOptions
      def self.default(visited=[])
        return nil if visited.include?('DestinationOptions')
        visited = visited + ['DestinationOptions']
        {
          column_map: ImportColumnMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationOptions.new
        data = {}
        data['columnMap'] = ImportColumnMap.stub(stub[:column_map]) unless stub[:column_map].nil?
        data
      end
    end

    # Map Stubber for ImportColumnMap
    class ImportColumnMap
      def self.default(visited=[])
        return nil if visited.include?('ImportColumnMap')
        visited = visited + ['ImportColumnMap']
        {
          test_key: SourceDataColumnProperties.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = SourceDataColumnProperties.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for SourceDataColumnProperties
    class SourceDataColumnProperties
      def self.default(visited=[])
        return nil if visited.include?('SourceDataColumnProperties')
        visited = visited + ['SourceDataColumnProperties']
        {
          column_index: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceDataColumnProperties.new
        data = {}
        data['columnIndex'] = stub[:column_index] unless stub[:column_index].nil?
        data
      end
    end

    # Structure Stubber for ImportJobSubmitter
    class ImportJobSubmitter
      def self.default(visited=[])
        return nil if visited.include?('ImportJobSubmitter')
        visited = visited + ['ImportJobSubmitter']
        {
          email: 'email',
          user_arn: 'user_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportJobSubmitter.new
        data = {}
        data['email'] = stub[:email] unless stub[:email].nil?
        data['userArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data
      end
    end

    # Operation Stubber for GetScreenData
    class GetScreenData
      def self.default(visited=[])
        {
          results: ResultSetMap.default(visited),
          workbook_cursor: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['results'] = ResultSetMap.stub(stub[:results]) unless stub[:results].nil?
        data['workbookCursor'] = stub[:workbook_cursor] unless stub[:workbook_cursor].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for ResultSetMap
    class ResultSetMap
      def self.default(visited=[])
        return nil if visited.include?('ResultSetMap')
        visited = visited + ['ResultSetMap']
        {
          test_key: ResultSet.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ResultSet.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ResultSet
    class ResultSet
      def self.default(visited=[])
        return nil if visited.include?('ResultSet')
        visited = visited + ['ResultSet']
        {
          headers: ResultHeader.default(visited),
          rows: ResultRows.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultSet.new
        data = {}
        data['headers'] = ResultHeader.stub(stub[:headers]) unless stub[:headers].nil?
        data['rows'] = ResultRows.stub(stub[:rows]) unless stub[:rows].nil?
        data
      end
    end

    # List Stubber for ResultRows
    class ResultRows
      def self.default(visited=[])
        return nil if visited.include?('ResultRows')
        visited = visited + ['ResultRows']
        [
          ResultRow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResultRow.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResultRow
    class ResultRow
      def self.default(visited=[])
        return nil if visited.include?('ResultRow')
        visited = visited + ['ResultRow']
        {
          row_id: 'row_id',
          data_items: DataItems.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultRow.new
        data = {}
        data['rowId'] = stub[:row_id] unless stub[:row_id].nil?
        data['dataItems'] = DataItems.stub(stub[:data_items]) unless stub[:data_items].nil?
        data
      end
    end

    # List Stubber for DataItems
    class DataItems
      def self.default(visited=[])
        return nil if visited.include?('DataItems')
        visited = visited + ['DataItems']
        [
          DataItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataItem
    class DataItem
      def self.default(visited=[])
        return nil if visited.include?('DataItem')
        visited = visited + ['DataItem']
        {
          override_format: 'override_format',
          raw_value: 'raw_value',
          formatted_value: 'formatted_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataItem.new
        data = {}
        data['overrideFormat'] = stub[:override_format] unless stub[:override_format].nil?
        data['rawValue'] = stub[:raw_value] unless stub[:raw_value].nil?
        data['formattedValue'] = stub[:formatted_value] unless stub[:formatted_value].nil?
        data
      end
    end

    # List Stubber for ResultHeader
    class ResultHeader
      def self.default(visited=[])
        return nil if visited.include?('ResultHeader')
        visited = visited + ['ResultHeader']
        [
          ColumnMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ColumnMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnMetadata
    class ColumnMetadata
      def self.default(visited=[])
        return nil if visited.include?('ColumnMetadata')
        visited = visited + ['ColumnMetadata']
        {
          name: 'name',
          format: 'format',
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data
      end
    end

    # Operation Stubber for InvokeScreenAutomation
    class InvokeScreenAutomation
      def self.default(visited=[])
        {
          workbook_cursor: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workbookCursor'] = stub[:workbook_cursor] unless stub[:workbook_cursor].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTableColumns
    class ListTableColumns
      def self.default(visited=[])
        {
          table_columns: TableColumns.default(visited),
          next_token: 'next_token',
          workbook_cursor: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tableColumns'] = TableColumns.stub(stub[:table_columns]) unless stub[:table_columns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['workbookCursor'] = stub[:workbook_cursor] unless stub[:workbook_cursor].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TableColumns
    class TableColumns
      def self.default(visited=[])
        return nil if visited.include?('TableColumns')
        visited = visited + ['TableColumns']
        [
          TableColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TableColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TableColumn
    class TableColumn
      def self.default(visited=[])
        return nil if visited.include?('TableColumn')
        visited = visited + ['TableColumn']
        {
          table_column_id: 'table_column_id',
          table_column_name: 'table_column_name',
          format: 'format',
        }
      end

      def self.stub(stub)
        stub ||= Types::TableColumn.new
        data = {}
        data['tableColumnId'] = stub[:table_column_id] unless stub[:table_column_id].nil?
        data['tableColumnName'] = stub[:table_column_name] unless stub[:table_column_name].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data
      end
    end

    # Operation Stubber for ListTableRows
    class ListTableRows
      def self.default(visited=[])
        {
          column_ids: ResourceIds.default(visited),
          rows: TableRows.default(visited),
          row_ids_not_found: RowIdList.default(visited),
          next_token: 'next_token',
          workbook_cursor: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['columnIds'] = ResourceIds.stub(stub[:column_ids]) unless stub[:column_ids].nil?
        data['rows'] = TableRows.stub(stub[:rows]) unless stub[:rows].nil?
        data['rowIdsNotFound'] = RowIdList.stub(stub[:row_ids_not_found]) unless stub[:row_ids_not_found].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['workbookCursor'] = stub[:workbook_cursor] unless stub[:workbook_cursor].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TableRows
    class TableRows
      def self.default(visited=[])
        return nil if visited.include?('TableRows')
        visited = visited + ['TableRows']
        [
          TableRow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TableRow.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TableRow
    class TableRow
      def self.default(visited=[])
        return nil if visited.include?('TableRow')
        visited = visited + ['TableRow']
        {
          row_id: 'row_id',
          cells: Cells.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableRow.new
        data = {}
        data['rowId'] = stub[:row_id] unless stub[:row_id].nil?
        data['cells'] = Cells.stub(stub[:cells]) unless stub[:cells].nil?
        data
      end
    end

    # List Stubber for Cells
    class Cells
      def self.default(visited=[])
        return nil if visited.include?('Cells')
        visited = visited + ['Cells']
        [
          Cell.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Cell.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Cell
    class Cell
      def self.default(visited=[])
        return nil if visited.include?('Cell')
        visited = visited + ['Cell']
        {
          formula: 'formula',
          format: 'format',
          raw_value: 'raw_value',
          formatted_value: 'formatted_value',
          formatted_values: FormattedValuesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Cell.new
        data = {}
        data['formula'] = stub[:formula] unless stub[:formula].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data['rawValue'] = stub[:raw_value] unless stub[:raw_value].nil?
        data['formattedValue'] = stub[:formatted_value] unless stub[:formatted_value].nil?
        data['formattedValues'] = FormattedValuesList.stub(stub[:formatted_values]) unless stub[:formatted_values].nil?
        data
      end
    end

    # List Stubber for FormattedValuesList
    class FormattedValuesList
      def self.default(visited=[])
        return nil if visited.include?('FormattedValuesList')
        visited = visited + ['FormattedValuesList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ResourceIds
    class ResourceIds
      def self.default(visited=[])
        return nil if visited.include?('ResourceIds')
        visited = visited + ['ResourceIds']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTables
    class ListTables
      def self.default(visited=[])
        {
          tables: Tables.default(visited),
          next_token: 'next_token',
          workbook_cursor: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tables'] = Tables.stub(stub[:tables]) unless stub[:tables].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['workbookCursor'] = stub[:workbook_cursor] unless stub[:workbook_cursor].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Tables
    class Tables
      def self.default(visited=[])
        return nil if visited.include?('Tables')
        visited = visited + ['Tables']
        [
          Table.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Table.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Table
    class Table
      def self.default(visited=[])
        return nil if visited.include?('Table')
        visited = visited + ['Table']
        {
          table_id: 'table_id',
          table_name: 'table_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Table.new
        data = {}
        data['tableId'] = stub[:table_id] unless stub[:table_id].nil?
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagsMap
    class TagsMap
      def self.default(visited=[])
        return nil if visited.include?('TagsMap')
        visited = visited + ['TagsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for QueryTableRows
    class QueryTableRows
      def self.default(visited=[])
        {
          column_ids: ResourceIds.default(visited),
          rows: TableRows.default(visited),
          next_token: 'next_token',
          workbook_cursor: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['columnIds'] = ResourceIds.stub(stub[:column_ids]) unless stub[:column_ids].nil?
        data['rows'] = TableRows.stub(stub[:rows]) unless stub[:rows].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['workbookCursor'] = stub[:workbook_cursor] unless stub[:workbook_cursor].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartTableDataImportJob
    class StartTableDataImportJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['jobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
