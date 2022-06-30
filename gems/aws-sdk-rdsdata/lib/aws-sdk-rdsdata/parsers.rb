# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::RDSData
  module Parsers

    # Operation Parser for BatchExecuteStatement
    class BatchExecuteStatement
      def self.parse(http_resp)
        data = Types::BatchExecuteStatementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update_results = (Parsers::UpdateResults.parse(map['updateResults']) unless map['updateResults'].nil?)
        data
      end
    end

    class UpdateResults
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UpdateResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class UpdateResult
      def self.parse(map)
        data = Types::UpdateResult.new
        data.generated_fields = (Parsers::FieldList.parse(map['generatedFields']) unless map['generatedFields'].nil?)
        return data
      end
    end

    class FieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Field.parse(value) unless value.nil?
        end
        data
      end
    end

    class Field
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'isNull'
          value = value
          Types::Field::IsNull.new(value) if value
        when 'booleanValue'
          value = value
          Types::Field::BooleanValue.new(value) if value
        when 'longValue'
          value = value
          Types::Field::LongValue.new(value) if value
        when 'doubleValue'
          value = Hearth::NumberHelper.deserialize(value)
          Types::Field::DoubleValue.new(value) if value
        when 'stringValue'
          value = value
          Types::Field::StringValue.new(value) if value
        when 'blobValue'
          value = Base64::decode64(value) unless value.nil?
          Types::Field::BlobValue.new(value) if value
        when 'arrayValue'
          value = (Parsers::ArrayValue.parse(value) unless value.nil?)
          Types::Field::ArrayValue.new(value) if value
        else
          Types::Field::Unknown.new({name: key, value: value})
        end
      end
    end

    class ArrayValue
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'booleanValues'
          value = (Parsers::BooleanArray.parse(value) unless value.nil?)
          Types::ArrayValue::BooleanValues.new(value) if value
        when 'longValues'
          value = (Parsers::LongArray.parse(value) unless value.nil?)
          Types::ArrayValue::LongValues.new(value) if value
        when 'doubleValues'
          value = (Parsers::DoubleArray.parse(value) unless value.nil?)
          Types::ArrayValue::DoubleValues.new(value) if value
        when 'stringValues'
          value = (Parsers::StringArray.parse(value) unless value.nil?)
          Types::ArrayValue::StringValues.new(value) if value
        when 'arrayValues'
          value = (Parsers::ArrayOfArray.parse(value) unless value.nil?)
          Types::ArrayValue::ArrayValues.new(value) if value
        else
          Types::ArrayValue::Unknown.new({name: key, value: value})
        end
      end
    end

    class ArrayOfArray
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ArrayValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class StringArray
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DoubleArray
      def self.parse(list)
        data = []
        list.map do |value|
          data << Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class LongArray
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class BooleanArray
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ServiceUnavailableError
    class ServiceUnavailableError
      def self.parse(http_resp)
        data = Types::ServiceUnavailableError.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for StatementTimeoutException
    class StatementTimeoutException
      def self.parse(http_resp)
        data = Types::StatementTimeoutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.db_connection_id = map['dbConnectionId']
        data
      end
    end

    # Operation Parser for BeginTransaction
    class BeginTransaction
      def self.parse(http_resp)
        data = Types::BeginTransactionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transaction_id = map['transactionId']
        data
      end
    end

    # Operation Parser for CommitTransaction
    class CommitTransaction
      def self.parse(http_resp)
        data = Types::CommitTransactionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transaction_status = map['transactionStatus']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ExecuteSql
    class ExecuteSql
      def self.parse(http_resp)
        data = Types::ExecuteSqlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sql_statement_results = (Parsers::SqlStatementResults.parse(map['sqlStatementResults']) unless map['sqlStatementResults'].nil?)
        data
      end
    end

    class SqlStatementResults
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SqlStatementResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class SqlStatementResult
      def self.parse(map)
        data = Types::SqlStatementResult.new
        data.result_frame = (Parsers::ResultFrame.parse(map['resultFrame']) unless map['resultFrame'].nil?)
        data.number_of_records_updated = map['numberOfRecordsUpdated']
        return data
      end
    end

    class ResultFrame
      def self.parse(map)
        data = Types::ResultFrame.new
        data.result_set_metadata = (Parsers::ResultSetMetadata.parse(map['resultSetMetadata']) unless map['resultSetMetadata'].nil?)
        data.records = (Parsers::Records.parse(map['records']) unless map['records'].nil?)
        return data
      end
    end

    class Records
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Record.parse(value) unless value.nil?
        end
        data
      end
    end

    class Record
      def self.parse(map)
        data = Types::Record.new
        data.values = (Parsers::Row.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class Row
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Value.parse(value) unless value.nil?
        end
        data
      end
    end

    class Value
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'isNull'
          value = value
          Types::Value::IsNull.new(value) if value
        when 'bitValue'
          value = value
          Types::Value::BitValue.new(value) if value
        when 'bigIntValue'
          value = value
          Types::Value::BigIntValue.new(value) if value
        when 'intValue'
          value = value
          Types::Value::IntValue.new(value) if value
        when 'doubleValue'
          value = Hearth::NumberHelper.deserialize(value)
          Types::Value::DoubleValue.new(value) if value
        when 'realValue'
          value = Hearth::NumberHelper.deserialize(value)
          Types::Value::RealValue.new(value) if value
        when 'stringValue'
          value = value
          Types::Value::StringValue.new(value) if value
        when 'blobValue'
          value = Base64::decode64(value) unless value.nil?
          Types::Value::BlobValue.new(value) if value
        when 'arrayValues'
          value = (Parsers::ArrayValueList.parse(value) unless value.nil?)
          Types::Value::ArrayValues.new(value) if value
        when 'structValue'
          value = (Parsers::StructValue.parse(value) unless value.nil?)
          Types::Value::StructValue.new(value) if value
        else
          Types::Value::Unknown.new({name: key, value: value})
        end
      end
    end

    class StructValue
      def self.parse(map)
        data = Types::StructValue.new
        data.attributes = (Parsers::ArrayValueList.parse(map['attributes']) unless map['attributes'].nil?)
        return data
      end
    end

    class ArrayValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Value.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResultSetMetadata
      def self.parse(map)
        data = Types::ResultSetMetadata.new
        data.column_count = map['columnCount']
        data.column_metadata = (Parsers::Metadata.parse(map['columnMetadata']) unless map['columnMetadata'].nil?)
        return data
      end
    end

    class Metadata
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
        data.type = map['type']
        data.type_name = map['typeName']
        data.label = map['label']
        data.schema_name = map['schemaName']
        data.table_name = map['tableName']
        data.is_auto_increment = map['isAutoIncrement']
        data.is_signed = map['isSigned']
        data.is_currency = map['isCurrency']
        data.is_case_sensitive = map['isCaseSensitive']
        data.nullable = map['nullable']
        data.precision = map['precision']
        data.scale = map['scale']
        data.array_base_column_type = map['arrayBaseColumnType']
        return data
      end
    end

    # Operation Parser for ExecuteStatement
    class ExecuteStatement
      def self.parse(http_resp)
        data = Types::ExecuteStatementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.records = (Parsers::SqlRecords.parse(map['records']) unless map['records'].nil?)
        data.column_metadata = (Parsers::Metadata.parse(map['columnMetadata']) unless map['columnMetadata'].nil?)
        data.number_of_records_updated = map['numberOfRecordsUpdated']
        data.generated_fields = (Parsers::FieldList.parse(map['generatedFields']) unless map['generatedFields'].nil?)
        data.formatted_records = map['formattedRecords']
        data
      end
    end

    class SqlRecords
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FieldList.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for RollbackTransaction
    class RollbackTransaction
      def self.parse(http_resp)
        data = Types::RollbackTransactionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transaction_status = map['transactionStatus']
        data
      end
    end
  end
end
