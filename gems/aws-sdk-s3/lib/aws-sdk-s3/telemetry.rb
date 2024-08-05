# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  # @api private
  module Telemetry

    class AbortMultipartUpload
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'AbortMultipartUpload',
          'code.function' => 'abort_multipart_upload',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.AbortMultipartUpload',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CompleteMultipartUpload
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'CompleteMultipartUpload',
          'code.function' => 'complete_multipart_upload',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.CompleteMultipartUpload',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CopyObject
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'CopyObject',
          'code.function' => 'copy_object',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.CopyObject',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateBucket
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'CreateBucket',
          'code.function' => 'create_bucket',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.CreateBucket',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateMultipartUpload
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'CreateMultipartUpload',
          'code.function' => 'create_multipart_upload',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.CreateMultipartUpload',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateSession
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'CreateSession',
          'code.function' => 'create_session',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.CreateSession',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucket
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucket',
          'code.function' => 'delete_bucket',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucket',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketAnalyticsConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketAnalyticsConfiguration',
          'code.function' => 'delete_bucket_analytics_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketAnalyticsConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketCors
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketCors',
          'code.function' => 'delete_bucket_cors',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketCors',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketEncryption
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketEncryption',
          'code.function' => 'delete_bucket_encryption',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketEncryption',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketIntelligentTieringConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketIntelligentTieringConfiguration',
          'code.function' => 'delete_bucket_intelligent_tiering_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketIntelligentTieringConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketInventoryConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketInventoryConfiguration',
          'code.function' => 'delete_bucket_inventory_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketInventoryConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketLifecycle
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketLifecycle',
          'code.function' => 'delete_bucket_lifecycle',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketLifecycle',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketMetricsConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketMetricsConfiguration',
          'code.function' => 'delete_bucket_metrics_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketMetricsConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketOwnershipControls
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketOwnershipControls',
          'code.function' => 'delete_bucket_ownership_controls',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketOwnershipControls',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketPolicy
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketPolicy',
          'code.function' => 'delete_bucket_policy',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketPolicy',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketReplication
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketReplication',
          'code.function' => 'delete_bucket_replication',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketReplication',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketTagging
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketTagging',
          'code.function' => 'delete_bucket_tagging',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketTagging',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteBucketWebsite
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteBucketWebsite',
          'code.function' => 'delete_bucket_website',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteBucketWebsite',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteObject
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteObject',
          'code.function' => 'delete_object',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteObject',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteObjectTagging
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteObjectTagging',
          'code.function' => 'delete_object_tagging',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteObjectTagging',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteObjects
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeleteObjects',
          'code.function' => 'delete_objects',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeleteObjects',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeletePublicAccessBlock
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'DeletePublicAccessBlock',
          'code.function' => 'delete_public_access_block',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.DeletePublicAccessBlock',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketAccelerateConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketAccelerateConfiguration',
          'code.function' => 'get_bucket_accelerate_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketAccelerateConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketAcl
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketAcl',
          'code.function' => 'get_bucket_acl',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketAcl',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketAnalyticsConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketAnalyticsConfiguration',
          'code.function' => 'get_bucket_analytics_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketAnalyticsConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketCors
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketCors',
          'code.function' => 'get_bucket_cors',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketCors',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketEncryption
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketEncryption',
          'code.function' => 'get_bucket_encryption',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketEncryption',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketIntelligentTieringConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketIntelligentTieringConfiguration',
          'code.function' => 'get_bucket_intelligent_tiering_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketIntelligentTieringConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketInventoryConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketInventoryConfiguration',
          'code.function' => 'get_bucket_inventory_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketInventoryConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketLifecycleConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketLifecycleConfiguration',
          'code.function' => 'get_bucket_lifecycle_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketLifecycleConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketLocation
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketLocation',
          'code.function' => 'get_bucket_location',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketLocation',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketLogging
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketLogging',
          'code.function' => 'get_bucket_logging',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketLogging',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketMetricsConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketMetricsConfiguration',
          'code.function' => 'get_bucket_metrics_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketMetricsConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketNotificationConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketNotificationConfiguration',
          'code.function' => 'get_bucket_notification_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketNotificationConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketOwnershipControls
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketOwnershipControls',
          'code.function' => 'get_bucket_ownership_controls',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketOwnershipControls',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketPolicy
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketPolicy',
          'code.function' => 'get_bucket_policy',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketPolicy',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketPolicyStatus
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketPolicyStatus',
          'code.function' => 'get_bucket_policy_status',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketPolicyStatus',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketReplication
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketReplication',
          'code.function' => 'get_bucket_replication',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketReplication',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketRequestPayment
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketRequestPayment',
          'code.function' => 'get_bucket_request_payment',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketRequestPayment',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketTagging
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketTagging',
          'code.function' => 'get_bucket_tagging',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketTagging',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketVersioning
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketVersioning',
          'code.function' => 'get_bucket_versioning',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketVersioning',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetBucketWebsite
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetBucketWebsite',
          'code.function' => 'get_bucket_website',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetBucketWebsite',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetObject
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetObject',
          'code.function' => 'get_object',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetObject',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetObjectAcl
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetObjectAcl',
          'code.function' => 'get_object_acl',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetObjectAcl',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetObjectAttributes
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetObjectAttributes',
          'code.function' => 'get_object_attributes',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetObjectAttributes',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetObjectLegalHold
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetObjectLegalHold',
          'code.function' => 'get_object_legal_hold',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetObjectLegalHold',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetObjectLockConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetObjectLockConfiguration',
          'code.function' => 'get_object_lock_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetObjectLockConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetObjectRetention
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetObjectRetention',
          'code.function' => 'get_object_retention',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetObjectRetention',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetObjectTagging
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetObjectTagging',
          'code.function' => 'get_object_tagging',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetObjectTagging',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetObjectTorrent
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetObjectTorrent',
          'code.function' => 'get_object_torrent',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetObjectTorrent',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetPublicAccessBlock
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'GetPublicAccessBlock',
          'code.function' => 'get_public_access_block',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.GetPublicAccessBlock',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class HeadBucket
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'HeadBucket',
          'code.function' => 'head_bucket',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.HeadBucket',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class HeadObject
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'HeadObject',
          'code.function' => 'head_object',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.HeadObject',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListBucketAnalyticsConfigurations
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListBucketAnalyticsConfigurations',
          'code.function' => 'list_bucket_analytics_configurations',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListBucketAnalyticsConfigurations',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListBucketIntelligentTieringConfigurations
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListBucketIntelligentTieringConfigurations',
          'code.function' => 'list_bucket_intelligent_tiering_configurations',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListBucketIntelligentTieringConfigurations',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListBucketInventoryConfigurations
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListBucketInventoryConfigurations',
          'code.function' => 'list_bucket_inventory_configurations',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListBucketInventoryConfigurations',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListBucketMetricsConfigurations
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListBucketMetricsConfigurations',
          'code.function' => 'list_bucket_metrics_configurations',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListBucketMetricsConfigurations',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListBuckets
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListBuckets',
          'code.function' => 'list_buckets',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListBuckets',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListDirectoryBuckets
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListDirectoryBuckets',
          'code.function' => 'list_directory_buckets',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListDirectoryBuckets',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListMultipartUploads
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListMultipartUploads',
          'code.function' => 'list_multipart_uploads',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListMultipartUploads',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListObjectVersions
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListObjectVersions',
          'code.function' => 'list_object_versions',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListObjectVersions',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListObjects
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListObjects',
          'code.function' => 'list_objects',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListObjects',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListObjectsV2
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListObjectsV2',
          'code.function' => 'list_objects_v2',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListObjectsV2',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListParts
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'ListParts',
          'code.function' => 'list_parts',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.ListParts',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketAccelerateConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketAccelerateConfiguration',
          'code.function' => 'put_bucket_accelerate_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketAccelerateConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketAcl
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketAcl',
          'code.function' => 'put_bucket_acl',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketAcl',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketAnalyticsConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketAnalyticsConfiguration',
          'code.function' => 'put_bucket_analytics_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketAnalyticsConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketCors
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketCors',
          'code.function' => 'put_bucket_cors',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketCors',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketEncryption
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketEncryption',
          'code.function' => 'put_bucket_encryption',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketEncryption',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketIntelligentTieringConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketIntelligentTieringConfiguration',
          'code.function' => 'put_bucket_intelligent_tiering_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketIntelligentTieringConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketInventoryConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketInventoryConfiguration',
          'code.function' => 'put_bucket_inventory_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketInventoryConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketLifecycleConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketLifecycleConfiguration',
          'code.function' => 'put_bucket_lifecycle_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketLifecycleConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketLogging
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketLogging',
          'code.function' => 'put_bucket_logging',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketLogging',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketMetricsConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketMetricsConfiguration',
          'code.function' => 'put_bucket_metrics_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketMetricsConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketNotificationConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketNotificationConfiguration',
          'code.function' => 'put_bucket_notification_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketNotificationConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketOwnershipControls
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketOwnershipControls',
          'code.function' => 'put_bucket_ownership_controls',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketOwnershipControls',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketPolicy
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketPolicy',
          'code.function' => 'put_bucket_policy',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketPolicy',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketReplication
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketReplication',
          'code.function' => 'put_bucket_replication',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketReplication',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketRequestPayment
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketRequestPayment',
          'code.function' => 'put_bucket_request_payment',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketRequestPayment',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketTagging
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketTagging',
          'code.function' => 'put_bucket_tagging',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketTagging',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketVersioning
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketVersioning',
          'code.function' => 'put_bucket_versioning',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketVersioning',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutBucketWebsite
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutBucketWebsite',
          'code.function' => 'put_bucket_website',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutBucketWebsite',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutObject
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutObject',
          'code.function' => 'put_object',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutObject',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutObjectAcl
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutObjectAcl',
          'code.function' => 'put_object_acl',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutObjectAcl',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutObjectLegalHold
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutObjectLegalHold',
          'code.function' => 'put_object_legal_hold',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutObjectLegalHold',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutObjectLockConfiguration
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutObjectLockConfiguration',
          'code.function' => 'put_object_lock_configuration',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutObjectLockConfiguration',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutObjectRetention
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutObjectRetention',
          'code.function' => 'put_object_retention',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutObjectRetention',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutObjectTagging
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutObjectTagging',
          'code.function' => 'put_object_tagging',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutObjectTagging',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutPublicAccessBlock
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'PutPublicAccessBlock',
          'code.function' => 'put_public_access_block',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.PutPublicAccessBlock',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class RestoreObject
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'RestoreObject',
          'code.function' => 'restore_object',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.RestoreObject',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UploadPart
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'UploadPart',
          'code.function' => 'upload_part',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.UploadPart',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UploadPartCopy
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'UploadPartCopy',
          'code.function' => 'upload_part_copy',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.UploadPartCopy',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class WriteGetObjectResponse
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'S3',
          'rpc.method' => 'WriteGetObjectResponse',
          'code.function' => 'write_get_object_response',
          'code.namespace' => 'AWS::SDK::S3::Telemetry'
        }
        context.tracer.in_span(
          'S3.WriteGetObjectResponse',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

  end
end
