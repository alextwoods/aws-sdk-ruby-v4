# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Athena
  module Builders

    # Operation Builder for BatchGetNamedQuery
    class BatchGetNamedQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.BatchGetNamedQuery'
        data = {}
        data['NamedQueryIds'] = NamedQueryIdList.build(input[:named_query_ids]) unless input[:named_query_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NamedQueryIdList
    class NamedQueryIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetQueryExecution
    class BatchGetQueryExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.BatchGetQueryExecution'
        data = {}
        data['QueryExecutionIds'] = QueryExecutionIdList.build(input[:query_execution_ids]) unless input[:query_execution_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for QueryExecutionIdList
    class QueryExecutionIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDataCatalog
    class CreateDataCatalog
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.CreateDataCatalog'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Parameters'] = ParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Map Builder for ParametersMap
    class ParametersMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateNamedQuery
    class CreateNamedQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.CreateNamedQuery'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePreparedStatement
    class CreatePreparedStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.CreatePreparedStatement'
        data = {}
        data['StatementName'] = input[:statement_name] unless input[:statement_name].nil?
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        data['QueryStatement'] = input[:query_statement] unless input[:query_statement].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateWorkGroup
    class CreateWorkGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.CreateWorkGroup'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Configuration'] = WorkGroupConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WorkGroupConfiguration
    class WorkGroupConfiguration
      def self.build(input)
        data = {}
        data['ResultConfiguration'] = ResultConfiguration.build(input[:result_configuration]) unless input[:result_configuration].nil?
        data['EnforceWorkGroupConfiguration'] = input[:enforce_work_group_configuration] unless input[:enforce_work_group_configuration].nil?
        data['PublishCloudWatchMetricsEnabled'] = input[:publish_cloud_watch_metrics_enabled] unless input[:publish_cloud_watch_metrics_enabled].nil?
        data['BytesScannedCutoffPerQuery'] = input[:bytes_scanned_cutoff_per_query] unless input[:bytes_scanned_cutoff_per_query].nil?
        data['RequesterPaysEnabled'] = input[:requester_pays_enabled] unless input[:requester_pays_enabled].nil?
        data['EngineVersion'] = EngineVersion.build(input[:engine_version]) unless input[:engine_version].nil?
        data
      end
    end

    # Structure Builder for EngineVersion
    class EngineVersion
      def self.build(input)
        data = {}
        data['SelectedEngineVersion'] = input[:selected_engine_version] unless input[:selected_engine_version].nil?
        data['EffectiveEngineVersion'] = input[:effective_engine_version] unless input[:effective_engine_version].nil?
        data
      end
    end

    # Structure Builder for ResultConfiguration
    class ResultConfiguration
      def self.build(input)
        data = {}
        data['OutputLocation'] = input[:output_location] unless input[:output_location].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data['ExpectedBucketOwner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil?
        data['AclConfiguration'] = AclConfiguration.build(input[:acl_configuration]) unless input[:acl_configuration].nil?
        data
      end
    end

    # Structure Builder for AclConfiguration
    class AclConfiguration
      def self.build(input)
        data = {}
        data['S3AclOption'] = input[:s3_acl_option] unless input[:s3_acl_option].nil?
        data
      end
    end

    # Structure Builder for EncryptionConfiguration
    class EncryptionConfiguration
      def self.build(input)
        data = {}
        data['EncryptionOption'] = input[:encryption_option] unless input[:encryption_option].nil?
        data['KmsKey'] = input[:kms_key] unless input[:kms_key].nil?
        data
      end
    end

    # Operation Builder for DeleteDataCatalog
    class DeleteDataCatalog
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.DeleteDataCatalog'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteNamedQuery
    class DeleteNamedQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.DeleteNamedQuery'
        data = {}
        data['NamedQueryId'] = input[:named_query_id] unless input[:named_query_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePreparedStatement
    class DeletePreparedStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.DeletePreparedStatement'
        data = {}
        data['StatementName'] = input[:statement_name] unless input[:statement_name].nil?
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWorkGroup
    class DeleteWorkGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.DeleteWorkGroup'
        data = {}
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        data['RecursiveDeleteOption'] = input[:recursive_delete_option] unless input[:recursive_delete_option].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDataCatalog
    class GetDataCatalog
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.GetDataCatalog'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDatabase
    class GetDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.GetDatabase'
        data = {}
        data['CatalogName'] = input[:catalog_name] unless input[:catalog_name].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetNamedQuery
    class GetNamedQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.GetNamedQuery'
        data = {}
        data['NamedQueryId'] = input[:named_query_id] unless input[:named_query_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPreparedStatement
    class GetPreparedStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.GetPreparedStatement'
        data = {}
        data['StatementName'] = input[:statement_name] unless input[:statement_name].nil?
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetQueryExecution
    class GetQueryExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.GetQueryExecution'
        data = {}
        data['QueryExecutionId'] = input[:query_execution_id] unless input[:query_execution_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetQueryResults
    class GetQueryResults
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.GetQueryResults'
        data = {}
        data['QueryExecutionId'] = input[:query_execution_id] unless input[:query_execution_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTableMetadata
    class GetTableMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.GetTableMetadata'
        data = {}
        data['CatalogName'] = input[:catalog_name] unless input[:catalog_name].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWorkGroup
    class GetWorkGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.GetWorkGroup'
        data = {}
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDataCatalogs
    class ListDataCatalogs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.ListDataCatalogs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatabases
    class ListDatabases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.ListDatabases'
        data = {}
        data['CatalogName'] = input[:catalog_name] unless input[:catalog_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEngineVersions
    class ListEngineVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.ListEngineVersions'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListNamedQueries
    class ListNamedQueries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.ListNamedQueries'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPreparedStatements
    class ListPreparedStatements
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.ListPreparedStatements'
        data = {}
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListQueryExecutions
    class ListQueryExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.ListQueryExecutions'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTableMetadata
    class ListTableMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.ListTableMetadata'
        data = {}
        data['CatalogName'] = input[:catalog_name] unless input[:catalog_name].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorkGroups
    class ListWorkGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.ListWorkGroups'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartQueryExecution
    class StartQueryExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.StartQueryExecution'
        data = {}
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['QueryExecutionContext'] = QueryExecutionContext.build(input[:query_execution_context]) unless input[:query_execution_context].nil?
        data['ResultConfiguration'] = ResultConfiguration.build(input[:result_configuration]) unless input[:result_configuration].nil?
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for QueryExecutionContext
    class QueryExecutionContext
      def self.build(input)
        data = {}
        data['Database'] = input[:database] unless input[:database].nil?
        data['Catalog'] = input[:catalog] unless input[:catalog].nil?
        data
      end
    end

    # Operation Builder for StopQueryExecution
    class StopQueryExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.StopQueryExecution'
        data = {}
        data['QueryExecutionId'] = input[:query_execution_id] unless input[:query_execution_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDataCatalog
    class UpdateDataCatalog
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.UpdateDataCatalog'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Parameters'] = ParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNamedQuery
    class UpdateNamedQuery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.UpdateNamedQuery'
        data = {}
        data['NamedQueryId'] = input[:named_query_id] unless input[:named_query_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePreparedStatement
    class UpdatePreparedStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.UpdatePreparedStatement'
        data = {}
        data['StatementName'] = input[:statement_name] unless input[:statement_name].nil?
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        data['QueryStatement'] = input[:query_statement] unless input[:query_statement].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorkGroup
    class UpdateWorkGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonAthena.UpdateWorkGroup'
        data = {}
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ConfigurationUpdates'] = WorkGroupConfigurationUpdates.build(input[:configuration_updates]) unless input[:configuration_updates].nil?
        data['State'] = input[:state] unless input[:state].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WorkGroupConfigurationUpdates
    class WorkGroupConfigurationUpdates
      def self.build(input)
        data = {}
        data['EnforceWorkGroupConfiguration'] = input[:enforce_work_group_configuration] unless input[:enforce_work_group_configuration].nil?
        data['ResultConfigurationUpdates'] = ResultConfigurationUpdates.build(input[:result_configuration_updates]) unless input[:result_configuration_updates].nil?
        data['PublishCloudWatchMetricsEnabled'] = input[:publish_cloud_watch_metrics_enabled] unless input[:publish_cloud_watch_metrics_enabled].nil?
        data['BytesScannedCutoffPerQuery'] = input[:bytes_scanned_cutoff_per_query] unless input[:bytes_scanned_cutoff_per_query].nil?
        data['RemoveBytesScannedCutoffPerQuery'] = input[:remove_bytes_scanned_cutoff_per_query] unless input[:remove_bytes_scanned_cutoff_per_query].nil?
        data['RequesterPaysEnabled'] = input[:requester_pays_enabled] unless input[:requester_pays_enabled].nil?
        data['EngineVersion'] = EngineVersion.build(input[:engine_version]) unless input[:engine_version].nil?
        data
      end
    end

    # Structure Builder for ResultConfigurationUpdates
    class ResultConfigurationUpdates
      def self.build(input)
        data = {}
        data['OutputLocation'] = input[:output_location] unless input[:output_location].nil?
        data['RemoveOutputLocation'] = input[:remove_output_location] unless input[:remove_output_location].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data['RemoveEncryptionConfiguration'] = input[:remove_encryption_configuration] unless input[:remove_encryption_configuration].nil?
        data['ExpectedBucketOwner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil?
        data['RemoveExpectedBucketOwner'] = input[:remove_expected_bucket_owner] unless input[:remove_expected_bucket_owner].nil?
        data['AclConfiguration'] = AclConfiguration.build(input[:acl_configuration]) unless input[:acl_configuration].nil?
        data['RemoveAclConfiguration'] = input[:remove_acl_configuration] unless input[:remove_acl_configuration].nil?
        data
      end
    end
  end
end
