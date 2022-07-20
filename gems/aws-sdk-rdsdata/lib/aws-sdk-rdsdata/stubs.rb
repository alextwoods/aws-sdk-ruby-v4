# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::RDSData
  module Stubs

    # Operation Stubber for BatchExecuteStatement
    class BatchExecuteStatement
      def self.default(visited=[])
        {
          update_results: UpdateResults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['updateResults'] = UpdateResults.stub(stub[:update_results]) unless stub[:update_results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UpdateResults
    class UpdateResults
      def self.default(visited=[])
        return nil if visited.include?('UpdateResults')
        visited = visited + ['UpdateResults']
        [
          UpdateResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UpdateResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UpdateResult
    class UpdateResult
      def self.default(visited=[])
        return nil if visited.include?('UpdateResult')
        visited = visited + ['UpdateResult']
        {
          generated_fields: FieldList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateResult.new
        data = {}
        data['generatedFields'] = FieldList.stub(stub[:generated_fields]) unless stub[:generated_fields].nil?
        data
      end
    end

    # List Stubber for FieldList
    class FieldList
      def self.default(visited=[])
        return nil if visited.include?('FieldList')
        visited = visited + ['FieldList']
        [
          Field.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Field.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for Field
    class Field
      def self.default(visited=[])
        return nil if visited.include?('Field')
        visited = visited + ['Field']
        {
          is_null: false,
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::Field::IsNull
          data['isNull'] = stub.__getobj__
        when Types::Field::BooleanValue
          data['booleanValue'] = stub.__getobj__
        when Types::Field::LongValue
          data['longValue'] = stub.__getobj__
        when Types::Field::DoubleValue
          data['doubleValue'] = Hearth::NumberHelper.serialize(stub.__getobj__)
        when Types::Field::StringValue
          data['stringValue'] = stub.__getobj__
        when Types::Field::BlobValue
          data['blobValue'] = ::Base64::encode64(stub.__getobj__)
        when Types::Field::ArrayValue
          data['arrayValue'] = (ArrayValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Field"
        end

        data
      end
    end

    # Union Stubber for ArrayValue
    class ArrayValue
      def self.default(visited=[])
        return nil if visited.include?('ArrayValue')
        visited = visited + ['ArrayValue']
        {
          boolean_values: BooleanArray.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ArrayValue::BooleanValues
          data['booleanValues'] = (BooleanArray.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ArrayValue::LongValues
          data['longValues'] = (LongArray.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ArrayValue::DoubleValues
          data['doubleValues'] = (DoubleArray.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ArrayValue::StringValues
          data['stringValues'] = (StringArray.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ArrayValue::ArrayValues
          data['arrayValues'] = (ArrayOfArray.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ArrayValue"
        end

        data
      end
    end

    # List Stubber for ArrayOfArray
    class ArrayOfArray
      def self.default(visited=[])
        return nil if visited.include?('ArrayOfArray')
        visited = visited + ['ArrayOfArray']
        [
          ArrayValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ArrayValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for StringArray
    class StringArray
      def self.default(visited=[])
        return nil if visited.include?('StringArray')
        visited = visited + ['StringArray']
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

    # List Stubber for DoubleArray
    class DoubleArray
      def self.default(visited=[])
        return nil if visited.include?('DoubleArray')
        visited = visited + ['DoubleArray']
        [
          1.0
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
        end
        data
      end
    end

    # List Stubber for LongArray
    class LongArray
      def self.default(visited=[])
        return nil if visited.include?('LongArray')
        visited = visited + ['LongArray']
        [
          1
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

    # List Stubber for BooleanArray
    class BooleanArray
      def self.default(visited=[])
        return nil if visited.include?('BooleanArray')
        visited = visited + ['BooleanArray']
        [
          false
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

    # Operation Stubber for BeginTransaction
    class BeginTransaction
      def self.default(visited=[])
        {
          transaction_id: 'transaction_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['transactionId'] = stub[:transaction_id] unless stub[:transaction_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CommitTransaction
    class CommitTransaction
      def self.default(visited=[])
        {
          transaction_status: 'transaction_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['transactionStatus'] = stub[:transaction_status] unless stub[:transaction_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ExecuteSql
    class ExecuteSql
      def self.default(visited=[])
        {
          sql_statement_results: SqlStatementResults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sqlStatementResults'] = SqlStatementResults.stub(stub[:sql_statement_results]) unless stub[:sql_statement_results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SqlStatementResults
    class SqlStatementResults
      def self.default(visited=[])
        return nil if visited.include?('SqlStatementResults')
        visited = visited + ['SqlStatementResults']
        [
          SqlStatementResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SqlStatementResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SqlStatementResult
    class SqlStatementResult
      def self.default(visited=[])
        return nil if visited.include?('SqlStatementResult')
        visited = visited + ['SqlStatementResult']
        {
          result_frame: ResultFrame.default(visited),
          number_of_records_updated: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlStatementResult.new
        data = {}
        data['resultFrame'] = ResultFrame.stub(stub[:result_frame]) unless stub[:result_frame].nil?
        data['numberOfRecordsUpdated'] = stub[:number_of_records_updated] unless stub[:number_of_records_updated].nil?
        data
      end
    end

    # Structure Stubber for ResultFrame
    class ResultFrame
      def self.default(visited=[])
        return nil if visited.include?('ResultFrame')
        visited = visited + ['ResultFrame']
        {
          result_set_metadata: ResultSetMetadata.default(visited),
          records: Records.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultFrame.new
        data = {}
        data['resultSetMetadata'] = ResultSetMetadata.stub(stub[:result_set_metadata]) unless stub[:result_set_metadata].nil?
        data['records'] = Records.stub(stub[:records]) unless stub[:records].nil?
        data
      end
    end

    # List Stubber for Records
    class Records
      def self.default(visited=[])
        return nil if visited.include?('Records')
        visited = visited + ['Records']
        [
          Record.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Record.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Record
    class Record
      def self.default(visited=[])
        return nil if visited.include?('Record')
        visited = visited + ['Record']
        {
          values: Row.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Record.new
        data = {}
        data['values'] = Row.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for Row
    class Row
      def self.default(visited=[])
        return nil if visited.include?('Row')
        visited = visited + ['Row']
        [
          Value.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Value.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for Value
    class Value
      def self.default(visited=[])
        return nil if visited.include?('Value')
        visited = visited + ['Value']
        {
          is_null: false,
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::Value::IsNull
          data['isNull'] = stub.__getobj__
        when Types::Value::BitValue
          data['bitValue'] = stub.__getobj__
        when Types::Value::BigIntValue
          data['bigIntValue'] = stub.__getobj__
        when Types::Value::IntValue
          data['intValue'] = stub.__getobj__
        when Types::Value::DoubleValue
          data['doubleValue'] = Hearth::NumberHelper.serialize(stub.__getobj__)
        when Types::Value::RealValue
          data['realValue'] = Hearth::NumberHelper.serialize(stub.__getobj__)
        when Types::Value::StringValue
          data['stringValue'] = stub.__getobj__
        when Types::Value::BlobValue
          data['blobValue'] = ::Base64::encode64(stub.__getobj__)
        when Types::Value::ArrayValues
          data['arrayValues'] = (ArrayValueList.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::Value::StructValue
          data['structValue'] = (StructValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Value"
        end

        data
      end
    end

    # Structure Stubber for StructValue
    class StructValue
      def self.default(visited=[])
        return nil if visited.include?('StructValue')
        visited = visited + ['StructValue']
        {
          attributes: ArrayValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StructValue.new
        data = {}
        data['attributes'] = ArrayValueList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # List Stubber for ArrayValueList
    class ArrayValueList
      def self.default(visited=[])
        return nil if visited.include?('ArrayValueList')
        visited = visited + ['ArrayValueList']
        [
          Value.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Value.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResultSetMetadata
    class ResultSetMetadata
      def self.default(visited=[])
        return nil if visited.include?('ResultSetMetadata')
        visited = visited + ['ResultSetMetadata']
        {
          column_count: 1,
          column_metadata: Metadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultSetMetadata.new
        data = {}
        data['columnCount'] = stub[:column_count] unless stub[:column_count].nil?
        data['columnMetadata'] = Metadata.stub(stub[:column_metadata]) unless stub[:column_metadata].nil?
        data
      end
    end

    # List Stubber for Metadata
    class Metadata
      def self.default(visited=[])
        return nil if visited.include?('Metadata')
        visited = visited + ['Metadata']
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
          type: 1,
          type_name: 'type_name',
          label: 'label',
          schema_name: 'schema_name',
          table_name: 'table_name',
          is_auto_increment: false,
          is_signed: false,
          is_currency: false,
          is_case_sensitive: false,
          nullable: 1,
          precision: 1,
          scale: 1,
          array_base_column_type: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['typeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['label'] = stub[:label] unless stub[:label].nil?
        data['schemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['isAutoIncrement'] = stub[:is_auto_increment] unless stub[:is_auto_increment].nil?
        data['isSigned'] = stub[:is_signed] unless stub[:is_signed].nil?
        data['isCurrency'] = stub[:is_currency] unless stub[:is_currency].nil?
        data['isCaseSensitive'] = stub[:is_case_sensitive] unless stub[:is_case_sensitive].nil?
        data['nullable'] = stub[:nullable] unless stub[:nullable].nil?
        data['precision'] = stub[:precision] unless stub[:precision].nil?
        data['scale'] = stub[:scale] unless stub[:scale].nil?
        data['arrayBaseColumnType'] = stub[:array_base_column_type] unless stub[:array_base_column_type].nil?
        data
      end
    end

    # Operation Stubber for ExecuteStatement
    class ExecuteStatement
      def self.default(visited=[])
        {
          records: SqlRecords.default(visited),
          column_metadata: Metadata.default(visited),
          number_of_records_updated: 1,
          generated_fields: FieldList.default(visited),
          formatted_records: 'formatted_records',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['records'] = SqlRecords.stub(stub[:records]) unless stub[:records].nil?
        data['columnMetadata'] = Metadata.stub(stub[:column_metadata]) unless stub[:column_metadata].nil?
        data['numberOfRecordsUpdated'] = stub[:number_of_records_updated] unless stub[:number_of_records_updated].nil?
        data['generatedFields'] = FieldList.stub(stub[:generated_fields]) unless stub[:generated_fields].nil?
        data['formattedRecords'] = stub[:formatted_records] unless stub[:formatted_records].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SqlRecords
    class SqlRecords
      def self.default(visited=[])
        return nil if visited.include?('SqlRecords')
        visited = visited + ['SqlRecords']
        [
          FieldList.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FieldList.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for RollbackTransaction
    class RollbackTransaction
      def self.default(visited=[])
        {
          transaction_status: 'transaction_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['transactionStatus'] = stub[:transaction_status] unless stub[:transaction_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
