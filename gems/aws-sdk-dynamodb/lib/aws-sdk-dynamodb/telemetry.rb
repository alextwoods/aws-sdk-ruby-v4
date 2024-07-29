# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DynamoDB
  # @api private
  module Telemetry

    class BatchExecuteStatement
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'BatchExecuteStatement',
          'code.function' => 'batch_execute_statement',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.BatchExecuteStatement', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class BatchGetItem
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'BatchGetItem',
          'code.function' => 'batch_get_item',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.BatchGetItem', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class BatchWriteItem
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'BatchWriteItem',
          'code.function' => 'batch_write_item',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.BatchWriteItem', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateBackup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'CreateBackup',
          'code.function' => 'create_backup',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.CreateBackup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateGlobalTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'CreateGlobalTable',
          'code.function' => 'create_global_table',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.CreateGlobalTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'CreateTable',
          'code.function' => 'create_table',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.CreateTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteBackup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DeleteBackup',
          'code.function' => 'delete_backup',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DeleteBackup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteItem
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DeleteItem',
          'code.function' => 'delete_item',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DeleteItem', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DeleteTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DeleteTable',
          'code.function' => 'delete_table',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DeleteTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeBackup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeBackup',
          'code.function' => 'describe_backup',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeBackup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeContinuousBackups
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeContinuousBackups',
          'code.function' => 'describe_continuous_backups',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeContinuousBackups', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeContributorInsights
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeContributorInsights',
          'code.function' => 'describe_contributor_insights',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeContributorInsights', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeEndpoints
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeEndpoints',
          'code.function' => 'describe_endpoints',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeEndpoints', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeExport
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeExport',
          'code.function' => 'describe_export',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeExport', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeGlobalTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeGlobalTable',
          'code.function' => 'describe_global_table',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeGlobalTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeGlobalTableSettings
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeGlobalTableSettings',
          'code.function' => 'describe_global_table_settings',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeGlobalTableSettings', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeImport
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeImport',
          'code.function' => 'describe_import',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeImport', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeKinesisStreamingDestination
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeKinesisStreamingDestination',
          'code.function' => 'describe_kinesis_streaming_destination',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeKinesisStreamingDestination', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeLimits
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeLimits',
          'code.function' => 'describe_limits',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeLimits', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeTable',
          'code.function' => 'describe_table',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTableReplicaAutoScaling
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeTableReplicaAutoScaling',
          'code.function' => 'describe_table_replica_auto_scaling',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeTableReplicaAutoScaling', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DescribeTimeToLive
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DescribeTimeToLive',
          'code.function' => 'describe_time_to_live',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DescribeTimeToLive', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class DisableKinesisStreamingDestination
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'DisableKinesisStreamingDestination',
          'code.function' => 'disable_kinesis_streaming_destination',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.DisableKinesisStreamingDestination', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class EnableKinesisStreamingDestination
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'EnableKinesisStreamingDestination',
          'code.function' => 'enable_kinesis_streaming_destination',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.EnableKinesisStreamingDestination', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ExecuteStatement
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ExecuteStatement',
          'code.function' => 'execute_statement',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ExecuteStatement', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ExecuteTransaction
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ExecuteTransaction',
          'code.function' => 'execute_transaction',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ExecuteTransaction', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ExportTableToPointInTime
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ExportTableToPointInTime',
          'code.function' => 'export_table_to_point_in_time',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ExportTableToPointInTime', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class GetItem
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'GetItem',
          'code.function' => 'get_item',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.GetItem', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ImportTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ImportTable',
          'code.function' => 'import_table',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ImportTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListBackups
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ListBackups',
          'code.function' => 'list_backups',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ListBackups', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListContributorInsights
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ListContributorInsights',
          'code.function' => 'list_contributor_insights',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ListContributorInsights', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListExports
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ListExports',
          'code.function' => 'list_exports',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ListExports', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListGlobalTables
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ListGlobalTables',
          'code.function' => 'list_global_tables',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ListGlobalTables', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListImports
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ListImports',
          'code.function' => 'list_imports',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ListImports', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListTables
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ListTables',
          'code.function' => 'list_tables',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ListTables', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListTagsOfResource
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'ListTagsOfResource',
          'code.function' => 'list_tags_of_resource',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.ListTagsOfResource', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class PutItem
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'PutItem',
          'code.function' => 'put_item',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.PutItem', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class Query
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'Query',
          'code.function' => 'query',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.Query', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RestoreTableFromBackup
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'RestoreTableFromBackup',
          'code.function' => 'restore_table_from_backup',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.RestoreTableFromBackup', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RestoreTableToPointInTime
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'RestoreTableToPointInTime',
          'code.function' => 'restore_table_to_point_in_time',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.RestoreTableToPointInTime', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class Scan
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'Scan',
          'code.function' => 'scan',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.Scan', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class TagResource
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'TagResource',
          'code.function' => 'tag_resource',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.TagResource', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class TransactGetItems
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'TransactGetItems',
          'code.function' => 'transact_get_items',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.TransactGetItems', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class TransactWriteItems
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'TransactWriteItems',
          'code.function' => 'transact_write_items',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.TransactWriteItems', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UntagResource
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'UntagResource',
          'code.function' => 'untag_resource',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.UntagResource', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateContinuousBackups
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'UpdateContinuousBackups',
          'code.function' => 'update_continuous_backups',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.UpdateContinuousBackups', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateContributorInsights
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'UpdateContributorInsights',
          'code.function' => 'update_contributor_insights',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.UpdateContributorInsights', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateGlobalTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'UpdateGlobalTable',
          'code.function' => 'update_global_table',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.UpdateGlobalTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateGlobalTableSettings
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'UpdateGlobalTableSettings',
          'code.function' => 'update_global_table_settings',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.UpdateGlobalTableSettings', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateItem
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'UpdateItem',
          'code.function' => 'update_item',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.UpdateItem', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateKinesisStreamingDestination
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'UpdateKinesisStreamingDestination',
          'code.function' => 'update_kinesis_streaming_destination',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.UpdateKinesisStreamingDestination', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateTable
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'UpdateTable',
          'code.function' => 'update_table',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.UpdateTable', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateTableReplicaAutoScaling
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'UpdateTableReplicaAutoScaling',
          'code.function' => 'update_table_replica_auto_scaling',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.UpdateTableReplicaAutoScaling', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class UpdateTimeToLive
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'DynamoDB',
          'rpc.method' => 'UpdateTimeToLive',
          'code.function' => 'update_time_to_live',
          'code.namespace' => 'AWS::SDK::DynamoDB::Telemetry'
        }
        context.tracer.in_span('DynamoDB.UpdateTimeToLive', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

  end
end
