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
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for PartiQLBatchRequest
    class PartiQLBatchRequest
    end

    # Structure Builder for BatchStatementRequest
    class BatchStatementRequest
    end

    # List Builder for PreparedStatementParameters
    class PreparedStatementParameters
    end

    # Structure Builder for AttributeValue
    class AttributeValue
    end

    # List Builder for ListAttributeValue
    class ListAttributeValue
    end

    # Map Builder for MapAttributeValue
    class MapAttributeValue
    end

    # List Builder for BinarySetAttributeValue
    class BinarySetAttributeValue
    end

    # List Builder for NumberSetAttributeValue
    class NumberSetAttributeValue
    end

    # List Builder for StringSetAttributeValue
    class StringSetAttributeValue
    end

    # Operation Builder for BatchGetItem
    class BatchGetItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Map Builder for BatchGetRequestMap
    class BatchGetRequestMap
    end

    # Structure Builder for KeysAndAttributes
    class KeysAndAttributes
    end

    # Map Builder for ExpressionAttributeNameMap
    class ExpressionAttributeNameMap
    end

    # List Builder for AttributeNameList
    class AttributeNameList
    end

    # List Builder for KeyList
    class KeyList
    end

    # Map Builder for Key
    class Key
    end

    # Operation Builder for BatchWriteItem
    class BatchWriteItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Map Builder for BatchWriteItemRequestMap
    class BatchWriteItemRequestMap
    end

    # List Builder for WriteRequests
    class WriteRequests
    end

    # Structure Builder for WriteRequest
    class WriteRequest
    end

    # Structure Builder for DeleteRequest
    class DeleteRequest
    end

    # Structure Builder for PutRequest
    class PutRequest
    end

    # Map Builder for PutItemInputAttributeMap
    class PutItemInputAttributeMap
    end

    # Operation Builder for CreateBackup
    class CreateBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for CreateGlobalTable
    class CreateGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReplicaList
    class ReplicaList
    end

    # Structure Builder for Replica
    class Replica
    end

    # Operation Builder for CreateTable
    class CreateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TagList
    class TagList
    end

    # Structure Builder for Tag
    class Tag
    end

    # Structure Builder for SSESpecification
    class SSESpecification
    end

    # Structure Builder for StreamSpecification
    class StreamSpecification
    end

    # Structure Builder for ProvisionedThroughput
    class ProvisionedThroughput
    end

    # List Builder for GlobalSecondaryIndexList
    class GlobalSecondaryIndexList
    end

    # Structure Builder for GlobalSecondaryIndex
    class GlobalSecondaryIndex
    end

    # Structure Builder for Projection
    class Projection
    end

    # List Builder for NonKeyAttributeNameList
    class NonKeyAttributeNameList
    end

    # List Builder for KeySchema
    class KeySchema
    end

    # Structure Builder for KeySchemaElement
    class KeySchemaElement
    end

    # List Builder for LocalSecondaryIndexList
    class LocalSecondaryIndexList
    end

    # Structure Builder for LocalSecondaryIndex
    class LocalSecondaryIndex
    end

    # List Builder for AttributeDefinitions
    class AttributeDefinitions
    end

    # Structure Builder for AttributeDefinition
    class AttributeDefinition
    end

    # Operation Builder for DeleteBackup
    class DeleteBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DeleteItem
    class DeleteItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Map Builder for ExpressionAttributeValueMap
    class ExpressionAttributeValueMap
    end

    # Map Builder for ExpectedAttributeMap
    class ExpectedAttributeMap
    end

    # Structure Builder for ExpectedAttributeValue
    class ExpectedAttributeValue
    end

    # List Builder for AttributeValueList
    class AttributeValueList
    end

    # Operation Builder for DeleteTable
    class DeleteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeBackup
    class DescribeBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeContinuousBackups
    class DescribeContinuousBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeContributorInsights
    class DescribeContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeEndpoints
    class DescribeEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeExport
    class DescribeExport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeGlobalTable
    class DescribeGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeGlobalTableSettings
    class DescribeGlobalTableSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeKinesisStreamingDestination
    class DescribeKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeLimits
    class DescribeLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeTable
    class DescribeTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeTableReplicaAutoScaling
    class DescribeTableReplicaAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DescribeTimeToLive
    class DescribeTimeToLive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DisableKinesisStreamingDestination
    class DisableKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for EnableKinesisStreamingDestination
    class EnableKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ExecuteStatement
    class ExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ExecuteTransaction
    class ExecuteTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ParameterizedStatements
    class ParameterizedStatements
    end

    # Structure Builder for ParameterizedStatement
    class ParameterizedStatement
    end

    # Operation Builder for ExportTableToPointInTime
    class ExportTableToPointInTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetItem
    class GetItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ListBackups
    class ListBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ListContributorInsights
    class ListContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ListExports
    class ListExports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ListGlobalTables
    class ListGlobalTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ListTables
    class ListTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for ListTagsOfResource
    class ListTagsOfResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for PutItem
    class PutItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for Query
    class Query
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Map Builder for FilterConditionMap
    class FilterConditionMap
    end

    # Structure Builder for Condition
    class Condition
    end

    # Map Builder for KeyConditions
    class KeyConditions
    end

    # Operation Builder for RestoreTableFromBackup
    class RestoreTableFromBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for RestoreTableToPointInTime
    class RestoreTableToPointInTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for Scan
    class Scan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for TransactGetItems
    class TransactGetItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TransactGetItemList
    class TransactGetItemList
    end

    # Structure Builder for TransactGetItem
    class TransactGetItem
    end

    # Structure Builder for Get
    class Get
    end

    # Operation Builder for TransactWriteItems
    class TransactWriteItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TransactWriteItemList
    class TransactWriteItemList
    end

    # Structure Builder for TransactWriteItem
    class TransactWriteItem
    end

    # Structure Builder for Update
    class Update
    end

    # Structure Builder for Delete
    class Delete
    end

    # Structure Builder for Put
    class Put
    end

    # Structure Builder for ConditionCheck
    class ConditionCheck
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
    end

    # Operation Builder for UpdateContinuousBackups
    class UpdateContinuousBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for PointInTimeRecoverySpecification
    class PointInTimeRecoverySpecification
    end

    # Operation Builder for UpdateContributorInsights
    class UpdateContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for UpdateGlobalTable
    class UpdateGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReplicaUpdateList
    class ReplicaUpdateList
    end

    # Structure Builder for ReplicaUpdate
    class ReplicaUpdate
    end

    # Structure Builder for DeleteReplicaAction
    class DeleteReplicaAction
    end

    # Structure Builder for CreateReplicaAction
    class CreateReplicaAction
    end

    # Operation Builder for UpdateGlobalTableSettings
    class UpdateGlobalTableSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReplicaSettingsUpdateList
    class ReplicaSettingsUpdateList
    end

    # Structure Builder for ReplicaSettingsUpdate
    class ReplicaSettingsUpdate
    end

    # List Builder for ReplicaGlobalSecondaryIndexSettingsUpdateList
    class ReplicaGlobalSecondaryIndexSettingsUpdateList
    end

    # Structure Builder for ReplicaGlobalSecondaryIndexSettingsUpdate
    class ReplicaGlobalSecondaryIndexSettingsUpdate
    end

    # Structure Builder for AutoScalingSettingsUpdate
    class AutoScalingSettingsUpdate
    end

    # Structure Builder for AutoScalingPolicyUpdate
    class AutoScalingPolicyUpdate
    end

    # Structure Builder for AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    class AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    end

    # List Builder for GlobalTableGlobalSecondaryIndexSettingsUpdateList
    class GlobalTableGlobalSecondaryIndexSettingsUpdateList
    end

    # Structure Builder for GlobalTableGlobalSecondaryIndexSettingsUpdate
    class GlobalTableGlobalSecondaryIndexSettingsUpdate
    end

    # Operation Builder for UpdateItem
    class UpdateItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Map Builder for AttributeUpdates
    class AttributeUpdates
    end

    # Structure Builder for AttributeValueUpdate
    class AttributeValueUpdate
    end

    # Operation Builder for UpdateTable
    class UpdateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReplicationGroupUpdateList
    class ReplicationGroupUpdateList
    end

    # Structure Builder for ReplicationGroupUpdate
    class ReplicationGroupUpdate
    end

    # Structure Builder for DeleteReplicationGroupMemberAction
    class DeleteReplicationGroupMemberAction
    end

    # Structure Builder for UpdateReplicationGroupMemberAction
    class UpdateReplicationGroupMemberAction
    end

    # List Builder for ReplicaGlobalSecondaryIndexList
    class ReplicaGlobalSecondaryIndexList
    end

    # Structure Builder for ReplicaGlobalSecondaryIndex
    class ReplicaGlobalSecondaryIndex
    end

    # Structure Builder for ProvisionedThroughputOverride
    class ProvisionedThroughputOverride
    end

    # Structure Builder for CreateReplicationGroupMemberAction
    class CreateReplicationGroupMemberAction
    end

    # List Builder for GlobalSecondaryIndexUpdateList
    class GlobalSecondaryIndexUpdateList
    end

    # Structure Builder for GlobalSecondaryIndexUpdate
    class GlobalSecondaryIndexUpdate
    end

    # Structure Builder for DeleteGlobalSecondaryIndexAction
    class DeleteGlobalSecondaryIndexAction
    end

    # Structure Builder for CreateGlobalSecondaryIndexAction
    class CreateGlobalSecondaryIndexAction
    end

    # Structure Builder for UpdateGlobalSecondaryIndexAction
    class UpdateGlobalSecondaryIndexAction
    end

    # Operation Builder for UpdateTableReplicaAutoScaling
    class UpdateTableReplicaAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # List Builder for ReplicaAutoScalingUpdateList
    class ReplicaAutoScalingUpdateList
    end

    # Structure Builder for ReplicaAutoScalingUpdate
    class ReplicaAutoScalingUpdate
    end

    # List Builder for ReplicaGlobalSecondaryIndexAutoScalingUpdateList
    class ReplicaGlobalSecondaryIndexAutoScalingUpdateList
    end

    # Structure Builder for ReplicaGlobalSecondaryIndexAutoScalingUpdate
    class ReplicaGlobalSecondaryIndexAutoScalingUpdate
    end

    # List Builder for GlobalSecondaryIndexAutoScalingUpdateList
    class GlobalSecondaryIndexAutoScalingUpdateList
    end

    # Structure Builder for GlobalSecondaryIndexAutoScalingUpdate
    class GlobalSecondaryIndexAutoScalingUpdate
    end

    # Operation Builder for UpdateTimeToLive
    class UpdateTimeToLive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Structure Builder for TimeToLiveSpecification
    class TimeToLiveSpecification
    end
  end
end
