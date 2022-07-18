# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::RedshiftData
  module Validators

    class ActiveStatementsExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveStatementsExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchExecuteStatementException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchExecuteStatementException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
      end
    end

    class BatchExecuteStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchExecuteStatementInput, context: context)
        SqlList.validate!(input[:sqls], context: "#{context}[:sqls]") unless input[:sqls].nil?
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:with_event], ::TrueClass, ::FalseClass, context: "#{context}[:with_event]")
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
      end
    end

    class BatchExecuteStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchExecuteStatementOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
      end
    end

    class CancelStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelStatementInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CancelStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelStatementOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::TrueClass, ::FalseClass, context: "#{context}[:status]")
      end
    end

    class ColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnMetadata, context: context)
        Hearth::Validator.validate!(input[:is_case_sensitive], ::TrueClass, ::FalseClass, context: "#{context}[:is_case_sensitive]")
        Hearth::Validator.validate!(input[:is_currency], ::TrueClass, ::FalseClass, context: "#{context}[:is_currency]")
        Hearth::Validator.validate!(input[:is_signed], ::TrueClass, ::FalseClass, context: "#{context}[:is_signed]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:nullable], ::Integer, context: "#{context}[:nullable]")
        Hearth::Validator.validate!(input[:precision], ::Integer, context: "#{context}[:precision]")
        Hearth::Validator.validate!(input[:scale], ::Integer, context: "#{context}[:scale]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:length], ::Integer, context: "#{context}[:length]")
        Hearth::Validator.validate!(input[:column_default], ::String, context: "#{context}[:column_default]")
      end
    end

    class ColumnMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatabaseConnectionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseConnectionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DatabaseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DescribeStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStatementInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStatementOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:redshift_pid], ::Integer, context: "#{context}[:redshift_pid]")
        Hearth::Validator.validate!(input[:has_result_set], ::TrueClass, ::FalseClass, context: "#{context}[:has_result_set]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:result_rows], ::Integer, context: "#{context}[:result_rows]")
        Hearth::Validator.validate!(input[:result_size], ::Integer, context: "#{context}[:result_size]")
        Hearth::Validator.validate!(input[:redshift_query_id], ::Integer, context: "#{context}[:redshift_query_id]")
        SqlParametersList.validate!(input[:query_parameters], context: "#{context}[:query_parameters]") unless input[:query_parameters].nil?
        SubStatementList.validate!(input[:sub_statements], context: "#{context}[:sub_statements]") unless input[:sub_statements].nil?
      end
    end

    class DescribeTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:connected_database], ::String, context: "#{context}[:connected_database]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableOutput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        ColumnList.validate!(input[:column_list], context: "#{context}[:column_list]") unless input[:column_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ExecuteStatementException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteStatementException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
      end
    end

    class ExecuteStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteStatementInput, context: context)
        Hearth::Validator.validate!(input[:sql], ::String, context: "#{context}[:sql]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:with_event], ::TrueClass, ::FalseClass, context: "#{context}[:with_event]")
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
        SqlParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ExecuteStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteStatementOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
      end
    end

    class Field
      def self.validate!(input, context:)
        case input
        when Types::Field::IsNull
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::Field::BooleanValue
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::Field::LongValue
          Hearth::Validator.validate!(input.__getobj__, ::Integer, context: context)
        when Types::Field::DoubleValue
          Hearth::Validator.validate!(input.__getobj__, ::Float, context: context)
        when Types::Field::StringValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::Field::BlobValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::Field, got #{input.class}."
        end
      end

      class IsNull
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class BooleanValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class LongValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Integer, context: context)
        end
      end

      class DoubleValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Float, context: context)
        end
      end

      class StringValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class BlobValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class FieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Field.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetStatementResultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStatementResultInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetStatementResultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStatementResultOutput, context: context)
        SqlRecords.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        ColumnMetadataList.validate!(input[:column_metadata], context: "#{context}[:column_metadata]") unless input[:column_metadata].nil?
        Hearth::Validator.validate!(input[:total_num_rows], ::Integer, context: "#{context}[:total_num_rows]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDatabasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatabasesInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatabasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatabasesOutput, context: context)
        DatabaseList.validate!(input[:databases], context: "#{context}[:databases]") unless input[:databases].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchemasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemasInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:connected_database], ::String, context: "#{context}[:connected_database]")
        Hearth::Validator.validate!(input[:schema_pattern], ::String, context: "#{context}[:schema_pattern]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSchemasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemasOutput, context: context)
        SchemaList.validate!(input[:schemas], context: "#{context}[:schemas]") unless input[:schemas].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStatementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStatementsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:role_level], ::TrueClass, ::FalseClass, context: "#{context}[:role_level]")
      end
    end

    class ListStatementsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStatementsOutput, context: context)
        StatementList.validate!(input[:statements], context: "#{context}[:statements]") unless input[:statements].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTablesInput, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:connected_database], ::String, context: "#{context}[:connected_database]")
        Hearth::Validator.validate!(input[:schema_pattern], ::String, context: "#{context}[:schema_pattern]")
        Hearth::Validator.validate!(input[:table_pattern], ::String, context: "#{context}[:table_pattern]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTablesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTablesOutput, context: context)
        TableList.validate!(input[:tables], context: "#{context}[:tables]") unless input[:tables].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class SchemaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SqlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SqlParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SqlParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SqlParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SqlRecords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FieldList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatementData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatementData, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        StatementStringList.validate!(input[:query_strings], context: "#{context}[:query_strings]") unless input[:query_strings].nil?
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:statement_name], ::String, context: "#{context}[:statement_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        SqlParametersList.validate!(input[:query_parameters], context: "#{context}[:query_parameters]") unless input[:query_parameters].nil?
        Hearth::Validator.validate!(input[:is_batch_statement], ::TrueClass, ::FalseClass, context: "#{context}[:is_batch_statement]")
      end
    end

    class StatementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StatementData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatementStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubStatementData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubStatementData, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:result_rows], ::Integer, context: "#{context}[:result_rows]")
        Hearth::Validator.validate!(input[:result_size], ::Integer, context: "#{context}[:result_size]")
        Hearth::Validator.validate!(input[:redshift_query_id], ::Integer, context: "#{context}[:redshift_query_id]")
        Hearth::Validator.validate!(input[:has_result_set], ::TrueClass, ::FalseClass, context: "#{context}[:has_result_set]")
      end
    end

    class SubStatementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SubStatementData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TableMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableMember, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
