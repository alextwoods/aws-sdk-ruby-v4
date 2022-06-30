# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RedshiftData
  module Stubs

    # Operation Stubber for BatchExecuteStatement
    class BatchExecuteStatement
      def self.default(visited=[])
        {
          id: 'id',
          created_at: Time.now,
          cluster_identifier: 'cluster_identifier',
          db_user: 'db_user',
          database: 'database',
          secret_arn: 'secret_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['ClusterIdentifier'] = stub[:cluster_identifier] unless stub[:cluster_identifier].nil?
        data['DbUser'] = stub[:db_user] unless stub[:db_user].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelStatement
    class CancelStatement
      def self.default(visited=[])
        {
          status: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeStatement
    class DescribeStatement
      def self.default(visited=[])
        {
          id: 'id',
          secret_arn: 'secret_arn',
          db_user: 'db_user',
          database: 'database',
          cluster_identifier: 'cluster_identifier',
          duration: 1,
          error: 'error',
          status: 'status',
          created_at: Time.now,
          updated_at: Time.now,
          redshift_pid: 1,
          has_result_set: false,
          query_string: 'query_string',
          result_rows: 1,
          result_size: 1,
          redshift_query_id: 1,
          query_parameters: Stubs::SqlParametersList.default(visited),
          sub_statements: Stubs::SubStatementList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['DbUser'] = stub[:db_user] unless stub[:db_user].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['ClusterIdentifier'] = stub[:cluster_identifier] unless stub[:cluster_identifier].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['Error'] = stub[:error] unless stub[:error].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['RedshiftPid'] = stub[:redshift_pid] unless stub[:redshift_pid].nil?
        data['HasResultSet'] = stub[:has_result_set] unless stub[:has_result_set].nil?
        data['QueryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['ResultRows'] = stub[:result_rows] unless stub[:result_rows].nil?
        data['ResultSize'] = stub[:result_size] unless stub[:result_size].nil?
        data['RedshiftQueryId'] = stub[:redshift_query_id] unless stub[:redshift_query_id].nil?
        data['QueryParameters'] = Stubs::SqlParametersList.stub(stub[:query_parameters]) unless stub[:query_parameters].nil?
        data['SubStatements'] = Stubs::SubStatementList.stub(stub[:sub_statements]) unless stub[:sub_statements].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SubStatementList
    class SubStatementList
      def self.default(visited=[])
        return nil if visited.include?('SubStatementList')
        visited = visited + ['SubStatementList']
        [
          Stubs::SubStatementData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SubStatementData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SubStatementData
    class SubStatementData
      def self.default(visited=[])
        return nil if visited.include?('SubStatementData')
        visited = visited + ['SubStatementData']
        {
          id: 'id',
          duration: 1,
          error: 'error',
          status: 'status',
          created_at: Time.now,
          updated_at: Time.now,
          query_string: 'query_string',
          result_rows: 1,
          result_size: 1,
          redshift_query_id: 1,
          has_result_set: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SubStatementData.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['Error'] = stub[:error] unless stub[:error].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['QueryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['ResultRows'] = stub[:result_rows] unless stub[:result_rows].nil?
        data['ResultSize'] = stub[:result_size] unless stub[:result_size].nil?
        data['RedshiftQueryId'] = stub[:redshift_query_id] unless stub[:redshift_query_id].nil?
        data['HasResultSet'] = stub[:has_result_set] unless stub[:has_result_set].nil?
        data
      end
    end

    # List Stubber for SqlParametersList
    class SqlParametersList
      def self.default(visited=[])
        return nil if visited.include?('SqlParametersList')
        visited = visited + ['SqlParametersList']
        [
          Stubs::SqlParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SqlParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SqlParameter
    class SqlParameter
      def self.default(visited=[])
        return nil if visited.include?('SqlParameter')
        visited = visited + ['SqlParameter']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlParameter.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeTable
    class DescribeTable
      def self.default(visited=[])
        {
          table_name: 'table_name',
          column_list: Stubs::ColumnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['ColumnList'] = Stubs::ColumnList.stub(stub[:column_list]) unless stub[:column_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ColumnList
    class ColumnList
      def self.default(visited=[])
        return nil if visited.include?('ColumnList')
        visited = visited + ['ColumnList']
        [
          Stubs::ColumnMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnMetadata.stub(element) unless element.nil?
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
          is_case_sensitive: false,
          is_currency: false,
          is_signed: false,
          label: 'label',
          name: 'name',
          nullable: 1,
          precision: 1,
          scale: 1,
          schema_name: 'schema_name',
          table_name: 'table_name',
          type_name: 'type_name',
          length: 1,
          column_default: 'column_default',
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnMetadata.new
        data = {}
        data['isCaseSensitive'] = stub[:is_case_sensitive] unless stub[:is_case_sensitive].nil?
        data['isCurrency'] = stub[:is_currency] unless stub[:is_currency].nil?
        data['isSigned'] = stub[:is_signed] unless stub[:is_signed].nil?
        data['label'] = stub[:label] unless stub[:label].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['nullable'] = stub[:nullable] unless stub[:nullable].nil?
        data['precision'] = stub[:precision] unless stub[:precision].nil?
        data['scale'] = stub[:scale] unless stub[:scale].nil?
        data['schemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['typeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['length'] = stub[:length] unless stub[:length].nil?
        data['columnDefault'] = stub[:column_default] unless stub[:column_default].nil?
        data
      end
    end

    # Operation Stubber for ExecuteStatement
    class ExecuteStatement
      def self.default(visited=[])
        {
          id: 'id',
          created_at: Time.now,
          cluster_identifier: 'cluster_identifier',
          db_user: 'db_user',
          database: 'database',
          secret_arn: 'secret_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['ClusterIdentifier'] = stub[:cluster_identifier] unless stub[:cluster_identifier].nil?
        data['DbUser'] = stub[:db_user] unless stub[:db_user].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetStatementResult
    class GetStatementResult
      def self.default(visited=[])
        {
          records: Stubs::SqlRecords.default(visited),
          column_metadata: Stubs::ColumnMetadataList.default(visited),
          total_num_rows: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Records'] = Stubs::SqlRecords.stub(stub[:records]) unless stub[:records].nil?
        data['ColumnMetadata'] = Stubs::ColumnMetadataList.stub(stub[:column_metadata]) unless stub[:column_metadata].nil?
        data['TotalNumRows'] = stub[:total_num_rows] unless stub[:total_num_rows].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ColumnMetadataList
    class ColumnMetadataList
      def self.default(visited=[])
        return nil if visited.include?('ColumnMetadataList')
        visited = visited + ['ColumnMetadataList']
        [
          Stubs::ColumnMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for SqlRecords
    class SqlRecords
      def self.default(visited=[])
        return nil if visited.include?('SqlRecords')
        visited = visited + ['SqlRecords']
        [
          Stubs::FieldList.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FieldList.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for FieldList
    class FieldList
      def self.default(visited=[])
        return nil if visited.include?('FieldList')
        visited = visited + ['FieldList']
        [
          Stubs::Field.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Field.stub(element) unless element.nil?
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
          data['blobValue'] = Base64::encode64(stub.__getobj__)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Field"
        end

        data
      end
    end

    # Operation Stubber for ListDatabases
    class ListDatabases
      def self.default(visited=[])
        {
          databases: Stubs::DatabaseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Databases'] = Stubs::DatabaseList.stub(stub[:databases]) unless stub[:databases].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatabaseList
    class DatabaseList
      def self.default(visited=[])
        return nil if visited.include?('DatabaseList')
        visited = visited + ['DatabaseList']
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

    # Operation Stubber for ListSchemas
    class ListSchemas
      def self.default(visited=[])
        {
          schemas: Stubs::SchemaList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Schemas'] = Stubs::SchemaList.stub(stub[:schemas]) unless stub[:schemas].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SchemaList
    class SchemaList
      def self.default(visited=[])
        return nil if visited.include?('SchemaList')
        visited = visited + ['SchemaList']
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

    # Operation Stubber for ListStatements
    class ListStatements
      def self.default(visited=[])
        {
          statements: Stubs::StatementList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Statements'] = Stubs::StatementList.stub(stub[:statements]) unless stub[:statements].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StatementList
    class StatementList
      def self.default(visited=[])
        return nil if visited.include?('StatementList')
        visited = visited + ['StatementList']
        [
          Stubs::StatementData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StatementData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StatementData
    class StatementData
      def self.default(visited=[])
        return nil if visited.include?('StatementData')
        visited = visited + ['StatementData']
        {
          id: 'id',
          query_string: 'query_string',
          query_strings: Stubs::StatementStringList.default(visited),
          secret_arn: 'secret_arn',
          status: 'status',
          statement_name: 'statement_name',
          created_at: Time.now,
          updated_at: Time.now,
          query_parameters: Stubs::SqlParametersList.default(visited),
          is_batch_statement: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::StatementData.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['QueryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['QueryStrings'] = Stubs::StatementStringList.stub(stub[:query_strings]) unless stub[:query_strings].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatementName'] = stub[:statement_name] unless stub[:statement_name].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['QueryParameters'] = Stubs::SqlParametersList.stub(stub[:query_parameters]) unless stub[:query_parameters].nil?
        data['IsBatchStatement'] = stub[:is_batch_statement] unless stub[:is_batch_statement].nil?
        data
      end
    end

    # List Stubber for StatementStringList
    class StatementStringList
      def self.default(visited=[])
        return nil if visited.include?('StatementStringList')
        visited = visited + ['StatementStringList']
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

    # Operation Stubber for ListTables
    class ListTables
      def self.default(visited=[])
        {
          tables: Stubs::TableList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tables'] = Stubs::TableList.stub(stub[:tables]) unless stub[:tables].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TableList
    class TableList
      def self.default(visited=[])
        return nil if visited.include?('TableList')
        visited = visited + ['TableList']
        [
          Stubs::TableMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TableMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TableMember
    class TableMember
      def self.default(visited=[])
        return nil if visited.include?('TableMember')
        visited = visited + ['TableMember']
        {
          name: 'name',
          type: 'type',
          schema: 'schema',
        }
      end

      def self.stub(stub)
        stub ||= Types::TableMember.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        data
      end
    end
  end
end
