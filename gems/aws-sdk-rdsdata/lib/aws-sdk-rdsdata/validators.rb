# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RDSData
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ArrayOfArray
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ArrayValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArrayValue
      def self.validate!(input, context:)
        case input
        when Types::ArrayValue::BooleanValues
          BooleanArray.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ArrayValue::LongValues
          LongArray.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ArrayValue::DoubleValues
          DoubleArray.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ArrayValue::StringValues
          StringArray.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ArrayValue::ArrayValues
          ArrayOfArray.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ArrayValue, got #{input.class}."
        end
      end

      class BooleanValues
        def self.validate!(input, context:)
          Validators::BooleanArray.validate!(input, context: context) unless input.nil?
        end
      end

      class LongValues
        def self.validate!(input, context:)
          Validators::LongArray.validate!(input, context: context) unless input.nil?
        end
      end

      class DoubleValues
        def self.validate!(input, context:)
          Validators::DoubleArray.validate!(input, context: context) unless input.nil?
        end
      end

      class StringValues
        def self.validate!(input, context:)
          Validators::StringArray.validate!(input, context: context) unless input.nil?
        end
      end

      class ArrayValues
        def self.validate!(input, context:)
          Validators::ArrayOfArray.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ArrayValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Value.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchExecuteStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchExecuteStatementInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:sql], ::String, context: "#{context}[:sql]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        SqlParameterSets.validate!(input[:parameter_sets], context: "#{context}[:parameter_sets]") unless input[:parameter_sets].nil?
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class BatchExecuteStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchExecuteStatementOutput, context: context)
        UpdateResults.validate!(input[:update_results], context: "#{context}[:update_results]") unless input[:update_results].nil?
      end
    end

    class BeginTransactionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BeginTransactionInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class BeginTransactionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BeginTransactionOutput, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class BooleanArray
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::TrueClass, ::FalseClass, context: "#{context}[#{index}]")
        end
      end
    end

    class ColumnMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::Integer, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:is_auto_increment], ::TrueClass, ::FalseClass, context: "#{context}[:is_auto_increment]")
        Hearth::Validator.validate!(input[:is_signed], ::TrueClass, ::FalseClass, context: "#{context}[:is_signed]")
        Hearth::Validator.validate!(input[:is_currency], ::TrueClass, ::FalseClass, context: "#{context}[:is_currency]")
        Hearth::Validator.validate!(input[:is_case_sensitive], ::TrueClass, ::FalseClass, context: "#{context}[:is_case_sensitive]")
        Hearth::Validator.validate!(input[:nullable], ::Integer, context: "#{context}[:nullable]")
        Hearth::Validator.validate!(input[:precision], ::Integer, context: "#{context}[:precision]")
        Hearth::Validator.validate!(input[:scale], ::Integer, context: "#{context}[:scale]")
        Hearth::Validator.validate!(input[:array_base_column_type], ::Integer, context: "#{context}[:array_base_column_type]")
      end
    end

    class CommitTransactionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitTransactionInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class CommitTransactionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitTransactionOutput, context: context)
        Hearth::Validator.validate!(input[:transaction_status], ::String, context: "#{context}[:transaction_status]")
      end
    end

    class DoubleArray
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class ExecuteSqlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteSqlInput, context: context)
        Hearth::Validator.validate!(input[:db_cluster_or_instance_arn], ::String, context: "#{context}[:db_cluster_or_instance_arn]")
        Hearth::Validator.validate!(input[:aws_secret_store_arn], ::String, context: "#{context}[:aws_secret_store_arn]")
        Hearth::Validator.validate!(input[:sql_statements], ::String, context: "#{context}[:sql_statements]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class ExecuteSqlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteSqlOutput, context: context)
        SqlStatementResults.validate!(input[:sql_statement_results], context: "#{context}[:sql_statement_results]") unless input[:sql_statement_results].nil?
      end
    end

    class ExecuteStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteStatementInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:sql], ::String, context: "#{context}[:sql]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        SqlParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:include_result_metadata], ::TrueClass, ::FalseClass, context: "#{context}[:include_result_metadata]")
        Hearth::Validator.validate!(input[:continue_after_timeout], ::TrueClass, ::FalseClass, context: "#{context}[:continue_after_timeout]")
        ResultSetOptions.validate!(input[:result_set_options], context: "#{context}[:result_set_options]") unless input[:result_set_options].nil?
        Hearth::Validator.validate!(input[:format_records_as], ::String, context: "#{context}[:format_records_as]")
      end
    end

    class ExecuteStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteStatementOutput, context: context)
        SqlRecords.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        Metadata.validate!(input[:column_metadata], context: "#{context}[:column_metadata]") unless input[:column_metadata].nil?
        Hearth::Validator.validate!(input[:number_of_records_updated], ::Integer, context: "#{context}[:number_of_records_updated]")
        FieldList.validate!(input[:generated_fields], context: "#{context}[:generated_fields]") unless input[:generated_fields].nil?
        Hearth::Validator.validate!(input[:formatted_records], ::String, context: "#{context}[:formatted_records]")
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
        when Types::Field::ArrayValue
          ArrayValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
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

      class ArrayValue
        def self.validate!(input, context:)
          Validators::ArrayValue.validate!(input, context: context) unless input.nil?
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

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
      end
    end

    class LongArray
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Record, context: context)
        Row.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class Records
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Record.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResultFrame
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultFrame, context: context)
        ResultSetMetadata.validate!(input[:result_set_metadata], context: "#{context}[:result_set_metadata]") unless input[:result_set_metadata].nil?
        Records.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
      end
    end

    class ResultSetMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultSetMetadata, context: context)
        Hearth::Validator.validate!(input[:column_count], ::Integer, context: "#{context}[:column_count]")
        Metadata.validate!(input[:column_metadata], context: "#{context}[:column_metadata]") unless input[:column_metadata].nil?
      end
    end

    class ResultSetOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultSetOptions, context: context)
        Hearth::Validator.validate!(input[:decimal_return_type], ::String, context: "#{context}[:decimal_return_type]")
        Hearth::Validator.validate!(input[:long_return_type], ::String, context: "#{context}[:long_return_type]")
      end
    end

    class RollbackTransactionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackTransactionInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class RollbackTransactionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackTransactionOutput, context: context)
        Hearth::Validator.validate!(input[:transaction_status], ::String, context: "#{context}[:transaction_status]")
      end
    end

    class Row
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Value.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUnavailableError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableError, context: context)
      end
    end

    class SqlParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Field.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:type_hint], ::String, context: "#{context}[:type_hint]")
      end
    end

    class SqlParameterSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SqlParametersList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class SqlStatementResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlStatementResult, context: context)
        ResultFrame.validate!(input[:result_frame], context: "#{context}[:result_frame]") unless input[:result_frame].nil?
        Hearth::Validator.validate!(input[:number_of_records_updated], ::Integer, context: "#{context}[:number_of_records_updated]")
      end
    end

    class SqlStatementResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SqlStatementResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatementTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatementTimeoutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:db_connection_id], ::Integer, context: "#{context}[:db_connection_id]")
      end
    end

    class StringArray
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StructValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StructValue, context: context)
        ArrayValueList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class UpdateResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResult, context: context)
        FieldList.validate!(input[:generated_fields], context: "#{context}[:generated_fields]") unless input[:generated_fields].nil?
      end
    end

    class UpdateResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpdateResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Value
      def self.validate!(input, context:)
        case input
        when Types::Value::IsNull
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::Value::BitValue
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::Value::BigIntValue
          Hearth::Validator.validate!(input.__getobj__, ::Integer, context: context)
        when Types::Value::IntValue
          Hearth::Validator.validate!(input.__getobj__, ::Integer, context: context)
        when Types::Value::DoubleValue
          Hearth::Validator.validate!(input.__getobj__, ::Float, context: context)
        when Types::Value::RealValue
          Hearth::Validator.validate!(input.__getobj__, ::Float, context: context)
        when Types::Value::StringValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::Value::BlobValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::Value::ArrayValues
          ArrayValueList.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::Value::StructValue
          StructValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::Value, got #{input.class}."
        end
      end

      class IsNull
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class BitValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class BigIntValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Integer, context: context)
        end
      end

      class IntValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Integer, context: context)
        end
      end

      class DoubleValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Float, context: context)
        end
      end

      class RealValue
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

      class ArrayValues
        def self.validate!(input, context:)
          Validators::ArrayValueList.validate!(input, context: context) unless input.nil?
        end
      end

      class StructValue
        def self.validate!(input, context:)
          Validators::StructValue.validate!(input, context: context) unless input.nil?
        end
      end
    end

  end
end
