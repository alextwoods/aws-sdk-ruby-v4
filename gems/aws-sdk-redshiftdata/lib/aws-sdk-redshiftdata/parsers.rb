# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::RedshiftData
  module Parsers

    # Operation Parser for BatchExecuteStatement
    class BatchExecuteStatement
      def self.parse(http_resp)
        data = Types::BatchExecuteStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.cluster_identifier = map['ClusterIdentifier']
        data.db_user = map['DbUser']
        data.database = map['Database']
        data.secret_arn = map['SecretArn']
        data
      end
    end

    # Error Parser for ActiveStatementsExceededException
    class ActiveStatementsExceededException
      def self.parse(http_resp)
        data = Types::ActiveStatementsExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BatchExecuteStatementException
    class BatchExecuteStatementException
      def self.parse(http_resp)
        data = Types::BatchExecuteStatementException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.statement_id = map['StatementId']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CancelStatement
    class CancelStatement
      def self.parse(http_resp)
        data = Types::CancelStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
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

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data
      end
    end

    # Error Parser for DatabaseConnectionException
    class DatabaseConnectionException
      def self.parse(http_resp)
        data = Types::DatabaseConnectionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeStatement
    class DescribeStatement
      def self.parse(http_resp)
        data = Types::DescribeStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data.secret_arn = map['SecretArn']
        data.db_user = map['DbUser']
        data.database = map['Database']
        data.cluster_identifier = map['ClusterIdentifier']
        data.duration = map['Duration']
        data.error = map['Error']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.redshift_pid = map['RedshiftPid']
        data.has_result_set = map['HasResultSet']
        data.query_string = map['QueryString']
        data.result_rows = map['ResultRows']
        data.result_size = map['ResultSize']
        data.redshift_query_id = map['RedshiftQueryId']
        data.query_parameters = (Parsers::SqlParametersList.parse(map['QueryParameters']) unless map['QueryParameters'].nil?)
        data.sub_statements = (Parsers::SubStatementList.parse(map['SubStatements']) unless map['SubStatements'].nil?)
        data
      end
    end

    class SubStatementList
      def self.parse(list)
        list.map do |value|
          Parsers::SubStatementData.parse(value) unless value.nil?
        end
      end
    end

    class SubStatementData
      def self.parse(map)
        data = Types::SubStatementData.new
        data.id = map['Id']
        data.duration = map['Duration']
        data.error = map['Error']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.query_string = map['QueryString']
        data.result_rows = map['ResultRows']
        data.result_size = map['ResultSize']
        data.redshift_query_id = map['RedshiftQueryId']
        data.has_result_set = map['HasResultSet']
        return data
      end
    end

    class SqlParametersList
      def self.parse(list)
        list.map do |value|
          Parsers::SqlParameter.parse(value) unless value.nil?
        end
      end
    end

    class SqlParameter
      def self.parse(map)
        data = Types::SqlParameter.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for DescribeTable
    class DescribeTable
      def self.parse(http_resp)
        data = Types::DescribeTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.table_name = map['TableName']
        data.column_list = (Parsers::ColumnList.parse(map['ColumnList']) unless map['ColumnList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ColumnList
      def self.parse(list)
        list.map do |value|
          Parsers::ColumnMetadata.parse(value) unless value.nil?
        end
      end
    end

    class ColumnMetadata
      def self.parse(map)
        data = Types::ColumnMetadata.new
        data.is_case_sensitive = map['isCaseSensitive']
        data.is_currency = map['isCurrency']
        data.is_signed = map['isSigned']
        data.label = map['label']
        data.name = map['name']
        data.nullable = map['nullable']
        data.precision = map['precision']
        data.scale = map['scale']
        data.schema_name = map['schemaName']
        data.table_name = map['tableName']
        data.type_name = map['typeName']
        data.length = map['length']
        data.column_default = map['columnDefault']
        return data
      end
    end

    # Operation Parser for ExecuteStatement
    class ExecuteStatement
      def self.parse(http_resp)
        data = Types::ExecuteStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.cluster_identifier = map['ClusterIdentifier']
        data.db_user = map['DbUser']
        data.database = map['Database']
        data.secret_arn = map['SecretArn']
        data
      end
    end

    # Error Parser for ExecuteStatementException
    class ExecuteStatementException
      def self.parse(http_resp)
        data = Types::ExecuteStatementException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.statement_id = map['StatementId']
        data
      end
    end

    # Operation Parser for GetStatementResult
    class GetStatementResult
      def self.parse(http_resp)
        data = Types::GetStatementResultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.records = (Parsers::SqlRecords.parse(map['Records']) unless map['Records'].nil?)
        data.column_metadata = (Parsers::ColumnMetadataList.parse(map['ColumnMetadata']) unless map['ColumnMetadata'].nil?)
        data.total_num_rows = map['TotalNumRows']
        data.next_token = map['NextToken']
        data
      end
    end

    class ColumnMetadataList
      def self.parse(list)
        list.map do |value|
          Parsers::ColumnMetadata.parse(value) unless value.nil?
        end
      end
    end

    class SqlRecords
      def self.parse(list)
        list.map do |value|
          Parsers::FieldList.parse(value) unless value.nil?
        end
      end
    end

    class FieldList
      def self.parse(list)
        list.map do |value|
          Parsers::Field.parse(value) unless value.nil?
        end
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
        else
          Types::Field::Unknown.new({name: key, value: value})
        end
      end
    end

    # Operation Parser for ListDatabases
    class ListDatabases
      def self.parse(http_resp)
        data = Types::ListDatabasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.databases = (Parsers::DatabaseList.parse(map['Databases']) unless map['Databases'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatabaseList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListSchemas
    class ListSchemas
      def self.parse(http_resp)
        data = Types::ListSchemasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schemas = (Parsers::SchemaList.parse(map['Schemas']) unless map['Schemas'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SchemaList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListStatements
    class ListStatements
      def self.parse(http_resp)
        data = Types::ListStatementsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.statements = (Parsers::StatementList.parse(map['Statements']) unless map['Statements'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StatementList
      def self.parse(list)
        list.map do |value|
          Parsers::StatementData.parse(value) unless value.nil?
        end
      end
    end

    class StatementData
      def self.parse(map)
        data = Types::StatementData.new
        data.id = map['Id']
        data.query_string = map['QueryString']
        data.query_strings = (Parsers::StatementStringList.parse(map['QueryStrings']) unless map['QueryStrings'].nil?)
        data.secret_arn = map['SecretArn']
        data.status = map['Status']
        data.statement_name = map['StatementName']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.query_parameters = (Parsers::SqlParametersList.parse(map['QueryParameters']) unless map['QueryParameters'].nil?)
        data.is_batch_statement = map['IsBatchStatement']
        return data
      end
    end

    class StatementStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListTables
    class ListTables
      def self.parse(http_resp)
        data = Types::ListTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tables = (Parsers::TableList.parse(map['Tables']) unless map['Tables'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TableList
      def self.parse(list)
        list.map do |value|
          Parsers::TableMember.parse(value) unless value.nil?
        end
      end
    end

    class TableMember
      def self.parse(map)
        data = Types::TableMember.new
        data.name = map['name']
        data.type = map['type']
        data.schema = map['schema']
        return data
      end
    end
  end
end
