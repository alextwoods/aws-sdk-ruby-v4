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
      def self.parse(http_resp)
        data = Types::BatchExecuteStatementOutput.new
        data
      end
    end

    class ConsumedCapacityMultiple
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ConsumedCapacity
      def self.parse(map)
        data = Types::ConsumedCapacity.new
        return data
      end
    end

    class SecondaryIndexesCapacityMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    class Capacity
      def self.parse(map)
        data = Types::Capacity.new
        return data
      end
    end

    class PartiQLBatchResponse
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class BatchStatementResponse
      def self.parse(map)
        data = Types::BatchStatementResponse.new
        return data
      end
    end

    class AttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    class AttributeValue
      def self.parse(map)
        key, value = map.flatten
        case key
        when ''
          Types::AttributeValue::S.new(value) if value
        when ''
          Types::AttributeValue::N.new(value) if value
        when ''
          Types::AttributeValue::B.new(value) if value
        when ''
          Types::AttributeValue::Ss.new(value) if value
        when ''
          Types::AttributeValue::Ns.new(value) if value
        when ''
          Types::AttributeValue::Bs.new(value) if value
        when ''
          Types::AttributeValue::M.new(value) if value
        when ''
          Types::AttributeValue::L.new(value) if value
        when ''
          Types::AttributeValue::Null.new(value) if value
        when ''
          Types::AttributeValue::Bool.new(value) if value
        else
          Types::AttributeValue::Unknown.new({name: key, value: value})
        end
      end
    end

    class ListAttributeValue
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class MapAttributeValue
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    class BinarySetAttributeValue
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class NumberSetAttributeValue
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class StringSetAttributeValue
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class BatchStatementError
      def self.parse(map)
        data = Types::BatchStatementError.new
        return data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        data
      end
    end

    # Error Parser for RequestLimitExceeded
    class RequestLimitExceeded
      def self.parse(http_resp)
        data = Types::RequestLimitExceeded.new
        data
      end
    end

    # Operation Parser for BatchGetItem
    class BatchGetItem
      def self.parse(http_resp)
        data = Types::BatchGetItemOutput.new
        data
      end
    end

    class BatchGetRequestMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    class KeysAndAttributes
      def self.parse(map)
        data = Types::KeysAndAttributes.new
        return data
      end
    end

    class ExpressionAttributeNameMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    class AttributeNameList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class KeyList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Key
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    class BatchGetResponseMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    class ItemList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Error Parser for InvalidEndpointException
    class InvalidEndpointException
      def self.parse(http_resp)
        data = Types::InvalidEndpointException.new
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        data
      end
    end

    # Error Parser for ProvisionedThroughputExceededException
    class ProvisionedThroughputExceededException
      def self.parse(http_resp)
        data = Types::ProvisionedThroughputExceededException.new
        data
      end
    end

    # Operation Parser for BatchWriteItem
    class BatchWriteItem
      def self.parse(http_resp)
        data = Types::BatchWriteItemOutput.new
        data
      end
    end

    class ItemCollectionMetricsPerTable
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    class ItemCollectionMetricsMultiple
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ItemCollectionMetrics
      def self.parse(map)
        data = Types::ItemCollectionMetrics.new
        return data
      end
    end

    class ItemCollectionSizeEstimateRange
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ItemCollectionKeyAttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    class BatchWriteItemRequestMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    class WriteRequests
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class WriteRequest
      def self.parse(map)
        data = Types::WriteRequest.new
        return data
      end
    end

    class DeleteRequest
      def self.parse(map)
        data = Types::DeleteRequest.new
        return data
      end
    end

    class PutRequest
      def self.parse(map)
        data = Types::PutRequest.new
        return data
      end
    end

    class PutItemInputAttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
        end
        data
      end
    end

    # Error Parser for ItemCollectionSizeLimitExceededException
    class ItemCollectionSizeLimitExceededException
      def self.parse(http_resp)
        data = Types::ItemCollectionSizeLimitExceededException.new
        data
      end
    end

    # Operation Parser for CreateBackup
    class CreateBackup
      def self.parse(http_resp)
        data = Types::CreateBackupOutput.new
        data
      end
    end

    class BackupDetails
      def self.parse(map)
        data = Types::BackupDetails.new
        return data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        data
      end
    end

    # Error Parser for TableInUseException
    class TableInUseException
      def self.parse(http_resp)
        data = Types::TableInUseException.new
        data
      end
    end

    # Error Parser for BackupInUseException
    class BackupInUseException
      def self.parse(http_resp)
        data = Types::BackupInUseException.new
        data
      end
    end

    # Error Parser for TableNotFoundException
    class TableNotFoundException
      def self.parse(http_resp)
        data = Types::TableNotFoundException.new
        data
      end
    end

    # Error Parser for ContinuousBackupsUnavailableException
    class ContinuousBackupsUnavailableException
      def self.parse(http_resp)
        data = Types::ContinuousBackupsUnavailableException.new
        data
      end
    end

    # Operation Parser for CreateGlobalTable
    class CreateGlobalTable
      def self.parse(http_resp)
        data = Types::CreateGlobalTableOutput.new
        data
      end
    end

    class GlobalTableDescription
      def self.parse(map)
        data = Types::GlobalTableDescription.new
        return data
      end
    end

    class ReplicaDescriptionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReplicaDescription
      def self.parse(map)
        data = Types::ReplicaDescription.new
        return data
      end
    end

    class TableClassSummary
      def self.parse(map)
        data = Types::TableClassSummary.new
        return data
      end
    end

    class ReplicaGlobalSecondaryIndexDescriptionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReplicaGlobalSecondaryIndexDescription
      def self.parse(map)
        data = Types::ReplicaGlobalSecondaryIndexDescription.new
        return data
      end
    end

    class ProvisionedThroughputOverride
      def self.parse(map)
        data = Types::ProvisionedThroughputOverride.new
        return data
      end
    end

    # Error Parser for GlobalTableAlreadyExistsException
    class GlobalTableAlreadyExistsException
      def self.parse(http_resp)
        data = Types::GlobalTableAlreadyExistsException.new
        data
      end
    end

    # Operation Parser for CreateTable
    class CreateTable
      def self.parse(http_resp)
        data = Types::CreateTableOutput.new
        data
      end
    end

    class TableDescription
      def self.parse(map)
        data = Types::TableDescription.new
        return data
      end
    end

    class ArchivalSummary
      def self.parse(map)
        data = Types::ArchivalSummary.new
        return data
      end
    end

    class SSEDescription
      def self.parse(map)
        data = Types::SSEDescription.new
        return data
      end
    end

    class RestoreSummary
      def self.parse(map)
        data = Types::RestoreSummary.new
        return data
      end
    end

    class StreamSpecification
      def self.parse(map)
        data = Types::StreamSpecification.new
        return data
      end
    end

    class GlobalSecondaryIndexDescriptionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class GlobalSecondaryIndexDescription
      def self.parse(map)
        data = Types::GlobalSecondaryIndexDescription.new
        return data
      end
    end

    class ProvisionedThroughputDescription
      def self.parse(map)
        data = Types::ProvisionedThroughputDescription.new
        return data
      end
    end

    class Projection
      def self.parse(map)
        data = Types::Projection.new
        return data
      end
    end

    class NonKeyAttributeNameList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class KeySchema
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class KeySchemaElement
      def self.parse(map)
        data = Types::KeySchemaElement.new
        return data
      end
    end

    class LocalSecondaryIndexDescriptionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LocalSecondaryIndexDescription
      def self.parse(map)
        data = Types::LocalSecondaryIndexDescription.new
        return data
      end
    end

    class BillingModeSummary
      def self.parse(map)
        data = Types::BillingModeSummary.new
        return data
      end
    end

    class AttributeDefinitions
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AttributeDefinition
      def self.parse(map)
        data = Types::AttributeDefinition.new
        return data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        data
      end
    end

    # Operation Parser for DeleteBackup
    class DeleteBackup
      def self.parse(http_resp)
        data = Types::DeleteBackupOutput.new
        data
      end
    end

    class BackupDescription
      def self.parse(map)
        data = Types::BackupDescription.new
        return data
      end
    end

    class SourceTableFeatureDetails
      def self.parse(map)
        data = Types::SourceTableFeatureDetails.new
        return data
      end
    end

    class TimeToLiveDescription
      def self.parse(map)
        data = Types::TimeToLiveDescription.new
        return data
      end
    end

    class GlobalSecondaryIndexes
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class GlobalSecondaryIndexInfo
      def self.parse(map)
        data = Types::GlobalSecondaryIndexInfo.new
        return data
      end
    end

    class ProvisionedThroughput
      def self.parse(map)
        data = Types::ProvisionedThroughput.new
        return data
      end
    end

    class LocalSecondaryIndexes
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LocalSecondaryIndexInfo
      def self.parse(map)
        data = Types::LocalSecondaryIndexInfo.new
        return data
      end
    end

    class SourceTableDetails
      def self.parse(map)
        data = Types::SourceTableDetails.new
        return data
      end
    end

    # Error Parser for BackupNotFoundException
    class BackupNotFoundException
      def self.parse(http_resp)
        data = Types::BackupNotFoundException.new
        data
      end
    end

    # Operation Parser for DeleteItem
    class DeleteItem
      def self.parse(http_resp)
        data = Types::DeleteItemOutput.new
        data
      end
    end

    # Error Parser for TransactionConflictException
    class TransactionConflictException
      def self.parse(http_resp)
        data = Types::TransactionConflictException.new
        data
      end
    end

    # Error Parser for ConditionalCheckFailedException
    class ConditionalCheckFailedException
      def self.parse(http_resp)
        data = Types::ConditionalCheckFailedException.new
        data
      end
    end

    # Operation Parser for DeleteTable
    class DeleteTable
      def self.parse(http_resp)
        data = Types::DeleteTableOutput.new
        data
      end
    end

    # Operation Parser for DescribeBackup
    class DescribeBackup
      def self.parse(http_resp)
        data = Types::DescribeBackupOutput.new
        data
      end
    end

    # Operation Parser for DescribeContinuousBackups
    class DescribeContinuousBackups
      def self.parse(http_resp)
        data = Types::DescribeContinuousBackupsOutput.new
        data
      end
    end

    class ContinuousBackupsDescription
      def self.parse(map)
        data = Types::ContinuousBackupsDescription.new
        return data
      end
    end

    class PointInTimeRecoveryDescription
      def self.parse(map)
        data = Types::PointInTimeRecoveryDescription.new
        return data
      end
    end

    # Operation Parser for DescribeContributorInsights
    class DescribeContributorInsights
      def self.parse(http_resp)
        data = Types::DescribeContributorInsightsOutput.new
        data
      end
    end

    class FailureException
      def self.parse(map)
        data = Types::FailureException.new
        return data
      end
    end

    class ContributorInsightsRuleList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for DescribeEndpoints
    class DescribeEndpoints
      def self.parse(http_resp)
        data = Types::DescribeEndpointsOutput.new
        data
      end
    end

    class Endpoints
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        return data
      end
    end

    # Operation Parser for DescribeExport
    class DescribeExport
      def self.parse(http_resp)
        data = Types::DescribeExportOutput.new
        data
      end
    end

    class ExportDescription
      def self.parse(map)
        data = Types::ExportDescription.new
        return data
      end
    end

    # Error Parser for ExportNotFoundException
    class ExportNotFoundException
      def self.parse(http_resp)
        data = Types::ExportNotFoundException.new
        data
      end
    end

    # Operation Parser for DescribeGlobalTable
    class DescribeGlobalTable
      def self.parse(http_resp)
        data = Types::DescribeGlobalTableOutput.new
        data
      end
    end

    # Error Parser for GlobalTableNotFoundException
    class GlobalTableNotFoundException
      def self.parse(http_resp)
        data = Types::GlobalTableNotFoundException.new
        data
      end
    end

    # Operation Parser for DescribeGlobalTableSettings
    class DescribeGlobalTableSettings
      def self.parse(http_resp)
        data = Types::DescribeGlobalTableSettingsOutput.new
        data
      end
    end

    class ReplicaSettingsDescriptionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReplicaSettingsDescription
      def self.parse(map)
        data = Types::ReplicaSettingsDescription.new
        return data
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsDescriptionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsDescription
      def self.parse(map)
        data = Types::ReplicaGlobalSecondaryIndexSettingsDescription.new
        return data
      end
    end

    class AutoScalingSettingsDescription
      def self.parse(map)
        data = Types::AutoScalingSettingsDescription.new
        return data
      end
    end

    class AutoScalingPolicyDescriptionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AutoScalingPolicyDescription
      def self.parse(map)
        data = Types::AutoScalingPolicyDescription.new
        return data
      end
    end

    class AutoScalingTargetTrackingScalingPolicyConfigurationDescription
      def self.parse(map)
        data = Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription.new
        return data
      end
    end

    # Operation Parser for DescribeKinesisStreamingDestination
    class DescribeKinesisStreamingDestination
      def self.parse(http_resp)
        data = Types::DescribeKinesisStreamingDestinationOutput.new
        data
      end
    end

    class KinesisDataStreamDestinations
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class KinesisDataStreamDestination
      def self.parse(map)
        data = Types::KinesisDataStreamDestination.new
        return data
      end
    end

    # Operation Parser for DescribeLimits
    class DescribeLimits
      def self.parse(http_resp)
        data = Types::DescribeLimitsOutput.new
        data
      end
    end

    # Operation Parser for DescribeTable
    class DescribeTable
      def self.parse(http_resp)
        data = Types::DescribeTableOutput.new
        data
      end
    end

    # Operation Parser for DescribeTableReplicaAutoScaling
    class DescribeTableReplicaAutoScaling
      def self.parse(http_resp)
        data = Types::DescribeTableReplicaAutoScalingOutput.new
        data
      end
    end

    class TableAutoScalingDescription
      def self.parse(map)
        data = Types::TableAutoScalingDescription.new
        return data
      end
    end

    class ReplicaAutoScalingDescriptionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReplicaAutoScalingDescription
      def self.parse(map)
        data = Types::ReplicaAutoScalingDescription.new
        return data
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescriptionList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescription
      def self.parse(map)
        data = Types::ReplicaGlobalSecondaryIndexAutoScalingDescription.new
        return data
      end
    end

    # Operation Parser for DescribeTimeToLive
    class DescribeTimeToLive
      def self.parse(http_resp)
        data = Types::DescribeTimeToLiveOutput.new
        data
      end
    end

    # Operation Parser for DisableKinesisStreamingDestination
    class DisableKinesisStreamingDestination
      def self.parse(http_resp)
        data = Types::DisableKinesisStreamingDestinationOutput.new
        data
      end
    end

    # Operation Parser for EnableKinesisStreamingDestination
    class EnableKinesisStreamingDestination
      def self.parse(http_resp)
        data = Types::EnableKinesisStreamingDestinationOutput.new
        data
      end
    end

    # Operation Parser for ExecuteStatement
    class ExecuteStatement
      def self.parse(http_resp)
        data = Types::ExecuteStatementOutput.new
        data
      end
    end

    # Error Parser for DuplicateItemException
    class DuplicateItemException
      def self.parse(http_resp)
        data = Types::DuplicateItemException.new
        data
      end
    end

    # Operation Parser for ExecuteTransaction
    class ExecuteTransaction
      def self.parse(http_resp)
        data = Types::ExecuteTransactionOutput.new
        data
      end
    end

    class ItemResponseList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ItemResponse
      def self.parse(map)
        data = Types::ItemResponse.new
        return data
      end
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
      def self.parse(http_resp)
        data = Types::IdempotentParameterMismatchException.new
        data
      end
    end

    # Error Parser for TransactionCanceledException
    class TransactionCanceledException
      def self.parse(http_resp)
        data = Types::TransactionCanceledException.new
        data
      end
    end

    class CancellationReasonList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CancellationReason
      def self.parse(map)
        data = Types::CancellationReason.new
        return data
      end
    end

    # Error Parser for TransactionInProgressException
    class TransactionInProgressException
      def self.parse(http_resp)
        data = Types::TransactionInProgressException.new
        data
      end
    end

    # Operation Parser for ExportTableToPointInTime
    class ExportTableToPointInTime
      def self.parse(http_resp)
        data = Types::ExportTableToPointInTimeOutput.new
        data
      end
    end

    # Error Parser for InvalidExportTimeException
    class InvalidExportTimeException
      def self.parse(http_resp)
        data = Types::InvalidExportTimeException.new
        data
      end
    end

    # Error Parser for PointInTimeRecoveryUnavailableException
    class PointInTimeRecoveryUnavailableException
      def self.parse(http_resp)
        data = Types::PointInTimeRecoveryUnavailableException.new
        data
      end
    end

    # Error Parser for ExportConflictException
    class ExportConflictException
      def self.parse(http_resp)
        data = Types::ExportConflictException.new
        data
      end
    end

    # Operation Parser for GetItem
    class GetItem
      def self.parse(http_resp)
        data = Types::GetItemOutput.new
        data
      end
    end

    # Operation Parser for ListBackups
    class ListBackups
      def self.parse(http_resp)
        data = Types::ListBackupsOutput.new
        data
      end
    end

    class BackupSummaries
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class BackupSummary
      def self.parse(map)
        data = Types::BackupSummary.new
        return data
      end
    end

    # Operation Parser for ListContributorInsights
    class ListContributorInsights
      def self.parse(http_resp)
        data = Types::ListContributorInsightsOutput.new
        data
      end
    end

    class ContributorInsightsSummaries
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ContributorInsightsSummary
      def self.parse(map)
        data = Types::ContributorInsightsSummary.new
        return data
      end
    end

    # Operation Parser for ListExports
    class ListExports
      def self.parse(http_resp)
        data = Types::ListExportsOutput.new
        data
      end
    end

    class ExportSummaries
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ExportSummary
      def self.parse(map)
        data = Types::ExportSummary.new
        return data
      end
    end

    # Operation Parser for ListGlobalTables
    class ListGlobalTables
      def self.parse(http_resp)
        data = Types::ListGlobalTablesOutput.new
        data
      end
    end

    class GlobalTableList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class GlobalTable
      def self.parse(map)
        data = Types::GlobalTable.new
        return data
      end
    end

    class ReplicaList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Replica
      def self.parse(map)
        data = Types::Replica.new
        return data
      end
    end

    # Operation Parser for ListTables
    class ListTables
      def self.parse(http_resp)
        data = Types::ListTablesOutput.new
        data
      end
    end

    class TableNameList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for ListTagsOfResource
    class ListTagsOfResource
      def self.parse(http_resp)
        data = Types::ListTagsOfResourceOutput.new
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        return data
      end
    end

    # Operation Parser for PutItem
    class PutItem
      def self.parse(http_resp)
        data = Types::PutItemOutput.new
        data
      end
    end

    # Operation Parser for Query
    class Query
      def self.parse(http_resp)
        data = Types::QueryOutput.new
        data
      end
    end

    # Operation Parser for RestoreTableFromBackup
    class RestoreTableFromBackup
      def self.parse(http_resp)
        data = Types::RestoreTableFromBackupOutput.new
        data
      end
    end

    # Error Parser for TableAlreadyExistsException
    class TableAlreadyExistsException
      def self.parse(http_resp)
        data = Types::TableAlreadyExistsException.new
        data
      end
    end

    # Operation Parser for RestoreTableToPointInTime
    class RestoreTableToPointInTime
      def self.parse(http_resp)
        data = Types::RestoreTableToPointInTimeOutput.new
        data
      end
    end

    # Error Parser for InvalidRestoreTimeException
    class InvalidRestoreTimeException
      def self.parse(http_resp)
        data = Types::InvalidRestoreTimeException.new
        data
      end
    end

    # Operation Parser for Scan
    class Scan
      def self.parse(http_resp)
        data = Types::ScanOutput.new
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        data
      end
    end

    # Operation Parser for TransactGetItems
    class TransactGetItems
      def self.parse(http_resp)
        data = Types::TransactGetItemsOutput.new
        data
      end
    end

    # Operation Parser for TransactWriteItems
    class TransactWriteItems
      def self.parse(http_resp)
        data = Types::TransactWriteItemsOutput.new
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        data
      end
    end

    # Operation Parser for UpdateContinuousBackups
    class UpdateContinuousBackups
      def self.parse(http_resp)
        data = Types::UpdateContinuousBackupsOutput.new
        data
      end
    end

    # Operation Parser for UpdateContributorInsights
    class UpdateContributorInsights
      def self.parse(http_resp)
        data = Types::UpdateContributorInsightsOutput.new
        data
      end
    end

    # Operation Parser for UpdateGlobalTable
    class UpdateGlobalTable
      def self.parse(http_resp)
        data = Types::UpdateGlobalTableOutput.new
        data
      end
    end

    # Error Parser for ReplicaNotFoundException
    class ReplicaNotFoundException
      def self.parse(http_resp)
        data = Types::ReplicaNotFoundException.new
        data
      end
    end

    # Error Parser for ReplicaAlreadyExistsException
    class ReplicaAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ReplicaAlreadyExistsException.new
        data
      end
    end

    # Operation Parser for UpdateGlobalTableSettings
    class UpdateGlobalTableSettings
      def self.parse(http_resp)
        data = Types::UpdateGlobalTableSettingsOutput.new
        data
      end
    end

    # Error Parser for IndexNotFoundException
    class IndexNotFoundException
      def self.parse(http_resp)
        data = Types::IndexNotFoundException.new
        data
      end
    end

    # Operation Parser for UpdateItem
    class UpdateItem
      def self.parse(http_resp)
        data = Types::UpdateItemOutput.new
        data
      end
    end

    # Operation Parser for UpdateTable
    class UpdateTable
      def self.parse(http_resp)
        data = Types::UpdateTableOutput.new
        data
      end
    end

    # Operation Parser for UpdateTableReplicaAutoScaling
    class UpdateTableReplicaAutoScaling
      def self.parse(http_resp)
        data = Types::UpdateTableReplicaAutoScalingOutput.new
        data
      end
    end

    # Operation Parser for UpdateTimeToLive
    class UpdateTimeToLive
      def self.parse(http_resp)
        data = Types::UpdateTimeToLiveOutput.new
        data
      end
    end

    class TimeToLiveSpecification
      def self.parse(map)
        data = Types::TimeToLiveSpecification.new
        return data
      end
    end
  end
end
