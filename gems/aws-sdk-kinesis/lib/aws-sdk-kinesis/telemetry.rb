# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  # @api private
  module Telemetry

    class AddTagsToStream
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'AddTagsToStream',
          'code.function' => 'add_tags_to_stream',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.AddTagsToStream',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateStream
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'CreateStream',
          'code.function' => 'create_stream',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.CreateStream',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DecreaseStreamRetentionPeriod
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'DecreaseStreamRetentionPeriod',
          'code.function' => 'decrease_stream_retention_period',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.DecreaseStreamRetentionPeriod',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteResourcePolicy
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'DeleteResourcePolicy',
          'code.function' => 'delete_resource_policy',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.DeleteResourcePolicy',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteStream
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'DeleteStream',
          'code.function' => 'delete_stream',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.DeleteStream',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeregisterStreamConsumer
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'DeregisterStreamConsumer',
          'code.function' => 'deregister_stream_consumer',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.DeregisterStreamConsumer',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DescribeLimits
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'DescribeLimits',
          'code.function' => 'describe_limits',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.DescribeLimits',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DescribeStream
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'DescribeStream',
          'code.function' => 'describe_stream',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.DescribeStream',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DescribeStreamConsumer
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'DescribeStreamConsumer',
          'code.function' => 'describe_stream_consumer',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.DescribeStreamConsumer',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DescribeStreamSummary
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'DescribeStreamSummary',
          'code.function' => 'describe_stream_summary',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.DescribeStreamSummary',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DisableEnhancedMonitoring
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'DisableEnhancedMonitoring',
          'code.function' => 'disable_enhanced_monitoring',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.DisableEnhancedMonitoring',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class EnableEnhancedMonitoring
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'EnableEnhancedMonitoring',
          'code.function' => 'enable_enhanced_monitoring',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.EnableEnhancedMonitoring',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetRecords
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'GetRecords',
          'code.function' => 'get_records',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.GetRecords',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetResourcePolicy
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'GetResourcePolicy',
          'code.function' => 'get_resource_policy',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.GetResourcePolicy',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetShardIterator
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'GetShardIterator',
          'code.function' => 'get_shard_iterator',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.GetShardIterator',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class IncreaseStreamRetentionPeriod
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'IncreaseStreamRetentionPeriod',
          'code.function' => 'increase_stream_retention_period',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.IncreaseStreamRetentionPeriod',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListShards
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'ListShards',
          'code.function' => 'list_shards',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.ListShards',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListStreamConsumers
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'ListStreamConsumers',
          'code.function' => 'list_stream_consumers',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.ListStreamConsumers',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListStreams
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'ListStreams',
          'code.function' => 'list_streams',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.ListStreams',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListTagsForStream
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'ListTagsForStream',
          'code.function' => 'list_tags_for_stream',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.ListTagsForStream',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class MergeShards
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'MergeShards',
          'code.function' => 'merge_shards',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.MergeShards',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutRecord
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'PutRecord',
          'code.function' => 'put_record',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.PutRecord',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutRecords
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'PutRecords',
          'code.function' => 'put_records',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.PutRecords',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutResourcePolicy
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'PutResourcePolicy',
          'code.function' => 'put_resource_policy',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.PutResourcePolicy',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class RegisterStreamConsumer
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'RegisterStreamConsumer',
          'code.function' => 'register_stream_consumer',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.RegisterStreamConsumer',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class RemoveTagsFromStream
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'RemoveTagsFromStream',
          'code.function' => 'remove_tags_from_stream',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.RemoveTagsFromStream',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class SplitShard
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'SplitShard',
          'code.function' => 'split_shard',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.SplitShard',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class StartStreamEncryption
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'StartStreamEncryption',
          'code.function' => 'start_stream_encryption',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.StartStreamEncryption',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class StopStreamEncryption
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'StopStreamEncryption',
          'code.function' => 'stop_stream_encryption',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.StopStreamEncryption',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class SubscribeToShard
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'SubscribeToShard',
          'code.function' => 'subscribe_to_shard',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.SubscribeToShard',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UpdateShardCount
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'UpdateShardCount',
          'code.function' => 'update_shard_count',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.UpdateShardCount',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UpdateStreamMode
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Kinesis',
          'rpc.method' => 'UpdateStreamMode',
          'code.function' => 'update_stream_mode',
          'code.namespace' => 'AWS::SDK::Kinesis::Telemetry'
        }
        context.tracer.in_span(
          'Kinesis.UpdateStreamMode',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

  end
end
