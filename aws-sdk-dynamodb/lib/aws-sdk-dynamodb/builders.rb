# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::Dynamodb
  module Builders

    # Operation Builder for BatchExecuteStatement
    class BatchExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for PartiQLBatchRequest
    class PartiQLBatchRequest
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for BatchStatementRequest
    class BatchStatementRequest
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for PreparedStatementParameters
    class PreparedStatementParameters
      def self.build(input)
        data = []
        input.each do |element|
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
        when Types::AttributeValue::N
        when Types::AttributeValue::B
        when Types::AttributeValue::Ss
        when Types::AttributeValue::Ns
        when Types::AttributeValue::Bs
        when Types::AttributeValue::M
        when Types::AttributeValue::L
        when Types::AttributeValue::Null
        when Types::AttributeValue::Bool
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
        end
        data
      end
    end

    # Map Builder for MapAttributeValue
    class MapAttributeValue
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # List Builder for BinarySetAttributeValue
    class BinarySetAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # List Builder for NumberSetAttributeValue
    class NumberSetAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # List Builder for StringSetAttributeValue
    class StringSetAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Operation Builder for BatchGetItem
    class BatchGetItem
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Map Builder for BatchGetRequestMap
    class BatchGetRequestMap
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # Structure Builder for KeysAndAttributes
    class KeysAndAttributes
      def self.build(input)
        data = {}
        data
      end
    end

    # Map Builder for ExpressionAttributeNameMap
    class ExpressionAttributeNameMap
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # List Builder for AttributeNameList
    class AttributeNameList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # List Builder for KeyList
    class KeyList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Map Builder for Key
    class Key
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # Operation Builder for BatchWriteItem
    class BatchWriteItem
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Map Builder for BatchWriteItemRequestMap
    class BatchWriteItemRequestMap
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # List Builder for WriteRequests
    class WriteRequests
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for WriteRequest
    class WriteRequest
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for DeleteRequest
    class DeleteRequest
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for PutRequest
    class PutRequest
      def self.build(input)
        data = {}
        data
      end
    end

    # Map Builder for PutItemInputAttributeMap
    class PutItemInputAttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # Operation Builder for CreateBackup
    class CreateBackup
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for CreateGlobalTable
    class CreateGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for ReplicaList
    class ReplicaList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for Replica
    class Replica
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateTable
    class CreateTable
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for SSESpecification
    class SSESpecification
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for StreamSpecification
    class StreamSpecification
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ProvisionedThroughput
    class ProvisionedThroughput
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for GlobalSecondaryIndexList
    class GlobalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for GlobalSecondaryIndex
    class GlobalSecondaryIndex
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Projection
    class Projection
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for NonKeyAttributeNameList
    class NonKeyAttributeNameList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # List Builder for KeySchema
    class KeySchema
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for KeySchemaElement
    class KeySchemaElement
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for LocalSecondaryIndexList
    class LocalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for LocalSecondaryIndex
    class LocalSecondaryIndex
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for AttributeDefinitions
    class AttributeDefinitions
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for AttributeDefinition
    class AttributeDefinition
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for DeleteBackup
    class DeleteBackup
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DeleteItem
    class DeleteItem
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Map Builder for ExpressionAttributeValueMap
    class ExpressionAttributeValueMap
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # Map Builder for ExpectedAttributeMap
    class ExpectedAttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # Structure Builder for ExpectedAttributeValue
    class ExpectedAttributeValue
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for AttributeValueList
    class AttributeValueList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Operation Builder for DeleteTable
    class DeleteTable
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeBackup
    class DescribeBackup
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeContinuousBackups
    class DescribeContinuousBackups
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeContributorInsights
    class DescribeContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeEndpoints
    class DescribeEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeExport
    class DescribeExport
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeGlobalTable
    class DescribeGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeGlobalTableSettings
    class DescribeGlobalTableSettings
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeKinesisStreamingDestination
    class DescribeKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeLimits
    class DescribeLimits
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeTable
    class DescribeTable
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeTableReplicaAutoScaling
    class DescribeTableReplicaAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DescribeTimeToLive
    class DescribeTimeToLive
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DisableKinesisStreamingDestination
    class DisableKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for EnableKinesisStreamingDestination
    class EnableKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for ExecuteStatement
    class ExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for ExecuteTransaction
    class ExecuteTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for ParameterizedStatements
    class ParameterizedStatements
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ParameterizedStatement
    class ParameterizedStatement
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for ExportTableToPointInTime
    class ExportTableToPointInTime
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for GetItem
    class GetItem
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for ListBackups
    class ListBackups
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for ListContributorInsights
    class ListContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for ListExports
    class ListExports
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for ListGlobalTables
    class ListGlobalTables
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for ListTables
    class ListTables
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for ListTagsOfResource
    class ListTagsOfResource
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for PutItem
    class PutItem
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for Query
    class Query
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Map Builder for FilterConditionMap
    class FilterConditionMap
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # Structure Builder for Condition
    class Condition
      def self.build(input)
        data = {}
        data
      end
    end

    # Map Builder for KeyConditions
    class KeyConditions
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # Operation Builder for RestoreTableFromBackup
    class RestoreTableFromBackup
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for RestoreTableToPointInTime
    class RestoreTableToPointInTime
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for Scan
    class Scan
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for TransactGetItems
    class TransactGetItems
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for TransactGetItemList
    class TransactGetItemList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for TransactGetItem
    class TransactGetItem
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Get
    class Get
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for TransactWriteItems
    class TransactWriteItems
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for TransactWriteItemList
    class TransactWriteItemList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for TransactWriteItem
    class TransactWriteItem
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Update
    class Update
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Delete
    class Delete
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Put
    class Put
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ConditionCheck
    class ConditionCheck
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Operation Builder for UpdateContinuousBackups
    class UpdateContinuousBackups
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for PointInTimeRecoverySpecification
    class PointInTimeRecoverySpecification
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for UpdateContributorInsights
    class UpdateContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for UpdateGlobalTable
    class UpdateGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for ReplicaUpdateList
    class ReplicaUpdateList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ReplicaUpdate
    class ReplicaUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for DeleteReplicaAction
    class DeleteReplicaAction
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CreateReplicaAction
    class CreateReplicaAction
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for UpdateGlobalTableSettings
    class UpdateGlobalTableSettings
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for ReplicaSettingsUpdateList
    class ReplicaSettingsUpdateList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ReplicaSettingsUpdate
    class ReplicaSettingsUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for ReplicaGlobalSecondaryIndexSettingsUpdateList
    class ReplicaGlobalSecondaryIndexSettingsUpdateList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ReplicaGlobalSecondaryIndexSettingsUpdate
    class ReplicaGlobalSecondaryIndexSettingsUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for AutoScalingSettingsUpdate
    class AutoScalingSettingsUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for AutoScalingPolicyUpdate
    class AutoScalingPolicyUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    class AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for GlobalTableGlobalSecondaryIndexSettingsUpdateList
    class GlobalTableGlobalSecondaryIndexSettingsUpdateList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for GlobalTableGlobalSecondaryIndexSettingsUpdate
    class GlobalTableGlobalSecondaryIndexSettingsUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for UpdateItem
    class UpdateItem
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Map Builder for AttributeUpdates
    class AttributeUpdates
      def self.build(input)
        data = {}
        input.each do |key, value|
        end
        data
      end
    end

    # Structure Builder for AttributeValueUpdate
    class AttributeValueUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for UpdateTable
    class UpdateTable
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for ReplicationGroupUpdateList
    class ReplicationGroupUpdateList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ReplicationGroupUpdate
    class ReplicationGroupUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for DeleteReplicationGroupMemberAction
    class DeleteReplicationGroupMemberAction
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for UpdateReplicationGroupMemberAction
    class UpdateReplicationGroupMemberAction
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for ReplicaGlobalSecondaryIndexList
    class ReplicaGlobalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ReplicaGlobalSecondaryIndex
    class ReplicaGlobalSecondaryIndex
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ProvisionedThroughputOverride
    class ProvisionedThroughputOverride
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CreateReplicationGroupMemberAction
    class CreateReplicationGroupMemberAction
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for GlobalSecondaryIndexUpdateList
    class GlobalSecondaryIndexUpdateList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for GlobalSecondaryIndexUpdate
    class GlobalSecondaryIndexUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for DeleteGlobalSecondaryIndexAction
    class DeleteGlobalSecondaryIndexAction
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CreateGlobalSecondaryIndexAction
    class CreateGlobalSecondaryIndexAction
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for UpdateGlobalSecondaryIndexAction
    class UpdateGlobalSecondaryIndexAction
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for UpdateTableReplicaAutoScaling
    class UpdateTableReplicaAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for ReplicaAutoScalingUpdateList
    class ReplicaAutoScalingUpdateList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ReplicaAutoScalingUpdate
    class ReplicaAutoScalingUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for ReplicaGlobalSecondaryIndexAutoScalingUpdateList
    class ReplicaGlobalSecondaryIndexAutoScalingUpdateList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ReplicaGlobalSecondaryIndexAutoScalingUpdate
    class ReplicaGlobalSecondaryIndexAutoScalingUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for GlobalSecondaryIndexAutoScalingUpdateList
    class GlobalSecondaryIndexAutoScalingUpdateList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for GlobalSecondaryIndexAutoScalingUpdate
    class GlobalSecondaryIndexAutoScalingUpdate
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for UpdateTimeToLive
    class UpdateTimeToLive
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for TimeToLiveSpecification
    class TimeToLiveSpecification
      def self.build(input)
        data = {}
        data
      end
    end
  end
end
