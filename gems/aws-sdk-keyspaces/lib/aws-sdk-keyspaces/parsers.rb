# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Keyspaces
  module Parsers

    # Operation Parser for CreateKeyspace
    class CreateKeyspace
      def self.parse(http_resp)
        data = Types::CreateKeyspaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
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
        data.message = map['message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateTable
    class CreateTable
      def self.parse(http_resp)
        data = Types::CreateTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['resourceArn']
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
        data.message = map['message']
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Operation Parser for DeleteKeyspace
    class DeleteKeyspace
      def self.parse(http_resp)
        data = Types::DeleteKeyspaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteTable
    class DeleteTable
      def self.parse(http_resp)
        data = Types::DeleteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetKeyspace
    class GetKeyspace
      def self.parse(http_resp)
        data = Types::GetKeyspaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.keyspace_name = map['keyspaceName']
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Operation Parser for GetTable
    class GetTable
      def self.parse(http_resp)
        data = Types::GetTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.keyspace_name = map['keyspaceName']
        data.table_name = map['tableName']
        data.resource_arn = map['resourceArn']
        data.creation_timestamp = Time.at(map['creationTimestamp'].to_i) if map['creationTimestamp']
        data.status = map['status']
        data.schema_definition = (Parsers::SchemaDefinition.parse(map['schemaDefinition']) unless map['schemaDefinition'].nil?)
        data.capacity_specification = (Parsers::CapacitySpecificationSummary.parse(map['capacitySpecification']) unless map['capacitySpecification'].nil?)
        data.encryption_specification = (Parsers::EncryptionSpecification.parse(map['encryptionSpecification']) unless map['encryptionSpecification'].nil?)
        data.point_in_time_recovery = (Parsers::PointInTimeRecoverySummary.parse(map['pointInTimeRecovery']) unless map['pointInTimeRecovery'].nil?)
        data.ttl = (Parsers::TimeToLive.parse(map['ttl']) unless map['ttl'].nil?)
        data.default_time_to_live = map['defaultTimeToLive']
        data.comment = (Parsers::Comment.parse(map['comment']) unless map['comment'].nil?)
        data
      end
    end

    class Comment
      def self.parse(map)
        data = Types::Comment.new
        data.message = map['message']
        return data
      end
    end

    class TimeToLive
      def self.parse(map)
        data = Types::TimeToLive.new
        data.status = map['status']
        return data
      end
    end

    class PointInTimeRecoverySummary
      def self.parse(map)
        data = Types::PointInTimeRecoverySummary.new
        data.status = map['status']
        data.earliest_restorable_timestamp = Time.at(map['earliestRestorableTimestamp'].to_i) if map['earliestRestorableTimestamp']
        return data
      end
    end

    class EncryptionSpecification
      def self.parse(map)
        data = Types::EncryptionSpecification.new
        data.type = map['type']
        data.kms_key_identifier = map['kmsKeyIdentifier']
        return data
      end
    end

    class CapacitySpecificationSummary
      def self.parse(map)
        data = Types::CapacitySpecificationSummary.new
        data.throughput_mode = map['throughputMode']
        data.read_capacity_units = map['readCapacityUnits']
        data.write_capacity_units = map['writeCapacityUnits']
        data.last_update_to_pay_per_request_timestamp = Time.at(map['lastUpdateToPayPerRequestTimestamp'].to_i) if map['lastUpdateToPayPerRequestTimestamp']
        return data
      end
    end

    class SchemaDefinition
      def self.parse(map)
        data = Types::SchemaDefinition.new
        data.all_columns = (Parsers::ColumnDefinitionList.parse(map['allColumns']) unless map['allColumns'].nil?)
        data.partition_keys = (Parsers::PartitionKeyList.parse(map['partitionKeys']) unless map['partitionKeys'].nil?)
        data.clustering_keys = (Parsers::ClusteringKeyList.parse(map['clusteringKeys']) unless map['clusteringKeys'].nil?)
        data.static_columns = (Parsers::StaticColumnList.parse(map['staticColumns']) unless map['staticColumns'].nil?)
        return data
      end
    end

    class StaticColumnList
      def self.parse(list)
        list.map do |value|
          Parsers::StaticColumn.parse(value) unless value.nil?
        end
      end
    end

    class StaticColumn
      def self.parse(map)
        data = Types::StaticColumn.new
        data.name = map['name']
        return data
      end
    end

    class ClusteringKeyList
      def self.parse(list)
        list.map do |value|
          Parsers::ClusteringKey.parse(value) unless value.nil?
        end
      end
    end

    class ClusteringKey
      def self.parse(map)
        data = Types::ClusteringKey.new
        data.name = map['name']
        data.order_by = map['orderBy']
        return data
      end
    end

    class PartitionKeyList
      def self.parse(list)
        list.map do |value|
          Parsers::PartitionKey.parse(value) unless value.nil?
        end
      end
    end

    class PartitionKey
      def self.parse(map)
        data = Types::PartitionKey.new
        data.name = map['name']
        return data
      end
    end

    class ColumnDefinitionList
      def self.parse(list)
        list.map do |value|
          Parsers::ColumnDefinition.parse(value) unless value.nil?
        end
      end
    end

    class ColumnDefinition
      def self.parse(map)
        data = Types::ColumnDefinition.new
        data.name = map['name']
        data.type = map['type']
        return data
      end
    end

    # Operation Parser for ListKeyspaces
    class ListKeyspaces
      def self.parse(http_resp)
        data = Types::ListKeyspacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.keyspaces = (Parsers::KeyspaceSummaryList.parse(map['keyspaces']) unless map['keyspaces'].nil?)
        data
      end
    end

    class KeyspaceSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::KeyspaceSummary.parse(value) unless value.nil?
        end
      end
    end

    class KeyspaceSummary
      def self.parse(map)
        data = Types::KeyspaceSummary.new
        data.keyspace_name = map['keyspaceName']
        data.resource_arn = map['resourceArn']
        return data
      end
    end

    # Operation Parser for ListTables
    class ListTables
      def self.parse(http_resp)
        data = Types::ListTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.tables = (Parsers::TableSummaryList.parse(map['tables']) unless map['tables'].nil?)
        data
      end
    end

    class TableSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::TableSummary.parse(value) unless value.nil?
        end
      end
    end

    class TableSummary
      def self.parse(map)
        data = Types::TableSummary.new
        data.keyspace_name = map['keyspaceName']
        data.table_name = map['tableName']
        data.resource_arn = map['resourceArn']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for RestoreTable
    class RestoreTable
      def self.parse(http_resp)
        data = Types::RestoreTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.restored_table_arn = map['restoredTableARN']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateTable
    class UpdateTable
      def self.parse(http_resp)
        data = Types::UpdateTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['resourceArn']
        data
      end
    end
  end
end
