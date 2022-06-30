# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Athena
  module Parsers

    # Operation Parser for BatchGetNamedQuery
    class BatchGetNamedQuery
      def self.parse(http_resp)
        data = Types::BatchGetNamedQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.named_queries = (Parsers::NamedQueryList.parse(map['NamedQueries']) unless map['NamedQueries'].nil?)
        data.unprocessed_named_query_ids = (Parsers::UnprocessedNamedQueryIdList.parse(map['UnprocessedNamedQueryIds']) unless map['UnprocessedNamedQueryIds'].nil?)
        data
      end
    end

    class UnprocessedNamedQueryIdList
      def self.parse(list)
        list.map do |value|
          Parsers::UnprocessedNamedQueryId.parse(value) unless value.nil?
        end
      end
    end

    class UnprocessedNamedQueryId
      def self.parse(map)
        data = Types::UnprocessedNamedQueryId.new
        data.named_query_id = map['NamedQueryId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class NamedQueryList
      def self.parse(list)
        list.map do |value|
          Parsers::NamedQuery.parse(value) unless value.nil?
        end
      end
    end

    class NamedQuery
      def self.parse(map)
        data = Types::NamedQuery.new
        data.name = map['Name']
        data.description = map['Description']
        data.database = map['Database']
        data.query_string = map['QueryString']
        data.named_query_id = map['NamedQueryId']
        data.work_group = map['WorkGroup']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.athena_error_code = map['AthenaErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchGetQueryExecution
    class BatchGetQueryExecution
      def self.parse(http_resp)
        data = Types::BatchGetQueryExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_executions = (Parsers::QueryExecutionList.parse(map['QueryExecutions']) unless map['QueryExecutions'].nil?)
        data.unprocessed_query_execution_ids = (Parsers::UnprocessedQueryExecutionIdList.parse(map['UnprocessedQueryExecutionIds']) unless map['UnprocessedQueryExecutionIds'].nil?)
        data
      end
    end

    class UnprocessedQueryExecutionIdList
      def self.parse(list)
        list.map do |value|
          Parsers::UnprocessedQueryExecutionId.parse(value) unless value.nil?
        end
      end
    end

    class UnprocessedQueryExecutionId
      def self.parse(map)
        data = Types::UnprocessedQueryExecutionId.new
        data.query_execution_id = map['QueryExecutionId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class QueryExecutionList
      def self.parse(list)
        list.map do |value|
          Parsers::QueryExecution.parse(value) unless value.nil?
        end
      end
    end

    class QueryExecution
      def self.parse(map)
        data = Types::QueryExecution.new
        data.query_execution_id = map['QueryExecutionId']
        data.query = map['Query']
        data.statement_type = map['StatementType']
        data.result_configuration = (Parsers::ResultConfiguration.parse(map['ResultConfiguration']) unless map['ResultConfiguration'].nil?)
        data.query_execution_context = (Parsers::QueryExecutionContext.parse(map['QueryExecutionContext']) unless map['QueryExecutionContext'].nil?)
        data.status = (Parsers::QueryExecutionStatus.parse(map['Status']) unless map['Status'].nil?)
        data.statistics = (Parsers::QueryExecutionStatistics.parse(map['Statistics']) unless map['Statistics'].nil?)
        data.work_group = map['WorkGroup']
        data.engine_version = (Parsers::EngineVersion.parse(map['EngineVersion']) unless map['EngineVersion'].nil?)
        return data
      end
    end

    class EngineVersion
      def self.parse(map)
        data = Types::EngineVersion.new
        data.selected_engine_version = map['SelectedEngineVersion']
        data.effective_engine_version = map['EffectiveEngineVersion']
        return data
      end
    end

    class QueryExecutionStatistics
      def self.parse(map)
        data = Types::QueryExecutionStatistics.new
        data.engine_execution_time_in_millis = map['EngineExecutionTimeInMillis']
        data.data_scanned_in_bytes = map['DataScannedInBytes']
        data.data_manifest_location = map['DataManifestLocation']
        data.total_execution_time_in_millis = map['TotalExecutionTimeInMillis']
        data.query_queue_time_in_millis = map['QueryQueueTimeInMillis']
        data.query_planning_time_in_millis = map['QueryPlanningTimeInMillis']
        data.service_processing_time_in_millis = map['ServiceProcessingTimeInMillis']
        return data
      end
    end

    class QueryExecutionStatus
      def self.parse(map)
        data = Types::QueryExecutionStatus.new
        data.state = map['State']
        data.state_change_reason = map['StateChangeReason']
        data.submission_date_time = Time.at(map['SubmissionDateTime'].to_i) if map['SubmissionDateTime']
        data.completion_date_time = Time.at(map['CompletionDateTime'].to_i) if map['CompletionDateTime']
        data.athena_error = (Parsers::AthenaError.parse(map['AthenaError']) unless map['AthenaError'].nil?)
        return data
      end
    end

    class AthenaError
      def self.parse(map)
        data = Types::AthenaError.new
        data.error_category = map['ErrorCategory']
        data.error_type = map['ErrorType']
        data.retryable = map['Retryable']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class QueryExecutionContext
      def self.parse(map)
        data = Types::QueryExecutionContext.new
        data.database = map['Database']
        data.catalog = map['Catalog']
        return data
      end
    end

    class ResultConfiguration
      def self.parse(map)
        data = Types::ResultConfiguration.new
        data.output_location = map['OutputLocation']
        data.encryption_configuration = (Parsers::EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        data.expected_bucket_owner = map['ExpectedBucketOwner']
        data.acl_configuration = (Parsers::AclConfiguration.parse(map['AclConfiguration']) unless map['AclConfiguration'].nil?)
        return data
      end
    end

    class AclConfiguration
      def self.parse(map)
        data = Types::AclConfiguration.new
        data.s3_acl_option = map['S3AclOption']
        return data
      end
    end

    class EncryptionConfiguration
      def self.parse(map)
        data = Types::EncryptionConfiguration.new
        data.encryption_option = map['EncryptionOption']
        data.kms_key = map['KmsKey']
        return data
      end
    end

    # Operation Parser for CreateDataCatalog
    class CreateDataCatalog
      def self.parse(http_resp)
        data = Types::CreateDataCatalogOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateNamedQuery
    class CreateNamedQuery
      def self.parse(http_resp)
        data = Types::CreateNamedQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.named_query_id = map['NamedQueryId']
        data
      end
    end

    # Operation Parser for CreatePreparedStatement
    class CreatePreparedStatement
      def self.parse(http_resp)
        data = Types::CreatePreparedStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateWorkGroup
    class CreateWorkGroup
      def self.parse(http_resp)
        data = Types::CreateWorkGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDataCatalog
    class DeleteDataCatalog
      def self.parse(http_resp)
        data = Types::DeleteDataCatalogOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteNamedQuery
    class DeleteNamedQuery
      def self.parse(http_resp)
        data = Types::DeleteNamedQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePreparedStatement
    class DeletePreparedStatement
      def self.parse(http_resp)
        data = Types::DeletePreparedStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Operation Parser for DeleteWorkGroup
    class DeleteWorkGroup
      def self.parse(http_resp)
        data = Types::DeleteWorkGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetDataCatalog
    class GetDataCatalog
      def self.parse(http_resp)
        data = Types::GetDataCatalogOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_catalog = (Parsers::DataCatalog.parse(map['DataCatalog']) unless map['DataCatalog'].nil?)
        data
      end
    end

    class DataCatalog
      def self.parse(map)
        data = Types::DataCatalog.new
        data.name = map['Name']
        data.description = map['Description']
        data.type = map['Type']
        data.parameters = (Parsers::ParametersMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class ParametersMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetDatabase
    class GetDatabase
      def self.parse(http_resp)
        data = Types::GetDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.database = (Parsers::Database.parse(map['Database']) unless map['Database'].nil?)
        data
      end
    end

    class Database
      def self.parse(map)
        data = Types::Database.new
        data.name = map['Name']
        data.description = map['Description']
        data.parameters = (Parsers::ParametersMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    # Error Parser for MetadataException
    class MetadataException
      def self.parse(http_resp)
        data = Types::MetadataException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetNamedQuery
    class GetNamedQuery
      def self.parse(http_resp)
        data = Types::GetNamedQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.named_query = (Parsers::NamedQuery.parse(map['NamedQuery']) unless map['NamedQuery'].nil?)
        data
      end
    end

    # Operation Parser for GetPreparedStatement
    class GetPreparedStatement
      def self.parse(http_resp)
        data = Types::GetPreparedStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.prepared_statement = (Parsers::PreparedStatement.parse(map['PreparedStatement']) unless map['PreparedStatement'].nil?)
        data
      end
    end

    class PreparedStatement
      def self.parse(map)
        data = Types::PreparedStatement.new
        data.statement_name = map['StatementName']
        data.query_statement = map['QueryStatement']
        data.work_group_name = map['WorkGroupName']
        data.description = map['Description']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for GetQueryExecution
    class GetQueryExecution
      def self.parse(http_resp)
        data = Types::GetQueryExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_execution = (Parsers::QueryExecution.parse(map['QueryExecution']) unless map['QueryExecution'].nil?)
        data
      end
    end

    # Operation Parser for GetQueryResults
    class GetQueryResults
      def self.parse(http_resp)
        data = Types::GetQueryResultsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.update_count = map['UpdateCount']
        data.result_set = (Parsers::ResultSet.parse(map['ResultSet']) unless map['ResultSet'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResultSet
      def self.parse(map)
        data = Types::ResultSet.new
        data.rows = (Parsers::RowList.parse(map['Rows']) unless map['Rows'].nil?)
        data.result_set_metadata = (Parsers::ResultSetMetadata.parse(map['ResultSetMetadata']) unless map['ResultSetMetadata'].nil?)
        return data
      end
    end

    class ResultSetMetadata
      def self.parse(map)
        data = Types::ResultSetMetadata.new
        data.column_info = (Parsers::ColumnInfoList.parse(map['ColumnInfo']) unless map['ColumnInfo'].nil?)
        return data
      end
    end

    class ColumnInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::ColumnInfo.parse(value) unless value.nil?
        end
      end
    end

    class ColumnInfo
      def self.parse(map)
        data = Types::ColumnInfo.new
        data.catalog_name = map['CatalogName']
        data.schema_name = map['SchemaName']
        data.table_name = map['TableName']
        data.name = map['Name']
        data.label = map['Label']
        data.type = map['Type']
        data.precision = map['Precision']
        data.scale = map['Scale']
        data.nullable = map['Nullable']
        data.case_sensitive = map['CaseSensitive']
        return data
      end
    end

    class RowList
      def self.parse(list)
        list.map do |value|
          Parsers::Row.parse(value) unless value.nil?
        end
      end
    end

    class Row
      def self.parse(map)
        data = Types::Row.new
        data.data = (Parsers::DatumList.parse(map['Data']) unless map['Data'].nil?)
        return data
      end
    end

    class DatumList
      def self.parse(list)
        list.map do |value|
          Parsers::Datum.parse(value) unless value.nil?
        end
      end
    end

    class Datum
      def self.parse(map)
        data = Types::Datum.new
        data.var_char_value = map['VarCharValue']
        return data
      end
    end

    # Operation Parser for GetTableMetadata
    class GetTableMetadata
      def self.parse(http_resp)
        data = Types::GetTableMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table_metadata = (Parsers::TableMetadata.parse(map['TableMetadata']) unless map['TableMetadata'].nil?)
        data
      end
    end

    class TableMetadata
      def self.parse(map)
        data = Types::TableMetadata.new
        data.name = map['Name']
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.last_access_time = Time.at(map['LastAccessTime'].to_i) if map['LastAccessTime']
        data.table_type = map['TableType']
        data.columns = (Parsers::ColumnList.parse(map['Columns']) unless map['Columns'].nil?)
        data.partition_keys = (Parsers::ColumnList.parse(map['PartitionKeys']) unless map['PartitionKeys'].nil?)
        data.parameters = (Parsers::ParametersMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class ColumnList
      def self.parse(list)
        list.map do |value|
          Parsers::Column.parse(value) unless value.nil?
        end
      end
    end

    class Column
      def self.parse(map)
        data = Types::Column.new
        data.name = map['Name']
        data.type = map['Type']
        data.comment = map['Comment']
        return data
      end
    end

    # Operation Parser for GetWorkGroup
    class GetWorkGroup
      def self.parse(http_resp)
        data = Types::GetWorkGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.work_group = (Parsers::WorkGroup.parse(map['WorkGroup']) unless map['WorkGroup'].nil?)
        data
      end
    end

    class WorkGroup
      def self.parse(map)
        data = Types::WorkGroup.new
        data.name = map['Name']
        data.state = map['State']
        data.configuration = (Parsers::WorkGroupConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.description = map['Description']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    class WorkGroupConfiguration
      def self.parse(map)
        data = Types::WorkGroupConfiguration.new
        data.result_configuration = (Parsers::ResultConfiguration.parse(map['ResultConfiguration']) unless map['ResultConfiguration'].nil?)
        data.enforce_work_group_configuration = map['EnforceWorkGroupConfiguration']
        data.publish_cloud_watch_metrics_enabled = map['PublishCloudWatchMetricsEnabled']
        data.bytes_scanned_cutoff_per_query = map['BytesScannedCutoffPerQuery']
        data.requester_pays_enabled = map['RequesterPaysEnabled']
        data.engine_version = (Parsers::EngineVersion.parse(map['EngineVersion']) unless map['EngineVersion'].nil?)
        return data
      end
    end

    # Operation Parser for ListDataCatalogs
    class ListDataCatalogs
      def self.parse(http_resp)
        data = Types::ListDataCatalogsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_catalogs_summary = (Parsers::DataCatalogSummaryList.parse(map['DataCatalogsSummary']) unless map['DataCatalogsSummary'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DataCatalogSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::DataCatalogSummary.parse(value) unless value.nil?
        end
      end
    end

    class DataCatalogSummary
      def self.parse(map)
        data = Types::DataCatalogSummary.new
        data.catalog_name = map['CatalogName']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for ListDatabases
    class ListDatabases
      def self.parse(http_resp)
        data = Types::ListDatabasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.database_list = (Parsers::DatabaseList.parse(map['DatabaseList']) unless map['DatabaseList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatabaseList
      def self.parse(list)
        list.map do |value|
          Parsers::Database.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListEngineVersions
    class ListEngineVersions
      def self.parse(http_resp)
        data = Types::ListEngineVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.engine_versions = (Parsers::EngineVersionsList.parse(map['EngineVersions']) unless map['EngineVersions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EngineVersionsList
      def self.parse(list)
        list.map do |value|
          Parsers::EngineVersion.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListNamedQueries
    class ListNamedQueries
      def self.parse(http_resp)
        data = Types::ListNamedQueriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.named_query_ids = (Parsers::NamedQueryIdList.parse(map['NamedQueryIds']) unless map['NamedQueryIds'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NamedQueryIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListPreparedStatements
    class ListPreparedStatements
      def self.parse(http_resp)
        data = Types::ListPreparedStatementsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.prepared_statements = (Parsers::PreparedStatementsList.parse(map['PreparedStatements']) unless map['PreparedStatements'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PreparedStatementsList
      def self.parse(list)
        list.map do |value|
          Parsers::PreparedStatementSummary.parse(value) unless value.nil?
        end
      end
    end

    class PreparedStatementSummary
      def self.parse(map)
        data = Types::PreparedStatementSummary.new
        data.statement_name = map['StatementName']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListQueryExecutions
    class ListQueryExecutions
      def self.parse(http_resp)
        data = Types::ListQueryExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_execution_ids = (Parsers::QueryExecutionIdList.parse(map['QueryExecutionIds']) unless map['QueryExecutionIds'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class QueryExecutionIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListTableMetadata
    class ListTableMetadata
      def self.parse(http_resp)
        data = Types::ListTableMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table_metadata_list = (Parsers::TableMetadataList.parse(map['TableMetadataList']) unless map['TableMetadataList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TableMetadataList
      def self.parse(list)
        list.map do |value|
          Parsers::TableMetadata.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListWorkGroups
    class ListWorkGroups
      def self.parse(http_resp)
        data = Types::ListWorkGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.work_groups = (Parsers::WorkGroupsList.parse(map['WorkGroups']) unless map['WorkGroups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WorkGroupsList
      def self.parse(list)
        list.map do |value|
          Parsers::WorkGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class WorkGroupSummary
      def self.parse(map)
        data = Types::WorkGroupSummary.new
        data.name = map['Name']
        data.state = map['State']
        data.description = map['Description']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.engine_version = (Parsers::EngineVersion.parse(map['EngineVersion']) unless map['EngineVersion'].nil?)
        return data
      end
    end

    # Operation Parser for StartQueryExecution
    class StartQueryExecution
      def self.parse(http_resp)
        data = Types::StartQueryExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_execution_id = map['QueryExecutionId']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Operation Parser for StopQueryExecution
    class StopQueryExecution
      def self.parse(http_resp)
        data = Types::StopQueryExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDataCatalog
    class UpdateDataCatalog
      def self.parse(http_resp)
        data = Types::UpdateDataCatalogOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateNamedQuery
    class UpdateNamedQuery
      def self.parse(http_resp)
        data = Types::UpdateNamedQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdatePreparedStatement
    class UpdatePreparedStatement
      def self.parse(http_resp)
        data = Types::UpdatePreparedStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateWorkGroup
    class UpdateWorkGroup
      def self.parse(http_resp)
        data = Types::UpdateWorkGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
