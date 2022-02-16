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
    end

    # Operation Builder for CreateGlobalTable
    class CreateGlobalTable
    end

    # List Builder for ReplicaList
    class ReplicaList
    end

    # Structure Builder for Replica
    class Replica
    end

    # Operation Builder for CreateTable
    class CreateTable
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
    end

    # Operation Builder for DeleteItem
    class DeleteItem
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
    end

    # Operation Builder for DescribeBackup
    class DescribeBackup
    end

    # Operation Builder for DescribeContinuousBackups
    class DescribeContinuousBackups
    end

    # Operation Builder for DescribeContributorInsights
    class DescribeContributorInsights
    end

    # Operation Builder for DescribeEndpoints
    class DescribeEndpoints
    end

    # Operation Builder for DescribeExport
    class DescribeExport
    end

    # Operation Builder for DescribeGlobalTable
    class DescribeGlobalTable
    end

    # Operation Builder for DescribeGlobalTableSettings
    class DescribeGlobalTableSettings
    end

    # Operation Builder for DescribeKinesisStreamingDestination
    class DescribeKinesisStreamingDestination
    end

    # Operation Builder for DescribeLimits
    class DescribeLimits
    end

    # Operation Builder for DescribeTable
    class DescribeTable
    end

    # Operation Builder for DescribeTableReplicaAutoScaling
    class DescribeTableReplicaAutoScaling
    end

    # Operation Builder for DescribeTimeToLive
    class DescribeTimeToLive
    end

    # Operation Builder for DisableKinesisStreamingDestination
    class DisableKinesisStreamingDestination
    end

    # Operation Builder for EnableKinesisStreamingDestination
    class EnableKinesisStreamingDestination
    end

    # Operation Builder for ExecuteStatement
    class ExecuteStatement
    end

    # Operation Builder for ExecuteTransaction
    class ExecuteTransaction
    end

    # List Builder for ParameterizedStatements
    class ParameterizedStatements
    end

    # Structure Builder for ParameterizedStatement
    class ParameterizedStatement
    end

    # Operation Builder for ExportTableToPointInTime
    class ExportTableToPointInTime
    end

    # Operation Builder for GetItem
    class GetItem
    end

    # Operation Builder for ListBackups
    class ListBackups
    end

    # Operation Builder for ListContributorInsights
    class ListContributorInsights
    end

    # Operation Builder for ListExports
    class ListExports
    end

    # Operation Builder for ListGlobalTables
    class ListGlobalTables
    end

    # Operation Builder for ListTables
    class ListTables
    end

    # Operation Builder for ListTagsOfResource
    class ListTagsOfResource
    end

    # Operation Builder for PutItem
    class PutItem
    end

    # Operation Builder for Query
    class Query
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
    end

    # Operation Builder for RestoreTableToPointInTime
    class RestoreTableToPointInTime
    end

    # Operation Builder for Scan
    class Scan
    end

    # Operation Builder for TagResource
    class TagResource
    end

    # Operation Builder for TransactGetItems
    class TransactGetItems
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
    end

    # List Builder for TagKeyList
    class TagKeyList
    end

    # Operation Builder for UpdateContinuousBackups
    class UpdateContinuousBackups
    end

    # Structure Builder for PointInTimeRecoverySpecification
    class PointInTimeRecoverySpecification
    end

    # Operation Builder for UpdateContributorInsights
    class UpdateContributorInsights
    end

    # Operation Builder for UpdateGlobalTable
    class UpdateGlobalTable
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
    end

    # Map Builder for AttributeUpdates
    class AttributeUpdates
    end

    # Structure Builder for AttributeValueUpdate
    class AttributeValueUpdate
    end

    # Operation Builder for UpdateTable
    class UpdateTable
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
    end

    # Structure Builder for TimeToLiveSpecification
    class TimeToLiveSpecification
    end
  end
end
