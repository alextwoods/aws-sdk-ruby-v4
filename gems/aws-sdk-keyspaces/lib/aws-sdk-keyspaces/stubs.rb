# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Keyspaces
  module Stubs

    # Operation Stubber for CreateKeyspace
    class CreateKeyspace
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTable
    class CreateTable
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteKeyspace
    class DeleteKeyspace
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

    # Operation Stubber for DeleteTable
    class DeleteTable
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

    # Operation Stubber for GetKeyspace
    class GetKeyspace
      def self.default(visited=[])
        {
          keyspace_name: 'keyspace_name',
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['keyspaceName'] = stub[:keyspace_name] unless stub[:keyspace_name].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetTable
    class GetTable
      def self.default(visited=[])
        {
          keyspace_name: 'keyspace_name',
          table_name: 'table_name',
          resource_arn: 'resource_arn',
          creation_timestamp: Time.now,
          status: 'status',
          schema_definition: SchemaDefinition.default(visited),
          capacity_specification: CapacitySpecificationSummary.default(visited),
          encryption_specification: EncryptionSpecification.default(visited),
          point_in_time_recovery: PointInTimeRecoverySummary.default(visited),
          ttl: TimeToLive.default(visited),
          default_time_to_live: 1,
          comment: Comment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['keyspaceName'] = stub[:keyspace_name] unless stub[:keyspace_name].nil?
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['creationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_timestamp]).to_i unless stub[:creation_timestamp].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['schemaDefinition'] = SchemaDefinition.stub(stub[:schema_definition]) unless stub[:schema_definition].nil?
        data['capacitySpecification'] = CapacitySpecificationSummary.stub(stub[:capacity_specification]) unless stub[:capacity_specification].nil?
        data['encryptionSpecification'] = EncryptionSpecification.stub(stub[:encryption_specification]) unless stub[:encryption_specification].nil?
        data['pointInTimeRecovery'] = PointInTimeRecoverySummary.stub(stub[:point_in_time_recovery]) unless stub[:point_in_time_recovery].nil?
        data['ttl'] = TimeToLive.stub(stub[:ttl]) unless stub[:ttl].nil?
        data['defaultTimeToLive'] = stub[:default_time_to_live] unless stub[:default_time_to_live].nil?
        data['comment'] = Comment.stub(stub[:comment]) unless stub[:comment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Comment
    class Comment
      def self.default(visited=[])
        return nil if visited.include?('Comment')
        visited = visited + ['Comment']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::Comment.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for TimeToLive
    class TimeToLive
      def self.default(visited=[])
        return nil if visited.include?('TimeToLive')
        visited = visited + ['TimeToLive']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeToLive.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for PointInTimeRecoverySummary
    class PointInTimeRecoverySummary
      def self.default(visited=[])
        return nil if visited.include?('PointInTimeRecoverySummary')
        visited = visited + ['PointInTimeRecoverySummary']
        {
          status: 'status',
          earliest_restorable_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PointInTimeRecoverySummary.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['earliestRestorableTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:earliest_restorable_timestamp]).to_i unless stub[:earliest_restorable_timestamp].nil?
        data
      end
    end

    # Structure Stubber for EncryptionSpecification
    class EncryptionSpecification
      def self.default(visited=[])
        return nil if visited.include?('EncryptionSpecification')
        visited = visited + ['EncryptionSpecification']
        {
          type: 'type',
          kms_key_identifier: 'kms_key_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionSpecification.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['kmsKeyIdentifier'] = stub[:kms_key_identifier] unless stub[:kms_key_identifier].nil?
        data
      end
    end

    # Structure Stubber for CapacitySpecificationSummary
    class CapacitySpecificationSummary
      def self.default(visited=[])
        return nil if visited.include?('CapacitySpecificationSummary')
        visited = visited + ['CapacitySpecificationSummary']
        {
          throughput_mode: 'throughput_mode',
          read_capacity_units: 1,
          write_capacity_units: 1,
          last_update_to_pay_per_request_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CapacitySpecificationSummary.new
        data = {}
        data['throughputMode'] = stub[:throughput_mode] unless stub[:throughput_mode].nil?
        data['readCapacityUnits'] = stub[:read_capacity_units] unless stub[:read_capacity_units].nil?
        data['writeCapacityUnits'] = stub[:write_capacity_units] unless stub[:write_capacity_units].nil?
        data['lastUpdateToPayPerRequestTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_to_pay_per_request_timestamp]).to_i unless stub[:last_update_to_pay_per_request_timestamp].nil?
        data
      end
    end

    # Structure Stubber for SchemaDefinition
    class SchemaDefinition
      def self.default(visited=[])
        return nil if visited.include?('SchemaDefinition')
        visited = visited + ['SchemaDefinition']
        {
          all_columns: ColumnDefinitionList.default(visited),
          partition_keys: PartitionKeyList.default(visited),
          clustering_keys: ClusteringKeyList.default(visited),
          static_columns: StaticColumnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaDefinition.new
        data = {}
        data['allColumns'] = ColumnDefinitionList.stub(stub[:all_columns]) unless stub[:all_columns].nil?
        data['partitionKeys'] = PartitionKeyList.stub(stub[:partition_keys]) unless stub[:partition_keys].nil?
        data['clusteringKeys'] = ClusteringKeyList.stub(stub[:clustering_keys]) unless stub[:clustering_keys].nil?
        data['staticColumns'] = StaticColumnList.stub(stub[:static_columns]) unless stub[:static_columns].nil?
        data
      end
    end

    # List Stubber for StaticColumnList
    class StaticColumnList
      def self.default(visited=[])
        return nil if visited.include?('StaticColumnList')
        visited = visited + ['StaticColumnList']
        [
          StaticColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StaticColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StaticColumn
    class StaticColumn
      def self.default(visited=[])
        return nil if visited.include?('StaticColumn')
        visited = visited + ['StaticColumn']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::StaticColumn.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for ClusteringKeyList
    class ClusteringKeyList
      def self.default(visited=[])
        return nil if visited.include?('ClusteringKeyList')
        visited = visited + ['ClusteringKeyList']
        [
          ClusteringKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ClusteringKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ClusteringKey
    class ClusteringKey
      def self.default(visited=[])
        return nil if visited.include?('ClusteringKey')
        visited = visited + ['ClusteringKey']
        {
          name: 'name',
          order_by: 'order_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusteringKey.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['orderBy'] = stub[:order_by] unless stub[:order_by].nil?
        data
      end
    end

    # List Stubber for PartitionKeyList
    class PartitionKeyList
      def self.default(visited=[])
        return nil if visited.include?('PartitionKeyList')
        visited = visited + ['PartitionKeyList']
        [
          PartitionKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PartitionKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PartitionKey
    class PartitionKey
      def self.default(visited=[])
        return nil if visited.include?('PartitionKey')
        visited = visited + ['PartitionKey']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::PartitionKey.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for ColumnDefinitionList
    class ColumnDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('ColumnDefinitionList')
        visited = visited + ['ColumnDefinitionList']
        [
          ColumnDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ColumnDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnDefinition
    class ColumnDefinition
      def self.default(visited=[])
        return nil if visited.include?('ColumnDefinition')
        visited = visited + ['ColumnDefinition']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnDefinition.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListKeyspaces
    class ListKeyspaces
      def self.default(visited=[])
        {
          next_token: 'next_token',
          keyspaces: KeyspaceSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['keyspaces'] = KeyspaceSummaryList.stub(stub[:keyspaces]) unless stub[:keyspaces].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for KeyspaceSummaryList
    class KeyspaceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('KeyspaceSummaryList')
        visited = visited + ['KeyspaceSummaryList']
        [
          KeyspaceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeyspaceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeyspaceSummary
    class KeyspaceSummary
      def self.default(visited=[])
        return nil if visited.include?('KeyspaceSummary')
        visited = visited + ['KeyspaceSummary']
        {
          keyspace_name: 'keyspace_name',
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyspaceSummary.new
        data = {}
        data['keyspaceName'] = stub[:keyspace_name] unless stub[:keyspace_name].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # Operation Stubber for ListTables
    class ListTables
      def self.default(visited=[])
        {
          next_token: 'next_token',
          tables: TableSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['tables'] = TableSummaryList.stub(stub[:tables]) unless stub[:tables].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TableSummaryList
    class TableSummaryList
      def self.default(visited=[])
        return nil if visited.include?('TableSummaryList')
        visited = visited + ['TableSummaryList']
        [
          TableSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TableSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TableSummary
    class TableSummary
      def self.default(visited=[])
        return nil if visited.include?('TableSummary')
        visited = visited + ['TableSummary']
        {
          keyspace_name: 'keyspace_name',
          table_name: 'table_name',
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::TableSummary.new
        data = {}
        data['keyspaceName'] = stub[:keyspace_name] unless stub[:keyspace_name].nil?
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          next_token: 'next_token',
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
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
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for RestoreTable
    class RestoreTable
      def self.default(visited=[])
        {
          restored_table_arn: 'restored_table_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['restoredTableARN'] = stub[:restored_table_arn] unless stub[:restored_table_arn].nil?
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

    # Operation Stubber for UpdateTable
    class UpdateTable
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
