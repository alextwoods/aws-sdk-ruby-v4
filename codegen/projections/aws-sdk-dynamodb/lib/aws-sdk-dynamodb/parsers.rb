# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::Dynamodb
  module Parsers

    # Operation Parser for BatchExecuteStatement
    class BatchExecuteStatement
    end

    class ConsumedCapacityMultiple
    end

    class ConsumedCapacity
    end

    class SecondaryIndexesCapacityMap
    end

    class Capacity
    end

    class PartiQLBatchResponse
    end

    class BatchStatementResponse
    end

    class AttributeMap
    end

    class AttributeValue
    end

    class ListAttributeValue
    end

    class MapAttributeValue
    end

    class BinarySetAttributeValue
    end

    class NumberSetAttributeValue
    end

    class StringSetAttributeValue
    end

    class BatchStatementError
    end

    # Error Parser for InternalServerError
    class InternalServerError
    end

    # Error Parser for RequestLimitExceeded
    class RequestLimitExceeded
    end

    # Operation Parser for BatchGetItem
    class BatchGetItem
    end

    class BatchGetRequestMap
    end

    class KeysAndAttributes
    end

    class ExpressionAttributeNameMap
    end

    class AttributeNameList
    end

    class KeyList
    end

    class Key
    end

    class BatchGetResponseMap
    end

    class ItemList
    end

    # Error Parser for InvalidEndpointException
    class InvalidEndpointException
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
    end

    # Error Parser for ProvisionedThroughputExceededException
    class ProvisionedThroughputExceededException
    end

    # Operation Parser for BatchWriteItem
    class BatchWriteItem
    end

    class ItemCollectionMetricsPerTable
    end

    class ItemCollectionMetricsMultiple
    end

    class ItemCollectionMetrics
    end

    class ItemCollectionSizeEstimateRange
    end

    class ItemCollectionKeyAttributeMap
    end

    class BatchWriteItemRequestMap
    end

    class WriteRequests
    end

    class WriteRequest
    end

    class DeleteRequest
    end

    class PutRequest
    end

    class PutItemInputAttributeMap
    end

    # Error Parser for ItemCollectionSizeLimitExceededException
    class ItemCollectionSizeLimitExceededException
    end

    # Operation Parser for CreateBackup
    class CreateBackup
    end

    class BackupDetails
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
    end

    # Error Parser for TableInUseException
    class TableInUseException
    end

    # Error Parser for BackupInUseException
    class BackupInUseException
    end

    # Error Parser for TableNotFoundException
    class TableNotFoundException
    end

    # Error Parser for ContinuousBackupsUnavailableException
    class ContinuousBackupsUnavailableException
    end

    # Operation Parser for CreateGlobalTable
    class CreateGlobalTable
    end

    class GlobalTableDescription
    end

    class ReplicaDescriptionList
    end

    class ReplicaDescription
    end

    class TableClassSummary
    end

    class ReplicaGlobalSecondaryIndexDescriptionList
    end

    class ReplicaGlobalSecondaryIndexDescription
    end

    class ProvisionedThroughputOverride
    end

    # Error Parser for GlobalTableAlreadyExistsException
    class GlobalTableAlreadyExistsException
    end

    # Operation Parser for CreateTable
    class CreateTable
    end

    class TableDescription
    end

    class ArchivalSummary
    end

    class SSEDescription
    end

    class RestoreSummary
    end

    class StreamSpecification
    end

    class GlobalSecondaryIndexDescriptionList
    end

    class GlobalSecondaryIndexDescription
    end

    class ProvisionedThroughputDescription
    end

    class Projection
    end

    class NonKeyAttributeNameList
    end

    class KeySchema
    end

    class KeySchemaElement
    end

    class LocalSecondaryIndexDescriptionList
    end

    class LocalSecondaryIndexDescription
    end

    class BillingModeSummary
    end

    class AttributeDefinitions
    end

    class AttributeDefinition
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
    end

    # Operation Parser for DeleteBackup
    class DeleteBackup
    end

    class BackupDescription
    end

    class SourceTableFeatureDetails
    end

    class TimeToLiveDescription
    end

    class GlobalSecondaryIndexes
    end

    class GlobalSecondaryIndexInfo
    end

    class ProvisionedThroughput
    end

    class LocalSecondaryIndexes
    end

    class LocalSecondaryIndexInfo
    end

    class SourceTableDetails
    end

    # Error Parser for BackupNotFoundException
    class BackupNotFoundException
    end

    # Operation Parser for DeleteItem
    class DeleteItem
    end

    # Error Parser for TransactionConflictException
    class TransactionConflictException
    end

    # Error Parser for ConditionalCheckFailedException
    class ConditionalCheckFailedException
    end

    # Operation Parser for DeleteTable
    class DeleteTable
    end

    # Operation Parser for DescribeBackup
    class DescribeBackup
    end

    # Operation Parser for DescribeContinuousBackups
    class DescribeContinuousBackups
    end

    class ContinuousBackupsDescription
    end

    class PointInTimeRecoveryDescription
    end

    # Operation Parser for DescribeContributorInsights
    class DescribeContributorInsights
    end

    class FailureException
    end

    class ContributorInsightsRuleList
    end

    # Operation Parser for DescribeEndpoints
    class DescribeEndpoints
    end

    class Endpoints
    end

    class Endpoint
    end

    # Operation Parser for DescribeExport
    class DescribeExport
    end

    class ExportDescription
    end

    # Error Parser for ExportNotFoundException
    class ExportNotFoundException
    end

    # Operation Parser for DescribeGlobalTable
    class DescribeGlobalTable
    end

    # Error Parser for GlobalTableNotFoundException
    class GlobalTableNotFoundException
    end

    # Operation Parser for DescribeGlobalTableSettings
    class DescribeGlobalTableSettings
    end

    class ReplicaSettingsDescriptionList
    end

    class ReplicaSettingsDescription
    end

    class ReplicaGlobalSecondaryIndexSettingsDescriptionList
    end

    class ReplicaGlobalSecondaryIndexSettingsDescription
    end

    class AutoScalingSettingsDescription
    end

    class AutoScalingPolicyDescriptionList
    end

    class AutoScalingPolicyDescription
    end

    class AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    end

    # Operation Parser for DescribeKinesisStreamingDestination
    class DescribeKinesisStreamingDestination
    end

    class KinesisDataStreamDestinations
    end

    class KinesisDataStreamDestination
    end

    # Operation Parser for DescribeLimits
    class DescribeLimits
    end

    # Operation Parser for DescribeTable
    class DescribeTable
    end

    # Operation Parser for DescribeTableReplicaAutoScaling
    class DescribeTableReplicaAutoScaling
    end

    class TableAutoScalingDescription
    end

    class ReplicaAutoScalingDescriptionList
    end

    class ReplicaAutoScalingDescription
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescriptionList
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescription
    end

    # Operation Parser for DescribeTimeToLive
    class DescribeTimeToLive
    end

    # Operation Parser for DisableKinesisStreamingDestination
    class DisableKinesisStreamingDestination
    end

    # Operation Parser for EnableKinesisStreamingDestination
    class EnableKinesisStreamingDestination
    end

    # Operation Parser for ExecuteStatement
    class ExecuteStatement
    end

    # Error Parser for DuplicateItemException
    class DuplicateItemException
    end

    # Operation Parser for ExecuteTransaction
    class ExecuteTransaction
    end

    class ItemResponseList
    end

    class ItemResponse
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
    end

    # Error Parser for TransactionCanceledException
    class TransactionCanceledException
    end

    class CancellationReasonList
    end

    class CancellationReason
    end

    # Error Parser for TransactionInProgressException
    class TransactionInProgressException
    end

    # Operation Parser for ExportTableToPointInTime
    class ExportTableToPointInTime
    end

    # Error Parser for InvalidExportTimeException
    class InvalidExportTimeException
    end

    # Error Parser for PointInTimeRecoveryUnavailableException
    class PointInTimeRecoveryUnavailableException
    end

    # Error Parser for ExportConflictException
    class ExportConflictException
    end

    # Operation Parser for GetItem
    class GetItem
    end

    # Operation Parser for ListBackups
    class ListBackups
    end

    class BackupSummaries
    end

    class BackupSummary
    end

    # Operation Parser for ListContributorInsights
    class ListContributorInsights
    end

    class ContributorInsightsSummaries
    end

    class ContributorInsightsSummary
    end

    # Operation Parser for ListExports
    class ListExports
    end

    class ExportSummaries
    end

    class ExportSummary
    end

    # Operation Parser for ListGlobalTables
    class ListGlobalTables
    end

    class GlobalTableList
    end

    class GlobalTable
    end

    class ReplicaList
    end

    class Replica
    end

    # Operation Parser for ListTables
    class ListTables
    end

    class TableNameList
    end

    # Operation Parser for ListTagsOfResource
    class ListTagsOfResource
    end

    class TagList
    end

    class Tag
    end

    # Operation Parser for PutItem
    class PutItem
    end

    # Operation Parser for Query
    class Query
    end

    # Operation Parser for RestoreTableFromBackup
    class RestoreTableFromBackup
    end

    # Error Parser for TableAlreadyExistsException
    class TableAlreadyExistsException
    end

    # Operation Parser for RestoreTableToPointInTime
    class RestoreTableToPointInTime
    end

    # Error Parser for InvalidRestoreTimeException
    class InvalidRestoreTimeException
    end

    # Operation Parser for Scan
    class Scan
    end

    # Operation Parser for TagResource
    class TagResource
    end

    # Operation Parser for TransactGetItems
    class TransactGetItems
    end

    # Operation Parser for TransactWriteItems
    class TransactWriteItems
    end

    # Operation Parser for UntagResource
    class UntagResource
    end

    # Operation Parser for UpdateContinuousBackups
    class UpdateContinuousBackups
    end

    # Operation Parser for UpdateContributorInsights
    class UpdateContributorInsights
    end

    # Operation Parser for UpdateGlobalTable
    class UpdateGlobalTable
    end

    # Error Parser for ReplicaNotFoundException
    class ReplicaNotFoundException
    end

    # Error Parser for ReplicaAlreadyExistsException
    class ReplicaAlreadyExistsException
    end

    # Operation Parser for UpdateGlobalTableSettings
    class UpdateGlobalTableSettings
    end

    # Error Parser for IndexNotFoundException
    class IndexNotFoundException
    end

    # Operation Parser for UpdateItem
    class UpdateItem
    end

    # Operation Parser for UpdateTable
    class UpdateTable
    end

    # Operation Parser for UpdateTableReplicaAutoScaling
    class UpdateTableReplicaAutoScaling
    end

    # Operation Parser for UpdateTimeToLive
    class UpdateTimeToLive
    end

    class TimeToLiveSpecification
    end
  end
end
