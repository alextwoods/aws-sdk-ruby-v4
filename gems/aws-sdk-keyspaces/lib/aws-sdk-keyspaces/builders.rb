# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Keyspaces
  module Builders

    # Operation Builder for CreateKeyspace
    class CreateKeyspace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.CreateKeyspace'
        data = {}
        data['keyspaceName'] = input[:keyspace_name] unless input[:keyspace_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateTable
    class CreateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.CreateTable'
        data = {}
        data['keyspaceName'] = input[:keyspace_name] unless input[:keyspace_name].nil?
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        data['schemaDefinition'] = Builders::SchemaDefinition.build(input[:schema_definition]) unless input[:schema_definition].nil?
        data['comment'] = Builders::Comment.build(input[:comment]) unless input[:comment].nil?
        data['capacitySpecification'] = Builders::CapacitySpecification.build(input[:capacity_specification]) unless input[:capacity_specification].nil?
        data['encryptionSpecification'] = Builders::EncryptionSpecification.build(input[:encryption_specification]) unless input[:encryption_specification].nil?
        data['pointInTimeRecovery'] = Builders::PointInTimeRecovery.build(input[:point_in_time_recovery]) unless input[:point_in_time_recovery].nil?
        data['ttl'] = Builders::TimeToLive.build(input[:ttl]) unless input[:ttl].nil?
        data['defaultTimeToLive'] = input[:default_time_to_live] unless input[:default_time_to_live].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TimeToLive
    class TimeToLive
      def self.build(input)
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for PointInTimeRecovery
    class PointInTimeRecovery
      def self.build(input)
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Structure Builder for EncryptionSpecification
    class EncryptionSpecification
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['kmsKeyIdentifier'] = input[:kms_key_identifier] unless input[:kms_key_identifier].nil?
        data
      end
    end

    # Structure Builder for CapacitySpecification
    class CapacitySpecification
      def self.build(input)
        data = {}
        data['throughputMode'] = input[:throughput_mode] unless input[:throughput_mode].nil?
        data['readCapacityUnits'] = input[:read_capacity_units] unless input[:read_capacity_units].nil?
        data['writeCapacityUnits'] = input[:write_capacity_units] unless input[:write_capacity_units].nil?
        data
      end
    end

    # Structure Builder for Comment
    class Comment
      def self.build(input)
        data = {}
        data['message'] = input[:message] unless input[:message].nil?
        data
      end
    end

    # Structure Builder for SchemaDefinition
    class SchemaDefinition
      def self.build(input)
        data = {}
        data['allColumns'] = Builders::ColumnDefinitionList.build(input[:all_columns]) unless input[:all_columns].nil?
        data['partitionKeys'] = Builders::PartitionKeyList.build(input[:partition_keys]) unless input[:partition_keys].nil?
        data['clusteringKeys'] = Builders::ClusteringKeyList.build(input[:clustering_keys]) unless input[:clustering_keys].nil?
        data['staticColumns'] = Builders::StaticColumnList.build(input[:static_columns]) unless input[:static_columns].nil?
        data
      end
    end

    # List Builder for StaticColumnList
    class StaticColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StaticColumn.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StaticColumn
    class StaticColumn
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # List Builder for ClusteringKeyList
    class ClusteringKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ClusteringKey.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ClusteringKey
    class ClusteringKey
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['orderBy'] = input[:order_by] unless input[:order_by].nil?
        data
      end
    end

    # List Builder for PartitionKeyList
    class PartitionKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PartitionKey.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PartitionKey
    class PartitionKey
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # List Builder for ColumnDefinitionList
    class ColumnDefinitionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ColumnDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ColumnDefinition
    class ColumnDefinition
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for DeleteKeyspace
    class DeleteKeyspace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.DeleteKeyspace'
        data = {}
        data['keyspaceName'] = input[:keyspace_name] unless input[:keyspace_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTable
    class DeleteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.DeleteTable'
        data = {}
        data['keyspaceName'] = input[:keyspace_name] unless input[:keyspace_name].nil?
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetKeyspace
    class GetKeyspace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.GetKeyspace'
        data = {}
        data['keyspaceName'] = input[:keyspace_name] unless input[:keyspace_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTable
    class GetTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.GetTable'
        data = {}
        data['keyspaceName'] = input[:keyspace_name] unless input[:keyspace_name].nil?
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListKeyspaces
    class ListKeyspaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.ListKeyspaces'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTables
    class ListTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.ListTables'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['keyspaceName'] = input[:keyspace_name] unless input[:keyspace_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreTable
    class RestoreTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.RestoreTable'
        data = {}
        data['sourceKeyspaceName'] = input[:source_keyspace_name] unless input[:source_keyspace_name].nil?
        data['sourceTableName'] = input[:source_table_name] unless input[:source_table_name].nil?
        data['targetKeyspaceName'] = input[:target_keyspace_name] unless input[:target_keyspace_name].nil?
        data['targetTableName'] = input[:target_table_name] unless input[:target_table_name].nil?
        data['restoreTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:restore_timestamp]).to_i unless input[:restore_timestamp].nil?
        data['capacitySpecificationOverride'] = Builders::CapacitySpecification.build(input[:capacity_specification_override]) unless input[:capacity_specification_override].nil?
        data['encryptionSpecificationOverride'] = Builders::EncryptionSpecification.build(input[:encryption_specification_override]) unless input[:encryption_specification_override].nil?
        data['pointInTimeRecoveryOverride'] = Builders::PointInTimeRecovery.build(input[:point_in_time_recovery_override]) unless input[:point_in_time_recovery_override].nil?
        data['tagsOverride'] = Builders::TagList.build(input[:tags_override]) unless input[:tags_override].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTable
    class UpdateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'KeyspacesService.UpdateTable'
        data = {}
        data['keyspaceName'] = input[:keyspace_name] unless input[:keyspace_name].nil?
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        data['addColumns'] = Builders::ColumnDefinitionList.build(input[:add_columns]) unless input[:add_columns].nil?
        data['capacitySpecification'] = Builders::CapacitySpecification.build(input[:capacity_specification]) unless input[:capacity_specification].nil?
        data['encryptionSpecification'] = Builders::EncryptionSpecification.build(input[:encryption_specification]) unless input[:encryption_specification].nil?
        data['pointInTimeRecovery'] = Builders::PointInTimeRecovery.build(input[:point_in_time_recovery]) unless input[:point_in_time_recovery].nil?
        data['ttl'] = Builders::TimeToLive.build(input[:ttl]) unless input[:ttl].nil?
        data['defaultTimeToLive'] = input[:default_time_to_live] unless input[:default_time_to_live].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
