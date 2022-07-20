# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RedshiftData
  module Params

    module ActiveStatementsExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveStatementsExceededException, context: context)
        type = Types::ActiveStatementsExceededException.new
        type.message = params[:message]
        type
      end
    end

    module BatchExecuteStatementException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchExecuteStatementException, context: context)
        type = Types::BatchExecuteStatementException.new
        type.message = params[:message]
        type.statement_id = params[:statement_id]
        type
      end
    end

    module BatchExecuteStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchExecuteStatementInput, context: context)
        type = Types::BatchExecuteStatementInput.new
        type.sqls = SqlList.build(params[:sqls], context: "#{context}[:sqls]") unless params[:sqls].nil?
        type.cluster_identifier = params[:cluster_identifier]
        type.secret_arn = params[:secret_arn]
        type.db_user = params[:db_user]
        type.database = params[:database]
        type.with_event = params[:with_event]
        type.statement_name = params[:statement_name]
        type
      end
    end

    module BatchExecuteStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchExecuteStatementOutput, context: context)
        type = Types::BatchExecuteStatementOutput.new
        type.id = params[:id]
        type.created_at = params[:created_at]
        type.cluster_identifier = params[:cluster_identifier]
        type.db_user = params[:db_user]
        type.database = params[:database]
        type.secret_arn = params[:secret_arn]
        type
      end
    end

    module CancelStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelStatementInput, context: context)
        type = Types::CancelStatementInput.new
        type.id = params[:id]
        type
      end
    end

    module CancelStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelStatementOutput, context: context)
        type = Types::CancelStatementOutput.new
        type.status = params[:status]
        type
      end
    end

    module ColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnMetadata, context: context)
        type = Types::ColumnMetadata.new
        type.is_case_sensitive = params[:is_case_sensitive]
        type.is_currency = params[:is_currency]
        type.is_signed = params[:is_signed]
        type.label = params[:label]
        type.name = params[:name]
        type.nullable = params[:nullable]
        type.precision = params[:precision]
        type.scale = params[:scale]
        type.schema_name = params[:schema_name]
        type.table_name = params[:table_name]
        type.type_name = params[:type_name]
        type.length = params[:length]
        type.column_default = params[:column_default]
        type
      end
    end

    module ColumnMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatabaseConnectionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseConnectionException, context: context)
        type = Types::DatabaseConnectionException.new
        type.message = params[:message]
        type
      end
    end

    module DatabaseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DescribeStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStatementInput, context: context)
        type = Types::DescribeStatementInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribeStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStatementOutput, context: context)
        type = Types::DescribeStatementOutput.new
        type.id = params[:id]
        type.secret_arn = params[:secret_arn]
        type.db_user = params[:db_user]
        type.database = params[:database]
        type.cluster_identifier = params[:cluster_identifier]
        type.duration = params[:duration]
        type.error = params[:error]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.redshift_pid = params[:redshift_pid]
        type.has_result_set = params[:has_result_set]
        type.query_string = params[:query_string]
        type.result_rows = params[:result_rows]
        type.result_size = params[:result_size]
        type.redshift_query_id = params[:redshift_query_id]
        type.query_parameters = SqlParametersList.build(params[:query_parameters], context: "#{context}[:query_parameters]") unless params[:query_parameters].nil?
        type.sub_statements = SubStatementList.build(params[:sub_statements], context: "#{context}[:sub_statements]") unless params[:sub_statements].nil?
        type
      end
    end

    module DescribeTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableInput, context: context)
        type = Types::DescribeTableInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.secret_arn = params[:secret_arn]
        type.db_user = params[:db_user]
        type.database = params[:database]
        type.connected_database = params[:connected_database]
        type.schema = params[:schema]
        type.table = params[:table]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableOutput, context: context)
        type = Types::DescribeTableOutput.new
        type.table_name = params[:table_name]
        type.column_list = ColumnList.build(params[:column_list], context: "#{context}[:column_list]") unless params[:column_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ExecuteStatementException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteStatementException, context: context)
        type = Types::ExecuteStatementException.new
        type.message = params[:message]
        type.statement_id = params[:statement_id]
        type
      end
    end

    module ExecuteStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteStatementInput, context: context)
        type = Types::ExecuteStatementInput.new
        type.sql = params[:sql]
        type.cluster_identifier = params[:cluster_identifier]
        type.secret_arn = params[:secret_arn]
        type.db_user = params[:db_user]
        type.database = params[:database]
        type.with_event = params[:with_event]
        type.statement_name = params[:statement_name]
        type.parameters = SqlParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ExecuteStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteStatementOutput, context: context)
        type = Types::ExecuteStatementOutput.new
        type.id = params[:id]
        type.created_at = params[:created_at]
        type.cluster_identifier = params[:cluster_identifier]
        type.db_user = params[:db_user]
        type.database = params[:database]
        type.secret_arn = params[:secret_arn]
        type
      end
    end

    module Field
      def self.build(params, context: '')
        return params if params.is_a?(Types::Field)
        Hearth::Validator.validate!(params, ::Hash, Types::Field, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :is_null
          Types::Field::IsNull.new(
            params[:is_null]
          )
        when :boolean_value
          Types::Field::BooleanValue.new(
            params[:boolean_value]
          )
        when :long_value
          Types::Field::LongValue.new(
            params[:long_value]
          )
        when :double_value
          Types::Field::DoubleValue.new(
            params[:double_value]
          )
        when :string_value
          Types::Field::StringValue.new(
            params[:string_value]
          )
        when :blob_value
          Types::Field::BlobValue.new(
            params[:blob_value]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :is_null, :boolean_value, :long_value, :double_value, :string_value, :blob_value set"
        end
      end
    end

    module FieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Field.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetStatementResultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStatementResultInput, context: context)
        type = Types::GetStatementResultInput.new
        type.id = params[:id]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetStatementResultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStatementResultOutput, context: context)
        type = Types::GetStatementResultOutput.new
        type.records = SqlRecords.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.column_metadata = ColumnMetadataList.build(params[:column_metadata], context: "#{context}[:column_metadata]") unless params[:column_metadata].nil?
        type.total_num_rows = params[:total_num_rows]
        type.next_token = params[:next_token]
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

    module ListDatabasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatabasesInput, context: context)
        type = Types::ListDatabasesInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.database = params[:database]
        type.secret_arn = params[:secret_arn]
        type.db_user = params[:db_user]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatabasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatabasesOutput, context: context)
        type = Types::ListDatabasesOutput.new
        type.databases = DatabaseList.build(params[:databases], context: "#{context}[:databases]") unless params[:databases].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchemasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemasInput, context: context)
        type = Types::ListSchemasInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.secret_arn = params[:secret_arn]
        type.db_user = params[:db_user]
        type.database = params[:database]
        type.connected_database = params[:connected_database]
        type.schema_pattern = params[:schema_pattern]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSchemasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemasOutput, context: context)
        type = Types::ListSchemasOutput.new
        type.schemas = SchemaList.build(params[:schemas], context: "#{context}[:schemas]") unless params[:schemas].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStatementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStatementsInput, context: context)
        type = Types::ListStatementsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.statement_name = params[:statement_name]
        type.status = params[:status]
        type.role_level = params[:role_level]
        type
      end
    end

    module ListStatementsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStatementsOutput, context: context)
        type = Types::ListStatementsOutput.new
        type.statements = StatementList.build(params[:statements], context: "#{context}[:statements]") unless params[:statements].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTablesInput, context: context)
        type = Types::ListTablesInput.new
        type.cluster_identifier = params[:cluster_identifier]
        type.secret_arn = params[:secret_arn]
        type.db_user = params[:db_user]
        type.database = params[:database]
        type.connected_database = params[:connected_database]
        type.schema_pattern = params[:schema_pattern]
        type.table_pattern = params[:table_pattern]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTablesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTablesOutput, context: context)
        type = Types::ListTablesOutput.new
        type.tables = TableList.build(params[:tables], context: "#{context}[:tables]") unless params[:tables].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module SchemaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SqlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SqlParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlParameter, context: context)
        type = Types::SqlParameter.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module SqlParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SqlParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SqlRecords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FieldList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatementData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatementData, context: context)
        type = Types::StatementData.new
        type.id = params[:id]
        type.query_string = params[:query_string]
        type.query_strings = StatementStringList.build(params[:query_strings], context: "#{context}[:query_strings]") unless params[:query_strings].nil?
        type.secret_arn = params[:secret_arn]
        type.status = params[:status]
        type.statement_name = params[:statement_name]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.query_parameters = SqlParametersList.build(params[:query_parameters], context: "#{context}[:query_parameters]") unless params[:query_parameters].nil?
        type.is_batch_statement = params[:is_batch_statement]
        type
      end
    end

    module StatementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StatementData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatementStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubStatementData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubStatementData, context: context)
        type = Types::SubStatementData.new
        type.id = params[:id]
        type.duration = params[:duration]
        type.error = params[:error]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.query_string = params[:query_string]
        type.result_rows = params[:result_rows]
        type.result_size = params[:result_size]
        type.redshift_query_id = params[:redshift_query_id]
        type.has_result_set = params[:has_result_set]
        type
      end
    end

    module SubStatementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubStatementData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableMember, context: context)
        type = Types::TableMember.new
        type.name = params[:name]
        type.type = params[:type]
        type.schema = params[:schema]
        type
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

  end
end
