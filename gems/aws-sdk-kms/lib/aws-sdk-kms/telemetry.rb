# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
  # @api private
  module Telemetry

    class CancelKeyDeletion
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'CancelKeyDeletion',
          'code.function' => 'cancel_key_deletion',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.CancelKeyDeletion',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ConnectCustomKeyStore
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ConnectCustomKeyStore',
          'code.function' => 'connect_custom_key_store',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ConnectCustomKeyStore',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateAlias
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'CreateAlias',
          'code.function' => 'create_alias',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.CreateAlias',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateCustomKeyStore
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'CreateCustomKeyStore',
          'code.function' => 'create_custom_key_store',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.CreateCustomKeyStore',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateGrant
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'CreateGrant',
          'code.function' => 'create_grant',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.CreateGrant',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class CreateKey
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'CreateKey',
          'code.function' => 'create_key',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.CreateKey',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class Decrypt
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'Decrypt',
          'code.function' => 'decrypt',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.Decrypt',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteAlias
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'DeleteAlias',
          'code.function' => 'delete_alias',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.DeleteAlias',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteCustomKeyStore
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'DeleteCustomKeyStore',
          'code.function' => 'delete_custom_key_store',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.DeleteCustomKeyStore',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DeleteImportedKeyMaterial
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'DeleteImportedKeyMaterial',
          'code.function' => 'delete_imported_key_material',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.DeleteImportedKeyMaterial',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DescribeCustomKeyStores
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'DescribeCustomKeyStores',
          'code.function' => 'describe_custom_key_stores',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.DescribeCustomKeyStores',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DescribeKey
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'DescribeKey',
          'code.function' => 'describe_key',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.DescribeKey',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DisableKey
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'DisableKey',
          'code.function' => 'disable_key',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.DisableKey',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DisableKeyRotation
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'DisableKeyRotation',
          'code.function' => 'disable_key_rotation',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.DisableKeyRotation',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DisconnectCustomKeyStore
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'DisconnectCustomKeyStore',
          'code.function' => 'disconnect_custom_key_store',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.DisconnectCustomKeyStore',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class EnableKey
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'EnableKey',
          'code.function' => 'enable_key',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.EnableKey',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class EnableKeyRotation
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'EnableKeyRotation',
          'code.function' => 'enable_key_rotation',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.EnableKeyRotation',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class Encrypt
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'Encrypt',
          'code.function' => 'encrypt',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.Encrypt',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GenerateDataKey
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'GenerateDataKey',
          'code.function' => 'generate_data_key',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.GenerateDataKey',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GenerateDataKeyPair
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'GenerateDataKeyPair',
          'code.function' => 'generate_data_key_pair',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.GenerateDataKeyPair',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GenerateDataKeyPairWithoutPlaintext
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'GenerateDataKeyPairWithoutPlaintext',
          'code.function' => 'generate_data_key_pair_without_plaintext',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.GenerateDataKeyPairWithoutPlaintext',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GenerateDataKeyWithoutPlaintext
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'GenerateDataKeyWithoutPlaintext',
          'code.function' => 'generate_data_key_without_plaintext',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.GenerateDataKeyWithoutPlaintext',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GenerateMac
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'GenerateMac',
          'code.function' => 'generate_mac',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.GenerateMac',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GenerateRandom
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'GenerateRandom',
          'code.function' => 'generate_random',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.GenerateRandom',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetKeyPolicy
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'GetKeyPolicy',
          'code.function' => 'get_key_policy',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.GetKeyPolicy',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetKeyRotationStatus
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'GetKeyRotationStatus',
          'code.function' => 'get_key_rotation_status',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.GetKeyRotationStatus',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetParametersForImport
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'GetParametersForImport',
          'code.function' => 'get_parameters_for_import',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.GetParametersForImport',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetPublicKey
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'GetPublicKey',
          'code.function' => 'get_public_key',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.GetPublicKey',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ImportKeyMaterial
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ImportKeyMaterial',
          'code.function' => 'import_key_material',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ImportKeyMaterial',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListAliases
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ListAliases',
          'code.function' => 'list_aliases',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ListAliases',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListGrants
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ListGrants',
          'code.function' => 'list_grants',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ListGrants',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListKeyPolicies
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ListKeyPolicies',
          'code.function' => 'list_key_policies',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ListKeyPolicies',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListKeys
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ListKeys',
          'code.function' => 'list_keys',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ListKeys',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListResourceTags
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ListResourceTags',
          'code.function' => 'list_resource_tags',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ListResourceTags',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ListRetirableGrants
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ListRetirableGrants',
          'code.function' => 'list_retirable_grants',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ListRetirableGrants',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutKeyPolicy
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'PutKeyPolicy',
          'code.function' => 'put_key_policy',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.PutKeyPolicy',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ReEncrypt
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ReEncrypt',
          'code.function' => 're_encrypt',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ReEncrypt',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ReplicateKey
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ReplicateKey',
          'code.function' => 'replicate_key',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ReplicateKey',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class RetireGrant
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'RetireGrant',
          'code.function' => 'retire_grant',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.RetireGrant',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class RevokeGrant
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'RevokeGrant',
          'code.function' => 'revoke_grant',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.RevokeGrant',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class ScheduleKeyDeletion
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'ScheduleKeyDeletion',
          'code.function' => 'schedule_key_deletion',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.ScheduleKeyDeletion',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class Sign
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'Sign',
          'code.function' => 'sign',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.Sign',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class TagResource
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'TagResource',
          'code.function' => 'tag_resource',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.TagResource',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UntagResource
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'UntagResource',
          'code.function' => 'untag_resource',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.UntagResource',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UpdateAlias
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'UpdateAlias',
          'code.function' => 'update_alias',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.UpdateAlias',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UpdateCustomKeyStore
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'UpdateCustomKeyStore',
          'code.function' => 'update_custom_key_store',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.UpdateCustomKeyStore',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UpdateKeyDescription
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'UpdateKeyDescription',
          'code.function' => 'update_key_description',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.UpdateKeyDescription',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class UpdatePrimaryRegion
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'UpdatePrimaryRegion',
          'code.function' => 'update_primary_region',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.UpdatePrimaryRegion',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class Verify
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'Verify',
          'code.function' => 'verify',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.Verify',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class VerifyMac
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'KMS',
          'rpc.method' => 'VerifyMac',
          'code.function' => 'verify_mac',
          'code.namespace' => 'AWS::SDK::KMS::Telemetry'
        }
        context.tracer.in_span(
          'KMS.VerifyMac',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

  end
end
