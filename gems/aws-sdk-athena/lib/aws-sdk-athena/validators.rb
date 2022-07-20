# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Athena
  module Validators

    class AclConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AclConfiguration, context: context)
        Hearth::Validator.validate!(input[:s3_acl_option], ::String, context: "#{context}[:s3_acl_option]")
      end
    end

    class AthenaError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AthenaError, context: context)
        Hearth::Validator.validate!(input[:error_category], ::Integer, context: "#{context}[:error_category]")
        Hearth::Validator.validate!(input[:error_type], ::Integer, context: "#{context}[:error_type]")
        Hearth::Validator.validate!(input[:retryable], ::TrueClass, ::FalseClass, context: "#{context}[:retryable]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchGetNamedQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetNamedQueryInput, context: context)
        NamedQueryIdList.validate!(input[:named_query_ids], context: "#{context}[:named_query_ids]") unless input[:named_query_ids].nil?
      end
    end

    class BatchGetNamedQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetNamedQueryOutput, context: context)
        NamedQueryList.validate!(input[:named_queries], context: "#{context}[:named_queries]") unless input[:named_queries].nil?
        UnprocessedNamedQueryIdList.validate!(input[:unprocessed_named_query_ids], context: "#{context}[:unprocessed_named_query_ids]") unless input[:unprocessed_named_query_ids].nil?
      end
    end

    class BatchGetQueryExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetQueryExecutionInput, context: context)
        QueryExecutionIdList.validate!(input[:query_execution_ids], context: "#{context}[:query_execution_ids]") unless input[:query_execution_ids].nil?
      end
    end

    class BatchGetQueryExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetQueryExecutionOutput, context: context)
        QueryExecutionList.validate!(input[:query_executions], context: "#{context}[:query_executions]") unless input[:query_executions].nil?
        UnprocessedQueryExecutionIdList.validate!(input[:unprocessed_query_execution_ids], context: "#{context}[:unprocessed_query_execution_ids]") unless input[:unprocessed_query_execution_ids].nil?
      end
    end

    class Column
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Column, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class ColumnInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnInfo, context: context)
        Hearth::Validator.validate!(input[:catalog_name], ::String, context: "#{context}[:catalog_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:precision], ::Integer, context: "#{context}[:precision]")
        Hearth::Validator.validate!(input[:scale], ::Integer, context: "#{context}[:scale]")
        Hearth::Validator.validate!(input[:nullable], ::String, context: "#{context}[:nullable]")
        Hearth::Validator.validate!(input[:case_sensitive], ::TrueClass, ::FalseClass, context: "#{context}[:case_sensitive]")
      end
    end

    class ColumnInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Column.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateDataCatalogInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataCatalogInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDataCatalogOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataCatalogOutput, context: context)
      end
    end

    class CreateNamedQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNamedQueryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
      end
    end

    class CreateNamedQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNamedQueryOutput, context: context)
        Hearth::Validator.validate!(input[:named_query_id], ::String, context: "#{context}[:named_query_id]")
      end
    end

    class CreatePreparedStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePreparedStatementInput, context: context)
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
        Hearth::Validator.validate!(input[:query_statement], ::String, context: "#{context}[:query_statement]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreatePreparedStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePreparedStatementOutput, context: context)
      end
    end

    class CreateWorkGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        WorkGroupConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorkGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkGroupOutput, context: context)
      end
    end

    class DataCatalog
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCatalog, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class DataCatalogSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCatalogSummary, context: context)
        Hearth::Validator.validate!(input[:catalog_name], ::String, context: "#{context}[:catalog_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class DataCatalogSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataCatalogSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Database
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Database, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class DatabaseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Database.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Datum
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Datum, context: context)
        Hearth::Validator.validate!(input[:var_char_value], ::String, context: "#{context}[:var_char_value]")
      end
    end

    class DeleteDataCatalogInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataCatalogInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteDataCatalogOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataCatalogOutput, context: context)
      end
    end

    class DeleteNamedQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNamedQueryInput, context: context)
        Hearth::Validator.validate!(input[:named_query_id], ::String, context: "#{context}[:named_query_id]")
      end
    end

    class DeleteNamedQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNamedQueryOutput, context: context)
      end
    end

    class DeletePreparedStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePreparedStatementInput, context: context)
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
      end
    end

    class DeletePreparedStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePreparedStatementOutput, context: context)
      end
    end

    class DeleteWorkGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkGroupInput, context: context)
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
        Hearth::Validator.validate!(input[:recursive_delete_option], ::TrueClass, ::FalseClass, context: "#{context}[:recursive_delete_option]")
      end
    end

    class DeleteWorkGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkGroupOutput, context: context)
      end
    end

    class EncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:encryption_option], ::String, context: "#{context}[:encryption_option]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
      end
    end

    class EngineVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineVersion, context: context)
        Hearth::Validator.validate!(input[:selected_engine_version], ::String, context: "#{context}[:selected_engine_version]")
        Hearth::Validator.validate!(input[:effective_engine_version], ::String, context: "#{context}[:effective_engine_version]")
      end
    end

    class EngineVersionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EngineVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetDataCatalogInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataCatalogInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetDataCatalogOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataCatalogOutput, context: context)
        DataCatalog.validate!(input[:data_catalog], context: "#{context}[:data_catalog]") unless input[:data_catalog].nil?
      end
    end

    class GetDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:catalog_name], ::String, context: "#{context}[:catalog_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
      end
    end

    class GetDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDatabaseOutput, context: context)
        Database.validate!(input[:database], context: "#{context}[:database]") unless input[:database].nil?
      end
    end

    class GetNamedQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNamedQueryInput, context: context)
        Hearth::Validator.validate!(input[:named_query_id], ::String, context: "#{context}[:named_query_id]")
      end
    end

    class GetNamedQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNamedQueryOutput, context: context)
        NamedQuery.validate!(input[:named_query], context: "#{context}[:named_query]") unless input[:named_query].nil?
      end
    end

    class GetPreparedStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPreparedStatementInput, context: context)
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
      end
    end

    class GetPreparedStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPreparedStatementOutput, context: context)
        PreparedStatement.validate!(input[:prepared_statement], context: "#{context}[:prepared_statement]") unless input[:prepared_statement].nil?
      end
    end

    class GetQueryExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryExecutionInput, context: context)
        Hearth::Validator.validate!(input[:query_execution_id], ::String, context: "#{context}[:query_execution_id]")
      end
    end

    class GetQueryExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryExecutionOutput, context: context)
        QueryExecution.validate!(input[:query_execution], context: "#{context}[:query_execution]") unless input[:query_execution].nil?
      end
    end

    class GetQueryResultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryResultsInput, context: context)
        Hearth::Validator.validate!(input[:query_execution_id], ::String, context: "#{context}[:query_execution_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetQueryResultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryResultsOutput, context: context)
        Hearth::Validator.validate!(input[:update_count], ::Integer, context: "#{context}[:update_count]")
        ResultSet.validate!(input[:result_set], context: "#{context}[:result_set]") unless input[:result_set].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTableMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableMetadataInput, context: context)
        Hearth::Validator.validate!(input[:catalog_name], ::String, context: "#{context}[:catalog_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class GetTableMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableMetadataOutput, context: context)
        TableMetadata.validate!(input[:table_metadata], context: "#{context}[:table_metadata]") unless input[:table_metadata].nil?
      end
    end

    class GetWorkGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkGroupInput, context: context)
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
      end
    end

    class GetWorkGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkGroupOutput, context: context)
        WorkGroup.validate!(input[:work_group], context: "#{context}[:work_group]") unless input[:work_group].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:athena_error_code], ::String, context: "#{context}[:athena_error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDataCatalogsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataCatalogsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDataCatalogsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataCatalogsOutput, context: context)
        DataCatalogSummaryList.validate!(input[:data_catalogs_summary], context: "#{context}[:data_catalogs_summary]") unless input[:data_catalogs_summary].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatabasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatabasesInput, context: context)
        Hearth::Validator.validate!(input[:catalog_name], ::String, context: "#{context}[:catalog_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatabasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatabasesOutput, context: context)
        DatabaseList.validate!(input[:database_list], context: "#{context}[:database_list]") unless input[:database_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEngineVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEngineVersionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEngineVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEngineVersionsOutput, context: context)
        EngineVersionsList.validate!(input[:engine_versions], context: "#{context}[:engine_versions]") unless input[:engine_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNamedQueriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNamedQueriesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
      end
    end

    class ListNamedQueriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNamedQueriesOutput, context: context)
        NamedQueryIdList.validate!(input[:named_query_ids], context: "#{context}[:named_query_ids]") unless input[:named_query_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPreparedStatementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPreparedStatementsInput, context: context)
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPreparedStatementsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPreparedStatementsOutput, context: context)
        PreparedStatementsList.validate!(input[:prepared_statements], context: "#{context}[:prepared_statements]") unless input[:prepared_statements].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListQueryExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueryExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
      end
    end

    class ListQueryExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueryExecutionsOutput, context: context)
        QueryExecutionIdList.validate!(input[:query_execution_ids], context: "#{context}[:query_execution_ids]") unless input[:query_execution_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTableMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTableMetadataInput, context: context)
        Hearth::Validator.validate!(input[:catalog_name], ::String, context: "#{context}[:catalog_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTableMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTableMetadataOutput, context: context)
        TableMetadataList.validate!(input[:table_metadata_list], context: "#{context}[:table_metadata_list]") unless input[:table_metadata_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorkGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkGroupsOutput, context: context)
        WorkGroupsList.validate!(input[:work_groups], context: "#{context}[:work_groups]") unless input[:work_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MetadataException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetadataException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NamedQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NamedQuery, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:named_query_id], ::String, context: "#{context}[:named_query_id]")
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
      end
    end

    class NamedQueryIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NamedQueryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NamedQuery.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParametersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PreparedStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreparedStatement, context: context)
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
        Hearth::Validator.validate!(input[:query_statement], ::String, context: "#{context}[:query_statement]")
        Hearth::Validator.validate!(input[:work_group_name], ::String, context: "#{context}[:work_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class PreparedStatementSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreparedStatementSummary, context: context)
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class PreparedStatementsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PreparedStatementSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueryExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryExecution, context: context)
        Hearth::Validator.validate!(input[:query_execution_id], ::String, context: "#{context}[:query_execution_id]")
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
        Hearth::Validator.validate!(input[:statement_type], ::String, context: "#{context}[:statement_type]")
        ResultConfiguration.validate!(input[:result_configuration], context: "#{context}[:result_configuration]") unless input[:result_configuration].nil?
        QueryExecutionContext.validate!(input[:query_execution_context], context: "#{context}[:query_execution_context]") unless input[:query_execution_context].nil?
        QueryExecutionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        QueryExecutionStatistics.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
        EngineVersion.validate!(input[:engine_version], context: "#{context}[:engine_version]") unless input[:engine_version].nil?
      end
    end

    class QueryExecutionContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryExecutionContext, context: context)
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
      end
    end

    class QueryExecutionIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class QueryExecutionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          QueryExecution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueryExecutionStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryExecutionStatistics, context: context)
        Hearth::Validator.validate!(input[:engine_execution_time_in_millis], ::Integer, context: "#{context}[:engine_execution_time_in_millis]")
        Hearth::Validator.validate!(input[:data_scanned_in_bytes], ::Integer, context: "#{context}[:data_scanned_in_bytes]")
        Hearth::Validator.validate!(input[:data_manifest_location], ::String, context: "#{context}[:data_manifest_location]")
        Hearth::Validator.validate!(input[:total_execution_time_in_millis], ::Integer, context: "#{context}[:total_execution_time_in_millis]")
        Hearth::Validator.validate!(input[:query_queue_time_in_millis], ::Integer, context: "#{context}[:query_queue_time_in_millis]")
        Hearth::Validator.validate!(input[:query_planning_time_in_millis], ::Integer, context: "#{context}[:query_planning_time_in_millis]")
        Hearth::Validator.validate!(input[:service_processing_time_in_millis], ::Integer, context: "#{context}[:service_processing_time_in_millis]")
      end
    end

    class QueryExecutionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryExecutionStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_change_reason], ::String, context: "#{context}[:state_change_reason]")
        Hearth::Validator.validate!(input[:submission_date_time], ::Time, context: "#{context}[:submission_date_time]")
        Hearth::Validator.validate!(input[:completion_date_time], ::Time, context: "#{context}[:completion_date_time]")
        AthenaError.validate!(input[:athena_error], context: "#{context}[:athena_error]") unless input[:athena_error].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ResultConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultConfiguration, context: context)
        Hearth::Validator.validate!(input[:output_location], ::String, context: "#{context}[:output_location]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        AclConfiguration.validate!(input[:acl_configuration], context: "#{context}[:acl_configuration]") unless input[:acl_configuration].nil?
      end
    end

    class ResultConfigurationUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultConfigurationUpdates, context: context)
        Hearth::Validator.validate!(input[:output_location], ::String, context: "#{context}[:output_location]")
        Hearth::Validator.validate!(input[:remove_output_location], ::TrueClass, ::FalseClass, context: "#{context}[:remove_output_location]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        Hearth::Validator.validate!(input[:remove_encryption_configuration], ::TrueClass, ::FalseClass, context: "#{context}[:remove_encryption_configuration]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:remove_expected_bucket_owner], ::TrueClass, ::FalseClass, context: "#{context}[:remove_expected_bucket_owner]")
        AclConfiguration.validate!(input[:acl_configuration], context: "#{context}[:acl_configuration]") unless input[:acl_configuration].nil?
        Hearth::Validator.validate!(input[:remove_acl_configuration], ::TrueClass, ::FalseClass, context: "#{context}[:remove_acl_configuration]")
      end
    end

    class ResultSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultSet, context: context)
        RowList.validate!(input[:rows], context: "#{context}[:rows]") unless input[:rows].nil?
        ResultSetMetadata.validate!(input[:result_set_metadata], context: "#{context}[:result_set_metadata]") unless input[:result_set_metadata].nil?
      end
    end

    class ResultSetMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultSetMetadata, context: context)
        ColumnInfoList.validate!(input[:column_info], context: "#{context}[:column_info]") unless input[:column_info].nil?
      end
    end

    class Row
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Row, context: context)
        DatumList.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
      end
    end

    class RowList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Row.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartQueryExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartQueryExecutionInput, context: context)
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        QueryExecutionContext.validate!(input[:query_execution_context], context: "#{context}[:query_execution_context]") unless input[:query_execution_context].nil?
        ResultConfiguration.validate!(input[:result_configuration], context: "#{context}[:result_configuration]") unless input[:result_configuration].nil?
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
      end
    end

    class StartQueryExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartQueryExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:query_execution_id], ::String, context: "#{context}[:query_execution_id]")
      end
    end

    class StopQueryExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopQueryExecutionInput, context: context)
        Hearth::Validator.validate!(input[:query_execution_id], ::String, context: "#{context}[:query_execution_id]")
      end
    end

    class StopQueryExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopQueryExecutionOutput, context: context)
      end
    end

    class TableMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_access_time], ::Time, context: "#{context}[:last_access_time]")
        Hearth::Validator.validate!(input[:table_type], ::String, context: "#{context}[:table_type]")
        ColumnList.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
        ColumnList.validate!(input[:partition_keys], context: "#{context}[:partition_keys]") unless input[:partition_keys].nil?
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class TableMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TableMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class UnprocessedNamedQueryId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedNamedQueryId, context: context)
        Hearth::Validator.validate!(input[:named_query_id], ::String, context: "#{context}[:named_query_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class UnprocessedNamedQueryIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnprocessedNamedQueryId.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnprocessedQueryExecutionId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedQueryExecutionId, context: context)
        Hearth::Validator.validate!(input[:query_execution_id], ::String, context: "#{context}[:query_execution_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class UnprocessedQueryExecutionIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnprocessedQueryExecutionId.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDataCatalogInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataCatalogInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class UpdateDataCatalogOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataCatalogOutput, context: context)
      end
    end

    class UpdateNamedQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNamedQueryInput, context: context)
        Hearth::Validator.validate!(input[:named_query_id], ::String, context: "#{context}[:named_query_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
      end
    end

    class UpdateNamedQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNamedQueryOutput, context: context)
      end
    end

    class UpdatePreparedStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePreparedStatementInput, context: context)
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
        Hearth::Validator.validate!(input[:query_statement], ::String, context: "#{context}[:query_statement]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdatePreparedStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePreparedStatementOutput, context: context)
      end
    end

    class UpdateWorkGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkGroupInput, context: context)
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        WorkGroupConfigurationUpdates.validate!(input[:configuration_updates], context: "#{context}[:configuration_updates]") unless input[:configuration_updates].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class UpdateWorkGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkGroupOutput, context: context)
      end
    end

    class WorkGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        WorkGroupConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class WorkGroupConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkGroupConfiguration, context: context)
        ResultConfiguration.validate!(input[:result_configuration], context: "#{context}[:result_configuration]") unless input[:result_configuration].nil?
        Hearth::Validator.validate!(input[:enforce_work_group_configuration], ::TrueClass, ::FalseClass, context: "#{context}[:enforce_work_group_configuration]")
        Hearth::Validator.validate!(input[:publish_cloud_watch_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:publish_cloud_watch_metrics_enabled]")
        Hearth::Validator.validate!(input[:bytes_scanned_cutoff_per_query], ::Integer, context: "#{context}[:bytes_scanned_cutoff_per_query]")
        Hearth::Validator.validate!(input[:requester_pays_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:requester_pays_enabled]")
        EngineVersion.validate!(input[:engine_version], context: "#{context}[:engine_version]") unless input[:engine_version].nil?
      end
    end

    class WorkGroupConfigurationUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkGroupConfigurationUpdates, context: context)
        Hearth::Validator.validate!(input[:enforce_work_group_configuration], ::TrueClass, ::FalseClass, context: "#{context}[:enforce_work_group_configuration]")
        ResultConfigurationUpdates.validate!(input[:result_configuration_updates], context: "#{context}[:result_configuration_updates]") unless input[:result_configuration_updates].nil?
        Hearth::Validator.validate!(input[:publish_cloud_watch_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:publish_cloud_watch_metrics_enabled]")
        Hearth::Validator.validate!(input[:bytes_scanned_cutoff_per_query], ::Integer, context: "#{context}[:bytes_scanned_cutoff_per_query]")
        Hearth::Validator.validate!(input[:remove_bytes_scanned_cutoff_per_query], ::TrueClass, ::FalseClass, context: "#{context}[:remove_bytes_scanned_cutoff_per_query]")
        Hearth::Validator.validate!(input[:requester_pays_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:requester_pays_enabled]")
        EngineVersion.validate!(input[:engine_version], context: "#{context}[:engine_version]") unless input[:engine_version].nil?
      end
    end

    class WorkGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkGroupSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        EngineVersion.validate!(input[:engine_version], context: "#{context}[:engine_version]") unless input[:engine_version].nil?
      end
    end

    class WorkGroupsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatumList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Datum.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
