# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Athena
  module Stubs

    # Operation Stubber for BatchGetNamedQuery
    class BatchGetNamedQuery
      def self.default(visited=[])
        {
          named_queries: NamedQueryList.default(visited),
          unprocessed_named_query_ids: UnprocessedNamedQueryIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NamedQueries'] = Stubs::NamedQueryList.stub(stub[:named_queries]) unless stub[:named_queries].nil?
        data['UnprocessedNamedQueryIds'] = Stubs::UnprocessedNamedQueryIdList.stub(stub[:unprocessed_named_query_ids]) unless stub[:unprocessed_named_query_ids].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UnprocessedNamedQueryIdList
    class UnprocessedNamedQueryIdList
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedNamedQueryIdList')
        visited = visited + ['UnprocessedNamedQueryIdList']
        [
          UnprocessedNamedQueryId.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UnprocessedNamedQueryId.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnprocessedNamedQueryId
    class UnprocessedNamedQueryId
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedNamedQueryId')
        visited = visited + ['UnprocessedNamedQueryId']
        {
          named_query_id: 'named_query_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnprocessedNamedQueryId.new
        data = {}
        data['NamedQueryId'] = stub[:named_query_id] unless stub[:named_query_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for NamedQueryList
    class NamedQueryList
      def self.default(visited=[])
        return nil if visited.include?('NamedQueryList')
        visited = visited + ['NamedQueryList']
        [
          NamedQuery.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NamedQuery.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NamedQuery
    class NamedQuery
      def self.default(visited=[])
        return nil if visited.include?('NamedQuery')
        visited = visited + ['NamedQuery']
        {
          name: 'name',
          description: 'description',
          database: 'database',
          query_string: 'query_string',
          named_query_id: 'named_query_id',
          work_group: 'work_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::NamedQuery.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['QueryString'] = stub[:query_string] unless stub[:query_string].nil?
        data['NamedQueryId'] = stub[:named_query_id] unless stub[:named_query_id].nil?
        data['WorkGroup'] = stub[:work_group] unless stub[:work_group].nil?
        data
      end
    end

    # Operation Stubber for BatchGetQueryExecution
    class BatchGetQueryExecution
      def self.default(visited=[])
        {
          query_executions: QueryExecutionList.default(visited),
          unprocessed_query_execution_ids: UnprocessedQueryExecutionIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryExecutions'] = Stubs::QueryExecutionList.stub(stub[:query_executions]) unless stub[:query_executions].nil?
        data['UnprocessedQueryExecutionIds'] = Stubs::UnprocessedQueryExecutionIdList.stub(stub[:unprocessed_query_execution_ids]) unless stub[:unprocessed_query_execution_ids].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UnprocessedQueryExecutionIdList
    class UnprocessedQueryExecutionIdList
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedQueryExecutionIdList')
        visited = visited + ['UnprocessedQueryExecutionIdList']
        [
          UnprocessedQueryExecutionId.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UnprocessedQueryExecutionId.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnprocessedQueryExecutionId
    class UnprocessedQueryExecutionId
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedQueryExecutionId')
        visited = visited + ['UnprocessedQueryExecutionId']
        {
          query_execution_id: 'query_execution_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnprocessedQueryExecutionId.new
        data = {}
        data['QueryExecutionId'] = stub[:query_execution_id] unless stub[:query_execution_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for QueryExecutionList
    class QueryExecutionList
      def self.default(visited=[])
        return nil if visited.include?('QueryExecutionList')
        visited = visited + ['QueryExecutionList']
        [
          QueryExecution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::QueryExecution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QueryExecution
    class QueryExecution
      def self.default(visited=[])
        return nil if visited.include?('QueryExecution')
        visited = visited + ['QueryExecution']
        {
          query_execution_id: 'query_execution_id',
          query: 'query',
          statement_type: 'statement_type',
          result_configuration: ResultConfiguration.default(visited),
          query_execution_context: QueryExecutionContext.default(visited),
          status: QueryExecutionStatus.default(visited),
          statistics: QueryExecutionStatistics.default(visited),
          work_group: 'work_group',
          engine_version: EngineVersion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryExecution.new
        data = {}
        data['QueryExecutionId'] = stub[:query_execution_id] unless stub[:query_execution_id].nil?
        data['Query'] = stub[:query] unless stub[:query].nil?
        data['StatementType'] = stub[:statement_type] unless stub[:statement_type].nil?
        data['ResultConfiguration'] = Stubs::ResultConfiguration.stub(stub[:result_configuration]) unless stub[:result_configuration].nil?
        data['QueryExecutionContext'] = Stubs::QueryExecutionContext.stub(stub[:query_execution_context]) unless stub[:query_execution_context].nil?
        data['Status'] = Stubs::QueryExecutionStatus.stub(stub[:status]) unless stub[:status].nil?
        data['Statistics'] = Stubs::QueryExecutionStatistics.stub(stub[:statistics]) unless stub[:statistics].nil?
        data['WorkGroup'] = stub[:work_group] unless stub[:work_group].nil?
        data['EngineVersion'] = Stubs::EngineVersion.stub(stub[:engine_version]) unless stub[:engine_version].nil?
        data
      end
    end

    # Structure Stubber for EngineVersion
    class EngineVersion
      def self.default(visited=[])
        return nil if visited.include?('EngineVersion')
        visited = visited + ['EngineVersion']
        {
          selected_engine_version: 'selected_engine_version',
          effective_engine_version: 'effective_engine_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::EngineVersion.new
        data = {}
        data['SelectedEngineVersion'] = stub[:selected_engine_version] unless stub[:selected_engine_version].nil?
        data['EffectiveEngineVersion'] = stub[:effective_engine_version] unless stub[:effective_engine_version].nil?
        data
      end
    end

    # Structure Stubber for QueryExecutionStatistics
    class QueryExecutionStatistics
      def self.default(visited=[])
        return nil if visited.include?('QueryExecutionStatistics')
        visited = visited + ['QueryExecutionStatistics']
        {
          engine_execution_time_in_millis: 1,
          data_scanned_in_bytes: 1,
          data_manifest_location: 'data_manifest_location',
          total_execution_time_in_millis: 1,
          query_queue_time_in_millis: 1,
          query_planning_time_in_millis: 1,
          service_processing_time_in_millis: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryExecutionStatistics.new
        data = {}
        data['EngineExecutionTimeInMillis'] = stub[:engine_execution_time_in_millis] unless stub[:engine_execution_time_in_millis].nil?
        data['DataScannedInBytes'] = stub[:data_scanned_in_bytes] unless stub[:data_scanned_in_bytes].nil?
        data['DataManifestLocation'] = stub[:data_manifest_location] unless stub[:data_manifest_location].nil?
        data['TotalExecutionTimeInMillis'] = stub[:total_execution_time_in_millis] unless stub[:total_execution_time_in_millis].nil?
        data['QueryQueueTimeInMillis'] = stub[:query_queue_time_in_millis] unless stub[:query_queue_time_in_millis].nil?
        data['QueryPlanningTimeInMillis'] = stub[:query_planning_time_in_millis] unless stub[:query_planning_time_in_millis].nil?
        data['ServiceProcessingTimeInMillis'] = stub[:service_processing_time_in_millis] unless stub[:service_processing_time_in_millis].nil?
        data
      end
    end

    # Structure Stubber for QueryExecutionStatus
    class QueryExecutionStatus
      def self.default(visited=[])
        return nil if visited.include?('QueryExecutionStatus')
        visited = visited + ['QueryExecutionStatus']
        {
          state: 'state',
          state_change_reason: 'state_change_reason',
          submission_date_time: Time.now,
          completion_date_time: Time.now,
          athena_error: AthenaError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryExecutionStatus.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateChangeReason'] = stub[:state_change_reason] unless stub[:state_change_reason].nil?
        data['SubmissionDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submission_date_time]).to_i unless stub[:submission_date_time].nil?
        data['CompletionDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_date_time]).to_i unless stub[:completion_date_time].nil?
        data['AthenaError'] = Stubs::AthenaError.stub(stub[:athena_error]) unless stub[:athena_error].nil?
        data
      end
    end

    # Structure Stubber for AthenaError
    class AthenaError
      def self.default(visited=[])
        return nil if visited.include?('AthenaError')
        visited = visited + ['AthenaError']
        {
          error_category: 1,
          error_type: 1,
          retryable: false,
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AthenaError.new
        data = {}
        data['ErrorCategory'] = stub[:error_category] unless stub[:error_category].nil?
        data['ErrorType'] = stub[:error_type] unless stub[:error_type].nil?
        data['Retryable'] = stub[:retryable] unless stub[:retryable].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for QueryExecutionContext
    class QueryExecutionContext
      def self.default(visited=[])
        return nil if visited.include?('QueryExecutionContext')
        visited = visited + ['QueryExecutionContext']
        {
          database: 'database',
          catalog: 'catalog',
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryExecutionContext.new
        data = {}
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Catalog'] = stub[:catalog] unless stub[:catalog].nil?
        data
      end
    end

    # Structure Stubber for ResultConfiguration
    class ResultConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ResultConfiguration')
        visited = visited + ['ResultConfiguration']
        {
          output_location: 'output_location',
          encryption_configuration: EncryptionConfiguration.default(visited),
          expected_bucket_owner: 'expected_bucket_owner',
          acl_configuration: AclConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultConfiguration.new
        data = {}
        data['OutputLocation'] = stub[:output_location] unless stub[:output_location].nil?
        data['EncryptionConfiguration'] = Stubs::EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data['ExpectedBucketOwner'] = stub[:expected_bucket_owner] unless stub[:expected_bucket_owner].nil?
        data['AclConfiguration'] = Stubs::AclConfiguration.stub(stub[:acl_configuration]) unless stub[:acl_configuration].nil?
        data
      end
    end

    # Structure Stubber for AclConfiguration
    class AclConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AclConfiguration')
        visited = visited + ['AclConfiguration']
        {
          s3_acl_option: 's3_acl_option',
        }
      end

      def self.stub(stub)
        stub ||= Types::AclConfiguration.new
        data = {}
        data['S3AclOption'] = stub[:s3_acl_option] unless stub[:s3_acl_option].nil?
        data
      end
    end

    # Structure Stubber for EncryptionConfiguration
    class EncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfiguration')
        visited = visited + ['EncryptionConfiguration']
        {
          encryption_option: 'encryption_option',
          kms_key: 'kms_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfiguration.new
        data = {}
        data['EncryptionOption'] = stub[:encryption_option] unless stub[:encryption_option].nil?
        data['KmsKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data
      end
    end

    # Operation Stubber for CreateDataCatalog
    class CreateDataCatalog
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateNamedQuery
    class CreateNamedQuery
      def self.default(visited=[])
        {
          named_query_id: 'named_query_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NamedQueryId'] = stub[:named_query_id] unless stub[:named_query_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePreparedStatement
    class CreatePreparedStatement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateWorkGroup
    class CreateWorkGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDataCatalog
    class DeleteDataCatalog
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteNamedQuery
    class DeleteNamedQuery
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePreparedStatement
    class DeletePreparedStatement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWorkGroup
    class DeleteWorkGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDataCatalog
    class GetDataCatalog
      def self.default(visited=[])
        {
          data_catalog: DataCatalog.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataCatalog'] = Stubs::DataCatalog.stub(stub[:data_catalog]) unless stub[:data_catalog].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DataCatalog
    class DataCatalog
      def self.default(visited=[])
        return nil if visited.include?('DataCatalog')
        visited = visited + ['DataCatalog']
        {
          name: 'name',
          description: 'description',
          type: 'type',
          parameters: ParametersMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCatalog.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Parameters'] = Stubs::ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Map Stubber for ParametersMap
    class ParametersMap
      def self.default(visited=[])
        return nil if visited.include?('ParametersMap')
        visited = visited + ['ParametersMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDatabase
    class GetDatabase
      def self.default(visited=[])
        {
          database: Database.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Database'] = Stubs::Database.stub(stub[:database]) unless stub[:database].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Database
    class Database
      def self.default(visited=[])
        return nil if visited.include?('Database')
        visited = visited + ['Database']
        {
          name: 'name',
          description: 'description',
          parameters: ParametersMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Database.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Parameters'] = Stubs::ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Operation Stubber for GetNamedQuery
    class GetNamedQuery
      def self.default(visited=[])
        {
          named_query: NamedQuery.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NamedQuery'] = Stubs::NamedQuery.stub(stub[:named_query]) unless stub[:named_query].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPreparedStatement
    class GetPreparedStatement
      def self.default(visited=[])
        {
          prepared_statement: PreparedStatement.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PreparedStatement'] = Stubs::PreparedStatement.stub(stub[:prepared_statement]) unless stub[:prepared_statement].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PreparedStatement
    class PreparedStatement
      def self.default(visited=[])
        return nil if visited.include?('PreparedStatement')
        visited = visited + ['PreparedStatement']
        {
          statement_name: 'statement_name',
          query_statement: 'query_statement',
          work_group_name: 'work_group_name',
          description: 'description',
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PreparedStatement.new
        data = {}
        data['StatementName'] = stub[:statement_name] unless stub[:statement_name].nil?
        data['QueryStatement'] = stub[:query_statement] unless stub[:query_statement].nil?
        data['WorkGroupName'] = stub[:work_group_name] unless stub[:work_group_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for GetQueryExecution
    class GetQueryExecution
      def self.default(visited=[])
        {
          query_execution: QueryExecution.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryExecution'] = Stubs::QueryExecution.stub(stub[:query_execution]) unless stub[:query_execution].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetQueryResults
    class GetQueryResults
      def self.default(visited=[])
        {
          update_count: 1,
          result_set: ResultSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdateCount'] = stub[:update_count] unless stub[:update_count].nil?
        data['ResultSet'] = Stubs::ResultSet.stub(stub[:result_set]) unless stub[:result_set].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResultSet
    class ResultSet
      def self.default(visited=[])
        return nil if visited.include?('ResultSet')
        visited = visited + ['ResultSet']
        {
          rows: RowList.default(visited),
          result_set_metadata: ResultSetMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultSet.new
        data = {}
        data['Rows'] = Stubs::RowList.stub(stub[:rows]) unless stub[:rows].nil?
        data['ResultSetMetadata'] = Stubs::ResultSetMetadata.stub(stub[:result_set_metadata]) unless stub[:result_set_metadata].nil?
        data
      end
    end

    # Structure Stubber for ResultSetMetadata
    class ResultSetMetadata
      def self.default(visited=[])
        return nil if visited.include?('ResultSetMetadata')
        visited = visited + ['ResultSetMetadata']
        {
          column_info: ColumnInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultSetMetadata.new
        data = {}
        data['ColumnInfo'] = Stubs::ColumnInfoList.stub(stub[:column_info]) unless stub[:column_info].nil?
        data
      end
    end

    # List Stubber for ColumnInfoList
    class ColumnInfoList
      def self.default(visited=[])
        return nil if visited.include?('ColumnInfoList')
        visited = visited + ['ColumnInfoList']
        [
          ColumnInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnInfo
    class ColumnInfo
      def self.default(visited=[])
        return nil if visited.include?('ColumnInfo')
        visited = visited + ['ColumnInfo']
        {
          catalog_name: 'catalog_name',
          schema_name: 'schema_name',
          table_name: 'table_name',
          name: 'name',
          label: 'label',
          type: 'type',
          precision: 1,
          scale: 1,
          nullable: 'nullable',
          case_sensitive: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnInfo.new
        data = {}
        data['CatalogName'] = stub[:catalog_name] unless stub[:catalog_name].nil?
        data['SchemaName'] = stub[:schema_name] unless stub[:schema_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Label'] = stub[:label] unless stub[:label].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Precision'] = stub[:precision] unless stub[:precision].nil?
        data['Scale'] = stub[:scale] unless stub[:scale].nil?
        data['Nullable'] = stub[:nullable] unless stub[:nullable].nil?
        data['CaseSensitive'] = stub[:case_sensitive] unless stub[:case_sensitive].nil?
        data
      end
    end

    # List Stubber for RowList
    class RowList
      def self.default(visited=[])
        return nil if visited.include?('RowList')
        visited = visited + ['RowList']
        [
          Row.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Row.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Row
    class Row
      def self.default(visited=[])
        return nil if visited.include?('Row')
        visited = visited + ['Row']
        {
          data: DatumList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Row.new
        data = {}
        data['Data'] = Stubs::DatumList.stub(stub[:data]) unless stub[:data].nil?
        data
      end
    end

    # List Stubber for datumList
    class DatumList
      def self.default(visited=[])
        return nil if visited.include?('DatumList')
        visited = visited + ['DatumList']
        [
          Datum.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Datum.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Datum
    class Datum
      def self.default(visited=[])
        return nil if visited.include?('Datum')
        visited = visited + ['Datum']
        {
          var_char_value: 'var_char_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Datum.new
        data = {}
        data['VarCharValue'] = stub[:var_char_value] unless stub[:var_char_value].nil?
        data
      end
    end

    # Operation Stubber for GetTableMetadata
    class GetTableMetadata
      def self.default(visited=[])
        {
          table_metadata: TableMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableMetadata'] = Stubs::TableMetadata.stub(stub[:table_metadata]) unless stub[:table_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TableMetadata
    class TableMetadata
      def self.default(visited=[])
        return nil if visited.include?('TableMetadata')
        visited = visited + ['TableMetadata']
        {
          name: 'name',
          create_time: Time.now,
          last_access_time: Time.now,
          table_type: 'table_type',
          columns: ColumnList.default(visited),
          partition_keys: ColumnList.default(visited),
          parameters: ParametersMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableMetadata.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['LastAccessTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_access_time]).to_i unless stub[:last_access_time].nil?
        data['TableType'] = stub[:table_type] unless stub[:table_type].nil?
        data['Columns'] = Stubs::ColumnList.stub(stub[:columns]) unless stub[:columns].nil?
        data['PartitionKeys'] = Stubs::ColumnList.stub(stub[:partition_keys]) unless stub[:partition_keys].nil?
        data['Parameters'] = Stubs::ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # List Stubber for ColumnList
    class ColumnList
      def self.default(visited=[])
        return nil if visited.include?('ColumnList')
        visited = visited + ['ColumnList']
        [
          Column.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Column.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Column
    class Column
      def self.default(visited=[])
        return nil if visited.include?('Column')
        visited = visited + ['Column']
        {
          name: 'name',
          type: 'type',
          comment: 'comment',
        }
      end

      def self.stub(stub)
        stub ||= Types::Column.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data
      end
    end

    # Operation Stubber for GetWorkGroup
    class GetWorkGroup
      def self.default(visited=[])
        {
          work_group: WorkGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WorkGroup'] = Stubs::WorkGroup.stub(stub[:work_group]) unless stub[:work_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for WorkGroup
    class WorkGroup
      def self.default(visited=[])
        return nil if visited.include?('WorkGroup')
        visited = visited + ['WorkGroup']
        {
          name: 'name',
          state: 'state',
          configuration: WorkGroupConfiguration.default(visited),
          description: 'description',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkGroup.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Configuration'] = Stubs::WorkGroupConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Structure Stubber for WorkGroupConfiguration
    class WorkGroupConfiguration
      def self.default(visited=[])
        return nil if visited.include?('WorkGroupConfiguration')
        visited = visited + ['WorkGroupConfiguration']
        {
          result_configuration: ResultConfiguration.default(visited),
          enforce_work_group_configuration: false,
          publish_cloud_watch_metrics_enabled: false,
          bytes_scanned_cutoff_per_query: 1,
          requester_pays_enabled: false,
          engine_version: EngineVersion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkGroupConfiguration.new
        data = {}
        data['ResultConfiguration'] = Stubs::ResultConfiguration.stub(stub[:result_configuration]) unless stub[:result_configuration].nil?
        data['EnforceWorkGroupConfiguration'] = stub[:enforce_work_group_configuration] unless stub[:enforce_work_group_configuration].nil?
        data['PublishCloudWatchMetricsEnabled'] = stub[:publish_cloud_watch_metrics_enabled] unless stub[:publish_cloud_watch_metrics_enabled].nil?
        data['BytesScannedCutoffPerQuery'] = stub[:bytes_scanned_cutoff_per_query] unless stub[:bytes_scanned_cutoff_per_query].nil?
        data['RequesterPaysEnabled'] = stub[:requester_pays_enabled] unless stub[:requester_pays_enabled].nil?
        data['EngineVersion'] = Stubs::EngineVersion.stub(stub[:engine_version]) unless stub[:engine_version].nil?
        data
      end
    end

    # Operation Stubber for ListDataCatalogs
    class ListDataCatalogs
      def self.default(visited=[])
        {
          data_catalogs_summary: DataCatalogSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataCatalogsSummary'] = Stubs::DataCatalogSummaryList.stub(stub[:data_catalogs_summary]) unless stub[:data_catalogs_summary].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DataCatalogSummaryList
    class DataCatalogSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DataCatalogSummaryList')
        visited = visited + ['DataCatalogSummaryList']
        [
          DataCatalogSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataCatalogSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataCatalogSummary
    class DataCatalogSummary
      def self.default(visited=[])
        return nil if visited.include?('DataCatalogSummary')
        visited = visited + ['DataCatalogSummary']
        {
          catalog_name: 'catalog_name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCatalogSummary.new
        data = {}
        data['CatalogName'] = stub[:catalog_name] unless stub[:catalog_name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListDatabases
    class ListDatabases
      def self.default(visited=[])
        {
          database_list: DatabaseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatabaseList'] = Stubs::DatabaseList.stub(stub[:database_list]) unless stub[:database_list].nil?
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
          Database.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Database.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListEngineVersions
    class ListEngineVersions
      def self.default(visited=[])
        {
          engine_versions: EngineVersionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EngineVersions'] = Stubs::EngineVersionsList.stub(stub[:engine_versions]) unless stub[:engine_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EngineVersionsList
    class EngineVersionsList
      def self.default(visited=[])
        return nil if visited.include?('EngineVersionsList')
        visited = visited + ['EngineVersionsList']
        [
          EngineVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EngineVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListNamedQueries
    class ListNamedQueries
      def self.default(visited=[])
        {
          named_query_ids: NamedQueryIdList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NamedQueryIds'] = Stubs::NamedQueryIdList.stub(stub[:named_query_ids]) unless stub[:named_query_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NamedQueryIdList
    class NamedQueryIdList
      def self.default(visited=[])
        return nil if visited.include?('NamedQueryIdList')
        visited = visited + ['NamedQueryIdList']
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

    # Operation Stubber for ListPreparedStatements
    class ListPreparedStatements
      def self.default(visited=[])
        {
          prepared_statements: PreparedStatementsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PreparedStatements'] = Stubs::PreparedStatementsList.stub(stub[:prepared_statements]) unless stub[:prepared_statements].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PreparedStatementsList
    class PreparedStatementsList
      def self.default(visited=[])
        return nil if visited.include?('PreparedStatementsList')
        visited = visited + ['PreparedStatementsList']
        [
          PreparedStatementSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PreparedStatementSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PreparedStatementSummary
    class PreparedStatementSummary
      def self.default(visited=[])
        return nil if visited.include?('PreparedStatementSummary')
        visited = visited + ['PreparedStatementSummary']
        {
          statement_name: 'statement_name',
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PreparedStatementSummary.new
        data = {}
        data['StatementName'] = stub[:statement_name] unless stub[:statement_name].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListQueryExecutions
    class ListQueryExecutions
      def self.default(visited=[])
        {
          query_execution_ids: QueryExecutionIdList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryExecutionIds'] = Stubs::QueryExecutionIdList.stub(stub[:query_execution_ids]) unless stub[:query_execution_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for QueryExecutionIdList
    class QueryExecutionIdList
      def self.default(visited=[])
        return nil if visited.include?('QueryExecutionIdList')
        visited = visited + ['QueryExecutionIdList']
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

    # Operation Stubber for ListTableMetadata
    class ListTableMetadata
      def self.default(visited=[])
        {
          table_metadata_list: TableMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableMetadataList'] = Stubs::TableMetadataList.stub(stub[:table_metadata_list]) unless stub[:table_metadata_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TableMetadataList
    class TableMetadataList
      def self.default(visited=[])
        return nil if visited.include?('TableMetadataList')
        visited = visited + ['TableMetadataList']
        [
          TableMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TableMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListWorkGroups
    class ListWorkGroups
      def self.default(visited=[])
        {
          work_groups: WorkGroupsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WorkGroups'] = Stubs::WorkGroupsList.stub(stub[:work_groups]) unless stub[:work_groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WorkGroupsList
    class WorkGroupsList
      def self.default(visited=[])
        return nil if visited.include?('WorkGroupsList')
        visited = visited + ['WorkGroupsList']
        [
          WorkGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkGroupSummary
    class WorkGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('WorkGroupSummary')
        visited = visited + ['WorkGroupSummary']
        {
          name: 'name',
          state: 'state',
          description: 'description',
          creation_time: Time.now,
          engine_version: EngineVersion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkGroupSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['EngineVersion'] = Stubs::EngineVersion.stub(stub[:engine_version]) unless stub[:engine_version].nil?
        data
      end
    end

    # Operation Stubber for StartQueryExecution
    class StartQueryExecution
      def self.default(visited=[])
        {
          query_execution_id: 'query_execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryExecutionId'] = stub[:query_execution_id] unless stub[:query_execution_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopQueryExecution
    class StopQueryExecution
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDataCatalog
    class UpdateDataCatalog
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNamedQuery
    class UpdateNamedQuery
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePreparedStatement
    class UpdatePreparedStatement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateWorkGroup
    class UpdateWorkGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
