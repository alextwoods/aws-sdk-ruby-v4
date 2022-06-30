# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::RDSData
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ArrayOfArray
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ArrayValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArrayValue
      def self.build(params, context: '')
        return params if params.is_a?(Types::ArrayValue)
        Hearth::Validator.validate!(params, ::Hash, Types::ArrayValue, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :boolean_values
          Types::ArrayValue::BooleanValues.new(
            (BooleanArray.build(params[:boolean_values], context: "#{context}[:boolean_values]") unless params[:boolean_values].nil?)
          )
        when :long_values
          Types::ArrayValue::LongValues.new(
            (LongArray.build(params[:long_values], context: "#{context}[:long_values]") unless params[:long_values].nil?)
          )
        when :double_values
          Types::ArrayValue::DoubleValues.new(
            (DoubleArray.build(params[:double_values], context: "#{context}[:double_values]") unless params[:double_values].nil?)
          )
        when :string_values
          Types::ArrayValue::StringValues.new(
            (StringArray.build(params[:string_values], context: "#{context}[:string_values]") unless params[:string_values].nil?)
          )
        when :array_values
          Types::ArrayValue::ArrayValues.new(
            (ArrayOfArray.build(params[:array_values], context: "#{context}[:array_values]") unless params[:array_values].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :boolean_values, :long_values, :double_values, :string_values, :array_values set"
        end
      end
    end

    module ArrayValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Value.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module BatchExecuteStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchExecuteStatementInput, context: context)
        type = Types::BatchExecuteStatementInput.new
        type.resource_arn = params[:resource_arn]
        type.secret_arn = params[:secret_arn]
        type.sql = params[:sql]
        type.database = params[:database]
        type.schema = params[:schema]
        type.parameter_sets = SqlParameterSets.build(params[:parameter_sets], context: "#{context}[:parameter_sets]") unless params[:parameter_sets].nil?
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module BatchExecuteStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchExecuteStatementOutput, context: context)
        type = Types::BatchExecuteStatementOutput.new
        type.update_results = UpdateResults.build(params[:update_results], context: "#{context}[:update_results]") unless params[:update_results].nil?
        type
      end
    end

    module BeginTransactionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BeginTransactionInput, context: context)
        type = Types::BeginTransactionInput.new
        type.resource_arn = params[:resource_arn]
        type.secret_arn = params[:secret_arn]
        type.database = params[:database]
        type.schema = params[:schema]
        type
      end
    end

    module BeginTransactionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BeginTransactionOutput, context: context)
        type = Types::BeginTransactionOutput.new
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module BooleanArray
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ColumnMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnMetadata, context: context)
        type = Types::ColumnMetadata.new
        type.name = params[:name]
        type.type = params[:type]
        type.type_name = params[:type_name]
        type.label = params[:label]
        type.schema_name = params[:schema_name]
        type.table_name = params[:table_name]
        type.is_auto_increment = params[:is_auto_increment]
        type.is_signed = params[:is_signed]
        type.is_currency = params[:is_currency]
        type.is_case_sensitive = params[:is_case_sensitive]
        type.nullable = params[:nullable]
        type.precision = params[:precision]
        type.scale = params[:scale]
        type.array_base_column_type = params[:array_base_column_type]
        type
      end
    end

    module CommitTransactionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitTransactionInput, context: context)
        type = Types::CommitTransactionInput.new
        type.resource_arn = params[:resource_arn]
        type.secret_arn = params[:secret_arn]
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module CommitTransactionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitTransactionOutput, context: context)
        type = Types::CommitTransactionOutput.new
        type.transaction_status = params[:transaction_status]
        type
      end
    end

    module DoubleArray
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExecuteSqlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteSqlInput, context: context)
        type = Types::ExecuteSqlInput.new
        type.db_cluster_or_instance_arn = params[:db_cluster_or_instance_arn]
        type.aws_secret_store_arn = params[:aws_secret_store_arn]
        type.sql_statements = params[:sql_statements]
        type.database = params[:database]
        type.schema = params[:schema]
        type
      end
    end

    module ExecuteSqlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteSqlOutput, context: context)
        type = Types::ExecuteSqlOutput.new
        type.sql_statement_results = SqlStatementResults.build(params[:sql_statement_results], context: "#{context}[:sql_statement_results]") unless params[:sql_statement_results].nil?
        type
      end
    end

    module ExecuteStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteStatementInput, context: context)
        type = Types::ExecuteStatementInput.new
        type.resource_arn = params[:resource_arn]
        type.secret_arn = params[:secret_arn]
        type.sql = params[:sql]
        type.database = params[:database]
        type.schema = params[:schema]
        type.parameters = SqlParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.transaction_id = params[:transaction_id]
        type.include_result_metadata = params[:include_result_metadata]
        type.continue_after_timeout = params[:continue_after_timeout]
        type.result_set_options = ResultSetOptions.build(params[:result_set_options], context: "#{context}[:result_set_options]") unless params[:result_set_options].nil?
        type.format_records_as = params[:format_records_as]
        type
      end
    end

    module ExecuteStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteStatementOutput, context: context)
        type = Types::ExecuteStatementOutput.new
        type.records = SqlRecords.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.column_metadata = Metadata.build(params[:column_metadata], context: "#{context}[:column_metadata]") unless params[:column_metadata].nil?
        type.number_of_records_updated = params[:number_of_records_updated]
        type.generated_fields = FieldList.build(params[:generated_fields], context: "#{context}[:generated_fields]") unless params[:generated_fields].nil?
        type.formatted_records = params[:formatted_records]
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
        when :array_value
          Types::Field::ArrayValue.new(
            (ArrayValue.build(params[:array_value], context: "#{context}[:array_value]") unless params[:array_value].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :is_null, :boolean_value, :long_value, :double_value, :string_value, :blob_value, :array_value set"
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

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.message = params[:message]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type
      end
    end

    module LongArray
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Metadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Record
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Record, context: context)
        type = Types::Record.new
        type.values = Row.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module Records
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Record.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResultFrame
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultFrame, context: context)
        type = Types::ResultFrame.new
        type.result_set_metadata = ResultSetMetadata.build(params[:result_set_metadata], context: "#{context}[:result_set_metadata]") unless params[:result_set_metadata].nil?
        type.records = Records.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type
      end
    end

    module ResultSetMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultSetMetadata, context: context)
        type = Types::ResultSetMetadata.new
        type.column_count = params[:column_count]
        type.column_metadata = Metadata.build(params[:column_metadata], context: "#{context}[:column_metadata]") unless params[:column_metadata].nil?
        type
      end
    end

    module ResultSetOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultSetOptions, context: context)
        type = Types::ResultSetOptions.new
        type.decimal_return_type = params[:decimal_return_type]
        type.long_return_type = params[:long_return_type]
        type
      end
    end

    module RollbackTransactionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackTransactionInput, context: context)
        type = Types::RollbackTransactionInput.new
        type.resource_arn = params[:resource_arn]
        type.secret_arn = params[:secret_arn]
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module RollbackTransactionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackTransactionOutput, context: context)
        type = Types::RollbackTransactionOutput.new
        type.transaction_status = params[:transaction_status]
        type
      end
    end

    module Row
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Value.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceUnavailableError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableError, context: context)
        type = Types::ServiceUnavailableError.new
        type
      end
    end

    module SqlParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlParameter, context: context)
        type = Types::SqlParameter.new
        type.name = params[:name]
        type.value = Field.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.type_hint = params[:type_hint]
        type
      end
    end

    module SqlParameterSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SqlParametersList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module SqlStatementResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlStatementResult, context: context)
        type = Types::SqlStatementResult.new
        type.result_frame = ResultFrame.build(params[:result_frame], context: "#{context}[:result_frame]") unless params[:result_frame].nil?
        type.number_of_records_updated = params[:number_of_records_updated]
        type
      end
    end

    module SqlStatementResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SqlStatementResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatementTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatementTimeoutException, context: context)
        type = Types::StatementTimeoutException.new
        type.message = params[:message]
        type.db_connection_id = params[:db_connection_id]
        type
      end
    end

    module StringArray
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StructValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StructValue, context: context)
        type = Types::StructValue.new
        type.attributes = ArrayValueList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module UpdateResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResult, context: context)
        type = Types::UpdateResult.new
        type.generated_fields = FieldList.build(params[:generated_fields], context: "#{context}[:generated_fields]") unless params[:generated_fields].nil?
        type
      end
    end

    module UpdateResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Value
      def self.build(params, context: '')
        return params if params.is_a?(Types::Value)
        Hearth::Validator.validate!(params, ::Hash, Types::Value, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :is_null
          Types::Value::IsNull.new(
            params[:is_null]
          )
        when :bit_value
          Types::Value::BitValue.new(
            params[:bit_value]
          )
        when :big_int_value
          Types::Value::BigIntValue.new(
            params[:big_int_value]
          )
        when :int_value
          Types::Value::IntValue.new(
            params[:int_value]
          )
        when :double_value
          Types::Value::DoubleValue.new(
            params[:double_value]
          )
        when :real_value
          Types::Value::RealValue.new(
            params[:real_value]
          )
        when :string_value
          Types::Value::StringValue.new(
            params[:string_value]
          )
        when :blob_value
          Types::Value::BlobValue.new(
            params[:blob_value]
          )
        when :array_values
          Types::Value::ArrayValues.new(
            (ArrayValueList.build(params[:array_values], context: "#{context}[:array_values]") unless params[:array_values].nil?)
          )
        when :struct_value
          Types::Value::StructValue.new(
            (StructValue.build(params[:struct_value], context: "#{context}[:struct_value]") unless params[:struct_value].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :is_null, :bit_value, :big_int_value, :int_value, :double_value, :real_value, :string_value, :blob_value, :array_values, :struct_value set"
        end
      end
    end

  end
end
