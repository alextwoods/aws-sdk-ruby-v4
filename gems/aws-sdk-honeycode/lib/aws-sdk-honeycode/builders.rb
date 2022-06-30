# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Honeycode
  module Builders

    # Operation Builder for BatchCreateTableRows
    class BatchCreateTableRows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        if input[:table_id].to_s.empty?
          raise ArgumentError, "HTTP label :table_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/tables/%<tableId>s/rows/batchcreate',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s),
            tableId: Hearth::HTTP.uri_escape(input[:table_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['rowsToCreate'] = Builders::CreateRowDataList.build(input[:rows_to_create]) unless input[:rows_to_create].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateRowDataList
    class CreateRowDataList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CreateRowData.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateRowData
    class CreateRowData
      def self.build(input)
        data = {}
        data['batchItemId'] = input[:batch_item_id] unless input[:batch_item_id].nil?
        data['cellsToCreate'] = Builders::RowDataInput.build(input[:cells_to_create]) unless input[:cells_to_create].nil?
        data
      end
    end

    # Map Builder for RowDataInput
    class RowDataInput
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::CellInput.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CellInput
    class CellInput
      def self.build(input)
        data = {}
        data['fact'] = input[:fact] unless input[:fact].nil?
        data['facts'] = Builders::FactList.build(input[:facts]) unless input[:facts].nil?
        data
      end
    end

    # List Builder for FactList
    class FactList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDeleteTableRows
    class BatchDeleteTableRows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        if input[:table_id].to_s.empty?
          raise ArgumentError, "HTTP label :table_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/tables/%<tableId>s/rows/batchdelete',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s),
            tableId: Hearth::HTTP.uri_escape(input[:table_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['rowIds'] = Builders::RowIdList.build(input[:row_ids]) unless input[:row_ids].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RowIdList
    class RowIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchUpdateTableRows
    class BatchUpdateTableRows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        if input[:table_id].to_s.empty?
          raise ArgumentError, "HTTP label :table_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/tables/%<tableId>s/rows/batchupdate',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s),
            tableId: Hearth::HTTP.uri_escape(input[:table_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['rowsToUpdate'] = Builders::UpdateRowDataList.build(input[:rows_to_update]) unless input[:rows_to_update].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdateRowDataList
    class UpdateRowDataList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UpdateRowData.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateRowData
    class UpdateRowData
      def self.build(input)
        data = {}
        data['rowId'] = input[:row_id] unless input[:row_id].nil?
        data['cellsToUpdate'] = Builders::RowDataInput.build(input[:cells_to_update]) unless input[:cells_to_update].nil?
        data
      end
    end

    # Operation Builder for BatchUpsertTableRows
    class BatchUpsertTableRows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        if input[:table_id].to_s.empty?
          raise ArgumentError, "HTTP label :table_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/tables/%<tableId>s/rows/batchupsert',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s),
            tableId: Hearth::HTTP.uri_escape(input[:table_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['rowsToUpsert'] = Builders::UpsertRowDataList.build(input[:rows_to_upsert]) unless input[:rows_to_upsert].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpsertRowDataList
    class UpsertRowDataList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UpsertRowData.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpsertRowData
    class UpsertRowData
      def self.build(input)
        data = {}
        data['batchItemId'] = input[:batch_item_id] unless input[:batch_item_id].nil?
        data['filter'] = Builders::Filter.build(input[:filter]) unless input[:filter].nil?
        data['cellsToUpdate'] = Builders::RowDataInput.build(input[:cells_to_update]) unless input[:cells_to_update].nil?
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['formula'] = input[:formula] unless input[:formula].nil?
        data['contextRowId'] = input[:context_row_id] unless input[:context_row_id].nil?
        data
      end
    end

    # Operation Builder for DescribeTableDataImportJob
    class DescribeTableDataImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        if input[:table_id].to_s.empty?
          raise ArgumentError, "HTTP label :table_id cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/tables/%<tableId>s/import/%<jobId>s',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s),
            tableId: Hearth::HTTP.uri_escape(input[:table_id].to_s),
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetScreenData
    class GetScreenData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/screendata')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['workbookId'] = input[:workbook_id] unless input[:workbook_id].nil?
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['screenId'] = input[:screen_id] unless input[:screen_id].nil?
        data['variables'] = Builders::VariableValueMap.build(input[:variables]) unless input[:variables].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for VariableValueMap
    class VariableValueMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::VariableValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for VariableValue
    class VariableValue
      def self.build(input)
        data = {}
        data['rawValue'] = input[:raw_value] unless input[:raw_value].nil?
        data
      end
    end

    # Operation Builder for InvokeScreenAutomation
    class InvokeScreenAutomation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:screen_id].to_s.empty?
          raise ArgumentError, "HTTP label :screen_id cannot be nil or empty."
        end
        if input[:screen_automation_id].to_s.empty?
          raise ArgumentError, "HTTP label :screen_automation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/apps/%<appId>s/screens/%<screenId>s/automations/%<screenAutomationId>s',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s),
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            screenId: Hearth::HTTP.uri_escape(input[:screen_id].to_s),
            screenAutomationId: Hearth::HTTP.uri_escape(input[:screen_automation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['variables'] = Builders::VariableValueMap.build(input[:variables]) unless input[:variables].nil?
        data['rowId'] = input[:row_id] unless input[:row_id].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTableColumns
    class ListTableColumns
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        if input[:table_id].to_s.empty?
          raise ArgumentError, "HTTP label :table_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/tables/%<tableId>s/columns',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s),
            tableId: Hearth::HTTP.uri_escape(input[:table_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTableRows
    class ListTableRows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        if input[:table_id].to_s.empty?
          raise ArgumentError, "HTTP label :table_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/tables/%<tableId>s/rows/list',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s),
            tableId: Hearth::HTTP.uri_escape(input[:table_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['rowIds'] = Builders::RowIdList.build(input[:row_ids]) unless input[:row_ids].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTables
    class ListTables
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/tables',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for QueryTableRows
    class QueryTableRows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        if input[:table_id].to_s.empty?
          raise ArgumentError, "HTTP label :table_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/tables/%<tableId>s/rows/query',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s),
            tableId: Hearth::HTTP.uri_escape(input[:table_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filterFormula'] = Builders::Filter.build(input[:filter_formula]) unless input[:filter_formula].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartTableDataImportJob
    class StartTableDataImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workbook_id].to_s.empty?
          raise ArgumentError, "HTTP label :workbook_id cannot be nil or empty."
        end
        if input[:destination_table_id].to_s.empty?
          raise ArgumentError, "HTTP label :destination_table_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workbooks/%<workbookId>s/tables/%<destinationTableId>s/import',
            workbookId: Hearth::HTTP.uri_escape(input[:workbook_id].to_s),
            destinationTableId: Hearth::HTTP.uri_escape(input[:destination_table_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['dataSource'] = Builders::ImportDataSource.build(input[:data_source]) unless input[:data_source].nil?
        data['dataFormat'] = input[:data_format] unless input[:data_format].nil?
        data['importOptions'] = Builders::ImportOptions.build(input[:import_options]) unless input[:import_options].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ImportOptions
    class ImportOptions
      def self.build(input)
        data = {}
        data['destinationOptions'] = Builders::DestinationOptions.build(input[:destination_options]) unless input[:destination_options].nil?
        data['delimitedTextOptions'] = Builders::DelimitedTextImportOptions.build(input[:delimited_text_options]) unless input[:delimited_text_options].nil?
        data
      end
    end

    # Structure Builder for DelimitedTextImportOptions
    class DelimitedTextImportOptions
      def self.build(input)
        data = {}
        data['delimiter'] = input[:delimiter] unless input[:delimiter].nil?
        data['hasHeaderRow'] = input[:has_header_row] unless input[:has_header_row].nil?
        data['ignoreEmptyRows'] = input[:ignore_empty_rows] unless input[:ignore_empty_rows].nil?
        data['dataCharacterEncoding'] = input[:data_character_encoding] unless input[:data_character_encoding].nil?
        data
      end
    end

    # Structure Builder for DestinationOptions
    class DestinationOptions
      def self.build(input)
        data = {}
        data['columnMap'] = Builders::ImportColumnMap.build(input[:column_map]) unless input[:column_map].nil?
        data
      end
    end

    # Map Builder for ImportColumnMap
    class ImportColumnMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::SourceDataColumnProperties.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for SourceDataColumnProperties
    class SourceDataColumnProperties
      def self.build(input)
        data = {}
        data['columnIndex'] = input[:column_index] unless input[:column_index].nil?
        data
      end
    end

    # Structure Builder for ImportDataSource
    class ImportDataSource
      def self.build(input)
        data = {}
        data['dataSourceConfig'] = Builders::ImportDataSourceConfig.build(input[:data_source_config]) unless input[:data_source_config].nil?
        data
      end
    end

    # Structure Builder for ImportDataSourceConfig
    class ImportDataSourceConfig
      def self.build(input)
        data = {}
        data['dataSourceUrl'] = input[:data_source_url] unless input[:data_source_url].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagsMap
    class TagsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeysList
    class TagKeysList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
