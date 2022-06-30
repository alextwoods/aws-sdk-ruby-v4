# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Athena
  module Params

    module AclConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AclConfiguration, context: context)
        type = Types::AclConfiguration.new
        type.s3_acl_option = params[:s3_acl_option]
        type
      end
    end

    module AthenaError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AthenaError, context: context)
        type = Types::AthenaError.new
        type.error_category = params[:error_category]
        type.error_type = params[:error_type]
        type.retryable = params[:retryable]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchGetNamedQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetNamedQueryInput, context: context)
        type = Types::BatchGetNamedQueryInput.new
        type.named_query_ids = NamedQueryIdList.build(params[:named_query_ids], context: "#{context}[:named_query_ids]") unless params[:named_query_ids].nil?
        type
      end
    end

    module BatchGetNamedQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetNamedQueryOutput, context: context)
        type = Types::BatchGetNamedQueryOutput.new
        type.named_queries = NamedQueryList.build(params[:named_queries], context: "#{context}[:named_queries]") unless params[:named_queries].nil?
        type.unprocessed_named_query_ids = UnprocessedNamedQueryIdList.build(params[:unprocessed_named_query_ids], context: "#{context}[:unprocessed_named_query_ids]") unless params[:unprocessed_named_query_ids].nil?
        type
      end
    end

    module BatchGetQueryExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetQueryExecutionInput, context: context)
        type = Types::BatchGetQueryExecutionInput.new
        type.query_execution_ids = QueryExecutionIdList.build(params[:query_execution_ids], context: "#{context}[:query_execution_ids]") unless params[:query_execution_ids].nil?
        type
      end
    end

    module BatchGetQueryExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetQueryExecutionOutput, context: context)
        type = Types::BatchGetQueryExecutionOutput.new
        type.query_executions = QueryExecutionList.build(params[:query_executions], context: "#{context}[:query_executions]") unless params[:query_executions].nil?
        type.unprocessed_query_execution_ids = UnprocessedQueryExecutionIdList.build(params[:unprocessed_query_execution_ids], context: "#{context}[:unprocessed_query_execution_ids]") unless params[:unprocessed_query_execution_ids].nil?
        type
      end
    end

    module Column
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Column, context: context)
        type = Types::Column.new
        type.name = params[:name]
        type.type = params[:type]
        type.comment = params[:comment]
        type
      end
    end

    module ColumnInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnInfo, context: context)
        type = Types::ColumnInfo.new
        type.catalog_name = params[:catalog_name]
        type.schema_name = params[:schema_name]
        type.table_name = params[:table_name]
        type.name = params[:name]
        type.label = params[:label]
        type.type = params[:type]
        type.precision = params[:precision]
        type.scale = params[:scale]
        type.nullable = params[:nullable]
        type.case_sensitive = params[:case_sensitive]
        type
      end
    end

    module ColumnInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Column.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateDataCatalogInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataCatalogInput, context: context)
        type = Types::CreateDataCatalogInput.new
        type.name = params[:name]
        type.type = params[:type]
        type.description = params[:description]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDataCatalogOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataCatalogOutput, context: context)
        type = Types::CreateDataCatalogOutput.new
        type
      end
    end

    module CreateNamedQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNamedQueryInput, context: context)
        type = Types::CreateNamedQueryInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.database = params[:database]
        type.query_string = params[:query_string]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.work_group = params[:work_group]
        type
      end
    end

    module CreateNamedQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNamedQueryOutput, context: context)
        type = Types::CreateNamedQueryOutput.new
        type.named_query_id = params[:named_query_id]
        type
      end
    end

    module CreatePreparedStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePreparedStatementInput, context: context)
        type = Types::CreatePreparedStatementInput.new
        type.statement_name = params[:statement_name]
        type.work_group = params[:work_group]
        type.query_statement = params[:query_statement]
        type.description = params[:description]
        type
      end
    end

    module CreatePreparedStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePreparedStatementOutput, context: context)
        type = Types::CreatePreparedStatementOutput.new
        type
      end
    end

    module CreateWorkGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkGroupInput, context: context)
        type = Types::CreateWorkGroupInput.new
        type.name = params[:name]
        type.configuration = WorkGroupConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorkGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkGroupOutput, context: context)
        type = Types::CreateWorkGroupOutput.new
        type
      end
    end

    module DataCatalog
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCatalog, context: context)
        type = Types::DataCatalog.new
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module DataCatalogSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCatalogSummary, context: context)
        type = Types::DataCatalogSummary.new
        type.catalog_name = params[:catalog_name]
        type.type = params[:type]
        type
      end
    end

    module DataCatalogSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataCatalogSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Database
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Database, context: context)
        type = Types::Database.new
        type.name = params[:name]
        type.description = params[:description]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module DatabaseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Database.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Datum
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Datum, context: context)
        type = Types::Datum.new
        type.var_char_value = params[:var_char_value]
        type
      end
    end

    module DeleteDataCatalogInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataCatalogInput, context: context)
        type = Types::DeleteDataCatalogInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteDataCatalogOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataCatalogOutput, context: context)
        type = Types::DeleteDataCatalogOutput.new
        type
      end
    end

    module DeleteNamedQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNamedQueryInput, context: context)
        type = Types::DeleteNamedQueryInput.new
        type.named_query_id = params[:named_query_id] || SecureRandom.uuid
        type
      end
    end

    module DeleteNamedQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNamedQueryOutput, context: context)
        type = Types::DeleteNamedQueryOutput.new
        type
      end
    end

    module DeletePreparedStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePreparedStatementInput, context: context)
        type = Types::DeletePreparedStatementInput.new
        type.statement_name = params[:statement_name]
        type.work_group = params[:work_group]
        type
      end
    end

    module DeletePreparedStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePreparedStatementOutput, context: context)
        type = Types::DeletePreparedStatementOutput.new
        type
      end
    end

    module DeleteWorkGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkGroupInput, context: context)
        type = Types::DeleteWorkGroupInput.new
        type.work_group = params[:work_group]
        type.recursive_delete_option = params[:recursive_delete_option]
        type
      end
    end

    module DeleteWorkGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkGroupOutput, context: context)
        type = Types::DeleteWorkGroupOutput.new
        type
      end
    end

    module EncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfiguration, context: context)
        type = Types::EncryptionConfiguration.new
        type.encryption_option = params[:encryption_option]
        type.kms_key = params[:kms_key]
        type
      end
    end

    module EngineVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineVersion, context: context)
        type = Types::EngineVersion.new
        type.selected_engine_version = params[:selected_engine_version]
        type.effective_engine_version = params[:effective_engine_version]
        type
      end
    end

    module EngineVersionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EngineVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetDataCatalogInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataCatalogInput, context: context)
        type = Types::GetDataCatalogInput.new
        type.name = params[:name]
        type
      end
    end

    module GetDataCatalogOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataCatalogOutput, context: context)
        type = Types::GetDataCatalogOutput.new
        type.data_catalog = DataCatalog.build(params[:data_catalog], context: "#{context}[:data_catalog]") unless params[:data_catalog].nil?
        type
      end
    end

    module GetDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDatabaseInput, context: context)
        type = Types::GetDatabaseInput.new
        type.catalog_name = params[:catalog_name]
        type.database_name = params[:database_name]
        type
      end
    end

    module GetDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDatabaseOutput, context: context)
        type = Types::GetDatabaseOutput.new
        type.database = Database.build(params[:database], context: "#{context}[:database]") unless params[:database].nil?
        type
      end
    end

    module GetNamedQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNamedQueryInput, context: context)
        type = Types::GetNamedQueryInput.new
        type.named_query_id = params[:named_query_id]
        type
      end
    end

    module GetNamedQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNamedQueryOutput, context: context)
        type = Types::GetNamedQueryOutput.new
        type.named_query = NamedQuery.build(params[:named_query], context: "#{context}[:named_query]") unless params[:named_query].nil?
        type
      end
    end

    module GetPreparedStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPreparedStatementInput, context: context)
        type = Types::GetPreparedStatementInput.new
        type.statement_name = params[:statement_name]
        type.work_group = params[:work_group]
        type
      end
    end

    module GetPreparedStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPreparedStatementOutput, context: context)
        type = Types::GetPreparedStatementOutput.new
        type.prepared_statement = PreparedStatement.build(params[:prepared_statement], context: "#{context}[:prepared_statement]") unless params[:prepared_statement].nil?
        type
      end
    end

    module GetQueryExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryExecutionInput, context: context)
        type = Types::GetQueryExecutionInput.new
        type.query_execution_id = params[:query_execution_id]
        type
      end
    end

    module GetQueryExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryExecutionOutput, context: context)
        type = Types::GetQueryExecutionOutput.new
        type.query_execution = QueryExecution.build(params[:query_execution], context: "#{context}[:query_execution]") unless params[:query_execution].nil?
        type
      end
    end

    module GetQueryResultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryResultsInput, context: context)
        type = Types::GetQueryResultsInput.new
        type.query_execution_id = params[:query_execution_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetQueryResultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryResultsOutput, context: context)
        type = Types::GetQueryResultsOutput.new
        type.update_count = params[:update_count]
        type.result_set = ResultSet.build(params[:result_set], context: "#{context}[:result_set]") unless params[:result_set].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTableMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableMetadataInput, context: context)
        type = Types::GetTableMetadataInput.new
        type.catalog_name = params[:catalog_name]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type
      end
    end

    module GetTableMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableMetadataOutput, context: context)
        type = Types::GetTableMetadataOutput.new
        type.table_metadata = TableMetadata.build(params[:table_metadata], context: "#{context}[:table_metadata]") unless params[:table_metadata].nil?
        type
      end
    end

    module GetWorkGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkGroupInput, context: context)
        type = Types::GetWorkGroupInput.new
        type.work_group = params[:work_group]
        type
      end
    end

    module GetWorkGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkGroupOutput, context: context)
        type = Types::GetWorkGroupOutput.new
        type.work_group = WorkGroup.build(params[:work_group], context: "#{context}[:work_group]") unless params[:work_group].nil?
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

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.athena_error_code = params[:athena_error_code]
        type.message = params[:message]
        type
      end
    end

    module ListDataCatalogsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataCatalogsInput, context: context)
        type = Types::ListDataCatalogsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDataCatalogsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataCatalogsOutput, context: context)
        type = Types::ListDataCatalogsOutput.new
        type.data_catalogs_summary = DataCatalogSummaryList.build(params[:data_catalogs_summary], context: "#{context}[:data_catalogs_summary]") unless params[:data_catalogs_summary].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatabasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatabasesInput, context: context)
        type = Types::ListDatabasesInput.new
        type.catalog_name = params[:catalog_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatabasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatabasesOutput, context: context)
        type = Types::ListDatabasesOutput.new
        type.database_list = DatabaseList.build(params[:database_list], context: "#{context}[:database_list]") unless params[:database_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEngineVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEngineVersionsInput, context: context)
        type = Types::ListEngineVersionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEngineVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEngineVersionsOutput, context: context)
        type = Types::ListEngineVersionsOutput.new
        type.engine_versions = EngineVersionsList.build(params[:engine_versions], context: "#{context}[:engine_versions]") unless params[:engine_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNamedQueriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNamedQueriesInput, context: context)
        type = Types::ListNamedQueriesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.work_group = params[:work_group]
        type
      end
    end

    module ListNamedQueriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNamedQueriesOutput, context: context)
        type = Types::ListNamedQueriesOutput.new
        type.named_query_ids = NamedQueryIdList.build(params[:named_query_ids], context: "#{context}[:named_query_ids]") unless params[:named_query_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPreparedStatementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPreparedStatementsInput, context: context)
        type = Types::ListPreparedStatementsInput.new
        type.work_group = params[:work_group]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPreparedStatementsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPreparedStatementsOutput, context: context)
        type = Types::ListPreparedStatementsOutput.new
        type.prepared_statements = PreparedStatementsList.build(params[:prepared_statements], context: "#{context}[:prepared_statements]") unless params[:prepared_statements].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListQueryExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueryExecutionsInput, context: context)
        type = Types::ListQueryExecutionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.work_group = params[:work_group]
        type
      end
    end

    module ListQueryExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueryExecutionsOutput, context: context)
        type = Types::ListQueryExecutionsOutput.new
        type.query_execution_ids = QueryExecutionIdList.build(params[:query_execution_ids], context: "#{context}[:query_execution_ids]") unless params[:query_execution_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTableMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTableMetadataInput, context: context)
        type = Types::ListTableMetadataInput.new
        type.catalog_name = params[:catalog_name]
        type.database_name = params[:database_name]
        type.expression = params[:expression]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTableMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTableMetadataOutput, context: context)
        type = Types::ListTableMetadataOutput.new
        type.table_metadata_list = TableMetadataList.build(params[:table_metadata_list], context: "#{context}[:table_metadata_list]") unless params[:table_metadata_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkGroupsInput, context: context)
        type = Types::ListWorkGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorkGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkGroupsOutput, context: context)
        type = Types::ListWorkGroupsOutput.new
        type.work_groups = WorkGroupsList.build(params[:work_groups], context: "#{context}[:work_groups]") unless params[:work_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MetadataException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetadataException, context: context)
        type = Types::MetadataException.new
        type.message = params[:message]
        type
      end
    end

    module NamedQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NamedQuery, context: context)
        type = Types::NamedQuery.new
        type.name = params[:name]
        type.description = params[:description]
        type.database = params[:database]
        type.query_string = params[:query_string]
        type.named_query_id = params[:named_query_id]
        type.work_group = params[:work_group]
        type
      end
    end

    module NamedQueryIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NamedQueryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NamedQuery.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParametersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PreparedStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreparedStatement, context: context)
        type = Types::PreparedStatement.new
        type.statement_name = params[:statement_name]
        type.query_statement = params[:query_statement]
        type.work_group_name = params[:work_group_name]
        type.description = params[:description]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module PreparedStatementSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreparedStatementSummary, context: context)
        type = Types::PreparedStatementSummary.new
        type.statement_name = params[:statement_name]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module PreparedStatementsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PreparedStatementSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueryExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryExecution, context: context)
        type = Types::QueryExecution.new
        type.query_execution_id = params[:query_execution_id]
        type.query = params[:query]
        type.statement_type = params[:statement_type]
        type.result_configuration = ResultConfiguration.build(params[:result_configuration], context: "#{context}[:result_configuration]") unless params[:result_configuration].nil?
        type.query_execution_context = QueryExecutionContext.build(params[:query_execution_context], context: "#{context}[:query_execution_context]") unless params[:query_execution_context].nil?
        type.status = QueryExecutionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.statistics = QueryExecutionStatistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.work_group = params[:work_group]
        type.engine_version = EngineVersion.build(params[:engine_version], context: "#{context}[:engine_version]") unless params[:engine_version].nil?
        type
      end
    end

    module QueryExecutionContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryExecutionContext, context: context)
        type = Types::QueryExecutionContext.new
        type.database = params[:database]
        type.catalog = params[:catalog]
        type
      end
    end

    module QueryExecutionIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module QueryExecutionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryExecution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueryExecutionStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryExecutionStatistics, context: context)
        type = Types::QueryExecutionStatistics.new
        type.engine_execution_time_in_millis = params[:engine_execution_time_in_millis]
        type.data_scanned_in_bytes = params[:data_scanned_in_bytes]
        type.data_manifest_location = params[:data_manifest_location]
        type.total_execution_time_in_millis = params[:total_execution_time_in_millis]
        type.query_queue_time_in_millis = params[:query_queue_time_in_millis]
        type.query_planning_time_in_millis = params[:query_planning_time_in_millis]
        type.service_processing_time_in_millis = params[:service_processing_time_in_millis]
        type
      end
    end

    module QueryExecutionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryExecutionStatus, context: context)
        type = Types::QueryExecutionStatus.new
        type.state = params[:state]
        type.state_change_reason = params[:state_change_reason]
        type.submission_date_time = params[:submission_date_time]
        type.completion_date_time = params[:completion_date_time]
        type.athena_error = AthenaError.build(params[:athena_error], context: "#{context}[:athena_error]") unless params[:athena_error].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ResultConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultConfiguration, context: context)
        type = Types::ResultConfiguration.new
        type.output_location = params[:output_location]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.acl_configuration = AclConfiguration.build(params[:acl_configuration], context: "#{context}[:acl_configuration]") unless params[:acl_configuration].nil?
        type
      end
    end

    module ResultConfigurationUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultConfigurationUpdates, context: context)
        type = Types::ResultConfigurationUpdates.new
        type.output_location = params[:output_location]
        type.remove_output_location = params[:remove_output_location]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.remove_encryption_configuration = params[:remove_encryption_configuration]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.remove_expected_bucket_owner = params[:remove_expected_bucket_owner]
        type.acl_configuration = AclConfiguration.build(params[:acl_configuration], context: "#{context}[:acl_configuration]") unless params[:acl_configuration].nil?
        type.remove_acl_configuration = params[:remove_acl_configuration]
        type
      end
    end

    module ResultSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultSet, context: context)
        type = Types::ResultSet.new
        type.rows = RowList.build(params[:rows], context: "#{context}[:rows]") unless params[:rows].nil?
        type.result_set_metadata = ResultSetMetadata.build(params[:result_set_metadata], context: "#{context}[:result_set_metadata]") unless params[:result_set_metadata].nil?
        type
      end
    end

    module ResultSetMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultSetMetadata, context: context)
        type = Types::ResultSetMetadata.new
        type.column_info = ColumnInfoList.build(params[:column_info], context: "#{context}[:column_info]") unless params[:column_info].nil?
        type
      end
    end

    module Row
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Row, context: context)
        type = Types::Row.new
        type.data = DatumList.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type
      end
    end

    module RowList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Row.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartQueryExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartQueryExecutionInput, context: context)
        type = Types::StartQueryExecutionInput.new
        type.query_string = params[:query_string]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.query_execution_context = QueryExecutionContext.build(params[:query_execution_context], context: "#{context}[:query_execution_context]") unless params[:query_execution_context].nil?
        type.result_configuration = ResultConfiguration.build(params[:result_configuration], context: "#{context}[:result_configuration]") unless params[:result_configuration].nil?
        type.work_group = params[:work_group]
        type
      end
    end

    module StartQueryExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartQueryExecutionOutput, context: context)
        type = Types::StartQueryExecutionOutput.new
        type.query_execution_id = params[:query_execution_id]
        type
      end
    end

    module StopQueryExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopQueryExecutionInput, context: context)
        type = Types::StopQueryExecutionInput.new
        type.query_execution_id = params[:query_execution_id] || SecureRandom.uuid
        type
      end
    end

    module StopQueryExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopQueryExecutionOutput, context: context)
        type = Types::StopQueryExecutionOutput.new
        type
      end
    end

    module TableMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableMetadata, context: context)
        type = Types::TableMetadata.new
        type.name = params[:name]
        type.create_time = params[:create_time]
        type.last_access_time = params[:last_access_time]
        type.table_type = params[:table_type]
        type.columns = ColumnList.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type.partition_keys = ColumnList.build(params[:partition_keys], context: "#{context}[:partition_keys]") unless params[:partition_keys].nil?
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module TableMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module UnprocessedNamedQueryId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedNamedQueryId, context: context)
        type = Types::UnprocessedNamedQueryId.new
        type.named_query_id = params[:named_query_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module UnprocessedNamedQueryIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedNamedQueryId.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnprocessedQueryExecutionId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedQueryExecutionId, context: context)
        type = Types::UnprocessedQueryExecutionId.new
        type.query_execution_id = params[:query_execution_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module UnprocessedQueryExecutionIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedQueryExecutionId.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateDataCatalogInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataCatalogInput, context: context)
        type = Types::UpdateDataCatalogInput.new
        type.name = params[:name]
        type.type = params[:type]
        type.description = params[:description]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module UpdateDataCatalogOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataCatalogOutput, context: context)
        type = Types::UpdateDataCatalogOutput.new
        type
      end
    end

    module UpdateNamedQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNamedQueryInput, context: context)
        type = Types::UpdateNamedQueryInput.new
        type.named_query_id = params[:named_query_id]
        type.name = params[:name]
        type.description = params[:description]
        type.query_string = params[:query_string]
        type
      end
    end

    module UpdateNamedQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNamedQueryOutput, context: context)
        type = Types::UpdateNamedQueryOutput.new
        type
      end
    end

    module UpdatePreparedStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePreparedStatementInput, context: context)
        type = Types::UpdatePreparedStatementInput.new
        type.statement_name = params[:statement_name]
        type.work_group = params[:work_group]
        type.query_statement = params[:query_statement]
        type.description = params[:description]
        type
      end
    end

    module UpdatePreparedStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePreparedStatementOutput, context: context)
        type = Types::UpdatePreparedStatementOutput.new
        type
      end
    end

    module UpdateWorkGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkGroupInput, context: context)
        type = Types::UpdateWorkGroupInput.new
        type.work_group = params[:work_group]
        type.description = params[:description]
        type.configuration_updates = WorkGroupConfigurationUpdates.build(params[:configuration_updates], context: "#{context}[:configuration_updates]") unless params[:configuration_updates].nil?
        type.state = params[:state]
        type
      end
    end

    module UpdateWorkGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkGroupOutput, context: context)
        type = Types::UpdateWorkGroupOutput.new
        type
      end
    end

    module WorkGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkGroup, context: context)
        type = Types::WorkGroup.new
        type.name = params[:name]
        type.state = params[:state]
        type.configuration = WorkGroupConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module WorkGroupConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkGroupConfiguration, context: context)
        type = Types::WorkGroupConfiguration.new
        type.result_configuration = ResultConfiguration.build(params[:result_configuration], context: "#{context}[:result_configuration]") unless params[:result_configuration].nil?
        type.enforce_work_group_configuration = params[:enforce_work_group_configuration]
        type.publish_cloud_watch_metrics_enabled = params[:publish_cloud_watch_metrics_enabled]
        type.bytes_scanned_cutoff_per_query = params[:bytes_scanned_cutoff_per_query]
        type.requester_pays_enabled = params[:requester_pays_enabled]
        type.engine_version = EngineVersion.build(params[:engine_version], context: "#{context}[:engine_version]") unless params[:engine_version].nil?
        type
      end
    end

    module WorkGroupConfigurationUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkGroupConfigurationUpdates, context: context)
        type = Types::WorkGroupConfigurationUpdates.new
        type.enforce_work_group_configuration = params[:enforce_work_group_configuration]
        type.result_configuration_updates = ResultConfigurationUpdates.build(params[:result_configuration_updates], context: "#{context}[:result_configuration_updates]") unless params[:result_configuration_updates].nil?
        type.publish_cloud_watch_metrics_enabled = params[:publish_cloud_watch_metrics_enabled]
        type.bytes_scanned_cutoff_per_query = params[:bytes_scanned_cutoff_per_query]
        type.remove_bytes_scanned_cutoff_per_query = params[:remove_bytes_scanned_cutoff_per_query]
        type.requester_pays_enabled = params[:requester_pays_enabled]
        type.engine_version = EngineVersion.build(params[:engine_version], context: "#{context}[:engine_version]") unless params[:engine_version].nil?
        type
      end
    end

    module WorkGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkGroupSummary, context: context)
        type = Types::WorkGroupSummary.new
        type.name = params[:name]
        type.state = params[:state]
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.engine_version = EngineVersion.build(params[:engine_version], context: "#{context}[:engine_version]") unless params[:engine_version].nil?
        type
      end
    end

    module WorkGroupsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatumList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Datum.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
