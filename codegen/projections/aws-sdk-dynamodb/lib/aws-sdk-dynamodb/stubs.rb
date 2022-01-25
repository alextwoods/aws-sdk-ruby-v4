# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Dynamodb
  module Stubs

    # Operation Stubber for BatchExecuteStatement
    class BatchExecuteStatement

      def self.default(visited=[])
        {
          responses: Stubs::PartiQLBatchResponse.default(visited),
          consumed_capacity: Stubs::ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ConsumedCapacityMultiple
    class ConsumedCapacityMultiple
      def self.default(visited=[])
        return nil if visited.include?('ConsumedCapacityMultiple')
        visited = visited + ['ConsumedCapacityMultiple']
        [
          Stubs::ConsumedCapacity.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ConsumedCapacity
    class ConsumedCapacity

      def self.default(visited=[])
        return nil if visited.include?('ConsumedCapacity')
        visited = visited + ['ConsumedCapacity']
        {
          table_name: 'table_name',
          capacity_units: 1.0,
          read_capacity_units: 1.0,
          write_capacity_units: 1.0,
          table: Stubs::Capacity.default(visited),
          local_secondary_indexes: Stubs::SecondaryIndexesCapacityMap.default(visited),
          global_secondary_indexes: Stubs::SecondaryIndexesCapacityMap.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Map Stubber for SecondaryIndexesCapacityMap
    class SecondaryIndexesCapacityMap
      def self.default(visited=[])
        return nil if visited.include?('SecondaryIndexesCapacityMap')
        visited = visited + ['SecondaryIndexesCapacityMap']
        {
          test_key: Stubs::Capacity.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # Structure Stubber for Capacity
    class Capacity

      def self.default(visited=[])
        return nil if visited.include?('Capacity')
        visited = visited + ['Capacity']
        {
          read_capacity_units: 1.0,
          write_capacity_units: 1.0,
          capacity_units: 1.0,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for PartiQLBatchResponse
    class PartiQLBatchResponse
      def self.default(visited=[])
        return nil if visited.include?('PartiQLBatchResponse')
        visited = visited + ['PartiQLBatchResponse']
        [
          Stubs::BatchStatementResponse.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for BatchStatementResponse
    class BatchStatementResponse

      def self.default(visited=[])
        return nil if visited.include?('BatchStatementResponse')
        visited = visited + ['BatchStatementResponse']
        {
          error: Stubs::BatchStatementError.default(visited),
          table_name: 'table_name',
          item: Stubs::AttributeMap.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Map Stubber for AttributeMap
    class AttributeMap
      def self.default(visited=[])
        return nil if visited.include?('AttributeMap')
        visited = visited + ['AttributeMap']
        {
          test_key: Stubs::AttributeValue.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # Union Stubber for AttributeValue
    class AttributeValue

      def self.default(visited=[])
        return nil if visited.include?('AttributeValue')
        visited = visited + ['AttributeValue']
        {
          s: 's',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ListAttributeValue
    class ListAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('ListAttributeValue')
        visited = visited + ['ListAttributeValue']
        [
          Stubs::AttributeValue.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Map Stubber for MapAttributeValue
    class MapAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('MapAttributeValue')
        visited = visited + ['MapAttributeValue']
        {
          test_key: Stubs::AttributeValue.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # List Stubber for BinarySetAttributeValue
    class BinarySetAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('BinarySetAttributeValue')
        visited = visited + ['BinarySetAttributeValue']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for NumberSetAttributeValue
    class NumberSetAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('NumberSetAttributeValue')
        visited = visited + ['NumberSetAttributeValue']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for StringSetAttributeValue
    class StringSetAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('StringSetAttributeValue')
        visited = visited + ['StringSetAttributeValue']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for BatchStatementError
    class BatchStatementError

      def self.default(visited=[])
        return nil if visited.include?('BatchStatementError')
        visited = visited + ['BatchStatementError']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for BatchGetItem
    class BatchGetItem

      def self.default(visited=[])
        {
          responses: Stubs::BatchGetResponseMap.default(visited),
          unprocessed_keys: Stubs::BatchGetRequestMap.default(visited),
          consumed_capacity: Stubs::ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Map Stubber for BatchGetRequestMap
    class BatchGetRequestMap
      def self.default(visited=[])
        return nil if visited.include?('BatchGetRequestMap')
        visited = visited + ['BatchGetRequestMap']
        {
          test_key: Stubs::KeysAndAttributes.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # Structure Stubber for KeysAndAttributes
    class KeysAndAttributes

      def self.default(visited=[])
        return nil if visited.include?('KeysAndAttributes')
        visited = visited + ['KeysAndAttributes']
        {
          keys: Stubs::KeyList.default(visited),
          attributes_to_get: Stubs::AttributeNameList.default(visited),
          consistent_read: false,
          projection_expression: 'projection_expression',
          expression_attribute_names: Stubs::ExpressionAttributeNameMap.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Map Stubber for ExpressionAttributeNameMap
    class ExpressionAttributeNameMap
      def self.default(visited=[])
        return nil if visited.include?('ExpressionAttributeNameMap')
        visited = visited + ['ExpressionAttributeNameMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # List Stubber for AttributeNameList
    class AttributeNameList
      def self.default(visited=[])
        return nil if visited.include?('AttributeNameList')
        visited = visited + ['AttributeNameList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for KeyList
    class KeyList
      def self.default(visited=[])
        return nil if visited.include?('KeyList')
        visited = visited + ['KeyList']
        [
          Stubs::Key.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Map Stubber for Key
    class Key
      def self.default(visited=[])
        return nil if visited.include?('Key')
        visited = visited + ['Key']
        {
          test_key: Stubs::AttributeValue.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # Map Stubber for BatchGetResponseMap
    class BatchGetResponseMap
      def self.default(visited=[])
        return nil if visited.include?('BatchGetResponseMap')
        visited = visited + ['BatchGetResponseMap']
        {
          test_key: Stubs::ItemList.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # List Stubber for ItemList
    class ItemList
      def self.default(visited=[])
        return nil if visited.include?('ItemList')
        visited = visited + ['ItemList']
        [
          Stubs::AttributeMap.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for BatchWriteItem
    class BatchWriteItem

      def self.default(visited=[])
        {
          unprocessed_items: Stubs::BatchWriteItemRequestMap.default(visited),
          item_collection_metrics: Stubs::ItemCollectionMetricsPerTable.default(visited),
          consumed_capacity: Stubs::ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Map Stubber for ItemCollectionMetricsPerTable
    class ItemCollectionMetricsPerTable
      def self.default(visited=[])
        return nil if visited.include?('ItemCollectionMetricsPerTable')
        visited = visited + ['ItemCollectionMetricsPerTable']
        {
          test_key: Stubs::ItemCollectionMetricsMultiple.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # List Stubber for ItemCollectionMetricsMultiple
    class ItemCollectionMetricsMultiple
      def self.default(visited=[])
        return nil if visited.include?('ItemCollectionMetricsMultiple')
        visited = visited + ['ItemCollectionMetricsMultiple']
        [
          Stubs::ItemCollectionMetrics.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ItemCollectionMetrics
    class ItemCollectionMetrics

      def self.default(visited=[])
        return nil if visited.include?('ItemCollectionMetrics')
        visited = visited + ['ItemCollectionMetrics']
        {
          item_collection_key: Stubs::ItemCollectionKeyAttributeMap.default(visited),
          size_estimate_range_gb: Stubs::ItemCollectionSizeEstimateRange.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ItemCollectionSizeEstimateRange
    class ItemCollectionSizeEstimateRange
      def self.default(visited=[])
        return nil if visited.include?('ItemCollectionSizeEstimateRange')
        visited = visited + ['ItemCollectionSizeEstimateRange']
        [
          1.0
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Map Stubber for ItemCollectionKeyAttributeMap
    class ItemCollectionKeyAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('ItemCollectionKeyAttributeMap')
        visited = visited + ['ItemCollectionKeyAttributeMap']
        {
          test_key: Stubs::AttributeValue.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # Map Stubber for BatchWriteItemRequestMap
    class BatchWriteItemRequestMap
      def self.default(visited=[])
        return nil if visited.include?('BatchWriteItemRequestMap')
        visited = visited + ['BatchWriteItemRequestMap']
        {
          test_key: Stubs::WriteRequests.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # List Stubber for WriteRequests
    class WriteRequests
      def self.default(visited=[])
        return nil if visited.include?('WriteRequests')
        visited = visited + ['WriteRequests']
        [
          Stubs::WriteRequest.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for WriteRequest
    class WriteRequest

      def self.default(visited=[])
        return nil if visited.include?('WriteRequest')
        visited = visited + ['WriteRequest']
        {
          put_request: Stubs::PutRequest.default(visited),
          delete_request: Stubs::DeleteRequest.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for DeleteRequest
    class DeleteRequest

      def self.default(visited=[])
        return nil if visited.include?('DeleteRequest')
        visited = visited + ['DeleteRequest']
        {
          key: Stubs::Key.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PutRequest
    class PutRequest

      def self.default(visited=[])
        return nil if visited.include?('PutRequest')
        visited = visited + ['PutRequest']
        {
          item: Stubs::PutItemInputAttributeMap.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Map Stubber for PutItemInputAttributeMap
    class PutItemInputAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('PutItemInputAttributeMap')
        visited = visited + ['PutItemInputAttributeMap']
        {
          test_key: Stubs::AttributeValue.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
        end
        data
      end
    end

    # Operation Stubber for CreateBackup
    class CreateBackup

      def self.default(visited=[])
        {
          backup_details: Stubs::BackupDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for BackupDetails
    class BackupDetails

      def self.default(visited=[])
        return nil if visited.include?('BackupDetails')
        visited = visited + ['BackupDetails']
        {
          backup_arn: 'backup_arn',
          backup_name: 'backup_name',
          backup_size_bytes: 1,
          backup_status: 'backup_status',
          backup_type: 'backup_type',
          backup_creation_date_time: Time.now,
          backup_expiry_date_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateGlobalTable
    class CreateGlobalTable

      def self.default(visited=[])
        {
          global_table_description: Stubs::GlobalTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for GlobalTableDescription
    class GlobalTableDescription

      def self.default(visited=[])
        return nil if visited.include?('GlobalTableDescription')
        visited = visited + ['GlobalTableDescription']
        {
          replication_group: Stubs::ReplicaDescriptionList.default(visited),
          global_table_arn: 'global_table_arn',
          creation_date_time: Time.now,
          global_table_status: 'global_table_status',
          global_table_name: 'global_table_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ReplicaDescriptionList
    class ReplicaDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaDescriptionList')
        visited = visited + ['ReplicaDescriptionList']
        [
          Stubs::ReplicaDescription.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReplicaDescription
    class ReplicaDescription

      def self.default(visited=[])
        return nil if visited.include?('ReplicaDescription')
        visited = visited + ['ReplicaDescription']
        {
          region_name: 'region_name',
          replica_status: 'replica_status',
          replica_status_description: 'replica_status_description',
          replica_status_percent_progress: 'replica_status_percent_progress',
          kms_master_key_id: 'kms_master_key_id',
          provisioned_throughput_override: Stubs::ProvisionedThroughputOverride.default(visited),
          global_secondary_indexes: Stubs::ReplicaGlobalSecondaryIndexDescriptionList.default(visited),
          replica_inaccessible_date_time: Time.now,
          replica_table_class_summary: Stubs::TableClassSummary.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TableClassSummary
    class TableClassSummary

      def self.default(visited=[])
        return nil if visited.include?('TableClassSummary')
        visited = visited + ['TableClassSummary']
        {
          table_class: 'table_class',
          last_update_date_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ReplicaGlobalSecondaryIndexDescriptionList
    class ReplicaGlobalSecondaryIndexDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexDescriptionList')
        visited = visited + ['ReplicaGlobalSecondaryIndexDescriptionList']
        [
          Stubs::ReplicaGlobalSecondaryIndexDescription.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReplicaGlobalSecondaryIndexDescription
    class ReplicaGlobalSecondaryIndexDescription

      def self.default(visited=[])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexDescription')
        visited = visited + ['ReplicaGlobalSecondaryIndexDescription']
        {
          index_name: 'index_name',
          provisioned_throughput_override: Stubs::ProvisionedThroughputOverride.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ProvisionedThroughputOverride
    class ProvisionedThroughputOverride

      def self.default(visited=[])
        return nil if visited.include?('ProvisionedThroughputOverride')
        visited = visited + ['ProvisionedThroughputOverride']
        {
          read_capacity_units: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for CreateTable
    class CreateTable

      def self.default(visited=[])
        {
          table_description: Stubs::TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TableDescription
    class TableDescription

      def self.default(visited=[])
        return nil if visited.include?('TableDescription')
        visited = visited + ['TableDescription']
        {
          attribute_definitions: Stubs::AttributeDefinitions.default(visited),
          table_name: 'table_name',
          key_schema: Stubs::KeySchema.default(visited),
          table_status: 'table_status',
          creation_date_time: Time.now,
          provisioned_throughput: Stubs::ProvisionedThroughputDescription.default(visited),
          table_size_bytes: 1,
          item_count: 1,
          table_arn: 'table_arn',
          table_id: 'table_id',
          billing_mode_summary: Stubs::BillingModeSummary.default(visited),
          local_secondary_indexes: Stubs::LocalSecondaryIndexDescriptionList.default(visited),
          global_secondary_indexes: Stubs::GlobalSecondaryIndexDescriptionList.default(visited),
          stream_specification: Stubs::StreamSpecification.default(visited),
          latest_stream_label: 'latest_stream_label',
          latest_stream_arn: 'latest_stream_arn',
          global_table_version: 'global_table_version',
          replicas: Stubs::ReplicaDescriptionList.default(visited),
          restore_summary: Stubs::RestoreSummary.default(visited),
          sse_description: Stubs::SSEDescription.default(visited),
          archival_summary: Stubs::ArchivalSummary.default(visited),
          table_class_summary: Stubs::TableClassSummary.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ArchivalSummary
    class ArchivalSummary

      def self.default(visited=[])
        return nil if visited.include?('ArchivalSummary')
        visited = visited + ['ArchivalSummary']
        {
          archival_date_time: Time.now,
          archival_reason: 'archival_reason',
          archival_backup_arn: 'archival_backup_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SSEDescription
    class SSEDescription

      def self.default(visited=[])
        return nil if visited.include?('SSEDescription')
        visited = visited + ['SSEDescription']
        {
          status: 'status',
          sse_type: 'sse_type',
          kms_master_key_arn: 'kms_master_key_arn',
          inaccessible_encryption_date_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for RestoreSummary
    class RestoreSummary

      def self.default(visited=[])
        return nil if visited.include?('RestoreSummary')
        visited = visited + ['RestoreSummary']
        {
          source_backup_arn: 'source_backup_arn',
          source_table_arn: 'source_table_arn',
          restore_date_time: Time.now,
          restore_in_progress: false,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for StreamSpecification
    class StreamSpecification

      def self.default(visited=[])
        return nil if visited.include?('StreamSpecification')
        visited = visited + ['StreamSpecification']
        {
          stream_enabled: false,
          stream_view_type: 'stream_view_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for GlobalSecondaryIndexDescriptionList
    class GlobalSecondaryIndexDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('GlobalSecondaryIndexDescriptionList')
        visited = visited + ['GlobalSecondaryIndexDescriptionList']
        [
          Stubs::GlobalSecondaryIndexDescription.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for GlobalSecondaryIndexDescription
    class GlobalSecondaryIndexDescription

      def self.default(visited=[])
        return nil if visited.include?('GlobalSecondaryIndexDescription')
        visited = visited + ['GlobalSecondaryIndexDescription']
        {
          index_name: 'index_name',
          key_schema: Stubs::KeySchema.default(visited),
          projection: Stubs::Projection.default(visited),
          index_status: 'index_status',
          backfilling: false,
          provisioned_throughput: Stubs::ProvisionedThroughputDescription.default(visited),
          index_size_bytes: 1,
          item_count: 1,
          index_arn: 'index_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ProvisionedThroughputDescription
    class ProvisionedThroughputDescription

      def self.default(visited=[])
        return nil if visited.include?('ProvisionedThroughputDescription')
        visited = visited + ['ProvisionedThroughputDescription']
        {
          last_increase_date_time: Time.now,
          last_decrease_date_time: Time.now,
          number_of_decreases_today: 1,
          read_capacity_units: 1,
          write_capacity_units: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for Projection
    class Projection

      def self.default(visited=[])
        return nil if visited.include?('Projection')
        visited = visited + ['Projection']
        {
          projection_type: 'projection_type',
          non_key_attributes: Stubs::NonKeyAttributeNameList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for NonKeyAttributeNameList
    class NonKeyAttributeNameList
      def self.default(visited=[])
        return nil if visited.include?('NonKeyAttributeNameList')
        visited = visited + ['NonKeyAttributeNameList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # List Stubber for KeySchema
    class KeySchema
      def self.default(visited=[])
        return nil if visited.include?('KeySchema')
        visited = visited + ['KeySchema']
        [
          Stubs::KeySchemaElement.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for KeySchemaElement
    class KeySchemaElement

      def self.default(visited=[])
        return nil if visited.include?('KeySchemaElement')
        visited = visited + ['KeySchemaElement']
        {
          attribute_name: 'attribute_name',
          key_type: 'key_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LocalSecondaryIndexDescriptionList
    class LocalSecondaryIndexDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('LocalSecondaryIndexDescriptionList')
        visited = visited + ['LocalSecondaryIndexDescriptionList']
        [
          Stubs::LocalSecondaryIndexDescription.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LocalSecondaryIndexDescription
    class LocalSecondaryIndexDescription

      def self.default(visited=[])
        return nil if visited.include?('LocalSecondaryIndexDescription')
        visited = visited + ['LocalSecondaryIndexDescription']
        {
          index_name: 'index_name',
          key_schema: Stubs::KeySchema.default(visited),
          projection: Stubs::Projection.default(visited),
          index_size_bytes: 1,
          item_count: 1,
          index_arn: 'index_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for BillingModeSummary
    class BillingModeSummary

      def self.default(visited=[])
        return nil if visited.include?('BillingModeSummary')
        visited = visited + ['BillingModeSummary']
        {
          billing_mode: 'billing_mode',
          last_update_to_pay_per_request_date_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AttributeDefinitions
    class AttributeDefinitions
      def self.default(visited=[])
        return nil if visited.include?('AttributeDefinitions')
        visited = visited + ['AttributeDefinitions']
        [
          Stubs::AttributeDefinition.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AttributeDefinition
    class AttributeDefinition

      def self.default(visited=[])
        return nil if visited.include?('AttributeDefinition')
        visited = visited + ['AttributeDefinition']
        {
          attribute_name: 'attribute_name',
          attribute_type: 'attribute_type',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DeleteBackup
    class DeleteBackup

      def self.default(visited=[])
        {
          backup_description: Stubs::BackupDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for BackupDescription
    class BackupDescription

      def self.default(visited=[])
        return nil if visited.include?('BackupDescription')
        visited = visited + ['BackupDescription']
        {
          backup_details: Stubs::BackupDetails.default(visited),
          source_table_details: Stubs::SourceTableDetails.default(visited),
          source_table_feature_details: Stubs::SourceTableFeatureDetails.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SourceTableFeatureDetails
    class SourceTableFeatureDetails

      def self.default(visited=[])
        return nil if visited.include?('SourceTableFeatureDetails')
        visited = visited + ['SourceTableFeatureDetails']
        {
          local_secondary_indexes: Stubs::LocalSecondaryIndexes.default(visited),
          global_secondary_indexes: Stubs::GlobalSecondaryIndexes.default(visited),
          stream_description: Stubs::StreamSpecification.default(visited),
          time_to_live_description: Stubs::TimeToLiveDescription.default(visited),
          sse_description: Stubs::SSEDescription.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for TimeToLiveDescription
    class TimeToLiveDescription

      def self.default(visited=[])
        return nil if visited.include?('TimeToLiveDescription')
        visited = visited + ['TimeToLiveDescription']
        {
          time_to_live_status: 'time_to_live_status',
          attribute_name: 'attribute_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for GlobalSecondaryIndexes
    class GlobalSecondaryIndexes
      def self.default(visited=[])
        return nil if visited.include?('GlobalSecondaryIndexes')
        visited = visited + ['GlobalSecondaryIndexes']
        [
          Stubs::GlobalSecondaryIndexInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for GlobalSecondaryIndexInfo
    class GlobalSecondaryIndexInfo

      def self.default(visited=[])
        return nil if visited.include?('GlobalSecondaryIndexInfo')
        visited = visited + ['GlobalSecondaryIndexInfo']
        {
          index_name: 'index_name',
          key_schema: Stubs::KeySchema.default(visited),
          projection: Stubs::Projection.default(visited),
          provisioned_throughput: Stubs::ProvisionedThroughput.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for ProvisionedThroughput
    class ProvisionedThroughput

      def self.default(visited=[])
        return nil if visited.include?('ProvisionedThroughput')
        visited = visited + ['ProvisionedThroughput']
        {
          read_capacity_units: 1,
          write_capacity_units: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for LocalSecondaryIndexes
    class LocalSecondaryIndexes
      def self.default(visited=[])
        return nil if visited.include?('LocalSecondaryIndexes')
        visited = visited + ['LocalSecondaryIndexes']
        [
          Stubs::LocalSecondaryIndexInfo.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for LocalSecondaryIndexInfo
    class LocalSecondaryIndexInfo

      def self.default(visited=[])
        return nil if visited.include?('LocalSecondaryIndexInfo')
        visited = visited + ['LocalSecondaryIndexInfo']
        {
          index_name: 'index_name',
          key_schema: Stubs::KeySchema.default(visited),
          projection: Stubs::Projection.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for SourceTableDetails
    class SourceTableDetails

      def self.default(visited=[])
        return nil if visited.include?('SourceTableDetails')
        visited = visited + ['SourceTableDetails']
        {
          table_name: 'table_name',
          table_id: 'table_id',
          table_arn: 'table_arn',
          table_size_bytes: 1,
          key_schema: Stubs::KeySchema.default(visited),
          table_creation_date_time: Time.now,
          provisioned_throughput: Stubs::ProvisionedThroughput.default(visited),
          item_count: 1,
          billing_mode: 'billing_mode',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DeleteItem
    class DeleteItem

      def self.default(visited=[])
        {
          attributes: Stubs::AttributeMap.default(visited),
          consumed_capacity: Stubs::ConsumedCapacity.default(visited),
          item_collection_metrics: Stubs::ItemCollectionMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DeleteTable
    class DeleteTable

      def self.default(visited=[])
        {
          table_description: Stubs::TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeBackup
    class DescribeBackup

      def self.default(visited=[])
        {
          backup_description: Stubs::BackupDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeContinuousBackups
    class DescribeContinuousBackups

      def self.default(visited=[])
        {
          continuous_backups_description: Stubs::ContinuousBackupsDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ContinuousBackupsDescription
    class ContinuousBackupsDescription

      def self.default(visited=[])
        return nil if visited.include?('ContinuousBackupsDescription')
        visited = visited + ['ContinuousBackupsDescription']
        {
          continuous_backups_status: 'continuous_backups_status',
          point_in_time_recovery_description: Stubs::PointInTimeRecoveryDescription.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for PointInTimeRecoveryDescription
    class PointInTimeRecoveryDescription

      def self.default(visited=[])
        return nil if visited.include?('PointInTimeRecoveryDescription')
        visited = visited + ['PointInTimeRecoveryDescription']
        {
          point_in_time_recovery_status: 'point_in_time_recovery_status',
          earliest_restorable_date_time: Time.now,
          latest_restorable_date_time: Time.now,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeContributorInsights
    class DescribeContributorInsights

      def self.default(visited=[])
        {
          table_name: 'table_name',
          index_name: 'index_name',
          contributor_insights_rule_list: Stubs::ContributorInsightsRuleList.default(visited),
          contributor_insights_status: 'contributor_insights_status',
          last_update_date_time: Time.now,
          failure_exception: Stubs::FailureException.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for FailureException
    class FailureException

      def self.default(visited=[])
        return nil if visited.include?('FailureException')
        visited = visited + ['FailureException']
        {
          exception_name: 'exception_name',
          exception_description: 'exception_description',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ContributorInsightsRuleList
    class ContributorInsightsRuleList
      def self.default(visited=[])
        return nil if visited.include?('ContributorInsightsRuleList')
        visited = visited + ['ContributorInsightsRuleList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for DescribeEndpoints
    class DescribeEndpoints

      def self.default(visited=[])
        {
          endpoints: Stubs::Endpoints.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for Endpoints
    class Endpoints
      def self.default(visited=[])
        return nil if visited.include?('Endpoints')
        visited = visited + ['Endpoints']
        [
          Stubs::Endpoint.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint

      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          address: 'address',
          cache_period_in_minutes: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeExport
    class DescribeExport

      def self.default(visited=[])
        {
          export_description: Stubs::ExportDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for ExportDescription
    class ExportDescription

      def self.default(visited=[])
        return nil if visited.include?('ExportDescription')
        visited = visited + ['ExportDescription']
        {
          export_arn: 'export_arn',
          export_status: 'export_status',
          start_time: Time.now,
          end_time: Time.now,
          export_manifest: 'export_manifest',
          table_arn: 'table_arn',
          table_id: 'table_id',
          export_time: Time.now,
          client_token: 'client_token',
          s3_bucket: 's3_bucket',
          s3_bucket_owner: 's3_bucket_owner',
          s3_prefix: 's3_prefix',
          s3_sse_algorithm: 's3_sse_algorithm',
          s3_sse_kms_key_id: 's3_sse_kms_key_id',
          failure_code: 'failure_code',
          failure_message: 'failure_message',
          export_format: 'export_format',
          billed_size_bytes: 1,
          item_count: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeGlobalTable
    class DescribeGlobalTable

      def self.default(visited=[])
        {
          global_table_description: Stubs::GlobalTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeGlobalTableSettings
    class DescribeGlobalTableSettings

      def self.default(visited=[])
        {
          global_table_name: 'global_table_name',
          replica_settings: Stubs::ReplicaSettingsDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ReplicaSettingsDescriptionList
    class ReplicaSettingsDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaSettingsDescriptionList')
        visited = visited + ['ReplicaSettingsDescriptionList']
        [
          Stubs::ReplicaSettingsDescription.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReplicaSettingsDescription
    class ReplicaSettingsDescription

      def self.default(visited=[])
        return nil if visited.include?('ReplicaSettingsDescription')
        visited = visited + ['ReplicaSettingsDescription']
        {
          region_name: 'region_name',
          replica_status: 'replica_status',
          replica_billing_mode_summary: Stubs::BillingModeSummary.default(visited),
          replica_provisioned_read_capacity_units: 1,
          replica_provisioned_read_capacity_auto_scaling_settings: Stubs::AutoScalingSettingsDescription.default(visited),
          replica_provisioned_write_capacity_units: 1,
          replica_provisioned_write_capacity_auto_scaling_settings: Stubs::AutoScalingSettingsDescription.default(visited),
          replica_global_secondary_index_settings: Stubs::ReplicaGlobalSecondaryIndexSettingsDescriptionList.default(visited),
          replica_table_class_summary: Stubs::TableClassSummary.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ReplicaGlobalSecondaryIndexSettingsDescriptionList
    class ReplicaGlobalSecondaryIndexSettingsDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexSettingsDescriptionList')
        visited = visited + ['ReplicaGlobalSecondaryIndexSettingsDescriptionList']
        [
          Stubs::ReplicaGlobalSecondaryIndexSettingsDescription.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReplicaGlobalSecondaryIndexSettingsDescription
    class ReplicaGlobalSecondaryIndexSettingsDescription

      def self.default(visited=[])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexSettingsDescription')
        visited = visited + ['ReplicaGlobalSecondaryIndexSettingsDescription']
        {
          index_name: 'index_name',
          index_status: 'index_status',
          provisioned_read_capacity_units: 1,
          provisioned_read_capacity_auto_scaling_settings: Stubs::AutoScalingSettingsDescription.default(visited),
          provisioned_write_capacity_units: 1,
          provisioned_write_capacity_auto_scaling_settings: Stubs::AutoScalingSettingsDescription.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for AutoScalingSettingsDescription
    class AutoScalingSettingsDescription

      def self.default(visited=[])
        return nil if visited.include?('AutoScalingSettingsDescription')
        visited = visited + ['AutoScalingSettingsDescription']
        {
          minimum_units: 1,
          maximum_units: 1,
          auto_scaling_disabled: false,
          auto_scaling_role_arn: 'auto_scaling_role_arn',
          scaling_policies: Stubs::AutoScalingPolicyDescriptionList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for AutoScalingPolicyDescriptionList
    class AutoScalingPolicyDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingPolicyDescriptionList')
        visited = visited + ['AutoScalingPolicyDescriptionList']
        [
          Stubs::AutoScalingPolicyDescription.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for AutoScalingPolicyDescription
    class AutoScalingPolicyDescription

      def self.default(visited=[])
        return nil if visited.include?('AutoScalingPolicyDescription')
        visited = visited + ['AutoScalingPolicyDescription']
        {
          policy_name: 'policy_name',
          target_tracking_scaling_policy_configuration: Stubs::AutoScalingTargetTrackingScalingPolicyConfigurationDescription.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Structure Stubber for AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    class AutoScalingTargetTrackingScalingPolicyConfigurationDescription

      def self.default(visited=[])
        return nil if visited.include?('AutoScalingTargetTrackingScalingPolicyConfigurationDescription')
        visited = visited + ['AutoScalingTargetTrackingScalingPolicyConfigurationDescription']
        {
          disable_scale_in: false,
          scale_in_cooldown: 1,
          scale_out_cooldown: 1,
          target_value: 1.0,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeKinesisStreamingDestination
    class DescribeKinesisStreamingDestination

      def self.default(visited=[])
        {
          table_name: 'table_name',
          kinesis_data_stream_destinations: Stubs::KinesisDataStreamDestinations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for KinesisDataStreamDestinations
    class KinesisDataStreamDestinations
      def self.default(visited=[])
        return nil if visited.include?('KinesisDataStreamDestinations')
        visited = visited + ['KinesisDataStreamDestinations']
        [
          Stubs::KinesisDataStreamDestination.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for KinesisDataStreamDestination
    class KinesisDataStreamDestination

      def self.default(visited=[])
        return nil if visited.include?('KinesisDataStreamDestination')
        visited = visited + ['KinesisDataStreamDestination']
        {
          stream_arn: 'stream_arn',
          destination_status: 'destination_status',
          destination_status_description: 'destination_status_description',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeLimits
    class DescribeLimits

      def self.default(visited=[])
        {
          account_max_read_capacity_units: 1,
          account_max_write_capacity_units: 1,
          table_max_read_capacity_units: 1,
          table_max_write_capacity_units: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeTable
    class DescribeTable

      def self.default(visited=[])
        {
          table: Stubs::TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DescribeTableReplicaAutoScaling
    class DescribeTableReplicaAutoScaling

      def self.default(visited=[])
        {
          table_auto_scaling_description: Stubs::TableAutoScalingDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TableAutoScalingDescription
    class TableAutoScalingDescription

      def self.default(visited=[])
        return nil if visited.include?('TableAutoScalingDescription')
        visited = visited + ['TableAutoScalingDescription']
        {
          table_name: 'table_name',
          table_status: 'table_status',
          replicas: Stubs::ReplicaAutoScalingDescriptionList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ReplicaAutoScalingDescriptionList
    class ReplicaAutoScalingDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaAutoScalingDescriptionList')
        visited = visited + ['ReplicaAutoScalingDescriptionList']
        [
          Stubs::ReplicaAutoScalingDescription.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReplicaAutoScalingDescription
    class ReplicaAutoScalingDescription

      def self.default(visited=[])
        return nil if visited.include?('ReplicaAutoScalingDescription')
        visited = visited + ['ReplicaAutoScalingDescription']
        {
          region_name: 'region_name',
          global_secondary_indexes: Stubs::ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.default(visited),
          replica_provisioned_read_capacity_auto_scaling_settings: Stubs::AutoScalingSettingsDescription.default(visited),
          replica_provisioned_write_capacity_auto_scaling_settings: Stubs::AutoScalingSettingsDescription.default(visited),
          replica_status: 'replica_status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ReplicaGlobalSecondaryIndexAutoScalingDescriptionList
    class ReplicaGlobalSecondaryIndexAutoScalingDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexAutoScalingDescriptionList')
        visited = visited + ['ReplicaGlobalSecondaryIndexAutoScalingDescriptionList']
        [
          Stubs::ReplicaGlobalSecondaryIndexAutoScalingDescription.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ReplicaGlobalSecondaryIndexAutoScalingDescription
    class ReplicaGlobalSecondaryIndexAutoScalingDescription

      def self.default(visited=[])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexAutoScalingDescription')
        visited = visited + ['ReplicaGlobalSecondaryIndexAutoScalingDescription']
        {
          index_name: 'index_name',
          index_status: 'index_status',
          provisioned_read_capacity_auto_scaling_settings: Stubs::AutoScalingSettingsDescription.default(visited),
          provisioned_write_capacity_auto_scaling_settings: Stubs::AutoScalingSettingsDescription.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeTimeToLive
    class DescribeTimeToLive

      def self.default(visited=[])
        {
          time_to_live_description: Stubs::TimeToLiveDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for DisableKinesisStreamingDestination
    class DisableKinesisStreamingDestination

      def self.default(visited=[])
        {
          table_name: 'table_name',
          stream_arn: 'stream_arn',
          destination_status: 'destination_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for EnableKinesisStreamingDestination
    class EnableKinesisStreamingDestination

      def self.default(visited=[])
        {
          table_name: 'table_name',
          stream_arn: 'stream_arn',
          destination_status: 'destination_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ExecuteStatement
    class ExecuteStatement

      def self.default(visited=[])
        {
          items: Stubs::ItemList.default(visited),
          next_token: 'next_token',
          consumed_capacity: Stubs::ConsumedCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ExecuteTransaction
    class ExecuteTransaction

      def self.default(visited=[])
        {
          responses: Stubs::ItemResponseList.default(visited),
          consumed_capacity: Stubs::ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ItemResponseList
    class ItemResponseList
      def self.default(visited=[])
        return nil if visited.include?('ItemResponseList')
        visited = visited + ['ItemResponseList']
        [
          Stubs::ItemResponse.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ItemResponse
    class ItemResponse

      def self.default(visited=[])
        return nil if visited.include?('ItemResponse')
        visited = visited + ['ItemResponse']
        {
          item: Stubs::AttributeMap.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ExportTableToPointInTime
    class ExportTableToPointInTime

      def self.default(visited=[])
        {
          export_description: Stubs::ExportDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for GetItem
    class GetItem

      def self.default(visited=[])
        {
          item: Stubs::AttributeMap.default(visited),
          consumed_capacity: Stubs::ConsumedCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for ListBackups
    class ListBackups

      def self.default(visited=[])
        {
          backup_summaries: Stubs::BackupSummaries.default(visited),
          last_evaluated_backup_arn: 'last_evaluated_backup_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for BackupSummaries
    class BackupSummaries
      def self.default(visited=[])
        return nil if visited.include?('BackupSummaries')
        visited = visited + ['BackupSummaries']
        [
          Stubs::BackupSummary.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for BackupSummary
    class BackupSummary

      def self.default(visited=[])
        return nil if visited.include?('BackupSummary')
        visited = visited + ['BackupSummary']
        {
          table_name: 'table_name',
          table_id: 'table_id',
          table_arn: 'table_arn',
          backup_arn: 'backup_arn',
          backup_name: 'backup_name',
          backup_creation_date_time: Time.now,
          backup_expiry_date_time: Time.now,
          backup_status: 'backup_status',
          backup_type: 'backup_type',
          backup_size_bytes: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ListContributorInsights
    class ListContributorInsights

      def self.default(visited=[])
        {
          contributor_insights_summaries: Stubs::ContributorInsightsSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ContributorInsightsSummaries
    class ContributorInsightsSummaries
      def self.default(visited=[])
        return nil if visited.include?('ContributorInsightsSummaries')
        visited = visited + ['ContributorInsightsSummaries']
        [
          Stubs::ContributorInsightsSummary.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ContributorInsightsSummary
    class ContributorInsightsSummary

      def self.default(visited=[])
        return nil if visited.include?('ContributorInsightsSummary')
        visited = visited + ['ContributorInsightsSummary']
        {
          table_name: 'table_name',
          index_name: 'index_name',
          contributor_insights_status: 'contributor_insights_status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ListExports
    class ListExports

      def self.default(visited=[])
        {
          export_summaries: Stubs::ExportSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for ExportSummaries
    class ExportSummaries
      def self.default(visited=[])
        return nil if visited.include?('ExportSummaries')
        visited = visited + ['ExportSummaries']
        [
          Stubs::ExportSummary.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for ExportSummary
    class ExportSummary

      def self.default(visited=[])
        return nil if visited.include?('ExportSummary')
        visited = visited + ['ExportSummary']
        {
          export_arn: 'export_arn',
          export_status: 'export_status',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ListGlobalTables
    class ListGlobalTables

      def self.default(visited=[])
        {
          global_tables: Stubs::GlobalTableList.default(visited),
          last_evaluated_global_table_name: 'last_evaluated_global_table_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for GlobalTableList
    class GlobalTableList
      def self.default(visited=[])
        return nil if visited.include?('GlobalTableList')
        visited = visited + ['GlobalTableList']
        [
          Stubs::GlobalTable.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for GlobalTable
    class GlobalTable

      def self.default(visited=[])
        return nil if visited.include?('GlobalTable')
        visited = visited + ['GlobalTable']
        {
          global_table_name: 'global_table_name',
          replication_group: Stubs::ReplicaList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # List Stubber for ReplicaList
    class ReplicaList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaList')
        visited = visited + ['ReplicaList']
        [
          Stubs::Replica.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Structure Stubber for Replica
    class Replica

      def self.default(visited=[])
        return nil if visited.include?('Replica')
        visited = visited + ['Replica']
        {
          region_name: 'region_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for ListTables
    class ListTables

      def self.default(visited=[])
        {
          table_names: Stubs::TableNameList.default(visited),
          last_evaluated_table_name: 'last_evaluated_table_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TableNameList
    class TableNameList
      def self.default(visited=[])
        return nil if visited.include?('TableNameList')
        visited = visited + ['TableNameList']
        [
          'member'
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
        end
        data
      end
    end

    # Operation Stubber for ListTagsOfResource
    class ListTagsOfResource

      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end
      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
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

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end

    # Operation Stubber for PutItem
    class PutItem

      def self.default(visited=[])
        {
          attributes: Stubs::AttributeMap.default(visited),
          consumed_capacity: Stubs::ConsumedCapacity.default(visited),
          item_collection_metrics: Stubs::ItemCollectionMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for Query
    class Query

      def self.default(visited=[])
        {
          items: Stubs::ItemList.default(visited),
          count: 1,
          scanned_count: 1,
          last_evaluated_key: Stubs::Key.default(visited),
          consumed_capacity: Stubs::ConsumedCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RestoreTableFromBackup
    class RestoreTableFromBackup

      def self.default(visited=[])
        {
          table_description: Stubs::TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for RestoreTableToPointInTime
    class RestoreTableToPointInTime

      def self.default(visited=[])
        {
          table_description: Stubs::TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for Scan
    class Scan

      def self.default(visited=[])
        {
          items: Stubs::ItemList.default(visited),
          count: 1,
          scanned_count: 1,
          last_evaluated_key: Stubs::Key.default(visited),
          consumed_capacity: Stubs::ConsumedCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
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
      end
    end

    # Operation Stubber for TransactGetItems
    class TransactGetItems

      def self.default(visited=[])
        {
          consumed_capacity: Stubs::ConsumedCapacityMultiple.default(visited),
          responses: Stubs::ItemResponseList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for TransactWriteItems
    class TransactWriteItems

      def self.default(visited=[])
        {
          consumed_capacity: Stubs::ConsumedCapacityMultiple.default(visited),
          item_collection_metrics: Stubs::ItemCollectionMetricsPerTable.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
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
      end
    end

    # Operation Stubber for UpdateContinuousBackups
    class UpdateContinuousBackups

      def self.default(visited=[])
        {
          continuous_backups_description: Stubs::ContinuousBackupsDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UpdateContributorInsights
    class UpdateContributorInsights

      def self.default(visited=[])
        {
          table_name: 'table_name',
          index_name: 'index_name',
          contributor_insights_status: 'contributor_insights_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UpdateGlobalTable
    class UpdateGlobalTable

      def self.default(visited=[])
        {
          global_table_description: Stubs::GlobalTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UpdateGlobalTableSettings
    class UpdateGlobalTableSettings

      def self.default(visited=[])
        {
          global_table_name: 'global_table_name',
          replica_settings: Stubs::ReplicaSettingsDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UpdateItem
    class UpdateItem

      def self.default(visited=[])
        {
          attributes: Stubs::AttributeMap.default(visited),
          consumed_capacity: Stubs::ConsumedCapacity.default(visited),
          item_collection_metrics: Stubs::ItemCollectionMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UpdateTable
    class UpdateTable

      def self.default(visited=[])
        {
          table_description: Stubs::TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UpdateTableReplicaAutoScaling
    class UpdateTableReplicaAutoScaling

      def self.default(visited=[])
        {
          table_auto_scaling_description: Stubs::TableAutoScalingDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Operation Stubber for UpdateTimeToLive
    class UpdateTimeToLive

      def self.default(visited=[])
        {
          time_to_live_specification: Stubs::TimeToLiveSpecification.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
      end
    end

    # Structure Stubber for TimeToLiveSpecification
    class TimeToLiveSpecification

      def self.default(visited=[])
        return nil if visited.include?('TimeToLiveSpecification')
        visited = visited + ['TimeToLiveSpecification']
        {
          enabled: false,
          attribute_name: 'attribute_name',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data
      end
    end
  end
end
