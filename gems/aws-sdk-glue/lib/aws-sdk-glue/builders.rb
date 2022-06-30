# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Glue
  module Builders

    # Operation Builder for BatchCreatePartition
    class BatchCreatePartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchCreatePartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionInputList'] = Builders::PartitionInputList.build(input[:partition_input_list]) unless input[:partition_input_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PartitionInputList
    class PartitionInputList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PartitionInput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PartitionInput
    class PartitionInput
      def self.build(input)
        data = {}
        data['Values'] = Builders::ValueStringList.build(input[:values]) unless input[:values].nil?
        data['LastAccessTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_access_time]).to_i unless input[:last_access_time].nil?
        data['StorageDescriptor'] = Builders::StorageDescriptor.build(input[:storage_descriptor]) unless input[:storage_descriptor].nil?
        data['Parameters'] = Builders::ParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        data['LastAnalyzedTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_analyzed_time]).to_i unless input[:last_analyzed_time].nil?
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

    # Structure Builder for StorageDescriptor
    class StorageDescriptor
      def self.build(input)
        data = {}
        data['Columns'] = Builders::ColumnList.build(input[:columns]) unless input[:columns].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        data['AdditionalLocations'] = Builders::LocationStringList.build(input[:additional_locations]) unless input[:additional_locations].nil?
        data['InputFormat'] = input[:input_format] unless input[:input_format].nil?
        data['OutputFormat'] = input[:output_format] unless input[:output_format].nil?
        data['Compressed'] = input[:compressed] unless input[:compressed].nil?
        data['NumberOfBuckets'] = input[:number_of_buckets] unless input[:number_of_buckets].nil?
        data['SerdeInfo'] = Builders::SerDeInfo.build(input[:serde_info]) unless input[:serde_info].nil?
        data['BucketColumns'] = Builders::NameStringList.build(input[:bucket_columns]) unless input[:bucket_columns].nil?
        data['SortColumns'] = Builders::OrderList.build(input[:sort_columns]) unless input[:sort_columns].nil?
        data['Parameters'] = Builders::ParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        data['SkewedInfo'] = Builders::SkewedInfo.build(input[:skewed_info]) unless input[:skewed_info].nil?
        data['StoredAsSubDirectories'] = input[:stored_as_sub_directories] unless input[:stored_as_sub_directories].nil?
        data['SchemaReference'] = Builders::SchemaReference.build(input[:schema_reference]) unless input[:schema_reference].nil?
        data
      end
    end

    # Structure Builder for SchemaReference
    class SchemaReference
      def self.build(input)
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['SchemaVersionId'] = input[:schema_version_id] unless input[:schema_version_id].nil?
        data['SchemaVersionNumber'] = input[:schema_version_number] unless input[:schema_version_number].nil?
        data
      end
    end

    # Structure Builder for SchemaId
    class SchemaId
      def self.build(input)
        data = {}
        data['SchemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        data['SchemaName'] = input[:schema_name] unless input[:schema_name].nil?
        data['RegistryName'] = input[:registry_name] unless input[:registry_name].nil?
        data
      end
    end

    # Structure Builder for SkewedInfo
    class SkewedInfo
      def self.build(input)
        data = {}
        data['SkewedColumnNames'] = Builders::NameStringList.build(input[:skewed_column_names]) unless input[:skewed_column_names].nil?
        data['SkewedColumnValues'] = Builders::ColumnValueStringList.build(input[:skewed_column_values]) unless input[:skewed_column_values].nil?
        data['SkewedColumnValueLocationMaps'] = Builders::LocationMap.build(input[:skewed_column_value_location_maps]) unless input[:skewed_column_value_location_maps].nil?
        data
      end
    end

    # Map Builder for LocationMap
    class LocationMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ColumnValueStringList
    class ColumnValueStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for NameStringList
    class NameStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for OrderList
    class OrderList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Order.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Order
    class Order
      def self.build(input)
        data = {}
        data['Column'] = input[:column] unless input[:column].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data
      end
    end

    # Structure Builder for SerDeInfo
    class SerDeInfo
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SerializationLibrary'] = input[:serialization_library] unless input[:serialization_library].nil?
        data['Parameters'] = Builders::ParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # List Builder for LocationStringList
    class LocationStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ColumnList
    class ColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Column.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Column
    class Column
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Comment'] = input[:comment] unless input[:comment].nil?
        data['Parameters'] = Builders::ParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # List Builder for ValueStringList
    class ValueStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDeleteConnection
    class BatchDeleteConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchDeleteConnection'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['ConnectionNameList'] = Builders::DeleteConnectionNameList.build(input[:connection_name_list]) unless input[:connection_name_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DeleteConnectionNameList
    class DeleteConnectionNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDeletePartition
    class BatchDeletePartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchDeletePartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionsToDelete'] = Builders::BatchDeletePartitionValueList.build(input[:partitions_to_delete]) unless input[:partitions_to_delete].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchDeletePartitionValueList
    class BatchDeletePartitionValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PartitionValueList.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PartitionValueList
    class PartitionValueList
      def self.build(input)
        data = {}
        data['Values'] = Builders::ValueStringList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for BatchDeleteTable
    class BatchDeleteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchDeleteTable'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TablesToDelete'] = Builders::BatchDeleteTableNameList.build(input[:tables_to_delete]) unless input[:tables_to_delete].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchDeleteTableNameList
    class BatchDeleteTableNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDeleteTableVersion
    class BatchDeleteTableVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchDeleteTableVersion'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['VersionIds'] = Builders::BatchDeleteTableVersionList.build(input[:version_ids]) unless input[:version_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchDeleteTableVersionList
    class BatchDeleteTableVersionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetBlueprints
    class BatchGetBlueprints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchGetBlueprints'
        data = {}
        data['Names'] = Builders::BatchGetBlueprintNames.build(input[:names]) unless input[:names].nil?
        data['IncludeBlueprint'] = input[:include_blueprint] unless input[:include_blueprint].nil?
        data['IncludeParameterSpec'] = input[:include_parameter_spec] unless input[:include_parameter_spec].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchGetBlueprintNames
    class BatchGetBlueprintNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetCrawlers
    class BatchGetCrawlers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchGetCrawlers'
        data = {}
        data['CrawlerNames'] = Builders::CrawlerNameList.build(input[:crawler_names]) unless input[:crawler_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CrawlerNameList
    class CrawlerNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetCustomEntityTypes
    class BatchGetCustomEntityTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchGetCustomEntityTypes'
        data = {}
        data['Names'] = Builders::CustomEntityTypeNames.build(input[:names]) unless input[:names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CustomEntityTypeNames
    class CustomEntityTypeNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetDevEndpoints
    class BatchGetDevEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchGetDevEndpoints'
        data = {}
        data['DevEndpointNames'] = Builders::DevEndpointNames.build(input[:dev_endpoint_names]) unless input[:dev_endpoint_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DevEndpointNames
    class DevEndpointNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetJobs
    class BatchGetJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchGetJobs'
        data = {}
        data['JobNames'] = Builders::JobNameList.build(input[:job_names]) unless input[:job_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for JobNameList
    class JobNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetPartition
    class BatchGetPartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchGetPartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionsToGet'] = Builders::BatchGetPartitionValueList.build(input[:partitions_to_get]) unless input[:partitions_to_get].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchGetPartitionValueList
    class BatchGetPartitionValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PartitionValueList.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetTriggers
    class BatchGetTriggers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchGetTriggers'
        data = {}
        data['TriggerNames'] = Builders::TriggerNameList.build(input[:trigger_names]) unless input[:trigger_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TriggerNameList
    class TriggerNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetWorkflows
    class BatchGetWorkflows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchGetWorkflows'
        data = {}
        data['Names'] = Builders::WorkflowNames.build(input[:names]) unless input[:names].nil?
        data['IncludeGraph'] = input[:include_graph] unless input[:include_graph].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for WorkflowNames
    class WorkflowNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchStopJobRun
    class BatchStopJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchStopJobRun'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobRunIds'] = Builders::BatchStopJobRunJobRunIdList.build(input[:job_run_ids]) unless input[:job_run_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchStopJobRunJobRunIdList
    class BatchStopJobRunJobRunIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchUpdatePartition
    class BatchUpdatePartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.BatchUpdatePartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Entries'] = Builders::BatchUpdatePartitionRequestEntryList.build(input[:entries]) unless input[:entries].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchUpdatePartitionRequestEntryList
    class BatchUpdatePartitionRequestEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BatchUpdatePartitionRequestEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchUpdatePartitionRequestEntry
    class BatchUpdatePartitionRequestEntry
      def self.build(input)
        data = {}
        data['PartitionValueList'] = Builders::BoundedPartitionValueList.build(input[:partition_value_list]) unless input[:partition_value_list].nil?
        data['PartitionInput'] = Builders::PartitionInput.build(input[:partition_input]) unless input[:partition_input].nil?
        data
      end
    end

    # List Builder for BoundedPartitionValueList
    class BoundedPartitionValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CancelMLTaskRun
    class CancelMLTaskRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CancelMLTaskRun'
        data = {}
        data['TransformId'] = input[:transform_id] unless input[:transform_id].nil?
        data['TaskRunId'] = input[:task_run_id] unless input[:task_run_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelStatement
    class CancelStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CancelStatement'
        data = {}
        data['SessionId'] = input[:session_id] unless input[:session_id].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['RequestOrigin'] = input[:request_origin] unless input[:request_origin].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CheckSchemaVersionValidity
    class CheckSchemaVersionValidity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CheckSchemaVersionValidity'
        data = {}
        data['DataFormat'] = input[:data_format] unless input[:data_format].nil?
        data['SchemaDefinition'] = input[:schema_definition] unless input[:schema_definition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateBlueprint
    class CreateBlueprint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateBlueprint'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['BlueprintLocation'] = input[:blueprint_location] unless input[:blueprint_location].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagsMap
    class TagsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateClassifier
    class CreateClassifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateClassifier'
        data = {}
        data['GrokClassifier'] = Builders::CreateGrokClassifierRequest.build(input[:grok_classifier]) unless input[:grok_classifier].nil?
        data['XMLClassifier'] = Builders::CreateXMLClassifierRequest.build(input[:xml_classifier]) unless input[:xml_classifier].nil?
        data['JsonClassifier'] = Builders::CreateJsonClassifierRequest.build(input[:json_classifier]) unless input[:json_classifier].nil?
        data['CsvClassifier'] = Builders::CreateCsvClassifierRequest.build(input[:csv_classifier]) unless input[:csv_classifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateCsvClassifierRequest
    class CreateCsvClassifierRequest
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Delimiter'] = input[:delimiter] unless input[:delimiter].nil?
        data['QuoteSymbol'] = input[:quote_symbol] unless input[:quote_symbol].nil?
        data['ContainsHeader'] = input[:contains_header] unless input[:contains_header].nil?
        data['Header'] = Builders::CsvHeader.build(input[:header]) unless input[:header].nil?
        data['DisableValueTrimming'] = input[:disable_value_trimming] unless input[:disable_value_trimming].nil?
        data['AllowSingleColumn'] = input[:allow_single_column] unless input[:allow_single_column].nil?
        data
      end
    end

    # List Builder for CsvHeader
    class CsvHeader
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateJsonClassifierRequest
    class CreateJsonClassifierRequest
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['JsonPath'] = input[:json_path] unless input[:json_path].nil?
        data
      end
    end

    # Structure Builder for CreateXMLClassifierRequest
    class CreateXMLClassifierRequest
      def self.build(input)
        data = {}
        data['Classification'] = input[:classification] unless input[:classification].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RowTag'] = input[:row_tag] unless input[:row_tag].nil?
        data
      end
    end

    # Structure Builder for CreateGrokClassifierRequest
    class CreateGrokClassifierRequest
      def self.build(input)
        data = {}
        data['Classification'] = input[:classification] unless input[:classification].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['GrokPattern'] = input[:grok_pattern] unless input[:grok_pattern].nil?
        data['CustomPatterns'] = input[:custom_patterns] unless input[:custom_patterns].nil?
        data
      end
    end

    # Operation Builder for CreateConnection
    class CreateConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateConnection'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['ConnectionInput'] = Builders::ConnectionInput.build(input[:connection_input]) unless input[:connection_input].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConnectionInput
    class ConnectionInput
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ConnectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['MatchCriteria'] = Builders::MatchCriteria.build(input[:match_criteria]) unless input[:match_criteria].nil?
        data['ConnectionProperties'] = Builders::ConnectionProperties.build(input[:connection_properties]) unless input[:connection_properties].nil?
        data['PhysicalConnectionRequirements'] = Builders::PhysicalConnectionRequirements.build(input[:physical_connection_requirements]) unless input[:physical_connection_requirements].nil?
        data
      end
    end

    # Structure Builder for PhysicalConnectionRequirements
    class PhysicalConnectionRequirements
      def self.build(input)
        data = {}
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['SecurityGroupIdList'] = Builders::SecurityGroupIdList.build(input[:security_group_id_list]) unless input[:security_group_id_list].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data
      end
    end

    # List Builder for SecurityGroupIdList
    class SecurityGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for ConnectionProperties
    class ConnectionProperties
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for MatchCriteria
    class MatchCriteria
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateCrawler
    class CreateCrawler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateCrawler'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Targets'] = Builders::CrawlerTargets.build(input[:targets]) unless input[:targets].nil?
        data['Schedule'] = input[:schedule] unless input[:schedule].nil?
        data['Classifiers'] = Builders::ClassifierNameList.build(input[:classifiers]) unless input[:classifiers].nil?
        data['TablePrefix'] = input[:table_prefix] unless input[:table_prefix].nil?
        data['SchemaChangePolicy'] = Builders::SchemaChangePolicy.build(input[:schema_change_policy]) unless input[:schema_change_policy].nil?
        data['RecrawlPolicy'] = Builders::RecrawlPolicy.build(input[:recrawl_policy]) unless input[:recrawl_policy].nil?
        data['LineageConfiguration'] = Builders::LineageConfiguration.build(input[:lineage_configuration]) unless input[:lineage_configuration].nil?
        data['LakeFormationConfiguration'] = Builders::LakeFormationConfiguration.build(input[:lake_formation_configuration]) unless input[:lake_formation_configuration].nil?
        data['Configuration'] = input[:configuration] unless input[:configuration].nil?
        data['CrawlerSecurityConfiguration'] = input[:crawler_security_configuration] unless input[:crawler_security_configuration].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LakeFormationConfiguration
    class LakeFormationConfiguration
      def self.build(input)
        data = {}
        data['UseLakeFormationCredentials'] = input[:use_lake_formation_credentials] unless input[:use_lake_formation_credentials].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data
      end
    end

    # Structure Builder for LineageConfiguration
    class LineageConfiguration
      def self.build(input)
        data = {}
        data['CrawlerLineageSettings'] = input[:crawler_lineage_settings] unless input[:crawler_lineage_settings].nil?
        data
      end
    end

    # Structure Builder for RecrawlPolicy
    class RecrawlPolicy
      def self.build(input)
        data = {}
        data['RecrawlBehavior'] = input[:recrawl_behavior] unless input[:recrawl_behavior].nil?
        data
      end
    end

    # Structure Builder for SchemaChangePolicy
    class SchemaChangePolicy
      def self.build(input)
        data = {}
        data['UpdateBehavior'] = input[:update_behavior] unless input[:update_behavior].nil?
        data['DeleteBehavior'] = input[:delete_behavior] unless input[:delete_behavior].nil?
        data
      end
    end

    # List Builder for ClassifierNameList
    class ClassifierNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CrawlerTargets
    class CrawlerTargets
      def self.build(input)
        data = {}
        data['S3Targets'] = Builders::S3TargetList.build(input[:s3_targets]) unless input[:s3_targets].nil?
        data['JdbcTargets'] = Builders::JdbcTargetList.build(input[:jdbc_targets]) unless input[:jdbc_targets].nil?
        data['MongoDBTargets'] = Builders::MongoDBTargetList.build(input[:mongo_db_targets]) unless input[:mongo_db_targets].nil?
        data['DynamoDBTargets'] = Builders::DynamoDBTargetList.build(input[:dynamo_db_targets]) unless input[:dynamo_db_targets].nil?
        data['CatalogTargets'] = Builders::CatalogTargetList.build(input[:catalog_targets]) unless input[:catalog_targets].nil?
        data['DeltaTargets'] = Builders::DeltaTargetList.build(input[:delta_targets]) unless input[:delta_targets].nil?
        data
      end
    end

    # List Builder for DeltaTargetList
    class DeltaTargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DeltaTarget.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DeltaTarget
    class DeltaTarget
      def self.build(input)
        data = {}
        data['DeltaTables'] = Builders::PathList.build(input[:delta_tables]) unless input[:delta_tables].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['WriteManifest'] = input[:write_manifest] unless input[:write_manifest].nil?
        data
      end
    end

    # List Builder for PathList
    class PathList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CatalogTargetList
    class CatalogTargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CatalogTarget.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CatalogTarget
    class CatalogTarget
      def self.build(input)
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Tables'] = Builders::CatalogTablesList.build(input[:tables]) unless input[:tables].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data
      end
    end

    # List Builder for CatalogTablesList
    class CatalogTablesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DynamoDBTargetList
    class DynamoDBTargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DynamoDBTarget.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DynamoDBTarget
    class DynamoDBTarget
      def self.build(input)
        data = {}
        data['Path'] = input[:path] unless input[:path].nil?
        data['scanAll'] = input[:scan_all] unless input[:scan_all].nil?
        data['scanRate'] = Hearth::NumberHelper.serialize(input[:scan_rate]) unless input[:scan_rate].nil?
        data
      end
    end

    # List Builder for MongoDBTargetList
    class MongoDBTargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MongoDBTarget.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MongoDBTarget
    class MongoDBTarget
      def self.build(input)
        data = {}
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['ScanAll'] = input[:scan_all] unless input[:scan_all].nil?
        data
      end
    end

    # List Builder for JdbcTargetList
    class JdbcTargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::JdbcTarget.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JdbcTarget
    class JdbcTarget
      def self.build(input)
        data = {}
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['Exclusions'] = Builders::PathList.build(input[:exclusions]) unless input[:exclusions].nil?
        data
      end
    end

    # List Builder for S3TargetList
    class S3TargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::S3Target.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3Target
    class S3Target
      def self.build(input)
        data = {}
        data['Path'] = input[:path] unless input[:path].nil?
        data['Exclusions'] = Builders::PathList.build(input[:exclusions]) unless input[:exclusions].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['SampleSize'] = input[:sample_size] unless input[:sample_size].nil?
        data['EventQueueArn'] = input[:event_queue_arn] unless input[:event_queue_arn].nil?
        data['DlqEventQueueArn'] = input[:dlq_event_queue_arn] unless input[:dlq_event_queue_arn].nil?
        data
      end
    end

    # Operation Builder for CreateCustomEntityType
    class CreateCustomEntityType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateCustomEntityType'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RegexString'] = input[:regex_string] unless input[:regex_string].nil?
        data['ContextWords'] = Builders::ContextWords.build(input[:context_words]) unless input[:context_words].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ContextWords
    class ContextWords
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDatabase
    class CreateDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateDatabase'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseInput'] = Builders::DatabaseInput.build(input[:database_input]) unless input[:database_input].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DatabaseInput
    class DatabaseInput
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['LocationUri'] = input[:location_uri] unless input[:location_uri].nil?
        data['Parameters'] = Builders::ParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        data['CreateTableDefaultPermissions'] = Builders::PrincipalPermissionsList.build(input[:create_table_default_permissions]) unless input[:create_table_default_permissions].nil?
        data['TargetDatabase'] = Builders::DatabaseIdentifier.build(input[:target_database]) unless input[:target_database].nil?
        data
      end
    end

    # Structure Builder for DatabaseIdentifier
    class DatabaseIdentifier
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data
      end
    end

    # List Builder for PrincipalPermissionsList
    class PrincipalPermissionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PrincipalPermissions.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PrincipalPermissions
    class PrincipalPermissions
      def self.build(input)
        data = {}
        data['Principal'] = Builders::DataLakePrincipal.build(input[:principal]) unless input[:principal].nil?
        data['Permissions'] = Builders::PermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data
      end
    end

    # List Builder for PermissionList
    class PermissionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataLakePrincipal
    class DataLakePrincipal
      def self.build(input)
        data = {}
        data['DataLakePrincipalIdentifier'] = input[:data_lake_principal_identifier] unless input[:data_lake_principal_identifier].nil?
        data
      end
    end

    # Operation Builder for CreateDevEndpoint
    class CreateDevEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateDevEndpoint'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['SecurityGroupIds'] = Builders::StringList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['PublicKey'] = input[:public_key] unless input[:public_key].nil?
        data['PublicKeys'] = Builders::PublicKeysList.build(input[:public_keys]) unless input[:public_keys].nil?
        data['NumberOfNodes'] = input[:number_of_nodes] unless input[:number_of_nodes].nil?
        data['WorkerType'] = input[:worker_type] unless input[:worker_type].nil?
        data['GlueVersion'] = input[:glue_version] unless input[:glue_version].nil?
        data['NumberOfWorkers'] = input[:number_of_workers] unless input[:number_of_workers].nil?
        data['ExtraPythonLibsS3Path'] = input[:extra_python_libs_s3_path] unless input[:extra_python_libs_s3_path].nil?
        data['ExtraJarsS3Path'] = input[:extra_jars_s3_path] unless input[:extra_jars_s3_path].nil?
        data['SecurityConfiguration'] = input[:security_configuration] unless input[:security_configuration].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['Arguments'] = Builders::MapValue.build(input[:arguments]) unless input[:arguments].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for MapValue
    class MapValue
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for PublicKeysList
    class PublicKeysList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateJob
    class CreateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateJob'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['LogUri'] = input[:log_uri] unless input[:log_uri].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['ExecutionProperty'] = Builders::ExecutionProperty.build(input[:execution_property]) unless input[:execution_property].nil?
        data['Command'] = Builders::JobCommand.build(input[:command]) unless input[:command].nil?
        data['DefaultArguments'] = Builders::GenericMap.build(input[:default_arguments]) unless input[:default_arguments].nil?
        data['NonOverridableArguments'] = Builders::GenericMap.build(input[:non_overridable_arguments]) unless input[:non_overridable_arguments].nil?
        data['Connections'] = Builders::ConnectionsList.build(input[:connections]) unless input[:connections].nil?
        data['MaxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        data['AllocatedCapacity'] = input[:allocated_capacity] unless input[:allocated_capacity].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(input[:max_capacity]) unless input[:max_capacity].nil?
        data['SecurityConfiguration'] = input[:security_configuration] unless input[:security_configuration].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['NotificationProperty'] = Builders::NotificationProperty.build(input[:notification_property]) unless input[:notification_property].nil?
        data['GlueVersion'] = input[:glue_version] unless input[:glue_version].nil?
        data['NumberOfWorkers'] = input[:number_of_workers] unless input[:number_of_workers].nil?
        data['WorkerType'] = input[:worker_type] unless input[:worker_type].nil?
        data['CodeGenConfigurationNodes'] = Builders::CodeGenConfigurationNodes.build(input[:code_gen_configuration_nodes]) unless input[:code_gen_configuration_nodes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for CodeGenConfigurationNodes
    class CodeGenConfigurationNodes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::CodeGenConfigurationNode.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CodeGenConfigurationNode
    class CodeGenConfigurationNode
      def self.build(input)
        data = {}
        data['AthenaConnectorSource'] = Builders::AthenaConnectorSource.build(input[:athena_connector_source]) unless input[:athena_connector_source].nil?
        data['JDBCConnectorSource'] = Builders::JDBCConnectorSource.build(input[:jdbc_connector_source]) unless input[:jdbc_connector_source].nil?
        data['SparkConnectorSource'] = Builders::SparkConnectorSource.build(input[:spark_connector_source]) unless input[:spark_connector_source].nil?
        data['CatalogSource'] = Builders::CatalogSource.build(input[:catalog_source]) unless input[:catalog_source].nil?
        data['RedshiftSource'] = Builders::RedshiftSource.build(input[:redshift_source]) unless input[:redshift_source].nil?
        data['S3CatalogSource'] = Builders::S3CatalogSource.build(input[:s3_catalog_source]) unless input[:s3_catalog_source].nil?
        data['S3CsvSource'] = Builders::S3CsvSource.build(input[:s3_csv_source]) unless input[:s3_csv_source].nil?
        data['S3JsonSource'] = Builders::S3JsonSource.build(input[:s3_json_source]) unless input[:s3_json_source].nil?
        data['S3ParquetSource'] = Builders::S3ParquetSource.build(input[:s3_parquet_source]) unless input[:s3_parquet_source].nil?
        data['RelationalCatalogSource'] = Builders::RelationalCatalogSource.build(input[:relational_catalog_source]) unless input[:relational_catalog_source].nil?
        data['DynamoDBCatalogSource'] = Builders::DynamoDBCatalogSource.build(input[:dynamo_db_catalog_source]) unless input[:dynamo_db_catalog_source].nil?
        data['JDBCConnectorTarget'] = Builders::JDBCConnectorTarget.build(input[:jdbc_connector_target]) unless input[:jdbc_connector_target].nil?
        data['SparkConnectorTarget'] = Builders::SparkConnectorTarget.build(input[:spark_connector_target]) unless input[:spark_connector_target].nil?
        data['CatalogTarget'] = Builders::BasicCatalogTarget.build(input[:catalog_target]) unless input[:catalog_target].nil?
        data['RedshiftTarget'] = Builders::RedshiftTarget.build(input[:redshift_target]) unless input[:redshift_target].nil?
        data['S3CatalogTarget'] = Builders::S3CatalogTarget.build(input[:s3_catalog_target]) unless input[:s3_catalog_target].nil?
        data['S3GlueParquetTarget'] = Builders::S3GlueParquetTarget.build(input[:s3_glue_parquet_target]) unless input[:s3_glue_parquet_target].nil?
        data['S3DirectTarget'] = Builders::S3DirectTarget.build(input[:s3_direct_target]) unless input[:s3_direct_target].nil?
        data['ApplyMapping'] = Builders::ApplyMapping.build(input[:apply_mapping]) unless input[:apply_mapping].nil?
        data['SelectFields'] = Builders::SelectFields.build(input[:select_fields]) unless input[:select_fields].nil?
        data['DropFields'] = Builders::DropFields.build(input[:drop_fields]) unless input[:drop_fields].nil?
        data['RenameField'] = Builders::RenameField.build(input[:rename_field]) unless input[:rename_field].nil?
        data['Spigot'] = Builders::Spigot.build(input[:spigot]) unless input[:spigot].nil?
        data['Join'] = Builders::Join.build(input[:join]) unless input[:join].nil?
        data['SplitFields'] = Builders::SplitFields.build(input[:split_fields]) unless input[:split_fields].nil?
        data['SelectFromCollection'] = Builders::SelectFromCollection.build(input[:select_from_collection]) unless input[:select_from_collection].nil?
        data['FillMissingValues'] = Builders::FillMissingValues.build(input[:fill_missing_values]) unless input[:fill_missing_values].nil?
        data['Filter'] = Builders::Filter.build(input[:filter]) unless input[:filter].nil?
        data['CustomCode'] = Builders::CustomCode.build(input[:custom_code]) unless input[:custom_code].nil?
        data['SparkSQL'] = Builders::SparkSQL.build(input[:spark_sql]) unless input[:spark_sql].nil?
        data['DirectKinesisSource'] = Builders::DirectKinesisSource.build(input[:direct_kinesis_source]) unless input[:direct_kinesis_source].nil?
        data['DirectKafkaSource'] = Builders::DirectKafkaSource.build(input[:direct_kafka_source]) unless input[:direct_kafka_source].nil?
        data['CatalogKinesisSource'] = Builders::CatalogKinesisSource.build(input[:catalog_kinesis_source]) unless input[:catalog_kinesis_source].nil?
        data['CatalogKafkaSource'] = Builders::CatalogKafkaSource.build(input[:catalog_kafka_source]) unless input[:catalog_kafka_source].nil?
        data['DropNullFields'] = Builders::DropNullFields.build(input[:drop_null_fields]) unless input[:drop_null_fields].nil?
        data['Merge'] = Builders::Merge.build(input[:merge]) unless input[:merge].nil?
        data['Union'] = Builders::Union.build(input[:union]) unless input[:union].nil?
        data['PIIDetection'] = Builders::PIIDetection.build(input[:pii_detection]) unless input[:pii_detection].nil?
        data['Aggregate'] = Builders::Aggregate.build(input[:aggregate]) unless input[:aggregate].nil?
        data['DropDuplicates'] = Builders::DropDuplicates.build(input[:drop_duplicates]) unless input[:drop_duplicates].nil?
        data['GovernedCatalogTarget'] = Builders::GovernedCatalogTarget.build(input[:governed_catalog_target]) unless input[:governed_catalog_target].nil?
        data['GovernedCatalogSource'] = Builders::GovernedCatalogSource.build(input[:governed_catalog_source]) unless input[:governed_catalog_source].nil?
        data['MicrosoftSQLServerCatalogSource'] = Builders::MicrosoftSQLServerCatalogSource.build(input[:microsoft_sql_server_catalog_source]) unless input[:microsoft_sql_server_catalog_source].nil?
        data['MySQLCatalogSource'] = Builders::MySQLCatalogSource.build(input[:my_sql_catalog_source]) unless input[:my_sql_catalog_source].nil?
        data['OracleSQLCatalogSource'] = Builders::OracleSQLCatalogSource.build(input[:oracle_sql_catalog_source]) unless input[:oracle_sql_catalog_source].nil?
        data['PostgreSQLCatalogSource'] = Builders::PostgreSQLCatalogSource.build(input[:postgre_sql_catalog_source]) unless input[:postgre_sql_catalog_source].nil?
        data['MicrosoftSQLServerCatalogTarget'] = Builders::MicrosoftSQLServerCatalogTarget.build(input[:microsoft_sql_server_catalog_target]) unless input[:microsoft_sql_server_catalog_target].nil?
        data['MySQLCatalogTarget'] = Builders::MySQLCatalogTarget.build(input[:my_sql_catalog_target]) unless input[:my_sql_catalog_target].nil?
        data['OracleSQLCatalogTarget'] = Builders::OracleSQLCatalogTarget.build(input[:oracle_sql_catalog_target]) unless input[:oracle_sql_catalog_target].nil?
        data['PostgreSQLCatalogTarget'] = Builders::PostgreSQLCatalogTarget.build(input[:postgre_sql_catalog_target]) unless input[:postgre_sql_catalog_target].nil?
        data
      end
    end

    # Structure Builder for PostgreSQLCatalogTarget
    class PostgreSQLCatalogTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # List Builder for OneInput
    class OneInput
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OracleSQLCatalogTarget
    class OracleSQLCatalogTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for MySQLCatalogTarget
    class MySQLCatalogTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for MicrosoftSQLServerCatalogTarget
    class MicrosoftSQLServerCatalogTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for PostgreSQLCatalogSource
    class PostgreSQLCatalogSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for OracleSQLCatalogSource
    class OracleSQLCatalogSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for MySQLCatalogSource
    class MySQLCatalogSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for MicrosoftSQLServerCatalogSource
    class MicrosoftSQLServerCatalogSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for GovernedCatalogSource
    class GovernedCatalogSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data['PartitionPredicate'] = input[:partition_predicate] unless input[:partition_predicate].nil?
        data['AdditionalOptions'] = Builders::S3SourceAdditionalOptions.build(input[:additional_options]) unless input[:additional_options].nil?
        data
      end
    end

    # Structure Builder for S3SourceAdditionalOptions
    class S3SourceAdditionalOptions
      def self.build(input)
        data = {}
        data['BoundedSize'] = input[:bounded_size] unless input[:bounded_size].nil?
        data['BoundedFiles'] = input[:bounded_files] unless input[:bounded_files].nil?
        data
      end
    end

    # Structure Builder for GovernedCatalogTarget
    class GovernedCatalogTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['PartitionKeys'] = Builders::GlueStudioPathList.build(input[:partition_keys]) unless input[:partition_keys].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['SchemaChangePolicy'] = Builders::CatalogSchemaChangePolicy.build(input[:schema_change_policy]) unless input[:schema_change_policy].nil?
        data
      end
    end

    # Structure Builder for CatalogSchemaChangePolicy
    class CatalogSchemaChangePolicy
      def self.build(input)
        data = {}
        data['EnableUpdateCatalog'] = input[:enable_update_catalog] unless input[:enable_update_catalog].nil?
        data['UpdateBehavior'] = input[:update_behavior] unless input[:update_behavior].nil?
        data
      end
    end

    # List Builder for GlueStudioPathList
    class GlueStudioPathList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EnclosedInStringProperties.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for EnclosedInStringProperties
    class EnclosedInStringProperties
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DropDuplicates
    class DropDuplicates
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Columns'] = Builders::LimitedPathList.build(input[:columns]) unless input[:columns].nil?
        data
      end
    end

    # List Builder for LimitedPathList
    class LimitedPathList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LimitedStringList.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for LimitedStringList
    class LimitedStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Aggregate
    class Aggregate
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Groups'] = Builders::GlueStudioPathList.build(input[:groups]) unless input[:groups].nil?
        data['Aggs'] = Builders::AggregateOperations.build(input[:aggs]) unless input[:aggs].nil?
        data
      end
    end

    # List Builder for AggregateOperations
    class AggregateOperations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AggregateOperation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AggregateOperation
    class AggregateOperation
      def self.build(input)
        data = {}
        data['Column'] = Builders::EnclosedInStringProperties.build(input[:column]) unless input[:column].nil?
        data['AggFunc'] = input[:agg_func] unless input[:agg_func].nil?
        data
      end
    end

    # Structure Builder for PIIDetection
    class PIIDetection
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['PiiType'] = input[:pii_type] unless input[:pii_type].nil?
        data['EntityTypesToDetect'] = Builders::EnclosedInStringProperties.build(input[:entity_types_to_detect]) unless input[:entity_types_to_detect].nil?
        data['OutputColumnName'] = input[:output_column_name] unless input[:output_column_name].nil?
        data['SampleFraction'] = Hearth::NumberHelper.serialize(input[:sample_fraction]) unless input[:sample_fraction].nil?
        data['ThresholdFraction'] = Hearth::NumberHelper.serialize(input[:threshold_fraction]) unless input[:threshold_fraction].nil?
        data['MaskValue'] = input[:mask_value] unless input[:mask_value].nil?
        data
      end
    end

    # Structure Builder for Union
    class Union
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::TwoInputs.build(input[:inputs]) unless input[:inputs].nil?
        data['UnionType'] = input[:union_type] unless input[:union_type].nil?
        data
      end
    end

    # List Builder for TwoInputs
    class TwoInputs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Merge
    class Merge
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::TwoInputs.build(input[:inputs]) unless input[:inputs].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['PrimaryKeys'] = Builders::GlueStudioPathList.build(input[:primary_keys]) unless input[:primary_keys].nil?
        data
      end
    end

    # Structure Builder for DropNullFields
    class DropNullFields
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['NullCheckBoxList'] = Builders::NullCheckBoxList.build(input[:null_check_box_list]) unless input[:null_check_box_list].nil?
        data['NullTextList'] = Builders::NullValueFields.build(input[:null_text_list]) unless input[:null_text_list].nil?
        data
      end
    end

    # List Builder for NullValueFields
    class NullValueFields
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NullValueField.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NullValueField
    class NullValueField
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data['Datatype'] = Builders::Datatype.build(input[:datatype]) unless input[:datatype].nil?
        data
      end
    end

    # Structure Builder for Datatype
    class Datatype
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Label'] = input[:label] unless input[:label].nil?
        data
      end
    end

    # Structure Builder for NullCheckBoxList
    class NullCheckBoxList
      def self.build(input)
        data = {}
        data['IsEmpty'] = input[:is_empty] unless input[:is_empty].nil?
        data['IsNullString'] = input[:is_null_string] unless input[:is_null_string].nil?
        data['IsNegOne'] = input[:is_neg_one] unless input[:is_neg_one].nil?
        data
      end
    end

    # Structure Builder for CatalogKafkaSource
    class CatalogKafkaSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['WindowSize'] = input[:window_size] unless input[:window_size].nil?
        data['DetectSchema'] = input[:detect_schema] unless input[:detect_schema].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['StreamingOptions'] = Builders::KafkaStreamingSourceOptions.build(input[:streaming_options]) unless input[:streaming_options].nil?
        data['DataPreviewOptions'] = Builders::StreamingDataPreviewOptions.build(input[:data_preview_options]) unless input[:data_preview_options].nil?
        data
      end
    end

    # Structure Builder for StreamingDataPreviewOptions
    class StreamingDataPreviewOptions
      def self.build(input)
        data = {}
        data['PollingTime'] = input[:polling_time] unless input[:polling_time].nil?
        data['RecordPollingLimit'] = input[:record_polling_limit] unless input[:record_polling_limit].nil?
        data
      end
    end

    # Structure Builder for KafkaStreamingSourceOptions
    class KafkaStreamingSourceOptions
      def self.build(input)
        data = {}
        data['BootstrapServers'] = input[:bootstrap_servers] unless input[:bootstrap_servers].nil?
        data['SecurityProtocol'] = input[:security_protocol] unless input[:security_protocol].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['TopicName'] = input[:topic_name] unless input[:topic_name].nil?
        data['Assign'] = input[:assign] unless input[:assign].nil?
        data['SubscribePattern'] = input[:subscribe_pattern] unless input[:subscribe_pattern].nil?
        data['Classification'] = input[:classification] unless input[:classification].nil?
        data['Delimiter'] = input[:delimiter] unless input[:delimiter].nil?
        data['StartingOffsets'] = input[:starting_offsets] unless input[:starting_offsets].nil?
        data['EndingOffsets'] = input[:ending_offsets] unless input[:ending_offsets].nil?
        data['PollTimeoutMs'] = input[:poll_timeout_ms] unless input[:poll_timeout_ms].nil?
        data['NumRetries'] = input[:num_retries] unless input[:num_retries].nil?
        data['RetryIntervalMs'] = input[:retry_interval_ms] unless input[:retry_interval_ms].nil?
        data['MaxOffsetsPerTrigger'] = input[:max_offsets_per_trigger] unless input[:max_offsets_per_trigger].nil?
        data['MinPartitions'] = input[:min_partitions] unless input[:min_partitions].nil?
        data
      end
    end

    # Structure Builder for CatalogKinesisSource
    class CatalogKinesisSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['WindowSize'] = input[:window_size] unless input[:window_size].nil?
        data['DetectSchema'] = input[:detect_schema] unless input[:detect_schema].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['StreamingOptions'] = Builders::KinesisStreamingSourceOptions.build(input[:streaming_options]) unless input[:streaming_options].nil?
        data['DataPreviewOptions'] = Builders::StreamingDataPreviewOptions.build(input[:data_preview_options]) unless input[:data_preview_options].nil?
        data
      end
    end

    # Structure Builder for KinesisStreamingSourceOptions
    class KinesisStreamingSourceOptions
      def self.build(input)
        data = {}
        data['EndpointUrl'] = input[:endpoint_url] unless input[:endpoint_url].nil?
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['Classification'] = input[:classification] unless input[:classification].nil?
        data['Delimiter'] = input[:delimiter] unless input[:delimiter].nil?
        data['StartingPosition'] = input[:starting_position] unless input[:starting_position].nil?
        data['MaxFetchTimeInMs'] = input[:max_fetch_time_in_ms] unless input[:max_fetch_time_in_ms].nil?
        data['MaxFetchRecordsPerShard'] = input[:max_fetch_records_per_shard] unless input[:max_fetch_records_per_shard].nil?
        data['MaxRecordPerRead'] = input[:max_record_per_read] unless input[:max_record_per_read].nil?
        data['AddIdleTimeBetweenReads'] = input[:add_idle_time_between_reads] unless input[:add_idle_time_between_reads].nil?
        data['IdleTimeBetweenReadsInMs'] = input[:idle_time_between_reads_in_ms] unless input[:idle_time_between_reads_in_ms].nil?
        data['DescribeShardInterval'] = input[:describe_shard_interval] unless input[:describe_shard_interval].nil?
        data['NumRetries'] = input[:num_retries] unless input[:num_retries].nil?
        data['RetryIntervalMs'] = input[:retry_interval_ms] unless input[:retry_interval_ms].nil?
        data['MaxRetryIntervalMs'] = input[:max_retry_interval_ms] unless input[:max_retry_interval_ms].nil?
        data['AvoidEmptyBatches'] = input[:avoid_empty_batches] unless input[:avoid_empty_batches].nil?
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['RoleSessionName'] = input[:role_session_name] unless input[:role_session_name].nil?
        data
      end
    end

    # Structure Builder for DirectKafkaSource
    class DirectKafkaSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['StreamingOptions'] = Builders::KafkaStreamingSourceOptions.build(input[:streaming_options]) unless input[:streaming_options].nil?
        data['WindowSize'] = input[:window_size] unless input[:window_size].nil?
        data['DetectSchema'] = input[:detect_schema] unless input[:detect_schema].nil?
        data['DataPreviewOptions'] = Builders::StreamingDataPreviewOptions.build(input[:data_preview_options]) unless input[:data_preview_options].nil?
        data
      end
    end

    # Structure Builder for DirectKinesisSource
    class DirectKinesisSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['WindowSize'] = input[:window_size] unless input[:window_size].nil?
        data['DetectSchema'] = input[:detect_schema] unless input[:detect_schema].nil?
        data['StreamingOptions'] = Builders::KinesisStreamingSourceOptions.build(input[:streaming_options]) unless input[:streaming_options].nil?
        data['DataPreviewOptions'] = Builders::StreamingDataPreviewOptions.build(input[:data_preview_options]) unless input[:data_preview_options].nil?
        data
      end
    end

    # Structure Builder for SparkSQL
    class SparkSQL
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::ManyInputs.build(input[:inputs]) unless input[:inputs].nil?
        data['SqlQuery'] = input[:sql_query] unless input[:sql_query].nil?
        data['SqlAliases'] = Builders::SqlAliases.build(input[:sql_aliases]) unless input[:sql_aliases].nil?
        data['OutputSchemas'] = Builders::GlueSchemas.build(input[:output_schemas]) unless input[:output_schemas].nil?
        data
      end
    end

    # List Builder for GlueSchemas
    class GlueSchemas
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GlueSchema.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GlueSchema
    class GlueSchema
      def self.build(input)
        data = {}
        data['Columns'] = Builders::GlueStudioSchemaColumnList.build(input[:columns]) unless input[:columns].nil?
        data
      end
    end

    # List Builder for GlueStudioSchemaColumnList
    class GlueStudioSchemaColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GlueStudioSchemaColumn.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GlueStudioSchemaColumn
    class GlueStudioSchemaColumn
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for SqlAliases
    class SqlAliases
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SqlAlias.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SqlAlias
    class SqlAlias
      def self.build(input)
        data = {}
        data['From'] = input[:from] unless input[:from].nil?
        data['Alias'] = input[:alias] unless input[:alias].nil?
        data
      end
    end

    # List Builder for ManyInputs
    class ManyInputs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomCode
    class CustomCode
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::ManyInputs.build(input[:inputs]) unless input[:inputs].nil?
        data['Code'] = input[:code] unless input[:code].nil?
        data['ClassName'] = input[:class_name] unless input[:class_name].nil?
        data['OutputSchemas'] = Builders::GlueSchemas.build(input[:output_schemas]) unless input[:output_schemas].nil?
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['LogicalOperator'] = input[:logical_operator] unless input[:logical_operator].nil?
        data['Filters'] = Builders::FilterExpressions.build(input[:filters]) unless input[:filters].nil?
        data
      end
    end

    # List Builder for FilterExpressions
    class FilterExpressions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FilterExpression.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FilterExpression
    class FilterExpression
      def self.build(input)
        data = {}
        data['Operation'] = input[:operation] unless input[:operation].nil?
        data['Negated'] = input[:negated] unless input[:negated].nil?
        data['Values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FilterValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FilterValue
    class FilterValue
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = Builders::EnclosedInStringProperties.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Structure Builder for FillMissingValues
    class FillMissingValues
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['ImputedPath'] = input[:imputed_path] unless input[:imputed_path].nil?
        data['FilledPath'] = input[:filled_path] unless input[:filled_path].nil?
        data
      end
    end

    # Structure Builder for SelectFromCollection
    class SelectFromCollection
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Index'] = input[:index] unless input[:index].nil?
        data
      end
    end

    # Structure Builder for SplitFields
    class SplitFields
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Paths'] = Builders::GlueStudioPathList.build(input[:paths]) unless input[:paths].nil?
        data
      end
    end

    # Structure Builder for Join
    class Join
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::TwoInputs.build(input[:inputs]) unless input[:inputs].nil?
        data['JoinType'] = input[:join_type] unless input[:join_type].nil?
        data['Columns'] = Builders::JoinColumns.build(input[:columns]) unless input[:columns].nil?
        data
      end
    end

    # List Builder for JoinColumns
    class JoinColumns
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::JoinColumn.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JoinColumn
    class JoinColumn
      def self.build(input)
        data = {}
        data['From'] = input[:from] unless input[:from].nil?
        data['Keys'] = Builders::GlueStudioPathList.build(input[:keys]) unless input[:keys].nil?
        data
      end
    end

    # Structure Builder for Spigot
    class Spigot
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['Topk'] = input[:topk] unless input[:topk].nil?
        data['Prob'] = Hearth::NumberHelper.serialize(input[:prob]) unless input[:prob].nil?
        data
      end
    end

    # Structure Builder for RenameField
    class RenameField
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['SourcePath'] = Builders::EnclosedInStringProperties.build(input[:source_path]) unless input[:source_path].nil?
        data['TargetPath'] = Builders::EnclosedInStringProperties.build(input[:target_path]) unless input[:target_path].nil?
        data
      end
    end

    # Structure Builder for DropFields
    class DropFields
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Paths'] = Builders::GlueStudioPathList.build(input[:paths]) unless input[:paths].nil?
        data
      end
    end

    # Structure Builder for SelectFields
    class SelectFields
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Paths'] = Builders::GlueStudioPathList.build(input[:paths]) unless input[:paths].nil?
        data
      end
    end

    # Structure Builder for ApplyMapping
    class ApplyMapping
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Mapping'] = Builders::Mappings.build(input[:mapping]) unless input[:mapping].nil?
        data
      end
    end

    # List Builder for Mappings
    class Mappings
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Mapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Mapping
    class Mapping
      def self.build(input)
        data = {}
        data['ToKey'] = input[:to_key] unless input[:to_key].nil?
        data['FromPath'] = Builders::EnclosedInStringProperties.build(input[:from_path]) unless input[:from_path].nil?
        data['FromType'] = input[:from_type] unless input[:from_type].nil?
        data['ToType'] = input[:to_type] unless input[:to_type].nil?
        data['Dropped'] = input[:dropped] unless input[:dropped].nil?
        data['Children'] = Builders::Mappings.build(input[:children]) unless input[:children].nil?
        data
      end
    end

    # Structure Builder for S3DirectTarget
    class S3DirectTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['PartitionKeys'] = Builders::GlueStudioPathList.build(input[:partition_keys]) unless input[:partition_keys].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['Compression'] = input[:compression] unless input[:compression].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['SchemaChangePolicy'] = Builders::DirectSchemaChangePolicy.build(input[:schema_change_policy]) unless input[:schema_change_policy].nil?
        data
      end
    end

    # Structure Builder for DirectSchemaChangePolicy
    class DirectSchemaChangePolicy
      def self.build(input)
        data = {}
        data['EnableUpdateCatalog'] = input[:enable_update_catalog] unless input[:enable_update_catalog].nil?
        data['UpdateBehavior'] = input[:update_behavior] unless input[:update_behavior].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for S3GlueParquetTarget
    class S3GlueParquetTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['PartitionKeys'] = Builders::GlueStudioPathList.build(input[:partition_keys]) unless input[:partition_keys].nil?
        data['Path'] = input[:path] unless input[:path].nil?
        data['Compression'] = input[:compression] unless input[:compression].nil?
        data['SchemaChangePolicy'] = Builders::DirectSchemaChangePolicy.build(input[:schema_change_policy]) unless input[:schema_change_policy].nil?
        data
      end
    end

    # Structure Builder for S3CatalogTarget
    class S3CatalogTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['PartitionKeys'] = Builders::GlueStudioPathList.build(input[:partition_keys]) unless input[:partition_keys].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['SchemaChangePolicy'] = Builders::CatalogSchemaChangePolicy.build(input[:schema_change_policy]) unless input[:schema_change_policy].nil?
        data
      end
    end

    # Structure Builder for RedshiftTarget
    class RedshiftTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data['RedshiftTmpDir'] = input[:redshift_tmp_dir] unless input[:redshift_tmp_dir].nil?
        data['TmpDirIAMRole'] = input[:tmp_dir_iam_role] unless input[:tmp_dir_iam_role].nil?
        data['UpsertRedshiftOptions'] = Builders::UpsertRedshiftTargetOptions.build(input[:upsert_redshift_options]) unless input[:upsert_redshift_options].nil?
        data
      end
    end

    # Structure Builder for UpsertRedshiftTargetOptions
    class UpsertRedshiftTargetOptions
      def self.build(input)
        data = {}
        data['TableLocation'] = input[:table_location] unless input[:table_location].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['UpsertKeys'] = Builders::EnclosedInStringPropertiesMinOne.build(input[:upsert_keys]) unless input[:upsert_keys].nil?
        data
      end
    end

    # List Builder for EnclosedInStringPropertiesMinOne
    class EnclosedInStringPropertiesMinOne
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BasicCatalogTarget
    class BasicCatalogTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for SparkConnectorTarget
    class SparkConnectorTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['ConnectorName'] = input[:connector_name] unless input[:connector_name].nil?
        data['ConnectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['AdditionalOptions'] = Builders::AdditionalOptions.build(input[:additional_options]) unless input[:additional_options].nil?
        data['OutputSchemas'] = Builders::GlueSchemas.build(input[:output_schemas]) unless input[:output_schemas].nil?
        data
      end
    end

    # Map Builder for AdditionalOptions
    class AdditionalOptions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for JDBCConnectorTarget
    class JDBCConnectorTarget
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Inputs'] = Builders::OneInput.build(input[:inputs]) unless input[:inputs].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['ConnectionTable'] = input[:connection_table] unless input[:connection_table].nil?
        data['ConnectorName'] = input[:connector_name] unless input[:connector_name].nil?
        data['ConnectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['AdditionalOptions'] = Builders::AdditionalOptions.build(input[:additional_options]) unless input[:additional_options].nil?
        data['OutputSchemas'] = Builders::GlueSchemas.build(input[:output_schemas]) unless input[:output_schemas].nil?
        data
      end
    end

    # Structure Builder for DynamoDBCatalogSource
    class DynamoDBCatalogSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for RelationalCatalogSource
    class RelationalCatalogSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for S3ParquetSource
    class S3ParquetSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Paths'] = Builders::EnclosedInStringProperties.build(input[:paths]) unless input[:paths].nil?
        data['CompressionType'] = input[:compression_type] unless input[:compression_type].nil?
        data['Exclusions'] = Builders::EnclosedInStringProperties.build(input[:exclusions]) unless input[:exclusions].nil?
        data['GroupSize'] = input[:group_size] unless input[:group_size].nil?
        data['GroupFiles'] = input[:group_files] unless input[:group_files].nil?
        data['Recurse'] = input[:recurse] unless input[:recurse].nil?
        data['MaxBand'] = input[:max_band] unless input[:max_band].nil?
        data['MaxFilesInBand'] = input[:max_files_in_band] unless input[:max_files_in_band].nil?
        data['AdditionalOptions'] = Builders::S3DirectSourceAdditionalOptions.build(input[:additional_options]) unless input[:additional_options].nil?
        data['OutputSchemas'] = Builders::GlueSchemas.build(input[:output_schemas]) unless input[:output_schemas].nil?
        data
      end
    end

    # Structure Builder for S3DirectSourceAdditionalOptions
    class S3DirectSourceAdditionalOptions
      def self.build(input)
        data = {}
        data['BoundedSize'] = input[:bounded_size] unless input[:bounded_size].nil?
        data['BoundedFiles'] = input[:bounded_files] unless input[:bounded_files].nil?
        data['EnableSamplePath'] = input[:enable_sample_path] unless input[:enable_sample_path].nil?
        data['SamplePath'] = input[:sample_path] unless input[:sample_path].nil?
        data
      end
    end

    # Structure Builder for S3JsonSource
    class S3JsonSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Paths'] = Builders::EnclosedInStringProperties.build(input[:paths]) unless input[:paths].nil?
        data['CompressionType'] = input[:compression_type] unless input[:compression_type].nil?
        data['Exclusions'] = Builders::EnclosedInStringProperties.build(input[:exclusions]) unless input[:exclusions].nil?
        data['GroupSize'] = input[:group_size] unless input[:group_size].nil?
        data['GroupFiles'] = input[:group_files] unless input[:group_files].nil?
        data['Recurse'] = input[:recurse] unless input[:recurse].nil?
        data['MaxBand'] = input[:max_band] unless input[:max_band].nil?
        data['MaxFilesInBand'] = input[:max_files_in_band] unless input[:max_files_in_band].nil?
        data['AdditionalOptions'] = Builders::S3DirectSourceAdditionalOptions.build(input[:additional_options]) unless input[:additional_options].nil?
        data['JsonPath'] = input[:json_path] unless input[:json_path].nil?
        data['Multiline'] = input[:multiline] unless input[:multiline].nil?
        data['OutputSchemas'] = Builders::GlueSchemas.build(input[:output_schemas]) unless input[:output_schemas].nil?
        data
      end
    end

    # Structure Builder for S3CsvSource
    class S3CsvSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Paths'] = Builders::EnclosedInStringProperties.build(input[:paths]) unless input[:paths].nil?
        data['CompressionType'] = input[:compression_type] unless input[:compression_type].nil?
        data['Exclusions'] = Builders::EnclosedInStringProperties.build(input[:exclusions]) unless input[:exclusions].nil?
        data['GroupSize'] = input[:group_size] unless input[:group_size].nil?
        data['GroupFiles'] = input[:group_files] unless input[:group_files].nil?
        data['Recurse'] = input[:recurse] unless input[:recurse].nil?
        data['MaxBand'] = input[:max_band] unless input[:max_band].nil?
        data['MaxFilesInBand'] = input[:max_files_in_band] unless input[:max_files_in_band].nil?
        data['AdditionalOptions'] = Builders::S3DirectSourceAdditionalOptions.build(input[:additional_options]) unless input[:additional_options].nil?
        data['Separator'] = input[:separator] unless input[:separator].nil?
        data['Escaper'] = input[:escaper] unless input[:escaper].nil?
        data['QuoteChar'] = input[:quote_char] unless input[:quote_char].nil?
        data['Multiline'] = input[:multiline] unless input[:multiline].nil?
        data['WithHeader'] = input[:with_header] unless input[:with_header].nil?
        data['WriteHeader'] = input[:write_header] unless input[:write_header].nil?
        data['SkipFirst'] = input[:skip_first] unless input[:skip_first].nil?
        data['OptimizePerformance'] = input[:optimize_performance] unless input[:optimize_performance].nil?
        data['OutputSchemas'] = Builders::GlueSchemas.build(input[:output_schemas]) unless input[:output_schemas].nil?
        data
      end
    end

    # Structure Builder for S3CatalogSource
    class S3CatalogSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data['PartitionPredicate'] = input[:partition_predicate] unless input[:partition_predicate].nil?
        data['AdditionalOptions'] = Builders::S3SourceAdditionalOptions.build(input[:additional_options]) unless input[:additional_options].nil?
        data
      end
    end

    # Structure Builder for RedshiftSource
    class RedshiftSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data['RedshiftTmpDir'] = input[:redshift_tmp_dir] unless input[:redshift_tmp_dir].nil?
        data['TmpDirIAMRole'] = input[:tmp_dir_iam_role] unless input[:tmp_dir_iam_role].nil?
        data
      end
    end

    # Structure Builder for CatalogSource
    class CatalogSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Table'] = input[:table] unless input[:table].nil?
        data
      end
    end

    # Structure Builder for SparkConnectorSource
    class SparkConnectorSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['ConnectorName'] = input[:connector_name] unless input[:connector_name].nil?
        data['ConnectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['AdditionalOptions'] = Builders::AdditionalOptions.build(input[:additional_options]) unless input[:additional_options].nil?
        data['OutputSchemas'] = Builders::GlueSchemas.build(input[:output_schemas]) unless input[:output_schemas].nil?
        data
      end
    end

    # Structure Builder for JDBCConnectorSource
    class JDBCConnectorSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['ConnectorName'] = input[:connector_name] unless input[:connector_name].nil?
        data['ConnectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['AdditionalOptions'] = Builders::JDBCConnectorOptions.build(input[:additional_options]) unless input[:additional_options].nil?
        data['ConnectionTable'] = input[:connection_table] unless input[:connection_table].nil?
        data['Query'] = input[:query] unless input[:query].nil?
        data['OutputSchemas'] = Builders::GlueSchemas.build(input[:output_schemas]) unless input[:output_schemas].nil?
        data
      end
    end

    # Structure Builder for JDBCConnectorOptions
    class JDBCConnectorOptions
      def self.build(input)
        data = {}
        data['FilterPredicate'] = input[:filter_predicate] unless input[:filter_predicate].nil?
        data['PartitionColumn'] = input[:partition_column] unless input[:partition_column].nil?
        data['LowerBound'] = input[:lower_bound] unless input[:lower_bound].nil?
        data['UpperBound'] = input[:upper_bound] unless input[:upper_bound].nil?
        data['NumPartitions'] = input[:num_partitions] unless input[:num_partitions].nil?
        data['JobBookmarkKeys'] = Builders::EnclosedInStringProperties.build(input[:job_bookmark_keys]) unless input[:job_bookmark_keys].nil?
        data['JobBookmarkKeysSortOrder'] = input[:job_bookmark_keys_sort_order] unless input[:job_bookmark_keys_sort_order].nil?
        data['DataTypeMapping'] = Builders::JDBCDataTypeMapping.build(input[:data_type_mapping]) unless input[:data_type_mapping].nil?
        data
      end
    end

    # Map Builder for JDBCDataTypeMapping
    class JDBCDataTypeMapping
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AthenaConnectorSource
    class AthenaConnectorSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data['ConnectorName'] = input[:connector_name] unless input[:connector_name].nil?
        data['ConnectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['ConnectionTable'] = input[:connection_table] unless input[:connection_table].nil?
        data['SchemaName'] = input[:schema_name] unless input[:schema_name].nil?
        data['OutputSchemas'] = Builders::GlueSchemas.build(input[:output_schemas]) unless input[:output_schemas].nil?
        data
      end
    end

    # Structure Builder for NotificationProperty
    class NotificationProperty
      def self.build(input)
        data = {}
        data['NotifyDelayAfter'] = input[:notify_delay_after] unless input[:notify_delay_after].nil?
        data
      end
    end

    # Structure Builder for ConnectionsList
    class ConnectionsList
      def self.build(input)
        data = {}
        data['Connections'] = Builders::OrchestrationStringList.build(input[:connections]) unless input[:connections].nil?
        data
      end
    end

    # List Builder for OrchestrationStringList
    class OrchestrationStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for GenericMap
    class GenericMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for JobCommand
    class JobCommand
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ScriptLocation'] = input[:script_location] unless input[:script_location].nil?
        data['PythonVersion'] = input[:python_version] unless input[:python_version].nil?
        data
      end
    end

    # Structure Builder for ExecutionProperty
    class ExecutionProperty
      def self.build(input)
        data = {}
        data['MaxConcurrentRuns'] = input[:max_concurrent_runs] unless input[:max_concurrent_runs].nil?
        data
      end
    end

    # Operation Builder for CreateMLTransform
    class CreateMLTransform
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateMLTransform'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['InputRecordTables'] = Builders::GlueTables.build(input[:input_record_tables]) unless input[:input_record_tables].nil?
        data['Parameters'] = Builders::TransformParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['GlueVersion'] = input[:glue_version] unless input[:glue_version].nil?
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(input[:max_capacity]) unless input[:max_capacity].nil?
        data['WorkerType'] = input[:worker_type] unless input[:worker_type].nil?
        data['NumberOfWorkers'] = input[:number_of_workers] unless input[:number_of_workers].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['MaxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['TransformEncryption'] = Builders::TransformEncryption.build(input[:transform_encryption]) unless input[:transform_encryption].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TransformEncryption
    class TransformEncryption
      def self.build(input)
        data = {}
        data['MlUserDataEncryption'] = Builders::MLUserDataEncryption.build(input[:ml_user_data_encryption]) unless input[:ml_user_data_encryption].nil?
        data['TaskRunSecurityConfigurationName'] = input[:task_run_security_configuration_name] unless input[:task_run_security_configuration_name].nil?
        data
      end
    end

    # Structure Builder for MLUserDataEncryption
    class MLUserDataEncryption
      def self.build(input)
        data = {}
        data['MlUserDataEncryptionMode'] = input[:ml_user_data_encryption_mode] unless input[:ml_user_data_encryption_mode].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for TransformParameters
    class TransformParameters
      def self.build(input)
        data = {}
        data['TransformType'] = input[:transform_type] unless input[:transform_type].nil?
        data['FindMatchesParameters'] = Builders::FindMatchesParameters.build(input[:find_matches_parameters]) unless input[:find_matches_parameters].nil?
        data
      end
    end

    # Structure Builder for FindMatchesParameters
    class FindMatchesParameters
      def self.build(input)
        data = {}
        data['PrimaryKeyColumnName'] = input[:primary_key_column_name] unless input[:primary_key_column_name].nil?
        data['PrecisionRecallTradeoff'] = Hearth::NumberHelper.serialize(input[:precision_recall_tradeoff]) unless input[:precision_recall_tradeoff].nil?
        data['AccuracyCostTradeoff'] = Hearth::NumberHelper.serialize(input[:accuracy_cost_tradeoff]) unless input[:accuracy_cost_tradeoff].nil?
        data['EnforceProvidedLabels'] = input[:enforce_provided_labels] unless input[:enforce_provided_labels].nil?
        data
      end
    end

    # List Builder for GlueTables
    class GlueTables
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GlueTable.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GlueTable
    class GlueTable
      def self.build(input)
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        data
      end
    end

    # Operation Builder for CreatePartition
    class CreatePartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreatePartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionInput'] = Builders::PartitionInput.build(input[:partition_input]) unless input[:partition_input].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePartitionIndex
    class CreatePartitionIndex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreatePartitionIndex'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionIndex'] = Builders::PartitionIndex.build(input[:partition_index]) unless input[:partition_index].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PartitionIndex
    class PartitionIndex
      def self.build(input)
        data = {}
        data['Keys'] = Builders::KeyList.build(input[:keys]) unless input[:keys].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data
      end
    end

    # List Builder for KeyList
    class KeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateRegistry
    class CreateRegistry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateRegistry'
        data = {}
        data['RegistryName'] = input[:registry_name] unless input[:registry_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSchema
    class CreateSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateSchema'
        data = {}
        data['RegistryId'] = Builders::RegistryId.build(input[:registry_id]) unless input[:registry_id].nil?
        data['SchemaName'] = input[:schema_name] unless input[:schema_name].nil?
        data['DataFormat'] = input[:data_format] unless input[:data_format].nil?
        data['Compatibility'] = input[:compatibility] unless input[:compatibility].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['SchemaDefinition'] = input[:schema_definition] unless input[:schema_definition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RegistryId
    class RegistryId
      def self.build(input)
        data = {}
        data['RegistryName'] = input[:registry_name] unless input[:registry_name].nil?
        data['RegistryArn'] = input[:registry_arn] unless input[:registry_arn].nil?
        data
      end
    end

    # Operation Builder for CreateScript
    class CreateScript
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateScript'
        data = {}
        data['DagNodes'] = Builders::DagNodes.build(input[:dag_nodes]) unless input[:dag_nodes].nil?
        data['DagEdges'] = Builders::DagEdges.build(input[:dag_edges]) unless input[:dag_edges].nil?
        data['Language'] = input[:language] unless input[:language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DagEdges
    class DagEdges
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CodeGenEdge.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CodeGenEdge
    class CodeGenEdge
      def self.build(input)
        data = {}
        data['Source'] = input[:source] unless input[:source].nil?
        data['Target'] = input[:target] unless input[:target].nil?
        data['TargetParameter'] = input[:target_parameter] unless input[:target_parameter].nil?
        data
      end
    end

    # List Builder for DagNodes
    class DagNodes
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CodeGenNode.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CodeGenNode
    class CodeGenNode
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['NodeType'] = input[:node_type] unless input[:node_type].nil?
        data['Args'] = Builders::CodeGenNodeArgs.build(input[:args]) unless input[:args].nil?
        data['LineNumber'] = input[:line_number] unless input[:line_number].nil?
        data
      end
    end

    # List Builder for CodeGenNodeArgs
    class CodeGenNodeArgs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CodeGenNodeArg.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CodeGenNodeArg
    class CodeGenNodeArg
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Param'] = input[:param] unless input[:param].nil?
        data
      end
    end

    # Operation Builder for CreateSecurityConfiguration
    class CreateSecurityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateSecurityConfiguration'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['EncryptionConfiguration'] = Builders::EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EncryptionConfiguration
    class EncryptionConfiguration
      def self.build(input)
        data = {}
        data['S3Encryption'] = Builders::S3EncryptionList.build(input[:s3_encryption]) unless input[:s3_encryption].nil?
        data['CloudWatchEncryption'] = Builders::CloudWatchEncryption.build(input[:cloud_watch_encryption]) unless input[:cloud_watch_encryption].nil?
        data['JobBookmarksEncryption'] = Builders::JobBookmarksEncryption.build(input[:job_bookmarks_encryption]) unless input[:job_bookmarks_encryption].nil?
        data
      end
    end

    # Structure Builder for JobBookmarksEncryption
    class JobBookmarksEncryption
      def self.build(input)
        data = {}
        data['JobBookmarksEncryptionMode'] = input[:job_bookmarks_encryption_mode] unless input[:job_bookmarks_encryption_mode].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Structure Builder for CloudWatchEncryption
    class CloudWatchEncryption
      def self.build(input)
        data = {}
        data['CloudWatchEncryptionMode'] = input[:cloud_watch_encryption_mode] unless input[:cloud_watch_encryption_mode].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # List Builder for S3EncryptionList
    class S3EncryptionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::S3Encryption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3Encryption
    class S3Encryption
      def self.build(input)
        data = {}
        data['S3EncryptionMode'] = input[:s3_encryption_mode] unless input[:s3_encryption_mode].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Operation Builder for CreateSession
    class CreateSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateSession'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['Command'] = Builders::SessionCommand.build(input[:command]) unless input[:command].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['IdleTimeout'] = input[:idle_timeout] unless input[:idle_timeout].nil?
        data['DefaultArguments'] = Builders::OrchestrationArgumentsMap.build(input[:default_arguments]) unless input[:default_arguments].nil?
        data['Connections'] = Builders::ConnectionsList.build(input[:connections]) unless input[:connections].nil?
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(input[:max_capacity]) unless input[:max_capacity].nil?
        data['NumberOfWorkers'] = input[:number_of_workers] unless input[:number_of_workers].nil?
        data['WorkerType'] = input[:worker_type] unless input[:worker_type].nil?
        data['SecurityConfiguration'] = input[:security_configuration] unless input[:security_configuration].nil?
        data['GlueVersion'] = input[:glue_version] unless input[:glue_version].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['RequestOrigin'] = input[:request_origin] unless input[:request_origin].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for OrchestrationArgumentsMap
    class OrchestrationArgumentsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for SessionCommand
    class SessionCommand
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['PythonVersion'] = input[:python_version] unless input[:python_version].nil?
        data
      end
    end

    # Operation Builder for CreateTable
    class CreateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateTable'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableInput'] = Builders::TableInput.build(input[:table_input]) unless input[:table_input].nil?
        data['PartitionIndexes'] = Builders::PartitionIndexList.build(input[:partition_indexes]) unless input[:partition_indexes].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PartitionIndexList
    class PartitionIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PartitionIndex.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TableInput
    class TableInput
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Owner'] = input[:owner] unless input[:owner].nil?
        data['LastAccessTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_access_time]).to_i unless input[:last_access_time].nil?
        data['LastAnalyzedTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_analyzed_time]).to_i unless input[:last_analyzed_time].nil?
        data['Retention'] = input[:retention] unless input[:retention].nil?
        data['StorageDescriptor'] = Builders::StorageDescriptor.build(input[:storage_descriptor]) unless input[:storage_descriptor].nil?
        data['PartitionKeys'] = Builders::ColumnList.build(input[:partition_keys]) unless input[:partition_keys].nil?
        data['ViewOriginalText'] = input[:view_original_text] unless input[:view_original_text].nil?
        data['ViewExpandedText'] = input[:view_expanded_text] unless input[:view_expanded_text].nil?
        data['TableType'] = input[:table_type] unless input[:table_type].nil?
        data['Parameters'] = Builders::ParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        data['TargetTable'] = Builders::TableIdentifier.build(input[:target_table]) unless input[:target_table].nil?
        data
      end
    end

    # Structure Builder for TableIdentifier
    class TableIdentifier
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Operation Builder for CreateTrigger
    class CreateTrigger
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateTrigger'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['WorkflowName'] = input[:workflow_name] unless input[:workflow_name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Schedule'] = input[:schedule] unless input[:schedule].nil?
        data['Predicate'] = Builders::Predicate.build(input[:predicate]) unless input[:predicate].nil?
        data['Actions'] = Builders::ActionList.build(input[:actions]) unless input[:actions].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['StartOnCreation'] = input[:start_on_creation] unless input[:start_on_creation].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['EventBatchingCondition'] = Builders::EventBatchingCondition.build(input[:event_batching_condition]) unless input[:event_batching_condition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EventBatchingCondition
    class EventBatchingCondition
      def self.build(input)
        data = {}
        data['BatchSize'] = input[:batch_size] unless input[:batch_size].nil?
        data['BatchWindow'] = input[:batch_window] unless input[:batch_window].nil?
        data
      end
    end

    # List Builder for ActionList
    class ActionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Action.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Action
    class Action
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['Arguments'] = Builders::GenericMap.build(input[:arguments]) unless input[:arguments].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['SecurityConfiguration'] = input[:security_configuration] unless input[:security_configuration].nil?
        data['NotificationProperty'] = Builders::NotificationProperty.build(input[:notification_property]) unless input[:notification_property].nil?
        data['CrawlerName'] = input[:crawler_name] unless input[:crawler_name].nil?
        data
      end
    end

    # Structure Builder for Predicate
    class Predicate
      def self.build(input)
        data = {}
        data['Logical'] = input[:logical] unless input[:logical].nil?
        data['Conditions'] = Builders::ConditionList.build(input[:conditions]) unless input[:conditions].nil?
        data
      end
    end

    # List Builder for ConditionList
    class ConditionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Condition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Condition
    class Condition
      def self.build(input)
        data = {}
        data['LogicalOperator'] = input[:logical_operator] unless input[:logical_operator].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['CrawlerName'] = input[:crawler_name] unless input[:crawler_name].nil?
        data['CrawlState'] = input[:crawl_state] unless input[:crawl_state].nil?
        data
      end
    end

    # Operation Builder for CreateUserDefinedFunction
    class CreateUserDefinedFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateUserDefinedFunction'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['FunctionInput'] = Builders::UserDefinedFunctionInput.build(input[:function_input]) unless input[:function_input].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UserDefinedFunctionInput
    class UserDefinedFunctionInput
      def self.build(input)
        data = {}
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        data['ClassName'] = input[:class_name] unless input[:class_name].nil?
        data['OwnerName'] = input[:owner_name] unless input[:owner_name].nil?
        data['OwnerType'] = input[:owner_type] unless input[:owner_type].nil?
        data['ResourceUris'] = Builders::ResourceUriList.build(input[:resource_uris]) unless input[:resource_uris].nil?
        data
      end
    end

    # List Builder for ResourceUriList
    class ResourceUriList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourceUri.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceUri
    class ResourceUri
      def self.build(input)
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['Uri'] = input[:uri] unless input[:uri].nil?
        data
      end
    end

    # Operation Builder for CreateWorkflow
    class CreateWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.CreateWorkflow'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DefaultRunProperties'] = Builders::WorkflowRunProperties.build(input[:default_run_properties]) unless input[:default_run_properties].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['MaxConcurrentRuns'] = input[:max_concurrent_runs] unless input[:max_concurrent_runs].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for WorkflowRunProperties
    class WorkflowRunProperties
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteBlueprint
    class DeleteBlueprint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteBlueprint'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteClassifier
    class DeleteClassifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteClassifier'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteColumnStatisticsForPartition
    class DeleteColumnStatisticsForPartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteColumnStatisticsForPartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionValues'] = Builders::ValueStringList.build(input[:partition_values]) unless input[:partition_values].nil?
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteColumnStatisticsForTable
    class DeleteColumnStatisticsForTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteColumnStatisticsForTable'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConnection
    class DeleteConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteConnection'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['ConnectionName'] = input[:connection_name] unless input[:connection_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCrawler
    class DeleteCrawler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteCrawler'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCustomEntityType
    class DeleteCustomEntityType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteCustomEntityType'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDatabase
    class DeleteDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteDatabase'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDevEndpoint
    class DeleteDevEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteDevEndpoint'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteJob
    class DeleteJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMLTransform
    class DeleteMLTransform
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteMLTransform'
        data = {}
        data['TransformId'] = input[:transform_id] unless input[:transform_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePartition
    class DeletePartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeletePartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionValues'] = Builders::ValueStringList.build(input[:partition_values]) unless input[:partition_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePartitionIndex
    class DeletePartitionIndex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeletePartitionIndex'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRegistry
    class DeleteRegistry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteRegistry'
        data = {}
        data['RegistryId'] = Builders::RegistryId.build(input[:registry_id]) unless input[:registry_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteResourcePolicy'
        data = {}
        data['PolicyHashCondition'] = input[:policy_hash_condition] unless input[:policy_hash_condition].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSchema
    class DeleteSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteSchema'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSchemaVersions
    class DeleteSchemaVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteSchemaVersions'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['Versions'] = input[:versions] unless input[:versions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSecurityConfiguration
    class DeleteSecurityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteSecurityConfiguration'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSession
    class DeleteSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteSession'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['RequestOrigin'] = input[:request_origin] unless input[:request_origin].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTable
    class DeleteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteTable'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTableVersion
    class DeleteTableVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteTableVersion'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['VersionId'] = input[:version_id] unless input[:version_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTrigger
    class DeleteTrigger
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteTrigger'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUserDefinedFunction
    class DeleteUserDefinedFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteUserDefinedFunction'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWorkflow
    class DeleteWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.DeleteWorkflow'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBlueprint
    class GetBlueprint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetBlueprint'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['IncludeBlueprint'] = input[:include_blueprint] unless input[:include_blueprint].nil?
        data['IncludeParameterSpec'] = input[:include_parameter_spec] unless input[:include_parameter_spec].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBlueprintRun
    class GetBlueprintRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetBlueprintRun'
        data = {}
        data['BlueprintName'] = input[:blueprint_name] unless input[:blueprint_name].nil?
        data['RunId'] = input[:run_id] unless input[:run_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBlueprintRuns
    class GetBlueprintRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetBlueprintRuns'
        data = {}
        data['BlueprintName'] = input[:blueprint_name] unless input[:blueprint_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCatalogImportStatus
    class GetCatalogImportStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetCatalogImportStatus'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetClassifier
    class GetClassifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetClassifier'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetClassifiers
    class GetClassifiers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetClassifiers'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetColumnStatisticsForPartition
    class GetColumnStatisticsForPartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetColumnStatisticsForPartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionValues'] = Builders::ValueStringList.build(input[:partition_values]) unless input[:partition_values].nil?
        data['ColumnNames'] = Builders::GetColumnNamesList.build(input[:column_names]) unless input[:column_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GetColumnNamesList
    class GetColumnNamesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetColumnStatisticsForTable
    class GetColumnStatisticsForTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetColumnStatisticsForTable'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ColumnNames'] = Builders::GetColumnNamesList.build(input[:column_names]) unless input[:column_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetConnection
    class GetConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetConnection'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['HidePassword'] = input[:hide_password] unless input[:hide_password].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetConnections
    class GetConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetConnections'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Filter'] = Builders::GetConnectionsFilter.build(input[:filter]) unless input[:filter].nil?
        data['HidePassword'] = input[:hide_password] unless input[:hide_password].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for GetConnectionsFilter
    class GetConnectionsFilter
      def self.build(input)
        data = {}
        data['MatchCriteria'] = Builders::MatchCriteria.build(input[:match_criteria]) unless input[:match_criteria].nil?
        data['ConnectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data
      end
    end

    # Operation Builder for GetCrawler
    class GetCrawler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetCrawler'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCrawlerMetrics
    class GetCrawlerMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetCrawlerMetrics'
        data = {}
        data['CrawlerNameList'] = Builders::CrawlerNameList.build(input[:crawler_name_list]) unless input[:crawler_name_list].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCrawlers
    class GetCrawlers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetCrawlers'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCustomEntityType
    class GetCustomEntityType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetCustomEntityType'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDataCatalogEncryptionSettings
    class GetDataCatalogEncryptionSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetDataCatalogEncryptionSettings'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDatabase
    class GetDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetDatabase'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDatabases
    class GetDatabases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetDatabases'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ResourceShareType'] = input[:resource_share_type] unless input[:resource_share_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDataflowGraph
    class GetDataflowGraph
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetDataflowGraph'
        data = {}
        data['PythonScript'] = input[:python_script] unless input[:python_script].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDevEndpoint
    class GetDevEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetDevEndpoint'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDevEndpoints
    class GetDevEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetDevEndpoints'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetJob
    class GetJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetJobBookmark
    class GetJobBookmark
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetJobBookmark'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['RunId'] = input[:run_id] unless input[:run_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetJobRun
    class GetJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetJobRun'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['RunId'] = input[:run_id] unless input[:run_id].nil?
        data['PredecessorsIncluded'] = input[:predecessors_included] unless input[:predecessors_included].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetJobRuns
    class GetJobRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetJobRuns'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetJobs
    class GetJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetJobs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMLTaskRun
    class GetMLTaskRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetMLTaskRun'
        data = {}
        data['TransformId'] = input[:transform_id] unless input[:transform_id].nil?
        data['TaskRunId'] = input[:task_run_id] unless input[:task_run_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMLTaskRuns
    class GetMLTaskRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetMLTaskRuns'
        data = {}
        data['TransformId'] = input[:transform_id] unless input[:transform_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filter'] = Builders::TaskRunFilterCriteria.build(input[:filter]) unless input[:filter].nil?
        data['Sort'] = Builders::TaskRunSortCriteria.build(input[:sort]) unless input[:sort].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TaskRunSortCriteria
    class TaskRunSortCriteria
      def self.build(input)
        data = {}
        data['Column'] = input[:column] unless input[:column].nil?
        data['SortDirection'] = input[:sort_direction] unless input[:sort_direction].nil?
        data
      end
    end

    # Structure Builder for TaskRunFilterCriteria
    class TaskRunFilterCriteria
      def self.build(input)
        data = {}
        data['TaskRunType'] = input[:task_run_type] unless input[:task_run_type].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['StartedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:started_before]).to_i unless input[:started_before].nil?
        data['StartedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:started_after]).to_i unless input[:started_after].nil?
        data
      end
    end

    # Operation Builder for GetMLTransform
    class GetMLTransform
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetMLTransform'
        data = {}
        data['TransformId'] = input[:transform_id] unless input[:transform_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMLTransforms
    class GetMLTransforms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetMLTransforms'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filter'] = Builders::TransformFilterCriteria.build(input[:filter]) unless input[:filter].nil?
        data['Sort'] = Builders::TransformSortCriteria.build(input[:sort]) unless input[:sort].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TransformSortCriteria
    class TransformSortCriteria
      def self.build(input)
        data = {}
        data['Column'] = input[:column] unless input[:column].nil?
        data['SortDirection'] = input[:sort_direction] unless input[:sort_direction].nil?
        data
      end
    end

    # Structure Builder for TransformFilterCriteria
    class TransformFilterCriteria
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['TransformType'] = input[:transform_type] unless input[:transform_type].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['GlueVersion'] = input[:glue_version] unless input[:glue_version].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['LastModifiedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_before]).to_i unless input[:last_modified_before].nil?
        data['LastModifiedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_after]).to_i unless input[:last_modified_after].nil?
        data['Schema'] = Builders::TransformSchema.build(input[:schema]) unless input[:schema].nil?
        data
      end
    end

    # List Builder for TransformSchema
    class TransformSchema
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SchemaColumn.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SchemaColumn
    class SchemaColumn
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DataType'] = input[:data_type] unless input[:data_type].nil?
        data
      end
    end

    # Operation Builder for GetMapping
    class GetMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetMapping'
        data = {}
        data['Source'] = Builders::CatalogEntry.build(input[:source]) unless input[:source].nil?
        data['Sinks'] = Builders::CatalogEntries.build(input[:sinks]) unless input[:sinks].nil?
        data['Location'] = Builders::Location.build(input[:location]) unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Location
    class Location
      def self.build(input)
        data = {}
        data['Jdbc'] = Builders::CodeGenNodeArgs.build(input[:jdbc]) unless input[:jdbc].nil?
        data['S3'] = Builders::CodeGenNodeArgs.build(input[:s3]) unless input[:s3].nil?
        data['DynamoDB'] = Builders::CodeGenNodeArgs.build(input[:dynamo_db]) unless input[:dynamo_db].nil?
        data
      end
    end

    # List Builder for CatalogEntries
    class CatalogEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CatalogEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CatalogEntry
    class CatalogEntry
      def self.build(input)
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data
      end
    end

    # Operation Builder for GetPartition
    class GetPartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetPartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionValues'] = Builders::ValueStringList.build(input[:partition_values]) unless input[:partition_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPartitionIndexes
    class GetPartitionIndexes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetPartitionIndexes'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPartitions
    class GetPartitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetPartitions'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Segment'] = Builders::Segment.build(input[:segment]) unless input[:segment].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ExcludeColumnSchema'] = input[:exclude_column_schema] unless input[:exclude_column_schema].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['QueryAsOfTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:query_as_of_time]).to_i unless input[:query_as_of_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Segment
    class Segment
      def self.build(input)
        data = {}
        data['SegmentNumber'] = input[:segment_number] unless input[:segment_number].nil?
        data['TotalSegments'] = input[:total_segments] unless input[:total_segments].nil?
        data
      end
    end

    # Operation Builder for GetPlan
    class GetPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetPlan'
        data = {}
        data['Mapping'] = Builders::MappingList.build(input[:mapping]) unless input[:mapping].nil?
        data['Source'] = Builders::CatalogEntry.build(input[:source]) unless input[:source].nil?
        data['Sinks'] = Builders::CatalogEntries.build(input[:sinks]) unless input[:sinks].nil?
        data['Location'] = Builders::Location.build(input[:location]) unless input[:location].nil?
        data['Language'] = input[:language] unless input[:language].nil?
        data['AdditionalPlanOptionsMap'] = Builders::AdditionalPlanOptionsMap.build(input[:additional_plan_options_map]) unless input[:additional_plan_options_map].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for AdditionalPlanOptionsMap
    class AdditionalPlanOptionsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for MappingList
    class MappingList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MappingEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MappingEntry
    class MappingEntry
      def self.build(input)
        data = {}
        data['SourceTable'] = input[:source_table] unless input[:source_table].nil?
        data['SourcePath'] = input[:source_path] unless input[:source_path].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['TargetTable'] = input[:target_table] unless input[:target_table].nil?
        data['TargetPath'] = input[:target_path] unless input[:target_path].nil?
        data['TargetType'] = input[:target_type] unless input[:target_type].nil?
        data
      end
    end

    # Operation Builder for GetRegistry
    class GetRegistry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetRegistry'
        data = {}
        data['RegistryId'] = Builders::RegistryId.build(input[:registry_id]) unless input[:registry_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResourcePolicies
    class GetResourcePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetResourcePolicies'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResourcePolicy
    class GetResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetResourcePolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSchema
    class GetSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetSchema'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSchemaByDefinition
    class GetSchemaByDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetSchemaByDefinition'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['SchemaDefinition'] = input[:schema_definition] unless input[:schema_definition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSchemaVersion
    class GetSchemaVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetSchemaVersion'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['SchemaVersionId'] = input[:schema_version_id] unless input[:schema_version_id].nil?
        data['SchemaVersionNumber'] = Builders::SchemaVersionNumber.build(input[:schema_version_number]) unless input[:schema_version_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SchemaVersionNumber
    class SchemaVersionNumber
      def self.build(input)
        data = {}
        data['LatestVersion'] = input[:latest_version] unless input[:latest_version].nil?
        data['VersionNumber'] = input[:version_number] unless input[:version_number].nil?
        data
      end
    end

    # Operation Builder for GetSchemaVersionsDiff
    class GetSchemaVersionsDiff
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetSchemaVersionsDiff'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['FirstSchemaVersionNumber'] = Builders::SchemaVersionNumber.build(input[:first_schema_version_number]) unless input[:first_schema_version_number].nil?
        data['SecondSchemaVersionNumber'] = Builders::SchemaVersionNumber.build(input[:second_schema_version_number]) unless input[:second_schema_version_number].nil?
        data['SchemaDiffType'] = input[:schema_diff_type] unless input[:schema_diff_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSecurityConfiguration
    class GetSecurityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetSecurityConfiguration'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSecurityConfigurations
    class GetSecurityConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetSecurityConfigurations'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSession
    class GetSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetSession'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['RequestOrigin'] = input[:request_origin] unless input[:request_origin].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetStatement
    class GetStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetStatement'
        data = {}
        data['SessionId'] = input[:session_id] unless input[:session_id].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['RequestOrigin'] = input[:request_origin] unless input[:request_origin].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTable
    class GetTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetTable'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['QueryAsOfTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:query_as_of_time]).to_i unless input[:query_as_of_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTableVersion
    class GetTableVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetTableVersion'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['VersionId'] = input[:version_id] unless input[:version_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTableVersions
    class GetTableVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetTableVersions'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTables
    class GetTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetTables'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['QueryAsOfTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:query_as_of_time]).to_i unless input[:query_as_of_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTags
    class GetTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetTags'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTrigger
    class GetTrigger
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetTrigger'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTriggers
    class GetTriggers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetTriggers'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['DependentJobName'] = input[:dependent_job_name] unless input[:dependent_job_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUnfilteredPartitionMetadata
    class GetUnfilteredPartitionMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetUnfilteredPartitionMetadata'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionValues'] = Builders::ValueStringList.build(input[:partition_values]) unless input[:partition_values].nil?
        data['AuditContext'] = Builders::AuditContext.build(input[:audit_context]) unless input[:audit_context].nil?
        data['SupportedPermissionTypes'] = Builders::PermissionTypeList.build(input[:supported_permission_types]) unless input[:supported_permission_types].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PermissionTypeList
    class PermissionTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AuditContext
    class AuditContext
      def self.build(input)
        data = {}
        data['AdditionalAuditContext'] = input[:additional_audit_context] unless input[:additional_audit_context].nil?
        data['RequestedColumns'] = Builders::AuditColumnNamesList.build(input[:requested_columns]) unless input[:requested_columns].nil?
        data['AllColumnsRequested'] = input[:all_columns_requested] unless input[:all_columns_requested].nil?
        data
      end
    end

    # List Builder for AuditColumnNamesList
    class AuditColumnNamesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetUnfilteredPartitionsMetadata
    class GetUnfilteredPartitionsMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetUnfilteredPartitionsMetadata'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['AuditContext'] = Builders::AuditContext.build(input[:audit_context]) unless input[:audit_context].nil?
        data['SupportedPermissionTypes'] = Builders::PermissionTypeList.build(input[:supported_permission_types]) unless input[:supported_permission_types].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Segment'] = Builders::Segment.build(input[:segment]) unless input[:segment].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUnfilteredTableMetadata
    class GetUnfilteredTableMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetUnfilteredTableMetadata'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['AuditContext'] = Builders::AuditContext.build(input[:audit_context]) unless input[:audit_context].nil?
        data['SupportedPermissionTypes'] = Builders::PermissionTypeList.build(input[:supported_permission_types]) unless input[:supported_permission_types].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUserDefinedFunction
    class GetUserDefinedFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetUserDefinedFunction'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUserDefinedFunctions
    class GetUserDefinedFunctions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetUserDefinedFunctions'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Pattern'] = input[:pattern] unless input[:pattern].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWorkflow
    class GetWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetWorkflow'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['IncludeGraph'] = input[:include_graph] unless input[:include_graph].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWorkflowRun
    class GetWorkflowRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetWorkflowRun'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RunId'] = input[:run_id] unless input[:run_id].nil?
        data['IncludeGraph'] = input[:include_graph] unless input[:include_graph].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWorkflowRunProperties
    class GetWorkflowRunProperties
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetWorkflowRunProperties'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RunId'] = input[:run_id] unless input[:run_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWorkflowRuns
    class GetWorkflowRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.GetWorkflowRuns'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['IncludeGraph'] = input[:include_graph] unless input[:include_graph].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportCatalogToGlue
    class ImportCatalogToGlue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ImportCatalogToGlue'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBlueprints
    class ListBlueprints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListBlueprints'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCrawlers
    class ListCrawlers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListCrawlers'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCustomEntityTypes
    class ListCustomEntityTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListCustomEntityTypes'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDevEndpoints
    class ListDevEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListDevEndpoints'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListJobs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMLTransforms
    class ListMLTransforms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListMLTransforms'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filter'] = Builders::TransformFilterCriteria.build(input[:filter]) unless input[:filter].nil?
        data['Sort'] = Builders::TransformSortCriteria.build(input[:sort]) unless input[:sort].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRegistries
    class ListRegistries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListRegistries'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSchemaVersions
    class ListSchemaVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListSchemaVersions'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSchemas
    class ListSchemas
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListSchemas'
        data = {}
        data['RegistryId'] = Builders::RegistryId.build(input[:registry_id]) unless input[:registry_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSessions
    class ListSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListSessions'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['RequestOrigin'] = input[:request_origin] unless input[:request_origin].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStatements
    class ListStatements
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListStatements'
        data = {}
        data['SessionId'] = input[:session_id] unless input[:session_id].nil?
        data['RequestOrigin'] = input[:request_origin] unless input[:request_origin].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTriggers
    class ListTriggers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListTriggers'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['DependentJobName'] = input[:dependent_job_name] unless input[:dependent_job_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorkflows
    class ListWorkflows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ListWorkflows'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutDataCatalogEncryptionSettings
    class PutDataCatalogEncryptionSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.PutDataCatalogEncryptionSettings'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DataCatalogEncryptionSettings'] = Builders::DataCatalogEncryptionSettings.build(input[:data_catalog_encryption_settings]) unless input[:data_catalog_encryption_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataCatalogEncryptionSettings
    class DataCatalogEncryptionSettings
      def self.build(input)
        data = {}
        data['EncryptionAtRest'] = Builders::EncryptionAtRest.build(input[:encryption_at_rest]) unless input[:encryption_at_rest].nil?
        data['ConnectionPasswordEncryption'] = Builders::ConnectionPasswordEncryption.build(input[:connection_password_encryption]) unless input[:connection_password_encryption].nil?
        data
      end
    end

    # Structure Builder for ConnectionPasswordEncryption
    class ConnectionPasswordEncryption
      def self.build(input)
        data = {}
        data['ReturnConnectionPasswordEncrypted'] = input[:return_connection_password_encrypted] unless input[:return_connection_password_encrypted].nil?
        data['AwsKmsKeyId'] = input[:aws_kms_key_id] unless input[:aws_kms_key_id].nil?
        data
      end
    end

    # Structure Builder for EncryptionAtRest
    class EncryptionAtRest
      def self.build(input)
        data = {}
        data['CatalogEncryptionMode'] = input[:catalog_encryption_mode] unless input[:catalog_encryption_mode].nil?
        data['SseAwsKmsKeyId'] = input[:sse_aws_kms_key_id] unless input[:sse_aws_kms_key_id].nil?
        data
      end
    end

    # Operation Builder for PutResourcePolicy
    class PutResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.PutResourcePolicy'
        data = {}
        data['PolicyInJson'] = input[:policy_in_json] unless input[:policy_in_json].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['PolicyHashCondition'] = input[:policy_hash_condition] unless input[:policy_hash_condition].nil?
        data['PolicyExistsCondition'] = input[:policy_exists_condition] unless input[:policy_exists_condition].nil?
        data['EnableHybrid'] = input[:enable_hybrid] unless input[:enable_hybrid].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutSchemaVersionMetadata
    class PutSchemaVersionMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.PutSchemaVersionMetadata'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['SchemaVersionNumber'] = Builders::SchemaVersionNumber.build(input[:schema_version_number]) unless input[:schema_version_number].nil?
        data['SchemaVersionId'] = input[:schema_version_id] unless input[:schema_version_id].nil?
        data['MetadataKeyValue'] = Builders::MetadataKeyValuePair.build(input[:metadata_key_value]) unless input[:metadata_key_value].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MetadataKeyValuePair
    class MetadataKeyValuePair
      def self.build(input)
        data = {}
        data['MetadataKey'] = input[:metadata_key] unless input[:metadata_key].nil?
        data['MetadataValue'] = input[:metadata_value] unless input[:metadata_value].nil?
        data
      end
    end

    # Operation Builder for PutWorkflowRunProperties
    class PutWorkflowRunProperties
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.PutWorkflowRunProperties'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RunId'] = input[:run_id] unless input[:run_id].nil?
        data['RunProperties'] = Builders::WorkflowRunProperties.build(input[:run_properties]) unless input[:run_properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for QuerySchemaVersionMetadata
    class QuerySchemaVersionMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.QuerySchemaVersionMetadata'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['SchemaVersionNumber'] = Builders::SchemaVersionNumber.build(input[:schema_version_number]) unless input[:schema_version_number].nil?
        data['SchemaVersionId'] = input[:schema_version_id] unless input[:schema_version_id].nil?
        data['MetadataList'] = Builders::MetadataList.build(input[:metadata_list]) unless input[:metadata_list].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MetadataList
    class MetadataList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MetadataKeyValuePair.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RegisterSchemaVersion
    class RegisterSchemaVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.RegisterSchemaVersion'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['SchemaDefinition'] = input[:schema_definition] unless input[:schema_definition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveSchemaVersionMetadata
    class RemoveSchemaVersionMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.RemoveSchemaVersionMetadata'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['SchemaVersionNumber'] = Builders::SchemaVersionNumber.build(input[:schema_version_number]) unless input[:schema_version_number].nil?
        data['SchemaVersionId'] = input[:schema_version_id] unless input[:schema_version_id].nil?
        data['MetadataKeyValue'] = Builders::MetadataKeyValuePair.build(input[:metadata_key_value]) unless input[:metadata_key_value].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResetJobBookmark
    class ResetJobBookmark
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ResetJobBookmark'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['RunId'] = input[:run_id] unless input[:run_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResumeWorkflowRun
    class ResumeWorkflowRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.ResumeWorkflowRun'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RunId'] = input[:run_id] unless input[:run_id].nil?
        data['NodeIds'] = Builders::NodeIdList.build(input[:node_ids]) unless input[:node_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NodeIdList
    class NodeIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RunStatement
    class RunStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.RunStatement'
        data = {}
        data['SessionId'] = input[:session_id] unless input[:session_id].nil?
        data['Code'] = input[:code] unless input[:code].nil?
        data['RequestOrigin'] = input[:request_origin] unless input[:request_origin].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchTables
    class SearchTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.SearchTables'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Builders::SearchPropertyPredicates.build(input[:filters]) unless input[:filters].nil?
        data['SearchText'] = input[:search_text] unless input[:search_text].nil?
        data['SortCriteria'] = Builders::SortCriteria.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ResourceShareType'] = input[:resource_share_type] unless input[:resource_share_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SortCriteria
    class SortCriteria
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SortCriterion.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SortCriterion
    class SortCriterion
      def self.build(input)
        data = {}
        data['FieldName'] = input[:field_name] unless input[:field_name].nil?
        data['Sort'] = input[:sort] unless input[:sort].nil?
        data
      end
    end

    # List Builder for SearchPropertyPredicates
    class SearchPropertyPredicates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PropertyPredicate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PropertyPredicate
    class PropertyPredicate
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Comparator'] = input[:comparator] unless input[:comparator].nil?
        data
      end
    end

    # Operation Builder for StartBlueprintRun
    class StartBlueprintRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StartBlueprintRun'
        data = {}
        data['BlueprintName'] = input[:blueprint_name] unless input[:blueprint_name].nil?
        data['Parameters'] = input[:parameters] unless input[:parameters].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartCrawler
    class StartCrawler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StartCrawler'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartCrawlerSchedule
    class StartCrawlerSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StartCrawlerSchedule'
        data = {}
        data['CrawlerName'] = input[:crawler_name] unless input[:crawler_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartExportLabelsTaskRun
    class StartExportLabelsTaskRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StartExportLabelsTaskRun'
        data = {}
        data['TransformId'] = input[:transform_id] unless input[:transform_id].nil?
        data['OutputS3Path'] = input[:output_s3_path] unless input[:output_s3_path].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartImportLabelsTaskRun
    class StartImportLabelsTaskRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StartImportLabelsTaskRun'
        data = {}
        data['TransformId'] = input[:transform_id] unless input[:transform_id].nil?
        data['InputS3Path'] = input[:input_s3_path] unless input[:input_s3_path].nil?
        data['ReplaceAllLabels'] = input[:replace_all_labels] unless input[:replace_all_labels].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartJobRun
    class StartJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StartJobRun'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobRunId'] = input[:job_run_id] unless input[:job_run_id].nil?
        data['Arguments'] = Builders::GenericMap.build(input[:arguments]) unless input[:arguments].nil?
        data['AllocatedCapacity'] = input[:allocated_capacity] unless input[:allocated_capacity].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(input[:max_capacity]) unless input[:max_capacity].nil?
        data['SecurityConfiguration'] = input[:security_configuration] unless input[:security_configuration].nil?
        data['NotificationProperty'] = Builders::NotificationProperty.build(input[:notification_property]) unless input[:notification_property].nil?
        data['WorkerType'] = input[:worker_type] unless input[:worker_type].nil?
        data['NumberOfWorkers'] = input[:number_of_workers] unless input[:number_of_workers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartMLEvaluationTaskRun
    class StartMLEvaluationTaskRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StartMLEvaluationTaskRun'
        data = {}
        data['TransformId'] = input[:transform_id] unless input[:transform_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartMLLabelingSetGenerationTaskRun
    class StartMLLabelingSetGenerationTaskRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StartMLLabelingSetGenerationTaskRun'
        data = {}
        data['TransformId'] = input[:transform_id] unless input[:transform_id].nil?
        data['OutputS3Path'] = input[:output_s3_path] unless input[:output_s3_path].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartTrigger
    class StartTrigger
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StartTrigger'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartWorkflowRun
    class StartWorkflowRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StartWorkflowRun'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RunProperties'] = Builders::WorkflowRunProperties.build(input[:run_properties]) unless input[:run_properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopCrawler
    class StopCrawler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StopCrawler'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopCrawlerSchedule
    class StopCrawlerSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StopCrawlerSchedule'
        data = {}
        data['CrawlerName'] = input[:crawler_name] unless input[:crawler_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopSession
    class StopSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StopSession'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['RequestOrigin'] = input[:request_origin] unless input[:request_origin].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopTrigger
    class StopTrigger
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StopTrigger'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopWorkflowRun
    class StopWorkflowRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.StopWorkflowRun'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RunId'] = input[:run_id] unless input[:run_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagsToAdd'] = Builders::TagsMap.build(input[:tags_to_add]) unless input[:tags_to_add].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagsToRemove'] = Builders::TagKeysList.build(input[:tags_to_remove]) unless input[:tags_to_remove].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeysList
    class TagKeysList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateBlueprint
    class UpdateBlueprint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateBlueprint'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['BlueprintLocation'] = input[:blueprint_location] unless input[:blueprint_location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateClassifier
    class UpdateClassifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateClassifier'
        data = {}
        data['GrokClassifier'] = Builders::UpdateGrokClassifierRequest.build(input[:grok_classifier]) unless input[:grok_classifier].nil?
        data['XMLClassifier'] = Builders::UpdateXMLClassifierRequest.build(input[:xml_classifier]) unless input[:xml_classifier].nil?
        data['JsonClassifier'] = Builders::UpdateJsonClassifierRequest.build(input[:json_classifier]) unless input[:json_classifier].nil?
        data['CsvClassifier'] = Builders::UpdateCsvClassifierRequest.build(input[:csv_classifier]) unless input[:csv_classifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateCsvClassifierRequest
    class UpdateCsvClassifierRequest
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Delimiter'] = input[:delimiter] unless input[:delimiter].nil?
        data['QuoteSymbol'] = input[:quote_symbol] unless input[:quote_symbol].nil?
        data['ContainsHeader'] = input[:contains_header] unless input[:contains_header].nil?
        data['Header'] = Builders::CsvHeader.build(input[:header]) unless input[:header].nil?
        data['DisableValueTrimming'] = input[:disable_value_trimming] unless input[:disable_value_trimming].nil?
        data['AllowSingleColumn'] = input[:allow_single_column] unless input[:allow_single_column].nil?
        data
      end
    end

    # Structure Builder for UpdateJsonClassifierRequest
    class UpdateJsonClassifierRequest
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['JsonPath'] = input[:json_path] unless input[:json_path].nil?
        data
      end
    end

    # Structure Builder for UpdateXMLClassifierRequest
    class UpdateXMLClassifierRequest
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Classification'] = input[:classification] unless input[:classification].nil?
        data['RowTag'] = input[:row_tag] unless input[:row_tag].nil?
        data
      end
    end

    # Structure Builder for UpdateGrokClassifierRequest
    class UpdateGrokClassifierRequest
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Classification'] = input[:classification] unless input[:classification].nil?
        data['GrokPattern'] = input[:grok_pattern] unless input[:grok_pattern].nil?
        data['CustomPatterns'] = input[:custom_patterns] unless input[:custom_patterns].nil?
        data
      end
    end

    # Operation Builder for UpdateColumnStatisticsForPartition
    class UpdateColumnStatisticsForPartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateColumnStatisticsForPartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionValues'] = Builders::ValueStringList.build(input[:partition_values]) unless input[:partition_values].nil?
        data['ColumnStatisticsList'] = Builders::UpdateColumnStatisticsList.build(input[:column_statistics_list]) unless input[:column_statistics_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdateColumnStatisticsList
    class UpdateColumnStatisticsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ColumnStatistics.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ColumnStatistics
    class ColumnStatistics
      def self.build(input)
        data = {}
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        data['ColumnType'] = input[:column_type] unless input[:column_type].nil?
        data['AnalyzedTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:analyzed_time]).to_i unless input[:analyzed_time].nil?
        data['StatisticsData'] = Builders::ColumnStatisticsData.build(input[:statistics_data]) unless input[:statistics_data].nil?
        data
      end
    end

    # Structure Builder for ColumnStatisticsData
    class ColumnStatisticsData
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['BooleanColumnStatisticsData'] = Builders::BooleanColumnStatisticsData.build(input[:boolean_column_statistics_data]) unless input[:boolean_column_statistics_data].nil?
        data['DateColumnStatisticsData'] = Builders::DateColumnStatisticsData.build(input[:date_column_statistics_data]) unless input[:date_column_statistics_data].nil?
        data['DecimalColumnStatisticsData'] = Builders::DecimalColumnStatisticsData.build(input[:decimal_column_statistics_data]) unless input[:decimal_column_statistics_data].nil?
        data['DoubleColumnStatisticsData'] = Builders::DoubleColumnStatisticsData.build(input[:double_column_statistics_data]) unless input[:double_column_statistics_data].nil?
        data['LongColumnStatisticsData'] = Builders::LongColumnStatisticsData.build(input[:long_column_statistics_data]) unless input[:long_column_statistics_data].nil?
        data['StringColumnStatisticsData'] = Builders::StringColumnStatisticsData.build(input[:string_column_statistics_data]) unless input[:string_column_statistics_data].nil?
        data['BinaryColumnStatisticsData'] = Builders::BinaryColumnStatisticsData.build(input[:binary_column_statistics_data]) unless input[:binary_column_statistics_data].nil?
        data
      end
    end

    # Structure Builder for BinaryColumnStatisticsData
    class BinaryColumnStatisticsData
      def self.build(input)
        data = {}
        data['MaximumLength'] = input[:maximum_length] unless input[:maximum_length].nil?
        data['AverageLength'] = Hearth::NumberHelper.serialize(input[:average_length]) unless input[:average_length].nil?
        data['NumberOfNulls'] = input[:number_of_nulls] unless input[:number_of_nulls].nil?
        data
      end
    end

    # Structure Builder for StringColumnStatisticsData
    class StringColumnStatisticsData
      def self.build(input)
        data = {}
        data['MaximumLength'] = input[:maximum_length] unless input[:maximum_length].nil?
        data['AverageLength'] = Hearth::NumberHelper.serialize(input[:average_length]) unless input[:average_length].nil?
        data['NumberOfNulls'] = input[:number_of_nulls] unless input[:number_of_nulls].nil?
        data['NumberOfDistinctValues'] = input[:number_of_distinct_values] unless input[:number_of_distinct_values].nil?
        data
      end
    end

    # Structure Builder for LongColumnStatisticsData
    class LongColumnStatisticsData
      def self.build(input)
        data = {}
        data['MinimumValue'] = input[:minimum_value] unless input[:minimum_value].nil?
        data['MaximumValue'] = input[:maximum_value] unless input[:maximum_value].nil?
        data['NumberOfNulls'] = input[:number_of_nulls] unless input[:number_of_nulls].nil?
        data['NumberOfDistinctValues'] = input[:number_of_distinct_values] unless input[:number_of_distinct_values].nil?
        data
      end
    end

    # Structure Builder for DoubleColumnStatisticsData
    class DoubleColumnStatisticsData
      def self.build(input)
        data = {}
        data['MinimumValue'] = Hearth::NumberHelper.serialize(input[:minimum_value]) unless input[:minimum_value].nil?
        data['MaximumValue'] = Hearth::NumberHelper.serialize(input[:maximum_value]) unless input[:maximum_value].nil?
        data['NumberOfNulls'] = input[:number_of_nulls] unless input[:number_of_nulls].nil?
        data['NumberOfDistinctValues'] = input[:number_of_distinct_values] unless input[:number_of_distinct_values].nil?
        data
      end
    end

    # Structure Builder for DecimalColumnStatisticsData
    class DecimalColumnStatisticsData
      def self.build(input)
        data = {}
        data['MinimumValue'] = Builders::DecimalNumber.build(input[:minimum_value]) unless input[:minimum_value].nil?
        data['MaximumValue'] = Builders::DecimalNumber.build(input[:maximum_value]) unless input[:maximum_value].nil?
        data['NumberOfNulls'] = input[:number_of_nulls] unless input[:number_of_nulls].nil?
        data['NumberOfDistinctValues'] = input[:number_of_distinct_values] unless input[:number_of_distinct_values].nil?
        data
      end
    end

    # Structure Builder for DecimalNumber
    class DecimalNumber
      def self.build(input)
        data = {}
        data['UnscaledValue'] = Base64::encode64(input[:unscaled_value]).strip unless input[:unscaled_value].nil?
        data['Scale'] = input[:scale] unless input[:scale].nil?
        data
      end
    end

    # Structure Builder for DateColumnStatisticsData
    class DateColumnStatisticsData
      def self.build(input)
        data = {}
        data['MinimumValue'] = Hearth::TimeHelper.to_epoch_seconds(input[:minimum_value]).to_i unless input[:minimum_value].nil?
        data['MaximumValue'] = Hearth::TimeHelper.to_epoch_seconds(input[:maximum_value]).to_i unless input[:maximum_value].nil?
        data['NumberOfNulls'] = input[:number_of_nulls] unless input[:number_of_nulls].nil?
        data['NumberOfDistinctValues'] = input[:number_of_distinct_values] unless input[:number_of_distinct_values].nil?
        data
      end
    end

    # Structure Builder for BooleanColumnStatisticsData
    class BooleanColumnStatisticsData
      def self.build(input)
        data = {}
        data['NumberOfTrues'] = input[:number_of_trues] unless input[:number_of_trues].nil?
        data['NumberOfFalses'] = input[:number_of_falses] unless input[:number_of_falses].nil?
        data['NumberOfNulls'] = input[:number_of_nulls] unless input[:number_of_nulls].nil?
        data
      end
    end

    # Operation Builder for UpdateColumnStatisticsForTable
    class UpdateColumnStatisticsForTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateColumnStatisticsForTable'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ColumnStatisticsList'] = Builders::UpdateColumnStatisticsList.build(input[:column_statistics_list]) unless input[:column_statistics_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateConnection
    class UpdateConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateConnection'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['ConnectionInput'] = Builders::ConnectionInput.build(input[:connection_input]) unless input[:connection_input].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCrawler
    class UpdateCrawler
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateCrawler'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Targets'] = Builders::CrawlerTargets.build(input[:targets]) unless input[:targets].nil?
        data['Schedule'] = input[:schedule] unless input[:schedule].nil?
        data['Classifiers'] = Builders::ClassifierNameList.build(input[:classifiers]) unless input[:classifiers].nil?
        data['TablePrefix'] = input[:table_prefix] unless input[:table_prefix].nil?
        data['SchemaChangePolicy'] = Builders::SchemaChangePolicy.build(input[:schema_change_policy]) unless input[:schema_change_policy].nil?
        data['RecrawlPolicy'] = Builders::RecrawlPolicy.build(input[:recrawl_policy]) unless input[:recrawl_policy].nil?
        data['LineageConfiguration'] = Builders::LineageConfiguration.build(input[:lineage_configuration]) unless input[:lineage_configuration].nil?
        data['LakeFormationConfiguration'] = Builders::LakeFormationConfiguration.build(input[:lake_formation_configuration]) unless input[:lake_formation_configuration].nil?
        data['Configuration'] = input[:configuration] unless input[:configuration].nil?
        data['CrawlerSecurityConfiguration'] = input[:crawler_security_configuration] unless input[:crawler_security_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCrawlerSchedule
    class UpdateCrawlerSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateCrawlerSchedule'
        data = {}
        data['CrawlerName'] = input[:crawler_name] unless input[:crawler_name].nil?
        data['Schedule'] = input[:schedule] unless input[:schedule].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDatabase
    class UpdateDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateDatabase'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['DatabaseInput'] = Builders::DatabaseInput.build(input[:database_input]) unless input[:database_input].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDevEndpoint
    class UpdateDevEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateDevEndpoint'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['PublicKey'] = input[:public_key] unless input[:public_key].nil?
        data['AddPublicKeys'] = Builders::PublicKeysList.build(input[:add_public_keys]) unless input[:add_public_keys].nil?
        data['DeletePublicKeys'] = Builders::PublicKeysList.build(input[:delete_public_keys]) unless input[:delete_public_keys].nil?
        data['CustomLibraries'] = Builders::DevEndpointCustomLibraries.build(input[:custom_libraries]) unless input[:custom_libraries].nil?
        data['UpdateEtlLibraries'] = input[:update_etl_libraries] unless input[:update_etl_libraries].nil?
        data['DeleteArguments'] = Builders::StringList.build(input[:delete_arguments]) unless input[:delete_arguments].nil?
        data['AddArguments'] = Builders::MapValue.build(input[:add_arguments]) unless input[:add_arguments].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DevEndpointCustomLibraries
    class DevEndpointCustomLibraries
      def self.build(input)
        data = {}
        data['ExtraPythonLibsS3Path'] = input[:extra_python_libs_s3_path] unless input[:extra_python_libs_s3_path].nil?
        data['ExtraJarsS3Path'] = input[:extra_jars_s3_path] unless input[:extra_jars_s3_path].nil?
        data
      end
    end

    # Operation Builder for UpdateJob
    class UpdateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobUpdate'] = Builders::JobUpdate.build(input[:job_update]) unless input[:job_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for JobUpdate
    class JobUpdate
      def self.build(input)
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['LogUri'] = input[:log_uri] unless input[:log_uri].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['ExecutionProperty'] = Builders::ExecutionProperty.build(input[:execution_property]) unless input[:execution_property].nil?
        data['Command'] = Builders::JobCommand.build(input[:command]) unless input[:command].nil?
        data['DefaultArguments'] = Builders::GenericMap.build(input[:default_arguments]) unless input[:default_arguments].nil?
        data['NonOverridableArguments'] = Builders::GenericMap.build(input[:non_overridable_arguments]) unless input[:non_overridable_arguments].nil?
        data['Connections'] = Builders::ConnectionsList.build(input[:connections]) unless input[:connections].nil?
        data['MaxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        data['AllocatedCapacity'] = input[:allocated_capacity] unless input[:allocated_capacity].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(input[:max_capacity]) unless input[:max_capacity].nil?
        data['WorkerType'] = input[:worker_type] unless input[:worker_type].nil?
        data['NumberOfWorkers'] = input[:number_of_workers] unless input[:number_of_workers].nil?
        data['SecurityConfiguration'] = input[:security_configuration] unless input[:security_configuration].nil?
        data['NotificationProperty'] = Builders::NotificationProperty.build(input[:notification_property]) unless input[:notification_property].nil?
        data['GlueVersion'] = input[:glue_version] unless input[:glue_version].nil?
        data['CodeGenConfigurationNodes'] = Builders::CodeGenConfigurationNodes.build(input[:code_gen_configuration_nodes]) unless input[:code_gen_configuration_nodes].nil?
        data
      end
    end

    # Operation Builder for UpdateMLTransform
    class UpdateMLTransform
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateMLTransform'
        data = {}
        data['TransformId'] = input[:transform_id] unless input[:transform_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Parameters'] = Builders::TransformParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['GlueVersion'] = input[:glue_version] unless input[:glue_version].nil?
        data['MaxCapacity'] = Hearth::NumberHelper.serialize(input[:max_capacity]) unless input[:max_capacity].nil?
        data['WorkerType'] = input[:worker_type] unless input[:worker_type].nil?
        data['NumberOfWorkers'] = input[:number_of_workers] unless input[:number_of_workers].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['MaxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePartition
    class UpdatePartition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdatePartition'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PartitionValueList'] = Builders::BoundedPartitionValueList.build(input[:partition_value_list]) unless input[:partition_value_list].nil?
        data['PartitionInput'] = Builders::PartitionInput.build(input[:partition_input]) unless input[:partition_input].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRegistry
    class UpdateRegistry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateRegistry'
        data = {}
        data['RegistryId'] = Builders::RegistryId.build(input[:registry_id]) unless input[:registry_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSchema
    class UpdateSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateSchema'
        data = {}
        data['SchemaId'] = Builders::SchemaId.build(input[:schema_id]) unless input[:schema_id].nil?
        data['SchemaVersionNumber'] = Builders::SchemaVersionNumber.build(input[:schema_version_number]) unless input[:schema_version_number].nil?
        data['Compatibility'] = input[:compatibility] unless input[:compatibility].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTable
    class UpdateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateTable'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableInput'] = Builders::TableInput.build(input[:table_input]) unless input[:table_input].nil?
        data['SkipArchive'] = input[:skip_archive] unless input[:skip_archive].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['VersionId'] = input[:version_id] unless input[:version_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTrigger
    class UpdateTrigger
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateTrigger'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['TriggerUpdate'] = Builders::TriggerUpdate.build(input[:trigger_update]) unless input[:trigger_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TriggerUpdate
    class TriggerUpdate
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Schedule'] = input[:schedule] unless input[:schedule].nil?
        data['Actions'] = Builders::ActionList.build(input[:actions]) unless input[:actions].nil?
        data['Predicate'] = Builders::Predicate.build(input[:predicate]) unless input[:predicate].nil?
        data['EventBatchingCondition'] = Builders::EventBatchingCondition.build(input[:event_batching_condition]) unless input[:event_batching_condition].nil?
        data
      end
    end

    # Operation Builder for UpdateUserDefinedFunction
    class UpdateUserDefinedFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateUserDefinedFunction'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        data['FunctionInput'] = Builders::UserDefinedFunctionInput.build(input[:function_input]) unless input[:function_input].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorkflow
    class UpdateWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSGlue.UpdateWorkflow'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DefaultRunProperties'] = Builders::WorkflowRunProperties.build(input[:default_run_properties]) unless input[:default_run_properties].nil?
        data['MaxConcurrentRuns'] = input[:max_concurrent_runs] unless input[:max_concurrent_runs].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
