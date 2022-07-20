# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::DynamoDB
  module Stubs

    # Operation Stubber for BatchExecuteStatement
    class BatchExecuteStatement
      def self.default(visited=[])
        {
          responses: PartiQLBatchResponse.default(visited),
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Responses'] = PartiQLBatchResponse.stub(stub[:responses]) unless stub[:responses].nil?
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConsumedCapacityMultiple
    class ConsumedCapacityMultiple
      def self.default(visited=[])
        return nil if visited.include?('ConsumedCapacityMultiple')
        visited = visited + ['ConsumedCapacityMultiple']
        [
          ConsumedCapacity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConsumedCapacity.stub(element) unless element.nil?
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
          table: Capacity.default(visited),
          local_secondary_indexes: SecondaryIndexesCapacityMap.default(visited),
          global_secondary_indexes: SecondaryIndexesCapacityMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConsumedCapacity.new
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['CapacityUnits'] = Hearth::NumberHelper.serialize(stub[:capacity_units])
        data['ReadCapacityUnits'] = Hearth::NumberHelper.serialize(stub[:read_capacity_units])
        data['WriteCapacityUnits'] = Hearth::NumberHelper.serialize(stub[:write_capacity_units])
        data['Table'] = Capacity.stub(stub[:table]) unless stub[:table].nil?
        data['LocalSecondaryIndexes'] = SecondaryIndexesCapacityMap.stub(stub[:local_secondary_indexes]) unless stub[:local_secondary_indexes].nil?
        data['GlobalSecondaryIndexes'] = SecondaryIndexesCapacityMap.stub(stub[:global_secondary_indexes]) unless stub[:global_secondary_indexes].nil?
        data
      end
    end

    # Map Stubber for SecondaryIndexesCapacityMap
    class SecondaryIndexesCapacityMap
      def self.default(visited=[])
        return nil if visited.include?('SecondaryIndexesCapacityMap')
        visited = visited + ['SecondaryIndexesCapacityMap']
        {
          test_key: Capacity.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Capacity.stub(value) unless value.nil?
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

      def self.stub(stub)
        stub ||= Types::Capacity.new
        data = {}
        data['ReadCapacityUnits'] = Hearth::NumberHelper.serialize(stub[:read_capacity_units])
        data['WriteCapacityUnits'] = Hearth::NumberHelper.serialize(stub[:write_capacity_units])
        data['CapacityUnits'] = Hearth::NumberHelper.serialize(stub[:capacity_units])
        data
      end
    end

    # List Stubber for PartiQLBatchResponse
    class PartiQLBatchResponse
      def self.default(visited=[])
        return nil if visited.include?('PartiQLBatchResponse')
        visited = visited + ['PartiQLBatchResponse']
        [
          BatchStatementResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchStatementResponse.stub(element) unless element.nil?
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
          error: BatchStatementError.default(visited),
          table_name: 'table_name',
          item: AttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchStatementResponse.new
        data = {}
        data['Error'] = BatchStatementError.stub(stub[:error]) unless stub[:error].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['Item'] = AttributeMap.stub(stub[:item]) unless stub[:item].nil?
        data
      end
    end

    # Map Stubber for AttributeMap
    class AttributeMap
      def self.default(visited=[])
        return nil if visited.include?('AttributeMap')
        visited = visited + ['AttributeMap']
        {
          test_key: AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
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

      def self.stub(stub)
        data = {}
        case stub
        when Types::AttributeValue::S
          data['S'] = stub.__getobj__
        when Types::AttributeValue::N
          data['N'] = stub.__getobj__
        when Types::AttributeValue::B
          data['B'] = ::Base64::encode64(stub.__getobj__)
        when Types::AttributeValue::Ss
          data['SS'] = (StringSetAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::Ns
          data['NS'] = (NumberSetAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::Bs
          data['BS'] = (BinarySetAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::M
          data['M'] = (MapAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::L
          data['L'] = (ListAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::Null
          data['NULL'] = stub.__getobj__
        when Types::AttributeValue::Bool
          data['BOOL'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AttributeValue"
        end

        data
      end
    end

    # List Stubber for ListAttributeValue
    class ListAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('ListAttributeValue')
        visited = visited + ['ListAttributeValue']
        [
          AttributeValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AttributeValue.stub(element) unless element.nil?
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
          test_key: AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ::Base64::encode64(element) unless element.nil?
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
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

      def self.stub(stub)
        stub ||= Types::BatchStatementError.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for BatchGetItem
    class BatchGetItem
      def self.default(visited=[])
        {
          responses: BatchGetResponseMap.default(visited),
          unprocessed_keys: BatchGetRequestMap.default(visited),
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Responses'] = BatchGetResponseMap.stub(stub[:responses]) unless stub[:responses].nil?
        data['UnprocessedKeys'] = BatchGetRequestMap.stub(stub[:unprocessed_keys]) unless stub[:unprocessed_keys].nil?
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for BatchGetRequestMap
    class BatchGetRequestMap
      def self.default(visited=[])
        return nil if visited.include?('BatchGetRequestMap')
        visited = visited + ['BatchGetRequestMap']
        {
          test_key: KeysAndAttributes.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = KeysAndAttributes.stub(value) unless value.nil?
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
          keys: KeyList.default(visited),
          attributes_to_get: AttributeNameList.default(visited),
          consistent_read: false,
          projection_expression: 'projection_expression',
          expression_attribute_names: ExpressionAttributeNameMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KeysAndAttributes.new
        data = {}
        data['Keys'] = KeyList.stub(stub[:keys]) unless stub[:keys].nil?
        data['AttributesToGet'] = AttributeNameList.stub(stub[:attributes_to_get]) unless stub[:attributes_to_get].nil?
        data['ConsistentRead'] = stub[:consistent_read] unless stub[:consistent_read].nil?
        data['ProjectionExpression'] = stub[:projection_expression] unless stub[:projection_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.stub(stub[:expression_attribute_names]) unless stub[:expression_attribute_names].nil?
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

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
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
          Key.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Key.stub(element) unless element.nil?
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
          test_key: AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
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
          test_key: ItemList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ItemList.stub(value) unless value.nil?
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
          AttributeMap.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AttributeMap.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for BatchWriteItem
    class BatchWriteItem
      def self.default(visited=[])
        {
          unprocessed_items: BatchWriteItemRequestMap.default(visited),
          item_collection_metrics: ItemCollectionMetricsPerTable.default(visited),
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UnprocessedItems'] = BatchWriteItemRequestMap.stub(stub[:unprocessed_items]) unless stub[:unprocessed_items].nil?
        data['ItemCollectionMetrics'] = ItemCollectionMetricsPerTable.stub(stub[:item_collection_metrics]) unless stub[:item_collection_metrics].nil?
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for ItemCollectionMetricsPerTable
    class ItemCollectionMetricsPerTable
      def self.default(visited=[])
        return nil if visited.include?('ItemCollectionMetricsPerTable')
        visited = visited + ['ItemCollectionMetricsPerTable']
        {
          test_key: ItemCollectionMetricsMultiple.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ItemCollectionMetricsMultiple.stub(value) unless value.nil?
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
          ItemCollectionMetrics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ItemCollectionMetrics.stub(element) unless element.nil?
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
          item_collection_key: ItemCollectionKeyAttributeMap.default(visited),
          size_estimate_range_gb: ItemCollectionSizeEstimateRange.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ItemCollectionMetrics.new
        data = {}
        data['ItemCollectionKey'] = ItemCollectionKeyAttributeMap.stub(stub[:item_collection_key]) unless stub[:item_collection_key].nil?
        data['SizeEstimateRangeGB'] = ItemCollectionSizeEstimateRange.stub(stub[:size_estimate_range_gb]) unless stub[:size_estimate_range_gb].nil?
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
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
          test_key: AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
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
          test_key: WriteRequests.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = WriteRequests.stub(value) unless value.nil?
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
          WriteRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WriteRequest.stub(element) unless element.nil?
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
          put_request: PutRequest.default(visited),
          delete_request: DeleteRequest.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WriteRequest.new
        data = {}
        data['PutRequest'] = PutRequest.stub(stub[:put_request]) unless stub[:put_request].nil?
        data['DeleteRequest'] = DeleteRequest.stub(stub[:delete_request]) unless stub[:delete_request].nil?
        data
      end
    end

    # Structure Stubber for DeleteRequest
    class DeleteRequest
      def self.default(visited=[])
        return nil if visited.include?('DeleteRequest')
        visited = visited + ['DeleteRequest']
        {
          key: Key.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeleteRequest.new
        data = {}
        data['Key'] = Key.stub(stub[:key]) unless stub[:key].nil?
        data
      end
    end

    # Structure Stubber for PutRequest
    class PutRequest
      def self.default(visited=[])
        return nil if visited.include?('PutRequest')
        visited = visited + ['PutRequest']
        {
          item: PutItemInputAttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PutRequest.new
        data = {}
        data['Item'] = PutItemInputAttributeMap.stub(stub[:item]) unless stub[:item].nil?
        data
      end
    end

    # Map Stubber for PutItemInputAttributeMap
    class PutItemInputAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('PutItemInputAttributeMap')
        visited = visited + ['PutItemInputAttributeMap']
        {
          test_key: AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateBackup
    class CreateBackup
      def self.default(visited=[])
        {
          backup_details: BackupDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BackupDetails'] = BackupDetails.stub(stub[:backup_details]) unless stub[:backup_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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

      def self.stub(stub)
        stub ||= Types::BackupDetails.new
        data = {}
        data['BackupArn'] = stub[:backup_arn] unless stub[:backup_arn].nil?
        data['BackupName'] = stub[:backup_name] unless stub[:backup_name].nil?
        data['BackupSizeBytes'] = stub[:backup_size_bytes] unless stub[:backup_size_bytes].nil?
        data['BackupStatus'] = stub[:backup_status] unless stub[:backup_status].nil?
        data['BackupType'] = stub[:backup_type] unless stub[:backup_type].nil?
        data['BackupCreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:backup_creation_date_time]).to_i unless stub[:backup_creation_date_time].nil?
        data['BackupExpiryDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:backup_expiry_date_time]).to_i unless stub[:backup_expiry_date_time].nil?
        data
      end
    end

    # Operation Stubber for CreateGlobalTable
    class CreateGlobalTable
      def self.default(visited=[])
        {
          global_table_description: GlobalTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTableDescription'] = GlobalTableDescription.stub(stub[:global_table_description]) unless stub[:global_table_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for GlobalTableDescription
    class GlobalTableDescription
      def self.default(visited=[])
        return nil if visited.include?('GlobalTableDescription')
        visited = visited + ['GlobalTableDescription']
        {
          replication_group: ReplicaDescriptionList.default(visited),
          global_table_arn: 'global_table_arn',
          creation_date_time: Time.now,
          global_table_status: 'global_table_status',
          global_table_name: 'global_table_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalTableDescription.new
        data = {}
        data['ReplicationGroup'] = ReplicaDescriptionList.stub(stub[:replication_group]) unless stub[:replication_group].nil?
        data['GlobalTableArn'] = stub[:global_table_arn] unless stub[:global_table_arn].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['GlobalTableStatus'] = stub[:global_table_status] unless stub[:global_table_status].nil?
        data['GlobalTableName'] = stub[:global_table_name] unless stub[:global_table_name].nil?
        data
      end
    end

    # List Stubber for ReplicaDescriptionList
    class ReplicaDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaDescriptionList')
        visited = visited + ['ReplicaDescriptionList']
        [
          ReplicaDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaDescription.stub(element) unless element.nil?
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
          provisioned_throughput_override: ProvisionedThroughputOverride.default(visited),
          global_secondary_indexes: ReplicaGlobalSecondaryIndexDescriptionList.default(visited),
          replica_inaccessible_date_time: Time.now,
          replica_table_class_summary: TableClassSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaDescription.new
        data = {}
        data['RegionName'] = stub[:region_name] unless stub[:region_name].nil?
        data['ReplicaStatus'] = stub[:replica_status] unless stub[:replica_status].nil?
        data['ReplicaStatusDescription'] = stub[:replica_status_description] unless stub[:replica_status_description].nil?
        data['ReplicaStatusPercentProgress'] = stub[:replica_status_percent_progress] unless stub[:replica_status_percent_progress].nil?
        data['KMSMasterKeyId'] = stub[:kms_master_key_id] unless stub[:kms_master_key_id].nil?
        data['ProvisionedThroughputOverride'] = ProvisionedThroughputOverride.stub(stub[:provisioned_throughput_override]) unless stub[:provisioned_throughput_override].nil?
        data['GlobalSecondaryIndexes'] = ReplicaGlobalSecondaryIndexDescriptionList.stub(stub[:global_secondary_indexes]) unless stub[:global_secondary_indexes].nil?
        data['ReplicaInaccessibleDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:replica_inaccessible_date_time]).to_i unless stub[:replica_inaccessible_date_time].nil?
        data['ReplicaTableClassSummary'] = TableClassSummary.stub(stub[:replica_table_class_summary]) unless stub[:replica_table_class_summary].nil?
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

      def self.stub(stub)
        stub ||= Types::TableClassSummary.new
        data = {}
        data['TableClass'] = stub[:table_class] unless stub[:table_class].nil?
        data['LastUpdateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date_time]).to_i unless stub[:last_update_date_time].nil?
        data
      end
    end

    # List Stubber for ReplicaGlobalSecondaryIndexDescriptionList
    class ReplicaGlobalSecondaryIndexDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexDescriptionList')
        visited = visited + ['ReplicaGlobalSecondaryIndexDescriptionList']
        [
          ReplicaGlobalSecondaryIndexDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaGlobalSecondaryIndexDescription.stub(element) unless element.nil?
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
          provisioned_throughput_override: ProvisionedThroughputOverride.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaGlobalSecondaryIndexDescription.new
        data = {}
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['ProvisionedThroughputOverride'] = ProvisionedThroughputOverride.stub(stub[:provisioned_throughput_override]) unless stub[:provisioned_throughput_override].nil?
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

      def self.stub(stub)
        stub ||= Types::ProvisionedThroughputOverride.new
        data = {}
        data['ReadCapacityUnits'] = stub[:read_capacity_units] unless stub[:read_capacity_units].nil?
        data
      end
    end

    # Operation Stubber for CreateTable
    class CreateTable
      def self.default(visited=[])
        {
          table_description: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableDescription'] = TableDescription.stub(stub[:table_description]) unless stub[:table_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TableDescription
    class TableDescription
      def self.default(visited=[])
        return nil if visited.include?('TableDescription')
        visited = visited + ['TableDescription']
        {
          attribute_definitions: AttributeDefinitions.default(visited),
          table_name: 'table_name',
          key_schema: KeySchema.default(visited),
          table_status: 'table_status',
          creation_date_time: Time.now,
          provisioned_throughput: ProvisionedThroughputDescription.default(visited),
          table_size_bytes: 1,
          item_count: 1,
          table_arn: 'table_arn',
          table_id: 'table_id',
          billing_mode_summary: BillingModeSummary.default(visited),
          local_secondary_indexes: LocalSecondaryIndexDescriptionList.default(visited),
          global_secondary_indexes: GlobalSecondaryIndexDescriptionList.default(visited),
          stream_specification: StreamSpecification.default(visited),
          latest_stream_label: 'latest_stream_label',
          latest_stream_arn: 'latest_stream_arn',
          global_table_version: 'global_table_version',
          replicas: ReplicaDescriptionList.default(visited),
          restore_summary: RestoreSummary.default(visited),
          sse_description: SSEDescription.default(visited),
          archival_summary: ArchivalSummary.default(visited),
          table_class_summary: TableClassSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableDescription.new
        data = {}
        data['AttributeDefinitions'] = AttributeDefinitions.stub(stub[:attribute_definitions]) unless stub[:attribute_definitions].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['KeySchema'] = KeySchema.stub(stub[:key_schema]) unless stub[:key_schema].nil?
        data['TableStatus'] = stub[:table_status] unless stub[:table_status].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['ProvisionedThroughput'] = ProvisionedThroughputDescription.stub(stub[:provisioned_throughput]) unless stub[:provisioned_throughput].nil?
        data['TableSizeBytes'] = stub[:table_size_bytes] unless stub[:table_size_bytes].nil?
        data['ItemCount'] = stub[:item_count] unless stub[:item_count].nil?
        data['TableArn'] = stub[:table_arn] unless stub[:table_arn].nil?
        data['TableId'] = stub[:table_id] unless stub[:table_id].nil?
        data['BillingModeSummary'] = BillingModeSummary.stub(stub[:billing_mode_summary]) unless stub[:billing_mode_summary].nil?
        data['LocalSecondaryIndexes'] = LocalSecondaryIndexDescriptionList.stub(stub[:local_secondary_indexes]) unless stub[:local_secondary_indexes].nil?
        data['GlobalSecondaryIndexes'] = GlobalSecondaryIndexDescriptionList.stub(stub[:global_secondary_indexes]) unless stub[:global_secondary_indexes].nil?
        data['StreamSpecification'] = StreamSpecification.stub(stub[:stream_specification]) unless stub[:stream_specification].nil?
        data['LatestStreamLabel'] = stub[:latest_stream_label] unless stub[:latest_stream_label].nil?
        data['LatestStreamArn'] = stub[:latest_stream_arn] unless stub[:latest_stream_arn].nil?
        data['GlobalTableVersion'] = stub[:global_table_version] unless stub[:global_table_version].nil?
        data['Replicas'] = ReplicaDescriptionList.stub(stub[:replicas]) unless stub[:replicas].nil?
        data['RestoreSummary'] = RestoreSummary.stub(stub[:restore_summary]) unless stub[:restore_summary].nil?
        data['SSEDescription'] = SSEDescription.stub(stub[:sse_description]) unless stub[:sse_description].nil?
        data['ArchivalSummary'] = ArchivalSummary.stub(stub[:archival_summary]) unless stub[:archival_summary].nil?
        data['TableClassSummary'] = TableClassSummary.stub(stub[:table_class_summary]) unless stub[:table_class_summary].nil?
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

      def self.stub(stub)
        stub ||= Types::ArchivalSummary.new
        data = {}
        data['ArchivalDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:archival_date_time]).to_i unless stub[:archival_date_time].nil?
        data['ArchivalReason'] = stub[:archival_reason] unless stub[:archival_reason].nil?
        data['ArchivalBackupArn'] = stub[:archival_backup_arn] unless stub[:archival_backup_arn].nil?
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

      def self.stub(stub)
        stub ||= Types::SSEDescription.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SSEType'] = stub[:sse_type] unless stub[:sse_type].nil?
        data['KMSMasterKeyArn'] = stub[:kms_master_key_arn] unless stub[:kms_master_key_arn].nil?
        data['InaccessibleEncryptionDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:inaccessible_encryption_date_time]).to_i unless stub[:inaccessible_encryption_date_time].nil?
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

      def self.stub(stub)
        stub ||= Types::RestoreSummary.new
        data = {}
        data['SourceBackupArn'] = stub[:source_backup_arn] unless stub[:source_backup_arn].nil?
        data['SourceTableArn'] = stub[:source_table_arn] unless stub[:source_table_arn].nil?
        data['RestoreDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:restore_date_time]).to_i unless stub[:restore_date_time].nil?
        data['RestoreInProgress'] = stub[:restore_in_progress] unless stub[:restore_in_progress].nil?
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

      def self.stub(stub)
        stub ||= Types::StreamSpecification.new
        data = {}
        data['StreamEnabled'] = stub[:stream_enabled] unless stub[:stream_enabled].nil?
        data['StreamViewType'] = stub[:stream_view_type] unless stub[:stream_view_type].nil?
        data
      end
    end

    # List Stubber for GlobalSecondaryIndexDescriptionList
    class GlobalSecondaryIndexDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('GlobalSecondaryIndexDescriptionList')
        visited = visited + ['GlobalSecondaryIndexDescriptionList']
        [
          GlobalSecondaryIndexDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GlobalSecondaryIndexDescription.stub(element) unless element.nil?
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
          key_schema: KeySchema.default(visited),
          projection: Projection.default(visited),
          index_status: 'index_status',
          backfilling: false,
          provisioned_throughput: ProvisionedThroughputDescription.default(visited),
          index_size_bytes: 1,
          item_count: 1,
          index_arn: 'index_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalSecondaryIndexDescription.new
        data = {}
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['KeySchema'] = KeySchema.stub(stub[:key_schema]) unless stub[:key_schema].nil?
        data['Projection'] = Projection.stub(stub[:projection]) unless stub[:projection].nil?
        data['IndexStatus'] = stub[:index_status] unless stub[:index_status].nil?
        data['Backfilling'] = stub[:backfilling] unless stub[:backfilling].nil?
        data['ProvisionedThroughput'] = ProvisionedThroughputDescription.stub(stub[:provisioned_throughput]) unless stub[:provisioned_throughput].nil?
        data['IndexSizeBytes'] = stub[:index_size_bytes] unless stub[:index_size_bytes].nil?
        data['ItemCount'] = stub[:item_count] unless stub[:item_count].nil?
        data['IndexArn'] = stub[:index_arn] unless stub[:index_arn].nil?
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

      def self.stub(stub)
        stub ||= Types::ProvisionedThroughputDescription.new
        data = {}
        data['LastIncreaseDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_increase_date_time]).to_i unless stub[:last_increase_date_time].nil?
        data['LastDecreaseDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_decrease_date_time]).to_i unless stub[:last_decrease_date_time].nil?
        data['NumberOfDecreasesToday'] = stub[:number_of_decreases_today] unless stub[:number_of_decreases_today].nil?
        data['ReadCapacityUnits'] = stub[:read_capacity_units] unless stub[:read_capacity_units].nil?
        data['WriteCapacityUnits'] = stub[:write_capacity_units] unless stub[:write_capacity_units].nil?
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
          non_key_attributes: NonKeyAttributeNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Projection.new
        data = {}
        data['ProjectionType'] = stub[:projection_type] unless stub[:projection_type].nil?
        data['NonKeyAttributes'] = NonKeyAttributeNameList.stub(stub[:non_key_attributes]) unless stub[:non_key_attributes].nil?
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
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
          KeySchemaElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeySchemaElement.stub(element) unless element.nil?
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

      def self.stub(stub)
        stub ||= Types::KeySchemaElement.new
        data = {}
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['KeyType'] = stub[:key_type] unless stub[:key_type].nil?
        data
      end
    end

    # List Stubber for LocalSecondaryIndexDescriptionList
    class LocalSecondaryIndexDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('LocalSecondaryIndexDescriptionList')
        visited = visited + ['LocalSecondaryIndexDescriptionList']
        [
          LocalSecondaryIndexDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LocalSecondaryIndexDescription.stub(element) unless element.nil?
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
          key_schema: KeySchema.default(visited),
          projection: Projection.default(visited),
          index_size_bytes: 1,
          item_count: 1,
          index_arn: 'index_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LocalSecondaryIndexDescription.new
        data = {}
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['KeySchema'] = KeySchema.stub(stub[:key_schema]) unless stub[:key_schema].nil?
        data['Projection'] = Projection.stub(stub[:projection]) unless stub[:projection].nil?
        data['IndexSizeBytes'] = stub[:index_size_bytes] unless stub[:index_size_bytes].nil?
        data['ItemCount'] = stub[:item_count] unless stub[:item_count].nil?
        data['IndexArn'] = stub[:index_arn] unless stub[:index_arn].nil?
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

      def self.stub(stub)
        stub ||= Types::BillingModeSummary.new
        data = {}
        data['BillingMode'] = stub[:billing_mode] unless stub[:billing_mode].nil?
        data['LastUpdateToPayPerRequestDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_to_pay_per_request_date_time]).to_i unless stub[:last_update_to_pay_per_request_date_time].nil?
        data
      end
    end

    # List Stubber for AttributeDefinitions
    class AttributeDefinitions
      def self.default(visited=[])
        return nil if visited.include?('AttributeDefinitions')
        visited = visited + ['AttributeDefinitions']
        [
          AttributeDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AttributeDefinition.stub(element) unless element.nil?
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

      def self.stub(stub)
        stub ||= Types::AttributeDefinition.new
        data = {}
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['AttributeType'] = stub[:attribute_type] unless stub[:attribute_type].nil?
        data
      end
    end

    # Operation Stubber for DeleteBackup
    class DeleteBackup
      def self.default(visited=[])
        {
          backup_description: BackupDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BackupDescription'] = BackupDescription.stub(stub[:backup_description]) unless stub[:backup_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for BackupDescription
    class BackupDescription
      def self.default(visited=[])
        return nil if visited.include?('BackupDescription')
        visited = visited + ['BackupDescription']
        {
          backup_details: BackupDetails.default(visited),
          source_table_details: SourceTableDetails.default(visited),
          source_table_feature_details: SourceTableFeatureDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupDescription.new
        data = {}
        data['BackupDetails'] = BackupDetails.stub(stub[:backup_details]) unless stub[:backup_details].nil?
        data['SourceTableDetails'] = SourceTableDetails.stub(stub[:source_table_details]) unless stub[:source_table_details].nil?
        data['SourceTableFeatureDetails'] = SourceTableFeatureDetails.stub(stub[:source_table_feature_details]) unless stub[:source_table_feature_details].nil?
        data
      end
    end

    # Structure Stubber for SourceTableFeatureDetails
    class SourceTableFeatureDetails
      def self.default(visited=[])
        return nil if visited.include?('SourceTableFeatureDetails')
        visited = visited + ['SourceTableFeatureDetails']
        {
          local_secondary_indexes: LocalSecondaryIndexes.default(visited),
          global_secondary_indexes: GlobalSecondaryIndexes.default(visited),
          stream_description: StreamSpecification.default(visited),
          time_to_live_description: TimeToLiveDescription.default(visited),
          sse_description: SSEDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceTableFeatureDetails.new
        data = {}
        data['LocalSecondaryIndexes'] = LocalSecondaryIndexes.stub(stub[:local_secondary_indexes]) unless stub[:local_secondary_indexes].nil?
        data['GlobalSecondaryIndexes'] = GlobalSecondaryIndexes.stub(stub[:global_secondary_indexes]) unless stub[:global_secondary_indexes].nil?
        data['StreamDescription'] = StreamSpecification.stub(stub[:stream_description]) unless stub[:stream_description].nil?
        data['TimeToLiveDescription'] = TimeToLiveDescription.stub(stub[:time_to_live_description]) unless stub[:time_to_live_description].nil?
        data['SSEDescription'] = SSEDescription.stub(stub[:sse_description]) unless stub[:sse_description].nil?
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

      def self.stub(stub)
        stub ||= Types::TimeToLiveDescription.new
        data = {}
        data['TimeToLiveStatus'] = stub[:time_to_live_status] unless stub[:time_to_live_status].nil?
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data
      end
    end

    # List Stubber for GlobalSecondaryIndexes
    class GlobalSecondaryIndexes
      def self.default(visited=[])
        return nil if visited.include?('GlobalSecondaryIndexes')
        visited = visited + ['GlobalSecondaryIndexes']
        [
          GlobalSecondaryIndexInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GlobalSecondaryIndexInfo.stub(element) unless element.nil?
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
          key_schema: KeySchema.default(visited),
          projection: Projection.default(visited),
          provisioned_throughput: ProvisionedThroughput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalSecondaryIndexInfo.new
        data = {}
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['KeySchema'] = KeySchema.stub(stub[:key_schema]) unless stub[:key_schema].nil?
        data['Projection'] = Projection.stub(stub[:projection]) unless stub[:projection].nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.stub(stub[:provisioned_throughput]) unless stub[:provisioned_throughput].nil?
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

      def self.stub(stub)
        stub ||= Types::ProvisionedThroughput.new
        data = {}
        data['ReadCapacityUnits'] = stub[:read_capacity_units] unless stub[:read_capacity_units].nil?
        data['WriteCapacityUnits'] = stub[:write_capacity_units] unless stub[:write_capacity_units].nil?
        data
      end
    end

    # List Stubber for LocalSecondaryIndexes
    class LocalSecondaryIndexes
      def self.default(visited=[])
        return nil if visited.include?('LocalSecondaryIndexes')
        visited = visited + ['LocalSecondaryIndexes']
        [
          LocalSecondaryIndexInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LocalSecondaryIndexInfo.stub(element) unless element.nil?
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
          key_schema: KeySchema.default(visited),
          projection: Projection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LocalSecondaryIndexInfo.new
        data = {}
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['KeySchema'] = KeySchema.stub(stub[:key_schema]) unless stub[:key_schema].nil?
        data['Projection'] = Projection.stub(stub[:projection]) unless stub[:projection].nil?
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
          key_schema: KeySchema.default(visited),
          table_creation_date_time: Time.now,
          provisioned_throughput: ProvisionedThroughput.default(visited),
          item_count: 1,
          billing_mode: 'billing_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceTableDetails.new
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['TableId'] = stub[:table_id] unless stub[:table_id].nil?
        data['TableArn'] = stub[:table_arn] unless stub[:table_arn].nil?
        data['TableSizeBytes'] = stub[:table_size_bytes] unless stub[:table_size_bytes].nil?
        data['KeySchema'] = KeySchema.stub(stub[:key_schema]) unless stub[:key_schema].nil?
        data['TableCreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:table_creation_date_time]).to_i unless stub[:table_creation_date_time].nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.stub(stub[:provisioned_throughput]) unless stub[:provisioned_throughput].nil?
        data['ItemCount'] = stub[:item_count] unless stub[:item_count].nil?
        data['BillingMode'] = stub[:billing_mode] unless stub[:billing_mode].nil?
        data
      end
    end

    # Operation Stubber for DeleteItem
    class DeleteItem
      def self.default(visited=[])
        {
          attributes: AttributeMap.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
          item_collection_metrics: ItemCollectionMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Attributes'] = AttributeMap.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        data['ItemCollectionMetrics'] = ItemCollectionMetrics.stub(stub[:item_collection_metrics]) unless stub[:item_collection_metrics].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTable
    class DeleteTable
      def self.default(visited=[])
        {
          table_description: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableDescription'] = TableDescription.stub(stub[:table_description]) unless stub[:table_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBackup
    class DescribeBackup
      def self.default(visited=[])
        {
          backup_description: BackupDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BackupDescription'] = BackupDescription.stub(stub[:backup_description]) unless stub[:backup_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeContinuousBackups
    class DescribeContinuousBackups
      def self.default(visited=[])
        {
          continuous_backups_description: ContinuousBackupsDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContinuousBackupsDescription'] = ContinuousBackupsDescription.stub(stub[:continuous_backups_description]) unless stub[:continuous_backups_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ContinuousBackupsDescription
    class ContinuousBackupsDescription
      def self.default(visited=[])
        return nil if visited.include?('ContinuousBackupsDescription')
        visited = visited + ['ContinuousBackupsDescription']
        {
          continuous_backups_status: 'continuous_backups_status',
          point_in_time_recovery_description: PointInTimeRecoveryDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContinuousBackupsDescription.new
        data = {}
        data['ContinuousBackupsStatus'] = stub[:continuous_backups_status] unless stub[:continuous_backups_status].nil?
        data['PointInTimeRecoveryDescription'] = PointInTimeRecoveryDescription.stub(stub[:point_in_time_recovery_description]) unless stub[:point_in_time_recovery_description].nil?
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

      def self.stub(stub)
        stub ||= Types::PointInTimeRecoveryDescription.new
        data = {}
        data['PointInTimeRecoveryStatus'] = stub[:point_in_time_recovery_status] unless stub[:point_in_time_recovery_status].nil?
        data['EarliestRestorableDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:earliest_restorable_date_time]).to_i unless stub[:earliest_restorable_date_time].nil?
        data['LatestRestorableDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_restorable_date_time]).to_i unless stub[:latest_restorable_date_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeContributorInsights
    class DescribeContributorInsights
      def self.default(visited=[])
        {
          table_name: 'table_name',
          index_name: 'index_name',
          contributor_insights_rule_list: ContributorInsightsRuleList.default(visited),
          contributor_insights_status: 'contributor_insights_status',
          last_update_date_time: Time.now,
          failure_exception: FailureException.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['ContributorInsightsRuleList'] = ContributorInsightsRuleList.stub(stub[:contributor_insights_rule_list]) unless stub[:contributor_insights_rule_list].nil?
        data['ContributorInsightsStatus'] = stub[:contributor_insights_status] unless stub[:contributor_insights_status].nil?
        data['LastUpdateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_date_time]).to_i unless stub[:last_update_date_time].nil?
        data['FailureException'] = FailureException.stub(stub[:failure_exception]) unless stub[:failure_exception].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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

      def self.stub(stub)
        stub ||= Types::FailureException.new
        data = {}
        data['ExceptionName'] = stub[:exception_name] unless stub[:exception_name].nil?
        data['ExceptionDescription'] = stub[:exception_description] unless stub[:exception_description].nil?
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEndpoints
    class DescribeEndpoints
      def self.default(visited=[])
        {
          endpoints: Endpoints.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Endpoints'] = Endpoints.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Endpoints
    class Endpoints
      def self.default(visited=[])
        return nil if visited.include?('Endpoints')
        visited = visited + ['Endpoints']
        [
          Endpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Endpoint.stub(element) unless element.nil?
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

      def self.stub(stub)
        stub ||= Types::Endpoint.new
        data = {}
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['CachePeriodInMinutes'] = stub[:cache_period_in_minutes] unless stub[:cache_period_in_minutes].nil?
        data
      end
    end

    # Operation Stubber for DescribeExport
    class DescribeExport
      def self.default(visited=[])
        {
          export_description: ExportDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExportDescription'] = ExportDescription.stub(stub[:export_description]) unless stub[:export_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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

      def self.stub(stub)
        stub ||= Types::ExportDescription.new
        data = {}
        data['ExportArn'] = stub[:export_arn] unless stub[:export_arn].nil?
        data['ExportStatus'] = stub[:export_status] unless stub[:export_status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['ExportManifest'] = stub[:export_manifest] unless stub[:export_manifest].nil?
        data['TableArn'] = stub[:table_arn] unless stub[:table_arn].nil?
        data['TableId'] = stub[:table_id] unless stub[:table_id].nil?
        data['ExportTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:export_time]).to_i unless stub[:export_time].nil?
        data['ClientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['S3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['S3BucketOwner'] = stub[:s3_bucket_owner] unless stub[:s3_bucket_owner].nil?
        data['S3Prefix'] = stub[:s3_prefix] unless stub[:s3_prefix].nil?
        data['S3SseAlgorithm'] = stub[:s3_sse_algorithm] unless stub[:s3_sse_algorithm].nil?
        data['S3SseKmsKeyId'] = stub[:s3_sse_kms_key_id] unless stub[:s3_sse_kms_key_id].nil?
        data['FailureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['FailureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        data['ExportFormat'] = stub[:export_format] unless stub[:export_format].nil?
        data['BilledSizeBytes'] = stub[:billed_size_bytes] unless stub[:billed_size_bytes].nil?
        data['ItemCount'] = stub[:item_count] unless stub[:item_count].nil?
        data
      end
    end

    # Operation Stubber for DescribeGlobalTable
    class DescribeGlobalTable
      def self.default(visited=[])
        {
          global_table_description: GlobalTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTableDescription'] = GlobalTableDescription.stub(stub[:global_table_description]) unless stub[:global_table_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeGlobalTableSettings
    class DescribeGlobalTableSettings
      def self.default(visited=[])
        {
          global_table_name: 'global_table_name',
          replica_settings: ReplicaSettingsDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTableName'] = stub[:global_table_name] unless stub[:global_table_name].nil?
        data['ReplicaSettings'] = ReplicaSettingsDescriptionList.stub(stub[:replica_settings]) unless stub[:replica_settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReplicaSettingsDescriptionList
    class ReplicaSettingsDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaSettingsDescriptionList')
        visited = visited + ['ReplicaSettingsDescriptionList']
        [
          ReplicaSettingsDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaSettingsDescription.stub(element) unless element.nil?
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
          replica_billing_mode_summary: BillingModeSummary.default(visited),
          replica_provisioned_read_capacity_units: 1,
          replica_provisioned_read_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          replica_provisioned_write_capacity_units: 1,
          replica_provisioned_write_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          replica_global_secondary_index_settings: ReplicaGlobalSecondaryIndexSettingsDescriptionList.default(visited),
          replica_table_class_summary: TableClassSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaSettingsDescription.new
        data = {}
        data['RegionName'] = stub[:region_name] unless stub[:region_name].nil?
        data['ReplicaStatus'] = stub[:replica_status] unless stub[:replica_status].nil?
        data['ReplicaBillingModeSummary'] = BillingModeSummary.stub(stub[:replica_billing_mode_summary]) unless stub[:replica_billing_mode_summary].nil?
        data['ReplicaProvisionedReadCapacityUnits'] = stub[:replica_provisioned_read_capacity_units] unless stub[:replica_provisioned_read_capacity_units].nil?
        data['ReplicaProvisionedReadCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub[:replica_provisioned_read_capacity_auto_scaling_settings]) unless stub[:replica_provisioned_read_capacity_auto_scaling_settings].nil?
        data['ReplicaProvisionedWriteCapacityUnits'] = stub[:replica_provisioned_write_capacity_units] unless stub[:replica_provisioned_write_capacity_units].nil?
        data['ReplicaProvisionedWriteCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub[:replica_provisioned_write_capacity_auto_scaling_settings]) unless stub[:replica_provisioned_write_capacity_auto_scaling_settings].nil?
        data['ReplicaGlobalSecondaryIndexSettings'] = ReplicaGlobalSecondaryIndexSettingsDescriptionList.stub(stub[:replica_global_secondary_index_settings]) unless stub[:replica_global_secondary_index_settings].nil?
        data['ReplicaTableClassSummary'] = TableClassSummary.stub(stub[:replica_table_class_summary]) unless stub[:replica_table_class_summary].nil?
        data
      end
    end

    # List Stubber for ReplicaGlobalSecondaryIndexSettingsDescriptionList
    class ReplicaGlobalSecondaryIndexSettingsDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexSettingsDescriptionList')
        visited = visited + ['ReplicaGlobalSecondaryIndexSettingsDescriptionList']
        [
          ReplicaGlobalSecondaryIndexSettingsDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaGlobalSecondaryIndexSettingsDescription.stub(element) unless element.nil?
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
          provisioned_read_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          provisioned_write_capacity_units: 1,
          provisioned_write_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaGlobalSecondaryIndexSettingsDescription.new
        data = {}
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['IndexStatus'] = stub[:index_status] unless stub[:index_status].nil?
        data['ProvisionedReadCapacityUnits'] = stub[:provisioned_read_capacity_units] unless stub[:provisioned_read_capacity_units].nil?
        data['ProvisionedReadCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub[:provisioned_read_capacity_auto_scaling_settings]) unless stub[:provisioned_read_capacity_auto_scaling_settings].nil?
        data['ProvisionedWriteCapacityUnits'] = stub[:provisioned_write_capacity_units] unless stub[:provisioned_write_capacity_units].nil?
        data['ProvisionedWriteCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub[:provisioned_write_capacity_auto_scaling_settings]) unless stub[:provisioned_write_capacity_auto_scaling_settings].nil?
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
          scaling_policies: AutoScalingPolicyDescriptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingSettingsDescription.new
        data = {}
        data['MinimumUnits'] = stub[:minimum_units] unless stub[:minimum_units].nil?
        data['MaximumUnits'] = stub[:maximum_units] unless stub[:maximum_units].nil?
        data['AutoScalingDisabled'] = stub[:auto_scaling_disabled] unless stub[:auto_scaling_disabled].nil?
        data['AutoScalingRoleArn'] = stub[:auto_scaling_role_arn] unless stub[:auto_scaling_role_arn].nil?
        data['ScalingPolicies'] = AutoScalingPolicyDescriptionList.stub(stub[:scaling_policies]) unless stub[:scaling_policies].nil?
        data
      end
    end

    # List Stubber for AutoScalingPolicyDescriptionList
    class AutoScalingPolicyDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingPolicyDescriptionList')
        visited = visited + ['AutoScalingPolicyDescriptionList']
        [
          AutoScalingPolicyDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoScalingPolicyDescription.stub(element) unless element.nil?
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
          target_tracking_scaling_policy_configuration: AutoScalingTargetTrackingScalingPolicyConfigurationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingPolicyDescription.new
        data = {}
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['TargetTrackingScalingPolicyConfiguration'] = AutoScalingTargetTrackingScalingPolicyConfigurationDescription.stub(stub[:target_tracking_scaling_policy_configuration]) unless stub[:target_tracking_scaling_policy_configuration].nil?
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

      def self.stub(stub)
        stub ||= Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription.new
        data = {}
        data['DisableScaleIn'] = stub[:disable_scale_in] unless stub[:disable_scale_in].nil?
        data['ScaleInCooldown'] = stub[:scale_in_cooldown] unless stub[:scale_in_cooldown].nil?
        data['ScaleOutCooldown'] = stub[:scale_out_cooldown] unless stub[:scale_out_cooldown].nil?
        data['TargetValue'] = Hearth::NumberHelper.serialize(stub[:target_value])
        data
      end
    end

    # Operation Stubber for DescribeKinesisStreamingDestination
    class DescribeKinesisStreamingDestination
      def self.default(visited=[])
        {
          table_name: 'table_name',
          kinesis_data_stream_destinations: KinesisDataStreamDestinations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['KinesisDataStreamDestinations'] = KinesisDataStreamDestinations.stub(stub[:kinesis_data_stream_destinations]) unless stub[:kinesis_data_stream_destinations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for KinesisDataStreamDestinations
    class KinesisDataStreamDestinations
      def self.default(visited=[])
        return nil if visited.include?('KinesisDataStreamDestinations')
        visited = visited + ['KinesisDataStreamDestinations']
        [
          KinesisDataStreamDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KinesisDataStreamDestination.stub(element) unless element.nil?
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

      def self.stub(stub)
        stub ||= Types::KinesisDataStreamDestination.new
        data = {}
        data['StreamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['DestinationStatus'] = stub[:destination_status] unless stub[:destination_status].nil?
        data['DestinationStatusDescription'] = stub[:destination_status_description] unless stub[:destination_status_description].nil?
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
        data['AccountMaxReadCapacityUnits'] = stub[:account_max_read_capacity_units] unless stub[:account_max_read_capacity_units].nil?
        data['AccountMaxWriteCapacityUnits'] = stub[:account_max_write_capacity_units] unless stub[:account_max_write_capacity_units].nil?
        data['TableMaxReadCapacityUnits'] = stub[:table_max_read_capacity_units] unless stub[:table_max_read_capacity_units].nil?
        data['TableMaxWriteCapacityUnits'] = stub[:table_max_write_capacity_units] unless stub[:table_max_write_capacity_units].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeTable
    class DescribeTable
      def self.default(visited=[])
        {
          table: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Table'] = TableDescription.stub(stub[:table]) unless stub[:table].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeTableReplicaAutoScaling
    class DescribeTableReplicaAutoScaling
      def self.default(visited=[])
        {
          table_auto_scaling_description: TableAutoScalingDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableAutoScalingDescription'] = TableAutoScalingDescription.stub(stub[:table_auto_scaling_description]) unless stub[:table_auto_scaling_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
          replicas: ReplicaAutoScalingDescriptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableAutoScalingDescription.new
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['TableStatus'] = stub[:table_status] unless stub[:table_status].nil?
        data['Replicas'] = ReplicaAutoScalingDescriptionList.stub(stub[:replicas]) unless stub[:replicas].nil?
        data
      end
    end

    # List Stubber for ReplicaAutoScalingDescriptionList
    class ReplicaAutoScalingDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaAutoScalingDescriptionList')
        visited = visited + ['ReplicaAutoScalingDescriptionList']
        [
          ReplicaAutoScalingDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaAutoScalingDescription.stub(element) unless element.nil?
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
          global_secondary_indexes: ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.default(visited),
          replica_provisioned_read_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          replica_provisioned_write_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          replica_status: 'replica_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaAutoScalingDescription.new
        data = {}
        data['RegionName'] = stub[:region_name] unless stub[:region_name].nil?
        data['GlobalSecondaryIndexes'] = ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.stub(stub[:global_secondary_indexes]) unless stub[:global_secondary_indexes].nil?
        data['ReplicaProvisionedReadCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub[:replica_provisioned_read_capacity_auto_scaling_settings]) unless stub[:replica_provisioned_read_capacity_auto_scaling_settings].nil?
        data['ReplicaProvisionedWriteCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub[:replica_provisioned_write_capacity_auto_scaling_settings]) unless stub[:replica_provisioned_write_capacity_auto_scaling_settings].nil?
        data['ReplicaStatus'] = stub[:replica_status] unless stub[:replica_status].nil?
        data
      end
    end

    # List Stubber for ReplicaGlobalSecondaryIndexAutoScalingDescriptionList
    class ReplicaGlobalSecondaryIndexAutoScalingDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexAutoScalingDescriptionList')
        visited = visited + ['ReplicaGlobalSecondaryIndexAutoScalingDescriptionList']
        [
          ReplicaGlobalSecondaryIndexAutoScalingDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaGlobalSecondaryIndexAutoScalingDescription.stub(element) unless element.nil?
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
          provisioned_read_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          provisioned_write_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaGlobalSecondaryIndexAutoScalingDescription.new
        data = {}
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['IndexStatus'] = stub[:index_status] unless stub[:index_status].nil?
        data['ProvisionedReadCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub[:provisioned_read_capacity_auto_scaling_settings]) unless stub[:provisioned_read_capacity_auto_scaling_settings].nil?
        data['ProvisionedWriteCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub[:provisioned_write_capacity_auto_scaling_settings]) unless stub[:provisioned_write_capacity_auto_scaling_settings].nil?
        data
      end
    end

    # Operation Stubber for DescribeTimeToLive
    class DescribeTimeToLive
      def self.default(visited=[])
        {
          time_to_live_description: TimeToLiveDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TimeToLiveDescription'] = TimeToLiveDescription.stub(stub[:time_to_live_description]) unless stub[:time_to_live_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['StreamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['DestinationStatus'] = stub[:destination_status] unless stub[:destination_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['StreamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['DestinationStatus'] = stub[:destination_status] unless stub[:destination_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExecuteStatement
    class ExecuteStatement
      def self.default(visited=[])
        {
          items: ItemList.default(visited),
          next_token: 'next_token',
          consumed_capacity: ConsumedCapacity.default(visited),
          last_evaluated_key: Key.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Items'] = ItemList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        data['LastEvaluatedKey'] = Key.stub(stub[:last_evaluated_key]) unless stub[:last_evaluated_key].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExecuteTransaction
    class ExecuteTransaction
      def self.default(visited=[])
        {
          responses: ItemResponseList.default(visited),
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Responses'] = ItemResponseList.stub(stub[:responses]) unless stub[:responses].nil?
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ItemResponseList
    class ItemResponseList
      def self.default(visited=[])
        return nil if visited.include?('ItemResponseList')
        visited = visited + ['ItemResponseList']
        [
          ItemResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ItemResponse.stub(element) unless element.nil?
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
          item: AttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ItemResponse.new
        data = {}
        data['Item'] = AttributeMap.stub(stub[:item]) unless stub[:item].nil?
        data
      end
    end

    # Operation Stubber for ExportTableToPointInTime
    class ExportTableToPointInTime
      def self.default(visited=[])
        {
          export_description: ExportDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExportDescription'] = ExportDescription.stub(stub[:export_description]) unless stub[:export_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetItem
    class GetItem
      def self.default(visited=[])
        {
          item: AttributeMap.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Item'] = AttributeMap.stub(stub[:item]) unless stub[:item].nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListBackups
    class ListBackups
      def self.default(visited=[])
        {
          backup_summaries: BackupSummaries.default(visited),
          last_evaluated_backup_arn: 'last_evaluated_backup_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BackupSummaries'] = BackupSummaries.stub(stub[:backup_summaries]) unless stub[:backup_summaries].nil?
        data['LastEvaluatedBackupArn'] = stub[:last_evaluated_backup_arn] unless stub[:last_evaluated_backup_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BackupSummaries
    class BackupSummaries
      def self.default(visited=[])
        return nil if visited.include?('BackupSummaries')
        visited = visited + ['BackupSummaries']
        [
          BackupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BackupSummary.stub(element) unless element.nil?
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

      def self.stub(stub)
        stub ||= Types::BackupSummary.new
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['TableId'] = stub[:table_id] unless stub[:table_id].nil?
        data['TableArn'] = stub[:table_arn] unless stub[:table_arn].nil?
        data['BackupArn'] = stub[:backup_arn] unless stub[:backup_arn].nil?
        data['BackupName'] = stub[:backup_name] unless stub[:backup_name].nil?
        data['BackupCreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:backup_creation_date_time]).to_i unless stub[:backup_creation_date_time].nil?
        data['BackupExpiryDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:backup_expiry_date_time]).to_i unless stub[:backup_expiry_date_time].nil?
        data['BackupStatus'] = stub[:backup_status] unless stub[:backup_status].nil?
        data['BackupType'] = stub[:backup_type] unless stub[:backup_type].nil?
        data['BackupSizeBytes'] = stub[:backup_size_bytes] unless stub[:backup_size_bytes].nil?
        data
      end
    end

    # Operation Stubber for ListContributorInsights
    class ListContributorInsights
      def self.default(visited=[])
        {
          contributor_insights_summaries: ContributorInsightsSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContributorInsightsSummaries'] = ContributorInsightsSummaries.stub(stub[:contributor_insights_summaries]) unless stub[:contributor_insights_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContributorInsightsSummaries
    class ContributorInsightsSummaries
      def self.default(visited=[])
        return nil if visited.include?('ContributorInsightsSummaries')
        visited = visited + ['ContributorInsightsSummaries']
        [
          ContributorInsightsSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContributorInsightsSummary.stub(element) unless element.nil?
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

      def self.stub(stub)
        stub ||= Types::ContributorInsightsSummary.new
        data = {}
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['ContributorInsightsStatus'] = stub[:contributor_insights_status] unless stub[:contributor_insights_status].nil?
        data
      end
    end

    # Operation Stubber for ListExports
    class ListExports
      def self.default(visited=[])
        {
          export_summaries: ExportSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExportSummaries'] = ExportSummaries.stub(stub[:export_summaries]) unless stub[:export_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExportSummaries
    class ExportSummaries
      def self.default(visited=[])
        return nil if visited.include?('ExportSummaries')
        visited = visited + ['ExportSummaries']
        [
          ExportSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExportSummary.stub(element) unless element.nil?
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

      def self.stub(stub)
        stub ||= Types::ExportSummary.new
        data = {}
        data['ExportArn'] = stub[:export_arn] unless stub[:export_arn].nil?
        data['ExportStatus'] = stub[:export_status] unless stub[:export_status].nil?
        data
      end
    end

    # Operation Stubber for ListGlobalTables
    class ListGlobalTables
      def self.default(visited=[])
        {
          global_tables: GlobalTableList.default(visited),
          last_evaluated_global_table_name: 'last_evaluated_global_table_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTables'] = GlobalTableList.stub(stub[:global_tables]) unless stub[:global_tables].nil?
        data['LastEvaluatedGlobalTableName'] = stub[:last_evaluated_global_table_name] unless stub[:last_evaluated_global_table_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GlobalTableList
    class GlobalTableList
      def self.default(visited=[])
        return nil if visited.include?('GlobalTableList')
        visited = visited + ['GlobalTableList']
        [
          GlobalTable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GlobalTable.stub(element) unless element.nil?
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
          replication_group: ReplicaList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalTable.new
        data = {}
        data['GlobalTableName'] = stub[:global_table_name] unless stub[:global_table_name].nil?
        data['ReplicationGroup'] = ReplicaList.stub(stub[:replication_group]) unless stub[:replication_group].nil?
        data
      end
    end

    # List Stubber for ReplicaList
    class ReplicaList
      def self.default(visited=[])
        return nil if visited.include?('ReplicaList')
        visited = visited + ['ReplicaList']
        [
          Replica.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Replica.stub(element) unless element.nil?
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

      def self.stub(stub)
        stub ||= Types::Replica.new
        data = {}
        data['RegionName'] = stub[:region_name] unless stub[:region_name].nil?
        data
      end
    end

    # Operation Stubber for ListTables
    class ListTables
      def self.default(visited=[])
        {
          table_names: TableNameList.default(visited),
          last_evaluated_table_name: 'last_evaluated_table_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableNames'] = TableNameList.stub(stub[:table_names]) unless stub[:table_names].nil?
        data['LastEvaluatedTableName'] = stub[:last_evaluated_table_name] unless stub[:last_evaluated_table_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsOfResource
    class ListTagsOfResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          data << Tag.stub(element) unless element.nil?
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

    # Operation Stubber for PutItem
    class PutItem
      def self.default(visited=[])
        {
          attributes: AttributeMap.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
          item_collection_metrics: ItemCollectionMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Attributes'] = AttributeMap.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        data['ItemCollectionMetrics'] = ItemCollectionMetrics.stub(stub[:item_collection_metrics]) unless stub[:item_collection_metrics].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for Query
    class Query
      def self.default(visited=[])
        {
          items: ItemList.default(visited),
          count: 1,
          scanned_count: 1,
          last_evaluated_key: Key.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Items'] = ItemList.stub(stub[:items]) unless stub[:items].nil?
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['ScannedCount'] = stub[:scanned_count] unless stub[:scanned_count].nil?
        data['LastEvaluatedKey'] = Key.stub(stub[:last_evaluated_key]) unless stub[:last_evaluated_key].nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreTableFromBackup
    class RestoreTableFromBackup
      def self.default(visited=[])
        {
          table_description: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableDescription'] = TableDescription.stub(stub[:table_description]) unless stub[:table_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreTableToPointInTime
    class RestoreTableToPointInTime
      def self.default(visited=[])
        {
          table_description: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableDescription'] = TableDescription.stub(stub[:table_description]) unless stub[:table_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for Scan
    class Scan
      def self.default(visited=[])
        {
          items: ItemList.default(visited),
          count: 1,
          scanned_count: 1,
          last_evaluated_key: Key.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Items'] = ItemList.stub(stub[:items]) unless stub[:items].nil?
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['ScannedCount'] = stub[:scanned_count] unless stub[:scanned_count].nil?
        data['LastEvaluatedKey'] = Key.stub(stub[:last_evaluated_key]) unless stub[:last_evaluated_key].nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TransactGetItems
    class TransactGetItems
      def self.default(visited=[])
        {
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
          responses: ItemResponseList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        data['Responses'] = ItemResponseList.stub(stub[:responses]) unless stub[:responses].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TransactWriteItems
    class TransactWriteItems
      def self.default(visited=[])
        {
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
          item_collection_metrics: ItemCollectionMetricsPerTable.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        data['ItemCollectionMetrics'] = ItemCollectionMetricsPerTable.stub(stub[:item_collection_metrics]) unless stub[:item_collection_metrics].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContinuousBackups
    class UpdateContinuousBackups
      def self.default(visited=[])
        {
          continuous_backups_description: ContinuousBackupsDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContinuousBackupsDescription'] = ContinuousBackupsDescription.stub(stub[:continuous_backups_description]) unless stub[:continuous_backups_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['IndexName'] = stub[:index_name] unless stub[:index_name].nil?
        data['ContributorInsightsStatus'] = stub[:contributor_insights_status] unless stub[:contributor_insights_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGlobalTable
    class UpdateGlobalTable
      def self.default(visited=[])
        {
          global_table_description: GlobalTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTableDescription'] = GlobalTableDescription.stub(stub[:global_table_description]) unless stub[:global_table_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGlobalTableSettings
    class UpdateGlobalTableSettings
      def self.default(visited=[])
        {
          global_table_name: 'global_table_name',
          replica_settings: ReplicaSettingsDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTableName'] = stub[:global_table_name] unless stub[:global_table_name].nil?
        data['ReplicaSettings'] = ReplicaSettingsDescriptionList.stub(stub[:replica_settings]) unless stub[:replica_settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateItem
    class UpdateItem
      def self.default(visited=[])
        {
          attributes: AttributeMap.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
          item_collection_metrics: ItemCollectionMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Attributes'] = AttributeMap.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub[:consumed_capacity]) unless stub[:consumed_capacity].nil?
        data['ItemCollectionMetrics'] = ItemCollectionMetrics.stub(stub[:item_collection_metrics]) unless stub[:item_collection_metrics].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTable
    class UpdateTable
      def self.default(visited=[])
        {
          table_description: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableDescription'] = TableDescription.stub(stub[:table_description]) unless stub[:table_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTableReplicaAutoScaling
    class UpdateTableReplicaAutoScaling
      def self.default(visited=[])
        {
          table_auto_scaling_description: TableAutoScalingDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableAutoScalingDescription'] = TableAutoScalingDescription.stub(stub[:table_auto_scaling_description]) unless stub[:table_auto_scaling_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTimeToLive
    class UpdateTimeToLive
      def self.default(visited=[])
        {
          time_to_live_specification: TimeToLiveSpecification.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TimeToLiveSpecification'] = TimeToLiveSpecification.stub(stub[:time_to_live_specification]) unless stub[:time_to_live_specification].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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

      def self.stub(stub)
        stub ||= Types::TimeToLiveSpecification.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data
      end
    end
  end
end
