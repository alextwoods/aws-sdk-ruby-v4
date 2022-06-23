# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Dynamodb
  module Builders

    # Operation Builder for BatchExecuteStatement
    class BatchExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.BatchExecuteStatement'
        data = {}
        data['Statements'] = Builders::PartiQLBatchRequest.build(input[:statements]) unless input[:statements].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PartiQLBatchRequest
    class PartiQLBatchRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BatchStatementRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchStatementRequest
    class BatchStatementRequest
      def self.build(input)
        data = {}
        data['Statement'] = input[:statement] unless input[:statement].nil?
        data['Parameters'] = Builders::PreparedStatementParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        data
      end
    end

    # List Builder for PreparedStatementParameters
    class PreparedStatementParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttributeValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AttributeValue
    class AttributeValue
      def self.build(input)
        data = {}
        case input
        when Types::AttributeValue::S
          data['S'] = input
        when Types::AttributeValue::N
          data['N'] = input
        when Types::AttributeValue::B
          data['B'] = Base64::encode64(input).strip
        when Types::AttributeValue::Ss
          data['SS'] = (Builders::StringSetAttributeValue.build(input) unless input.nil?)
        when Types::AttributeValue::Ns
          data['NS'] = (Builders::NumberSetAttributeValue.build(input) unless input.nil?)
        when Types::AttributeValue::Bs
          data['BS'] = (Builders::BinarySetAttributeValue.build(input) unless input.nil?)
        when Types::AttributeValue::M
          data['M'] = (Builders::MapAttributeValue.build(input) unless input.nil?)
        when Types::AttributeValue::L
          data['L'] = (Builders::ListAttributeValue.build(input) unless input.nil?)
        when Types::AttributeValue::Null
          data['NULL'] = input
        when Types::AttributeValue::Bool
          data['BOOL'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AttributeValue"
        end

        data
      end
    end

    # List Builder for ListAttributeValue
    class ListAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttributeValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Map Builder for MapAttributeValue
    class MapAttributeValue
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for BinarySetAttributeValue
    class BinarySetAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
          data << Base64::encode64(element).strip unless element.nil?
        end
        data
      end
    end

    # List Builder for NumberSetAttributeValue
    class NumberSetAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StringSetAttributeValue
    class StringSetAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetItem
    class BatchGetItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.BatchGetItem'
        data = {}
        data['RequestItems'] = Builders::BatchGetRequestMap.build(input[:request_items]) unless input[:request_items].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for BatchGetRequestMap
    class BatchGetRequestMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::KeysAndAttributes.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for KeysAndAttributes
    class KeysAndAttributes
      def self.build(input)
        data = {}
        data['Keys'] = Builders::KeyList.build(input[:keys]) unless input[:keys].nil?
        data['AttributesToGet'] = Builders::AttributeNameList.build(input[:attributes_to_get]) unless input[:attributes_to_get].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        data['ProjectionExpression'] = input[:projection_expression] unless input[:projection_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data
      end
    end

    # Map Builder for ExpressionAttributeNameMap
    class ExpressionAttributeNameMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for AttributeNameList
    class AttributeNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for KeyList
    class KeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Key.build(element) unless element.nil?
        end
        data
      end
    end

    # Map Builder for Key
    class Key
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Operation Builder for BatchWriteItem
    class BatchWriteItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.BatchWriteItem'
        data = {}
        data['RequestItems'] = Builders::BatchWriteItemRequestMap.build(input[:request_items]) unless input[:request_items].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ReturnItemCollectionMetrics'] = input[:return_item_collection_metrics] unless input[:return_item_collection_metrics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for BatchWriteItemRequestMap
    class BatchWriteItemRequestMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::WriteRequests.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for WriteRequests
    class WriteRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::WriteRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WriteRequest
    class WriteRequest
      def self.build(input)
        data = {}
        data['PutRequest'] = Builders::PutRequest.build(input[:put_request]) unless input[:put_request].nil?
        data['DeleteRequest'] = Builders::DeleteRequest.build(input[:delete_request]) unless input[:delete_request].nil?
        data
      end
    end

    # Structure Builder for DeleteRequest
    class DeleteRequest
      def self.build(input)
        data = {}
        data['Key'] = Builders::Key.build(input[:key]) unless input[:key].nil?
        data
      end
    end

    # Structure Builder for PutRequest
    class PutRequest
      def self.build(input)
        data = {}
        data['Item'] = Builders::PutItemInputAttributeMap.build(input[:item]) unless input[:item].nil?
        data
      end
    end

    # Map Builder for PutItemInputAttributeMap
    class PutItemInputAttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateBackup
    class CreateBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.CreateBackup'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['BackupName'] = input[:backup_name] unless input[:backup_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateGlobalTable
    class CreateGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.CreateGlobalTable'
        data = {}
        data['GlobalTableName'] = input[:global_table_name] unless input[:global_table_name].nil?
        data['ReplicationGroup'] = Builders::ReplicaList.build(input[:replication_group]) unless input[:replication_group].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReplicaList
    class ReplicaList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Replica.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Replica
    class Replica
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data
      end
    end

    # Operation Builder for CreateTable
    class CreateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.CreateTable'
        data = {}
        data['AttributeDefinitions'] = Builders::AttributeDefinitions.build(input[:attribute_definitions]) unless input[:attribute_definitions].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['KeySchema'] = Builders::KeySchema.build(input[:key_schema]) unless input[:key_schema].nil?
        data['LocalSecondaryIndexes'] = Builders::LocalSecondaryIndexList.build(input[:local_secondary_indexes]) unless input[:local_secondary_indexes].nil?
        data['GlobalSecondaryIndexes'] = Builders::GlobalSecondaryIndexList.build(input[:global_secondary_indexes]) unless input[:global_secondary_indexes].nil?
        data['BillingMode'] = input[:billing_mode] unless input[:billing_mode].nil?
        data['ProvisionedThroughput'] = Builders::ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data['StreamSpecification'] = Builders::StreamSpecification.build(input[:stream_specification]) unless input[:stream_specification].nil?
        data['SSESpecification'] = Builders::SSESpecification.build(input[:sse_specification]) unless input[:sse_specification].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['TableClass'] = input[:table_class] unless input[:table_class].nil?
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
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for SSESpecification
    class SSESpecification
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['SSEType'] = input[:sse_type] unless input[:sse_type].nil?
        data['KMSMasterKeyId'] = input[:kms_master_key_id] unless input[:kms_master_key_id].nil?
        data
      end
    end

    # Structure Builder for StreamSpecification
    class StreamSpecification
      def self.build(input)
        data = {}
        data['StreamEnabled'] = input[:stream_enabled] unless input[:stream_enabled].nil?
        data['StreamViewType'] = input[:stream_view_type] unless input[:stream_view_type].nil?
        data
      end
    end

    # Structure Builder for ProvisionedThroughput
    class ProvisionedThroughput
      def self.build(input)
        data = {}
        data['ReadCapacityUnits'] = input[:read_capacity_units] unless input[:read_capacity_units].nil?
        data['WriteCapacityUnits'] = input[:write_capacity_units] unless input[:write_capacity_units].nil?
        data
      end
    end

    # List Builder for GlobalSecondaryIndexList
    class GlobalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GlobalSecondaryIndex.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GlobalSecondaryIndex
    class GlobalSecondaryIndex
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['KeySchema'] = Builders::KeySchema.build(input[:key_schema]) unless input[:key_schema].nil?
        data['Projection'] = Builders::Projection.build(input[:projection]) unless input[:projection].nil?
        data['ProvisionedThroughput'] = Builders::ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data
      end
    end

    # Structure Builder for Projection
    class Projection
      def self.build(input)
        data = {}
        data['ProjectionType'] = input[:projection_type] unless input[:projection_type].nil?
        data['NonKeyAttributes'] = Builders::NonKeyAttributeNameList.build(input[:non_key_attributes]) unless input[:non_key_attributes].nil?
        data
      end
    end

    # List Builder for NonKeyAttributeNameList
    class NonKeyAttributeNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for KeySchema
    class KeySchema
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::KeySchemaElement.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KeySchemaElement
    class KeySchemaElement
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['KeyType'] = input[:key_type] unless input[:key_type].nil?
        data
      end
    end

    # List Builder for LocalSecondaryIndexList
    class LocalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LocalSecondaryIndex.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LocalSecondaryIndex
    class LocalSecondaryIndex
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['KeySchema'] = Builders::KeySchema.build(input[:key_schema]) unless input[:key_schema].nil?
        data['Projection'] = Builders::Projection.build(input[:projection]) unless input[:projection].nil?
        data
      end
    end

    # List Builder for AttributeDefinitions
    class AttributeDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttributeDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AttributeDefinition
    class AttributeDefinition
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['AttributeType'] = input[:attribute_type] unless input[:attribute_type].nil?
        data
      end
    end

    # Operation Builder for DeleteBackup
    class DeleteBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DeleteBackup'
        data = {}
        data['BackupArn'] = input[:backup_arn] unless input[:backup_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteItem
    class DeleteItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DeleteItem'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Key'] = Builders::Key.build(input[:key]) unless input[:key].nil?
        data['Expected'] = Builders::ExpectedAttributeMap.build(input[:expected]) unless input[:expected].nil?
        data['ConditionalOperator'] = input[:conditional_operator] unless input[:conditional_operator].nil?
        data['ReturnValues'] = input[:return_values] unless input[:return_values].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ReturnItemCollectionMetrics'] = input[:return_item_collection_metrics] unless input[:return_item_collection_metrics].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = Builders::ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ExpressionAttributeValueMap
    class ExpressionAttributeValueMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Map Builder for ExpectedAttributeMap
    class ExpectedAttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ExpectedAttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ExpectedAttributeValue
    class ExpectedAttributeValue
      def self.build(input)
        data = {}
        data['Value'] = Builders::AttributeValue.build(input[:value]) unless input[:value].nil?
        data['Exists'] = input[:exists] unless input[:exists].nil?
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['AttributeValueList'] = Builders::AttributeValueList.build(input[:attribute_value_list]) unless input[:attribute_value_list].nil?
        data
      end
    end

    # List Builder for AttributeValueList
    class AttributeValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttributeValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteTable
    class DeleteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DeleteTable'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBackup
    class DescribeBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeBackup'
        data = {}
        data['BackupArn'] = input[:backup_arn] unless input[:backup_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeContinuousBackups
    class DescribeContinuousBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeContinuousBackups'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeContributorInsights
    class DescribeContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeContributorInsights'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEndpoints
    class DescribeEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeEndpoints'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeExport
    class DescribeExport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeExport'
        data = {}
        data['ExportArn'] = input[:export_arn] unless input[:export_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeGlobalTable
    class DescribeGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeGlobalTable'
        data = {}
        data['GlobalTableName'] = input[:global_table_name] unless input[:global_table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeGlobalTableSettings
    class DescribeGlobalTableSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeGlobalTableSettings'
        data = {}
        data['GlobalTableName'] = input[:global_table_name] unless input[:global_table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeKinesisStreamingDestination
    class DescribeKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeKinesisStreamingDestination'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLimits
    class DescribeLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeLimits'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTable
    class DescribeTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeTable'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTableReplicaAutoScaling
    class DescribeTableReplicaAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeTableReplicaAutoScaling'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTimeToLive
    class DescribeTimeToLive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeTimeToLive'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableKinesisStreamingDestination
    class DisableKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DisableKinesisStreamingDestination'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableKinesisStreamingDestination
    class EnableKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.EnableKinesisStreamingDestination'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExecuteStatement
    class ExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ExecuteStatement'
        data = {}
        data['Statement'] = input[:statement] unless input[:statement].nil?
        data['Parameters'] = Builders::PreparedStatementParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExecuteTransaction
    class ExecuteTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ExecuteTransaction'
        data = {}
        data['TransactStatements'] = Builders::ParameterizedStatements.build(input[:transact_statements]) unless input[:transact_statements].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterizedStatements
    class ParameterizedStatements
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ParameterizedStatement.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParameterizedStatement
    class ParameterizedStatement
      def self.build(input)
        data = {}
        data['Statement'] = input[:statement] unless input[:statement].nil?
        data['Parameters'] = Builders::PreparedStatementParameters.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # Operation Builder for ExportTableToPointInTime
    class ExportTableToPointInTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ExportTableToPointInTime'
        data = {}
        data['TableArn'] = input[:table_arn] unless input[:table_arn].nil?
        data['ExportTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:export_time]).to_i unless input[:export_time].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3BucketOwner'] = input[:s3_bucket_owner] unless input[:s3_bucket_owner].nil?
        data['S3Prefix'] = input[:s3_prefix] unless input[:s3_prefix].nil?
        data['S3SseAlgorithm'] = input[:s3_sse_algorithm] unless input[:s3_sse_algorithm].nil?
        data['S3SseKmsKeyId'] = input[:s3_sse_kms_key_id] unless input[:s3_sse_kms_key_id].nil?
        data['ExportFormat'] = input[:export_format] unless input[:export_format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetItem
    class GetItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.GetItem'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Key'] = Builders::Key.build(input[:key]) unless input[:key].nil?
        data['AttributesToGet'] = Builders::AttributeNameList.build(input[:attributes_to_get]) unless input[:attributes_to_get].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ProjectionExpression'] = input[:projection_expression] unless input[:projection_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBackups
    class ListBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListBackups'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['TimeRangeLowerBound'] = Hearth::TimeHelper.to_epoch_seconds(input[:time_range_lower_bound]).to_i unless input[:time_range_lower_bound].nil?
        data['TimeRangeUpperBound'] = Hearth::TimeHelper.to_epoch_seconds(input[:time_range_upper_bound]).to_i unless input[:time_range_upper_bound].nil?
        data['ExclusiveStartBackupArn'] = input[:exclusive_start_backup_arn] unless input[:exclusive_start_backup_arn].nil?
        data['BackupType'] = input[:backup_type] unless input[:backup_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListContributorInsights
    class ListContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListContributorInsights'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListExports
    class ListExports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListExports'
        data = {}
        data['TableArn'] = input[:table_arn] unless input[:table_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGlobalTables
    class ListGlobalTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListGlobalTables'
        data = {}
        data['ExclusiveStartGlobalTableName'] = input[:exclusive_start_global_table_name] unless input[:exclusive_start_global_table_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTables
    class ListTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListTables'
        data = {}
        data['ExclusiveStartTableName'] = input[:exclusive_start_table_name] unless input[:exclusive_start_table_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsOfResource
    class ListTagsOfResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListTagsOfResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutItem
    class PutItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.PutItem'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Item'] = Builders::PutItemInputAttributeMap.build(input[:item]) unless input[:item].nil?
        data['Expected'] = Builders::ExpectedAttributeMap.build(input[:expected]) unless input[:expected].nil?
        data['ReturnValues'] = input[:return_values] unless input[:return_values].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ReturnItemCollectionMetrics'] = input[:return_item_collection_metrics] unless input[:return_item_collection_metrics].nil?
        data['ConditionalOperator'] = input[:conditional_operator] unless input[:conditional_operator].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = Builders::ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Query
    class Query
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.Query'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['Select'] = input[:select] unless input[:select].nil?
        data['AttributesToGet'] = Builders::AttributeNameList.build(input[:attributes_to_get]) unless input[:attributes_to_get].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        data['KeyConditions'] = Builders::KeyConditions.build(input[:key_conditions]) unless input[:key_conditions].nil?
        data['QueryFilter'] = Builders::FilterConditionMap.build(input[:query_filter]) unless input[:query_filter].nil?
        data['ConditionalOperator'] = input[:conditional_operator] unless input[:conditional_operator].nil?
        data['ScanIndexForward'] = input[:scan_index_forward] unless input[:scan_index_forward].nil?
        data['ExclusiveStartKey'] = Builders::Key.build(input[:exclusive_start_key]) unless input[:exclusive_start_key].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ProjectionExpression'] = input[:projection_expression] unless input[:projection_expression].nil?
        data['FilterExpression'] = input[:filter_expression] unless input[:filter_expression].nil?
        data['KeyConditionExpression'] = input[:key_condition_expression] unless input[:key_condition_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = Builders::ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for FilterConditionMap
    class FilterConditionMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Condition.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Condition
    class Condition
      def self.build(input)
        data = {}
        data['AttributeValueList'] = Builders::AttributeValueList.build(input[:attribute_value_list]) unless input[:attribute_value_list].nil?
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data
      end
    end

    # Map Builder for KeyConditions
    class KeyConditions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Condition.build(value) unless value.nil?
        end
        data
      end
    end

    # Operation Builder for RestoreTableFromBackup
    class RestoreTableFromBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.RestoreTableFromBackup'
        data = {}
        data['TargetTableName'] = input[:target_table_name] unless input[:target_table_name].nil?
        data['BackupArn'] = input[:backup_arn] unless input[:backup_arn].nil?
        data['BillingModeOverride'] = input[:billing_mode_override] unless input[:billing_mode_override].nil?
        data['GlobalSecondaryIndexOverride'] = Builders::GlobalSecondaryIndexList.build(input[:global_secondary_index_override]) unless input[:global_secondary_index_override].nil?
        data['LocalSecondaryIndexOverride'] = Builders::LocalSecondaryIndexList.build(input[:local_secondary_index_override]) unless input[:local_secondary_index_override].nil?
        data['ProvisionedThroughputOverride'] = Builders::ProvisionedThroughput.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data['SSESpecificationOverride'] = Builders::SSESpecification.build(input[:sse_specification_override]) unless input[:sse_specification_override].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreTableToPointInTime
    class RestoreTableToPointInTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.RestoreTableToPointInTime'
        data = {}
        data['SourceTableArn'] = input[:source_table_arn] unless input[:source_table_arn].nil?
        data['SourceTableName'] = input[:source_table_name] unless input[:source_table_name].nil?
        data['TargetTableName'] = input[:target_table_name] unless input[:target_table_name].nil?
        data['UseLatestRestorableTime'] = input[:use_latest_restorable_time] unless input[:use_latest_restorable_time].nil?
        data['RestoreDateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:restore_date_time]).to_i unless input[:restore_date_time].nil?
        data['BillingModeOverride'] = input[:billing_mode_override] unless input[:billing_mode_override].nil?
        data['GlobalSecondaryIndexOverride'] = Builders::GlobalSecondaryIndexList.build(input[:global_secondary_index_override]) unless input[:global_secondary_index_override].nil?
        data['LocalSecondaryIndexOverride'] = Builders::LocalSecondaryIndexList.build(input[:local_secondary_index_override]) unless input[:local_secondary_index_override].nil?
        data['ProvisionedThroughputOverride'] = Builders::ProvisionedThroughput.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data['SSESpecificationOverride'] = Builders::SSESpecification.build(input[:sse_specification_override]) unless input[:sse_specification_override].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Scan
    class Scan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.Scan'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['AttributesToGet'] = Builders::AttributeNameList.build(input[:attributes_to_get]) unless input[:attributes_to_get].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Select'] = input[:select] unless input[:select].nil?
        data['ScanFilter'] = Builders::FilterConditionMap.build(input[:scan_filter]) unless input[:scan_filter].nil?
        data['ConditionalOperator'] = input[:conditional_operator] unless input[:conditional_operator].nil?
        data['ExclusiveStartKey'] = Builders::Key.build(input[:exclusive_start_key]) unless input[:exclusive_start_key].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['TotalSegments'] = input[:total_segments] unless input[:total_segments].nil?
        data['Segment'] = input[:segment] unless input[:segment].nil?
        data['ProjectionExpression'] = input[:projection_expression] unless input[:projection_expression].nil?
        data['FilterExpression'] = input[:filter_expression] unless input[:filter_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = Builders::ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TransactGetItems
    class TransactGetItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.TransactGetItems'
        data = {}
        data['TransactItems'] = Builders::TransactGetItemList.build(input[:transact_items]) unless input[:transact_items].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TransactGetItemList
    class TransactGetItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TransactGetItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TransactGetItem
    class TransactGetItem
      def self.build(input)
        data = {}
        data['Get'] = Builders::Get.build(input[:get]) unless input[:get].nil?
        data
      end
    end

    # Structure Builder for Get
    class Get
      def self.build(input)
        data = {}
        data['Key'] = Builders::Key.build(input[:key]) unless input[:key].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ProjectionExpression'] = input[:projection_expression] unless input[:projection_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data
      end
    end

    # Operation Builder for TransactWriteItems
    class TransactWriteItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.TransactWriteItems'
        data = {}
        data['TransactItems'] = Builders::TransactWriteItemList.build(input[:transact_items]) unless input[:transact_items].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ReturnItemCollectionMetrics'] = input[:return_item_collection_metrics] unless input[:return_item_collection_metrics].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TransactWriteItemList
    class TransactWriteItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TransactWriteItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TransactWriteItem
    class TransactWriteItem
      def self.build(input)
        data = {}
        data['ConditionCheck'] = Builders::ConditionCheck.build(input[:condition_check]) unless input[:condition_check].nil?
        data['Put'] = Builders::Put.build(input[:put]) unless input[:put].nil?
        data['Delete'] = Builders::Delete.build(input[:delete]) unless input[:delete].nil?
        data['Update'] = Builders::Update.build(input[:update]) unless input[:update].nil?
        data
      end
    end

    # Structure Builder for Update
    class Update
      def self.build(input)
        data = {}
        data['Key'] = Builders::Key.build(input[:key]) unless input[:key].nil?
        data['UpdateExpression'] = input[:update_expression] unless input[:update_expression].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = Builders::ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        data
      end
    end

    # Structure Builder for Delete
    class Delete
      def self.build(input)
        data = {}
        data['Key'] = Builders::Key.build(input[:key]) unless input[:key].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = Builders::ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        data
      end
    end

    # Structure Builder for Put
    class Put
      def self.build(input)
        data = {}
        data['Item'] = Builders::PutItemInputAttributeMap.build(input[:item]) unless input[:item].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = Builders::ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        data
      end
    end

    # Structure Builder for ConditionCheck
    class ConditionCheck
      def self.build(input)
        data = {}
        data['Key'] = Builders::Key.build(input[:key]) unless input[:key].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = Builders::ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        data
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateContinuousBackups
    class UpdateContinuousBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateContinuousBackups'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PointInTimeRecoverySpecification'] = Builders::PointInTimeRecoverySpecification.build(input[:point_in_time_recovery_specification]) unless input[:point_in_time_recovery_specification].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PointInTimeRecoverySpecification
    class PointInTimeRecoverySpecification
      def self.build(input)
        data = {}
        data['PointInTimeRecoveryEnabled'] = input[:point_in_time_recovery_enabled] unless input[:point_in_time_recovery_enabled].nil?
        data
      end
    end

    # Operation Builder for UpdateContributorInsights
    class UpdateContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateContributorInsights'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ContributorInsightsAction'] = input[:contributor_insights_action] unless input[:contributor_insights_action].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGlobalTable
    class UpdateGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateGlobalTable'
        data = {}
        data['GlobalTableName'] = input[:global_table_name] unless input[:global_table_name].nil?
        data['ReplicaUpdates'] = Builders::ReplicaUpdateList.build(input[:replica_updates]) unless input[:replica_updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReplicaUpdateList
    class ReplicaUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReplicaUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicaUpdate
    class ReplicaUpdate
      def self.build(input)
        data = {}
        data['Create'] = Builders::CreateReplicaAction.build(input[:create]) unless input[:create].nil?
        data['Delete'] = Builders::DeleteReplicaAction.build(input[:delete]) unless input[:delete].nil?
        data
      end
    end

    # Structure Builder for DeleteReplicaAction
    class DeleteReplicaAction
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data
      end
    end

    # Structure Builder for CreateReplicaAction
    class CreateReplicaAction
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data
      end
    end

    # Operation Builder for UpdateGlobalTableSettings
    class UpdateGlobalTableSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateGlobalTableSettings'
        data = {}
        data['GlobalTableName'] = input[:global_table_name] unless input[:global_table_name].nil?
        data['GlobalTableBillingMode'] = input[:global_table_billing_mode] unless input[:global_table_billing_mode].nil?
        data['GlobalTableProvisionedWriteCapacityUnits'] = input[:global_table_provisioned_write_capacity_units] unless input[:global_table_provisioned_write_capacity_units].nil?
        data['GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate'] = Builders::AutoScalingSettingsUpdate.build(input[:global_table_provisioned_write_capacity_auto_scaling_settings_update]) unless input[:global_table_provisioned_write_capacity_auto_scaling_settings_update].nil?
        data['GlobalTableGlobalSecondaryIndexSettingsUpdate'] = Builders::GlobalTableGlobalSecondaryIndexSettingsUpdateList.build(input[:global_table_global_secondary_index_settings_update]) unless input[:global_table_global_secondary_index_settings_update].nil?
        data['ReplicaSettingsUpdate'] = Builders::ReplicaSettingsUpdateList.build(input[:replica_settings_update]) unless input[:replica_settings_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReplicaSettingsUpdateList
    class ReplicaSettingsUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReplicaSettingsUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicaSettingsUpdate
    class ReplicaSettingsUpdate
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['ReplicaProvisionedReadCapacityUnits'] = input[:replica_provisioned_read_capacity_units] unless input[:replica_provisioned_read_capacity_units].nil?
        data['ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate'] = Builders::AutoScalingSettingsUpdate.build(input[:replica_provisioned_read_capacity_auto_scaling_settings_update]) unless input[:replica_provisioned_read_capacity_auto_scaling_settings_update].nil?
        data['ReplicaGlobalSecondaryIndexSettingsUpdate'] = Builders::ReplicaGlobalSecondaryIndexSettingsUpdateList.build(input[:replica_global_secondary_index_settings_update]) unless input[:replica_global_secondary_index_settings_update].nil?
        data['ReplicaTableClass'] = input[:replica_table_class] unless input[:replica_table_class].nil?
        data
      end
    end

    # List Builder for ReplicaGlobalSecondaryIndexSettingsUpdateList
    class ReplicaGlobalSecondaryIndexSettingsUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReplicaGlobalSecondaryIndexSettingsUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicaGlobalSecondaryIndexSettingsUpdate
    class ReplicaGlobalSecondaryIndexSettingsUpdate
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedReadCapacityUnits'] = input[:provisioned_read_capacity_units] unless input[:provisioned_read_capacity_units].nil?
        data['ProvisionedReadCapacityAutoScalingSettingsUpdate'] = Builders::AutoScalingSettingsUpdate.build(input[:provisioned_read_capacity_auto_scaling_settings_update]) unless input[:provisioned_read_capacity_auto_scaling_settings_update].nil?
        data
      end
    end

    # Structure Builder for AutoScalingSettingsUpdate
    class AutoScalingSettingsUpdate
      def self.build(input)
        data = {}
        data['MinimumUnits'] = input[:minimum_units] unless input[:minimum_units].nil?
        data['MaximumUnits'] = input[:maximum_units] unless input[:maximum_units].nil?
        data['AutoScalingDisabled'] = input[:auto_scaling_disabled] unless input[:auto_scaling_disabled].nil?
        data['AutoScalingRoleArn'] = input[:auto_scaling_role_arn] unless input[:auto_scaling_role_arn].nil?
        data['ScalingPolicyUpdate'] = Builders::AutoScalingPolicyUpdate.build(input[:scaling_policy_update]) unless input[:scaling_policy_update].nil?
        data
      end
    end

    # Structure Builder for AutoScalingPolicyUpdate
    class AutoScalingPolicyUpdate
      def self.build(input)
        data = {}
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['TargetTrackingScalingPolicyConfiguration'] = Builders::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.build(input[:target_tracking_scaling_policy_configuration]) unless input[:target_tracking_scaling_policy_configuration].nil?
        data
      end
    end

    # Structure Builder for AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    class AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
      def self.build(input)
        data = {}
        data['DisableScaleIn'] = input[:disable_scale_in] unless input[:disable_scale_in].nil?
        data['ScaleInCooldown'] = input[:scale_in_cooldown] unless input[:scale_in_cooldown].nil?
        data['ScaleOutCooldown'] = input[:scale_out_cooldown] unless input[:scale_out_cooldown].nil?
        data['TargetValue'] = Hearth::NumberHelper.serialize(input[:target_value]) unless input[:target_value].nil?
        data
      end
    end

    # List Builder for GlobalTableGlobalSecondaryIndexSettingsUpdateList
    class GlobalTableGlobalSecondaryIndexSettingsUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GlobalTableGlobalSecondaryIndexSettingsUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GlobalTableGlobalSecondaryIndexSettingsUpdate
    class GlobalTableGlobalSecondaryIndexSettingsUpdate
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedWriteCapacityUnits'] = input[:provisioned_write_capacity_units] unless input[:provisioned_write_capacity_units].nil?
        data['ProvisionedWriteCapacityAutoScalingSettingsUpdate'] = Builders::AutoScalingSettingsUpdate.build(input[:provisioned_write_capacity_auto_scaling_settings_update]) unless input[:provisioned_write_capacity_auto_scaling_settings_update].nil?
        data
      end
    end

    # Operation Builder for UpdateItem
    class UpdateItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateItem'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Key'] = Builders::Key.build(input[:key]) unless input[:key].nil?
        data['AttributeUpdates'] = Builders::AttributeUpdates.build(input[:attribute_updates]) unless input[:attribute_updates].nil?
        data['Expected'] = Builders::ExpectedAttributeMap.build(input[:expected]) unless input[:expected].nil?
        data['ConditionalOperator'] = input[:conditional_operator] unless input[:conditional_operator].nil?
        data['ReturnValues'] = input[:return_values] unless input[:return_values].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ReturnItemCollectionMetrics'] = input[:return_item_collection_metrics] unless input[:return_item_collection_metrics].nil?
        data['UpdateExpression'] = input[:update_expression] unless input[:update_expression].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = Builders::ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = Builders::ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for AttributeUpdates
    class AttributeUpdates
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AttributeValueUpdate.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AttributeValueUpdate
    class AttributeValueUpdate
      def self.build(input)
        data = {}
        data['Value'] = Builders::AttributeValue.build(input[:value]) unless input[:value].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    # Operation Builder for UpdateTable
    class UpdateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateTable'
        data = {}
        data['AttributeDefinitions'] = Builders::AttributeDefinitions.build(input[:attribute_definitions]) unless input[:attribute_definitions].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['BillingMode'] = input[:billing_mode] unless input[:billing_mode].nil?
        data['ProvisionedThroughput'] = Builders::ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data['GlobalSecondaryIndexUpdates'] = Builders::GlobalSecondaryIndexUpdateList.build(input[:global_secondary_index_updates]) unless input[:global_secondary_index_updates].nil?
        data['StreamSpecification'] = Builders::StreamSpecification.build(input[:stream_specification]) unless input[:stream_specification].nil?
        data['SSESpecification'] = Builders::SSESpecification.build(input[:sse_specification]) unless input[:sse_specification].nil?
        data['ReplicaUpdates'] = Builders::ReplicationGroupUpdateList.build(input[:replica_updates]) unless input[:replica_updates].nil?
        data['TableClass'] = input[:table_class] unless input[:table_class].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReplicationGroupUpdateList
    class ReplicationGroupUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReplicationGroupUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicationGroupUpdate
    class ReplicationGroupUpdate
      def self.build(input)
        data = {}
        data['Create'] = Builders::CreateReplicationGroupMemberAction.build(input[:create]) unless input[:create].nil?
        data['Update'] = Builders::UpdateReplicationGroupMemberAction.build(input[:update]) unless input[:update].nil?
        data['Delete'] = Builders::DeleteReplicationGroupMemberAction.build(input[:delete]) unless input[:delete].nil?
        data
      end
    end

    # Structure Builder for DeleteReplicationGroupMemberAction
    class DeleteReplicationGroupMemberAction
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data
      end
    end

    # Structure Builder for UpdateReplicationGroupMemberAction
    class UpdateReplicationGroupMemberAction
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['KMSMasterKeyId'] = input[:kms_master_key_id] unless input[:kms_master_key_id].nil?
        data['ProvisionedThroughputOverride'] = Builders::ProvisionedThroughputOverride.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data['GlobalSecondaryIndexes'] = Builders::ReplicaGlobalSecondaryIndexList.build(input[:global_secondary_indexes]) unless input[:global_secondary_indexes].nil?
        data['TableClassOverride'] = input[:table_class_override] unless input[:table_class_override].nil?
        data
      end
    end

    # List Builder for ReplicaGlobalSecondaryIndexList
    class ReplicaGlobalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReplicaGlobalSecondaryIndex.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicaGlobalSecondaryIndex
    class ReplicaGlobalSecondaryIndex
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedThroughputOverride'] = Builders::ProvisionedThroughputOverride.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data
      end
    end

    # Structure Builder for ProvisionedThroughputOverride
    class ProvisionedThroughputOverride
      def self.build(input)
        data = {}
        data['ReadCapacityUnits'] = input[:read_capacity_units] unless input[:read_capacity_units].nil?
        data
      end
    end

    # Structure Builder for CreateReplicationGroupMemberAction
    class CreateReplicationGroupMemberAction
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['KMSMasterKeyId'] = input[:kms_master_key_id] unless input[:kms_master_key_id].nil?
        data['ProvisionedThroughputOverride'] = Builders::ProvisionedThroughputOverride.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data['GlobalSecondaryIndexes'] = Builders::ReplicaGlobalSecondaryIndexList.build(input[:global_secondary_indexes]) unless input[:global_secondary_indexes].nil?
        data['TableClassOverride'] = input[:table_class_override] unless input[:table_class_override].nil?
        data
      end
    end

    # List Builder for GlobalSecondaryIndexUpdateList
    class GlobalSecondaryIndexUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GlobalSecondaryIndexUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GlobalSecondaryIndexUpdate
    class GlobalSecondaryIndexUpdate
      def self.build(input)
        data = {}
        data['Update'] = Builders::UpdateGlobalSecondaryIndexAction.build(input[:update]) unless input[:update].nil?
        data['Create'] = Builders::CreateGlobalSecondaryIndexAction.build(input[:create]) unless input[:create].nil?
        data['Delete'] = Builders::DeleteGlobalSecondaryIndexAction.build(input[:delete]) unless input[:delete].nil?
        data
      end
    end

    # Structure Builder for DeleteGlobalSecondaryIndexAction
    class DeleteGlobalSecondaryIndexAction
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data
      end
    end

    # Structure Builder for CreateGlobalSecondaryIndexAction
    class CreateGlobalSecondaryIndexAction
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['KeySchema'] = Builders::KeySchema.build(input[:key_schema]) unless input[:key_schema].nil?
        data['Projection'] = Builders::Projection.build(input[:projection]) unless input[:projection].nil?
        data['ProvisionedThroughput'] = Builders::ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data
      end
    end

    # Structure Builder for UpdateGlobalSecondaryIndexAction
    class UpdateGlobalSecondaryIndexAction
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedThroughput'] = Builders::ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data
      end
    end

    # Operation Builder for UpdateTableReplicaAutoScaling
    class UpdateTableReplicaAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateTableReplicaAutoScaling'
        data = {}
        data['GlobalSecondaryIndexUpdates'] = Builders::GlobalSecondaryIndexAutoScalingUpdateList.build(input[:global_secondary_index_updates]) unless input[:global_secondary_index_updates].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ProvisionedWriteCapacityAutoScalingUpdate'] = Builders::AutoScalingSettingsUpdate.build(input[:provisioned_write_capacity_auto_scaling_update]) unless input[:provisioned_write_capacity_auto_scaling_update].nil?
        data['ReplicaUpdates'] = Builders::ReplicaAutoScalingUpdateList.build(input[:replica_updates]) unless input[:replica_updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReplicaAutoScalingUpdateList
    class ReplicaAutoScalingUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReplicaAutoScalingUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicaAutoScalingUpdate
    class ReplicaAutoScalingUpdate
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['ReplicaGlobalSecondaryIndexUpdates'] = Builders::ReplicaGlobalSecondaryIndexAutoScalingUpdateList.build(input[:replica_global_secondary_index_updates]) unless input[:replica_global_secondary_index_updates].nil?
        data['ReplicaProvisionedReadCapacityAutoScalingUpdate'] = Builders::AutoScalingSettingsUpdate.build(input[:replica_provisioned_read_capacity_auto_scaling_update]) unless input[:replica_provisioned_read_capacity_auto_scaling_update].nil?
        data
      end
    end

    # List Builder for ReplicaGlobalSecondaryIndexAutoScalingUpdateList
    class ReplicaGlobalSecondaryIndexAutoScalingUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReplicaGlobalSecondaryIndexAutoScalingUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicaGlobalSecondaryIndexAutoScalingUpdate
    class ReplicaGlobalSecondaryIndexAutoScalingUpdate
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedReadCapacityAutoScalingUpdate'] = Builders::AutoScalingSettingsUpdate.build(input[:provisioned_read_capacity_auto_scaling_update]) unless input[:provisioned_read_capacity_auto_scaling_update].nil?
        data
      end
    end

    # List Builder for GlobalSecondaryIndexAutoScalingUpdateList
    class GlobalSecondaryIndexAutoScalingUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GlobalSecondaryIndexAutoScalingUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GlobalSecondaryIndexAutoScalingUpdate
    class GlobalSecondaryIndexAutoScalingUpdate
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedWriteCapacityAutoScalingUpdate'] = Builders::AutoScalingSettingsUpdate.build(input[:provisioned_write_capacity_auto_scaling_update]) unless input[:provisioned_write_capacity_auto_scaling_update].nil?
        data
      end
    end

    # Operation Builder for UpdateTimeToLive
    class UpdateTimeToLive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateTimeToLive'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['TimeToLiveSpecification'] = Builders::TimeToLiveSpecification.build(input[:time_to_live_specification]) unless input[:time_to_live_specification].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TimeToLiveSpecification
    class TimeToLiveSpecification
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data
      end
    end
  end
end
