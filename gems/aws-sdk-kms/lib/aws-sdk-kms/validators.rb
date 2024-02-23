# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::KMS
  # @api private
  module Validators

    class AliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AliasListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AliasListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AliasListEntry, context: context)
        Hearth::Validator.validate_types!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate_types!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate_types!(input[:target_key_id], ::String, context: "#{context}[:target_key_id]")
        Hearth::Validator.validate_types!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate_types!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
      end
    end

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelKeyDeletionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CancelKeyDeletionInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class CancelKeyDeletionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CancelKeyDeletionOutput, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class CloudHsmClusterInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CloudHsmClusterInUseException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmClusterInvalidConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CloudHsmClusterInvalidConfigurationException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmClusterNotActiveException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CloudHsmClusterNotActiveException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmClusterNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CloudHsmClusterNotFoundException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmClusterNotRelatedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CloudHsmClusterNotRelatedException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectCustomKeyStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ConnectCustomKeyStoreInput, context: context)
        Hearth::Validator.validate_required!(input[:custom_key_store_id], context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate_types!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
      end
    end

    class ConnectCustomKeyStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ConnectCustomKeyStoreOutput, context: context)
      end
    end

    class CreateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateAliasInput, context: context)
        Hearth::Validator.validate_required!(input[:alias_name], context: "#{context}[:alias_name]")
        Hearth::Validator.validate_types!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate_required!(input[:target_key_id], context: "#{context}[:target_key_id]")
        Hearth::Validator.validate_types!(input[:target_key_id], ::String, context: "#{context}[:target_key_id]")
      end
    end

    class CreateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateAliasOutput, context: context)
      end
    end

    class CreateCustomKeyStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateCustomKeyStoreInput, context: context)
        Hearth::Validator.validate_required!(input[:custom_key_store_name], context: "#{context}[:custom_key_store_name]")
        Hearth::Validator.validate_types!(input[:custom_key_store_name], ::String, context: "#{context}[:custom_key_store_name]")
        Hearth::Validator.validate_types!(input[:cloud_hsm_cluster_id], ::String, context: "#{context}[:cloud_hsm_cluster_id]")
        Hearth::Validator.validate_types!(input[:trust_anchor_certificate], ::String, context: "#{context}[:trust_anchor_certificate]")
        Hearth::Validator.validate_types!(input[:key_store_password], ::String, context: "#{context}[:key_store_password]")
        Hearth::Validator.validate_types!(input[:custom_key_store_type], ::String, context: "#{context}[:custom_key_store_type]")
        Hearth::Validator.validate_types!(input[:xks_proxy_uri_endpoint], ::String, context: "#{context}[:xks_proxy_uri_endpoint]")
        Hearth::Validator.validate_types!(input[:xks_proxy_uri_path], ::String, context: "#{context}[:xks_proxy_uri_path]")
        Hearth::Validator.validate_types!(input[:xks_proxy_vpc_endpoint_service_name], ::String, context: "#{context}[:xks_proxy_vpc_endpoint_service_name]")
        XksProxyAuthenticationCredentialType.validate!(input[:xks_proxy_authentication_credential], context: "#{context}[:xks_proxy_authentication_credential]") unless input[:xks_proxy_authentication_credential].nil?
        Hearth::Validator.validate_types!(input[:xks_proxy_connectivity], ::String, context: "#{context}[:xks_proxy_connectivity]")
      end
    end

    class CreateCustomKeyStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateCustomKeyStoreOutput, context: context)
        Hearth::Validator.validate_types!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
      end
    end

    class CreateGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateGrantInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:grantee_principal], context: "#{context}[:grantee_principal]")
        Hearth::Validator.validate_types!(input[:grantee_principal], ::String, context: "#{context}[:grantee_principal]")
        Hearth::Validator.validate_types!(input[:retiring_principal], ::String, context: "#{context}[:retiring_principal]")
        Hearth::Validator.validate_required!(input[:operations], context: "#{context}[:operations]")
        GrantOperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        GrantConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateGrantOutput, context: context)
        Hearth::Validator.validate_types!(input[:grant_token], ::String, context: "#{context}[:grant_token]")
        Hearth::Validator.validate_types!(input[:grant_id], ::String, context: "#{context}[:grant_id]")
      end
    end

    class CreateKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateKeyInput, context: context)
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:key_usage], ::String, context: "#{context}[:key_usage]")
        Hearth::Validator.validate_types!(input[:customer_master_key_spec], ::String, context: "#{context}[:customer_master_key_spec]")
        Hearth::Validator.validate_types!(input[:key_spec], ::String, context: "#{context}[:key_spec]")
        Hearth::Validator.validate_types!(input[:origin], ::String, context: "#{context}[:origin]")
        Hearth::Validator.validate_types!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate_types!(input[:bypass_policy_lockout_safety_check], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_policy_lockout_safety_check]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate_types!(input[:multi_region], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region]")
        Hearth::Validator.validate_types!(input[:xks_key_id], ::String, context: "#{context}[:xks_key_id]")
      end
    end

    class CreateKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateKeyOutput, context: context)
        KeyMetadata.validate!(input[:key_metadata], context: "#{context}[:key_metadata]") unless input[:key_metadata].nil?
      end
    end

    class CustomKeyStoreHasCMKsException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CustomKeyStoreHasCMKsException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomKeyStoreInvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CustomKeyStoreInvalidStateException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomKeyStoreNameInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CustomKeyStoreNameInUseException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomKeyStoreNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CustomKeyStoreNotFoundException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomKeyStoresList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomKeyStoresListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomKeyStoresListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CustomKeyStoresListEntry, context: context)
        Hearth::Validator.validate_types!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate_types!(input[:custom_key_store_name], ::String, context: "#{context}[:custom_key_store_name]")
        Hearth::Validator.validate_types!(input[:cloud_hsm_cluster_id], ::String, context: "#{context}[:cloud_hsm_cluster_id]")
        Hearth::Validator.validate_types!(input[:trust_anchor_certificate], ::String, context: "#{context}[:trust_anchor_certificate]")
        Hearth::Validator.validate_types!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate_types!(input[:connection_error_code], ::String, context: "#{context}[:connection_error_code]")
        Hearth::Validator.validate_types!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate_types!(input[:custom_key_store_type], ::String, context: "#{context}[:custom_key_store_type]")
        XksProxyConfigurationType.validate!(input[:xks_proxy_configuration], context: "#{context}[:xks_proxy_configuration]") unless input[:xks_proxy_configuration].nil?
      end
    end

    class DecryptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DecryptInput, context: context)
        Hearth::Validator.validate_required!(input[:ciphertext_blob], context: "#{context}[:ciphertext_blob]")
        Hearth::Validator.validate_types!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:encryption_algorithm], ::String, context: "#{context}[:encryption_algorithm]")
        RecipientInfo.validate!(input[:recipient], context: "#{context}[:recipient]") unless input[:recipient].nil?
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DecryptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DecryptOutput, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:plaintext], ::String, context: "#{context}[:plaintext]")
        Hearth::Validator.validate_types!(input[:encryption_algorithm], ::String, context: "#{context}[:encryption_algorithm]")
        Hearth::Validator.validate_types!(input[:ciphertext_for_recipient], ::String, context: "#{context}[:ciphertext_for_recipient]")
      end
    end

    class DeleteAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteAliasInput, context: context)
        Hearth::Validator.validate_required!(input[:alias_name], context: "#{context}[:alias_name]")
        Hearth::Validator.validate_types!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
      end
    end

    class DeleteAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteAliasOutput, context: context)
      end
    end

    class DeleteCustomKeyStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteCustomKeyStoreInput, context: context)
        Hearth::Validator.validate_required!(input[:custom_key_store_id], context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate_types!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
      end
    end

    class DeleteCustomKeyStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteCustomKeyStoreOutput, context: context)
      end
    end

    class DeleteImportedKeyMaterialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteImportedKeyMaterialInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class DeleteImportedKeyMaterialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteImportedKeyMaterialOutput, context: context)
      end
    end

    class DependencyTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DependencyTimeoutException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DescribeCustomKeyStoresInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeCustomKeyStoresInput, context: context)
        Hearth::Validator.validate_types!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate_types!(input[:custom_key_store_name], ::String, context: "#{context}[:custom_key_store_name]")
        Hearth::Validator.validate_types!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCustomKeyStoresOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeCustomKeyStoresOutput, context: context)
        CustomKeyStoresList.validate!(input[:custom_key_stores], context: "#{context}[:custom_key_stores]") unless input[:custom_key_stores].nil?
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate_types!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class DescribeKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeKeyInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class DescribeKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DescribeKeyOutput, context: context)
        KeyMetadata.validate!(input[:key_metadata], context: "#{context}[:key_metadata]") unless input[:key_metadata].nil?
      end
    end

    class DisableKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisableKeyInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class DisableKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisableKeyOutput, context: context)
      end
    end

    class DisableKeyRotationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisableKeyRotationInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class DisableKeyRotationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisableKeyRotationOutput, context: context)
      end
    end

    class DisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisabledException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisconnectCustomKeyStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisconnectCustomKeyStoreInput, context: context)
        Hearth::Validator.validate_required!(input[:custom_key_store_id], context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate_types!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
      end
    end

    class DisconnectCustomKeyStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DisconnectCustomKeyStoreOutput, context: context)
      end
    end

    class DryRunOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DryRunOperationException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnableKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnableKeyInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class EnableKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnableKeyOutput, context: context)
      end
    end

    class EnableKeyRotationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnableKeyRotationInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class EnableKeyRotationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnableKeyRotationOutput, context: context)
      end
    end

    class EncryptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EncryptInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:plaintext], context: "#{context}[:plaintext]")
        Hearth::Validator.validate_types!(input[:plaintext], ::String, context: "#{context}[:plaintext]")
        EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate_types!(input[:encryption_algorithm], ::String, context: "#{context}[:encryption_algorithm]")
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class EncryptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EncryptOutput, context: context)
        Hearth::Validator.validate_types!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:encryption_algorithm], ::String, context: "#{context}[:encryption_algorithm]")
      end
    end

    class EncryptionAlgorithmSpecList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EncryptionContextType
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExpiredImportTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ExpiredImportTokenException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GenerateDataKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateDataKeyInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        Hearth::Validator.validate_types!(input[:number_of_bytes], ::Integer, context: "#{context}[:number_of_bytes]")
        Hearth::Validator.validate_types!(input[:key_spec], ::String, context: "#{context}[:key_spec]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        RecipientInfo.validate!(input[:recipient], context: "#{context}[:recipient]") unless input[:recipient].nil?
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GenerateDataKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateDataKeyOutput, context: context)
        Hearth::Validator.validate_types!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        Hearth::Validator.validate_types!(input[:plaintext], ::String, context: "#{context}[:plaintext]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:ciphertext_for_recipient], ::String, context: "#{context}[:ciphertext_for_recipient]")
      end
    end

    class GenerateDataKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateDataKeyPairInput, context: context)
        EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:key_pair_spec], context: "#{context}[:key_pair_spec]")
        Hearth::Validator.validate_types!(input[:key_pair_spec], ::String, context: "#{context}[:key_pair_spec]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        RecipientInfo.validate!(input[:recipient], context: "#{context}[:recipient]") unless input[:recipient].nil?
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GenerateDataKeyPairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateDataKeyPairOutput, context: context)
        Hearth::Validator.validate_types!(input[:private_key_ciphertext_blob], ::String, context: "#{context}[:private_key_ciphertext_blob]")
        Hearth::Validator.validate_types!(input[:private_key_plaintext], ::String, context: "#{context}[:private_key_plaintext]")
        Hearth::Validator.validate_types!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_pair_spec], ::String, context: "#{context}[:key_pair_spec]")
        Hearth::Validator.validate_types!(input[:ciphertext_for_recipient], ::String, context: "#{context}[:ciphertext_for_recipient]")
      end
    end

    class GenerateDataKeyPairWithoutPlaintextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateDataKeyPairWithoutPlaintextInput, context: context)
        EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:key_pair_spec], context: "#{context}[:key_pair_spec]")
        Hearth::Validator.validate_types!(input[:key_pair_spec], ::String, context: "#{context}[:key_pair_spec]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GenerateDataKeyPairWithoutPlaintextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateDataKeyPairWithoutPlaintextOutput, context: context)
        Hearth::Validator.validate_types!(input[:private_key_ciphertext_blob], ::String, context: "#{context}[:private_key_ciphertext_blob]")
        Hearth::Validator.validate_types!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_pair_spec], ::String, context: "#{context}[:key_pair_spec]")
      end
    end

    class GenerateDataKeyWithoutPlaintextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateDataKeyWithoutPlaintextInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        Hearth::Validator.validate_types!(input[:key_spec], ::String, context: "#{context}[:key_spec]")
        Hearth::Validator.validate_types!(input[:number_of_bytes], ::Integer, context: "#{context}[:number_of_bytes]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GenerateDataKeyWithoutPlaintextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateDataKeyWithoutPlaintextOutput, context: context)
        Hearth::Validator.validate_types!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class GenerateMacInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateMacInput, context: context)
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:mac_algorithm], context: "#{context}[:mac_algorithm]")
        Hearth::Validator.validate_types!(input[:mac_algorithm], ::String, context: "#{context}[:mac_algorithm]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class GenerateMacOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateMacOutput, context: context)
        Hearth::Validator.validate_types!(input[:mac], ::String, context: "#{context}[:mac]")
        Hearth::Validator.validate_types!(input[:mac_algorithm], ::String, context: "#{context}[:mac_algorithm]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class GenerateRandomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateRandomInput, context: context)
        Hearth::Validator.validate_types!(input[:number_of_bytes], ::Integer, context: "#{context}[:number_of_bytes]")
        Hearth::Validator.validate_types!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        RecipientInfo.validate!(input[:recipient], context: "#{context}[:recipient]") unless input[:recipient].nil?
      end
    end

    class GenerateRandomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GenerateRandomOutput, context: context)
        Hearth::Validator.validate_types!(input[:plaintext], ::String, context: "#{context}[:plaintext]")
        Hearth::Validator.validate_types!(input[:ciphertext_for_recipient], ::String, context: "#{context}[:ciphertext_for_recipient]")
      end
    end

    class GetKeyPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetKeyPolicyInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:policy_name], context: "#{context}[:policy_name]")
        Hearth::Validator.validate_types!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class GetKeyPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetKeyPolicyOutput, context: context)
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetKeyRotationStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetKeyRotationStatusInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class GetKeyRotationStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetKeyRotationStatusOutput, context: context)
        Hearth::Validator.validate_types!(input[:key_rotation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:key_rotation_enabled]")
      end
    end

    class GetParametersForImportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetParametersForImportInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:wrapping_algorithm], context: "#{context}[:wrapping_algorithm]")
        Hearth::Validator.validate_types!(input[:wrapping_algorithm], ::String, context: "#{context}[:wrapping_algorithm]")
        Hearth::Validator.validate_required!(input[:wrapping_key_spec], context: "#{context}[:wrapping_key_spec]")
        Hearth::Validator.validate_types!(input[:wrapping_key_spec], ::String, context: "#{context}[:wrapping_key_spec]")
      end
    end

    class GetParametersForImportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetParametersForImportOutput, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:import_token], ::String, context: "#{context}[:import_token]")
        Hearth::Validator.validate_types!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate_types!(input[:parameters_valid_to], ::Time, context: "#{context}[:parameters_valid_to]")
      end
    end

    class GetPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetPublicKeyInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class GetPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetPublicKeyOutput, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate_types!(input[:customer_master_key_spec], ::String, context: "#{context}[:customer_master_key_spec]")
        Hearth::Validator.validate_types!(input[:key_spec], ::String, context: "#{context}[:key_spec]")
        Hearth::Validator.validate_types!(input[:key_usage], ::String, context: "#{context}[:key_usage]")
        EncryptionAlgorithmSpecList.validate!(input[:encryption_algorithms], context: "#{context}[:encryption_algorithms]") unless input[:encryption_algorithms].nil?
        SigningAlgorithmSpecList.validate!(input[:signing_algorithms], context: "#{context}[:signing_algorithms]") unless input[:signing_algorithms].nil?
      end
    end

    class GrantConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GrantConstraints, context: context)
        EncryptionContextType.validate!(input[:encryption_context_subset], context: "#{context}[:encryption_context_subset]") unless input[:encryption_context_subset].nil?
        EncryptionContextType.validate!(input[:encryption_context_equals], context: "#{context}[:encryption_context_equals]") unless input[:encryption_context_equals].nil?
      end
    end

    class GrantList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GrantListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GrantListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GrantListEntry, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:grant_id], ::String, context: "#{context}[:grant_id]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate_types!(input[:grantee_principal], ::String, context: "#{context}[:grantee_principal]")
        Hearth::Validator.validate_types!(input[:retiring_principal], ::String, context: "#{context}[:retiring_principal]")
        Hearth::Validator.validate_types!(input[:issuing_account], ::String, context: "#{context}[:issuing_account]")
        GrantOperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        GrantConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
      end
    end

    class GrantOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GrantTokenList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportKeyMaterialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ImportKeyMaterialInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:import_token], context: "#{context}[:import_token]")
        Hearth::Validator.validate_types!(input[:import_token], ::String, context: "#{context}[:import_token]")
        Hearth::Validator.validate_required!(input[:encrypted_key_material], context: "#{context}[:encrypted_key_material]")
        Hearth::Validator.validate_types!(input[:encrypted_key_material], ::String, context: "#{context}[:encrypted_key_material]")
        Hearth::Validator.validate_types!(input[:valid_to], ::Time, context: "#{context}[:valid_to]")
        Hearth::Validator.validate_types!(input[:expiration_model], ::String, context: "#{context}[:expiration_model]")
      end
    end

    class ImportKeyMaterialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ImportKeyMaterialOutput, context: context)
      end
    end

    class IncorrectKeyException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IncorrectKeyException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncorrectKeyMaterialException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IncorrectKeyMaterialException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncorrectTrustAnchorException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IncorrectTrustAnchorException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAliasNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidAliasNameException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidArnException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCiphertextException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidCiphertextException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidGrantIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidGrantIdException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidGrantTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidGrantTokenException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidImportTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidImportTokenException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKeyUsageException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidKeyUsageException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMarkerException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidMarkerException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSInternalException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidMacException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSInvalidMacException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidSignatureException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSInvalidSignatureException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSInvalidStateException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeyListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KeyListEntry, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_arn], ::String, context: "#{context}[:key_arn]")
      end
    end

    class KeyMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KeyMetadata, context: context)
        Hearth::Validator.validate_types!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate_types!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate_types!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:key_usage], ::String, context: "#{context}[:key_usage]")
        Hearth::Validator.validate_types!(input[:key_state], ::String, context: "#{context}[:key_state]")
        Hearth::Validator.validate_types!(input[:deletion_date], ::Time, context: "#{context}[:deletion_date]")
        Hearth::Validator.validate_types!(input[:valid_to], ::Time, context: "#{context}[:valid_to]")
        Hearth::Validator.validate_types!(input[:origin], ::String, context: "#{context}[:origin]")
        Hearth::Validator.validate_types!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate_types!(input[:cloud_hsm_cluster_id], ::String, context: "#{context}[:cloud_hsm_cluster_id]")
        Hearth::Validator.validate_types!(input[:expiration_model], ::String, context: "#{context}[:expiration_model]")
        Hearth::Validator.validate_types!(input[:key_manager], ::String, context: "#{context}[:key_manager]")
        Hearth::Validator.validate_types!(input[:customer_master_key_spec], ::String, context: "#{context}[:customer_master_key_spec]")
        Hearth::Validator.validate_types!(input[:key_spec], ::String, context: "#{context}[:key_spec]")
        EncryptionAlgorithmSpecList.validate!(input[:encryption_algorithms], context: "#{context}[:encryption_algorithms]") unless input[:encryption_algorithms].nil?
        SigningAlgorithmSpecList.validate!(input[:signing_algorithms], context: "#{context}[:signing_algorithms]") unless input[:signing_algorithms].nil?
        Hearth::Validator.validate_types!(input[:multi_region], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region]")
        MultiRegionConfiguration.validate!(input[:multi_region_configuration], context: "#{context}[:multi_region_configuration]") unless input[:multi_region_configuration].nil?
        Hearth::Validator.validate_types!(input[:pending_deletion_window_in_days], ::Integer, context: "#{context}[:pending_deletion_window_in_days]")
        MacAlgorithmSpecList.validate!(input[:mac_algorithms], context: "#{context}[:mac_algorithms]") unless input[:mac_algorithms].nil?
        XksKeyConfigurationType.validate!(input[:xks_key_configuration], context: "#{context}[:xks_key_configuration]") unless input[:xks_key_configuration].nil?
      end
    end

    class KeyUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KeyUnavailableException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListAliasesInput, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListAliasesOutput, context: context)
        AliasList.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate_types!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ListGrantsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListGrantsInput, context: context)
        Hearth::Validator.validate_types!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:grant_id], ::String, context: "#{context}[:grant_id]")
        Hearth::Validator.validate_types!(input[:grantee_principal], ::String, context: "#{context}[:grantee_principal]")
      end
    end

    class ListGrantsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListGrantsOutput, context: context)
        GrantList.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate_types!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ListKeyPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListKeyPoliciesInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListKeyPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListKeyPoliciesOutput, context: context)
        PolicyNameList.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate_types!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ListKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListKeysInput, context: context)
        Hearth::Validator.validate_types!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListKeysOutput, context: context)
        KeyList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate_types!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ListResourceTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListResourceTagsInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListResourceTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListResourceTagsOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate_types!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ListRetirableGrantsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListRetirableGrantsInput, context: context)
        Hearth::Validator.validate_types!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_required!(input[:retiring_principal], context: "#{context}[:retiring_principal]")
        Hearth::Validator.validate_types!(input[:retiring_principal], ::String, context: "#{context}[:retiring_principal]")
      end
    end

    class ListRetirableGrantsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListRetirableGrantsOutput, context: context)
        GrantList.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate_types!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class MacAlgorithmSpecList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MalformedPolicyDocumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MalformedPolicyDocumentException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MultiRegionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MultiRegionConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:multi_region_key_type], ::String, context: "#{context}[:multi_region_key_type]")
        MultiRegionKey.validate!(input[:primary_key], context: "#{context}[:primary_key]") unless input[:primary_key].nil?
        MultiRegionKeyList.validate!(input[:replica_keys], context: "#{context}[:replica_keys]") unless input[:replica_keys].nil?
      end
    end

    class MultiRegionKey
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MultiRegionKey, context: context)
        Hearth::Validator.validate_types!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate_types!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class MultiRegionKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MultiRegionKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PutKeyPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutKeyPolicyInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:policy_name], context: "#{context}[:policy_name]")
        Hearth::Validator.validate_types!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate_required!(input[:policy], context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:bypass_policy_lockout_safety_check], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_policy_lockout_safety_check]")
      end
    end

    class PutKeyPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutKeyPolicyOutput, context: context)
      end
    end

    class ReEncryptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReEncryptInput, context: context)
        Hearth::Validator.validate_required!(input[:ciphertext_blob], context: "#{context}[:ciphertext_blob]")
        Hearth::Validator.validate_types!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        EncryptionContextType.validate!(input[:source_encryption_context], context: "#{context}[:source_encryption_context]") unless input[:source_encryption_context].nil?
        Hearth::Validator.validate_types!(input[:source_key_id], ::String, context: "#{context}[:source_key_id]")
        Hearth::Validator.validate_required!(input[:destination_key_id], context: "#{context}[:destination_key_id]")
        Hearth::Validator.validate_types!(input[:destination_key_id], ::String, context: "#{context}[:destination_key_id]")
        EncryptionContextType.validate!(input[:destination_encryption_context], context: "#{context}[:destination_encryption_context]") unless input[:destination_encryption_context].nil?
        Hearth::Validator.validate_types!(input[:source_encryption_algorithm], ::String, context: "#{context}[:source_encryption_algorithm]")
        Hearth::Validator.validate_types!(input[:destination_encryption_algorithm], ::String, context: "#{context}[:destination_encryption_algorithm]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ReEncryptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReEncryptOutput, context: context)
        Hearth::Validator.validate_types!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        Hearth::Validator.validate_types!(input[:source_key_id], ::String, context: "#{context}[:source_key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:source_encryption_algorithm], ::String, context: "#{context}[:source_encryption_algorithm]")
        Hearth::Validator.validate_types!(input[:destination_encryption_algorithm], ::String, context: "#{context}[:destination_encryption_algorithm]")
      end
    end

    class RecipientInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RecipientInfo, context: context)
        Hearth::Validator.validate_types!(input[:key_encryption_algorithm], ::String, context: "#{context}[:key_encryption_algorithm]")
        Hearth::Validator.validate_types!(input[:attestation_document], ::String, context: "#{context}[:attestation_document]")
      end
    end

    class ReplicateKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReplicateKeyInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:replica_region], context: "#{context}[:replica_region]")
        Hearth::Validator.validate_types!(input[:replica_region], ::String, context: "#{context}[:replica_region]")
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:bypass_policy_lockout_safety_check], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_policy_lockout_safety_check]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ReplicateKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReplicateKeyOutput, context: context)
        KeyMetadata.validate!(input[:replica_key_metadata], context: "#{context}[:replica_key_metadata]") unless input[:replica_key_metadata].nil?
        Hearth::Validator.validate_types!(input[:replica_policy], ::String, context: "#{context}[:replica_policy]")
        TagList.validate!(input[:replica_tags], context: "#{context}[:replica_tags]") unless input[:replica_tags].nil?
      end
    end

    class RetireGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RetireGrantInput, context: context)
        Hearth::Validator.validate_types!(input[:grant_token], ::String, context: "#{context}[:grant_token]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:grant_id], ::String, context: "#{context}[:grant_id]")
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RetireGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RetireGrantOutput, context: context)
      end
    end

    class RevokeGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RevokeGrantInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:grant_id], context: "#{context}[:grant_id]")
        Hearth::Validator.validate_types!(input[:grant_id], ::String, context: "#{context}[:grant_id]")
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class RevokeGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RevokeGrantOutput, context: context)
      end
    end

    class ScheduleKeyDeletionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ScheduleKeyDeletionInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:pending_window_in_days], ::Integer, context: "#{context}[:pending_window_in_days]")
      end
    end

    class ScheduleKeyDeletionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ScheduleKeyDeletionOutput, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:deletion_date], ::Time, context: "#{context}[:deletion_date]")
        Hearth::Validator.validate_types!(input[:key_state], ::String, context: "#{context}[:key_state]")
        Hearth::Validator.validate_types!(input[:pending_window_in_days], ::Integer, context: "#{context}[:pending_window_in_days]")
      end
    end

    class SignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SignInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message_type], ::String, context: "#{context}[:message_type]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate_required!(input[:signing_algorithm], context: "#{context}[:signing_algorithm]")
        Hearth::Validator.validate_types!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class SignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SignOutput, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:signature], ::String, context: "#{context}[:signature]")
        Hearth::Validator.validate_types!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
      end
    end

    class SigningAlgorithmSpecList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Tag, context: context)
        Hearth::Validator.validate_required!(input[:tag_key], context: "#{context}[:tag_key]")
        Hearth::Validator.validate_types!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Hearth::Validator.validate_required!(input[:tag_value], context: "#{context}[:tag_value]")
        Hearth::Validator.validate_types!(input[:tag_value], ::String, context: "#{context}[:tag_value]")
      end
    end

    class TagException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TagException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:tags], context: "#{context}[:tags]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UnsupportedOperationException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:tag_keys], context: "#{context}[:tag_keys]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateAliasInput, context: context)
        Hearth::Validator.validate_required!(input[:alias_name], context: "#{context}[:alias_name]")
        Hearth::Validator.validate_types!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate_required!(input[:target_key_id], context: "#{context}[:target_key_id]")
        Hearth::Validator.validate_types!(input[:target_key_id], ::String, context: "#{context}[:target_key_id]")
      end
    end

    class UpdateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateAliasOutput, context: context)
      end
    end

    class UpdateCustomKeyStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateCustomKeyStoreInput, context: context)
        Hearth::Validator.validate_required!(input[:custom_key_store_id], context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate_types!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate_types!(input[:new_custom_key_store_name], ::String, context: "#{context}[:new_custom_key_store_name]")
        Hearth::Validator.validate_types!(input[:key_store_password], ::String, context: "#{context}[:key_store_password]")
        Hearth::Validator.validate_types!(input[:cloud_hsm_cluster_id], ::String, context: "#{context}[:cloud_hsm_cluster_id]")
        Hearth::Validator.validate_types!(input[:xks_proxy_uri_endpoint], ::String, context: "#{context}[:xks_proxy_uri_endpoint]")
        Hearth::Validator.validate_types!(input[:xks_proxy_uri_path], ::String, context: "#{context}[:xks_proxy_uri_path]")
        Hearth::Validator.validate_types!(input[:xks_proxy_vpc_endpoint_service_name], ::String, context: "#{context}[:xks_proxy_vpc_endpoint_service_name]")
        XksProxyAuthenticationCredentialType.validate!(input[:xks_proxy_authentication_credential], context: "#{context}[:xks_proxy_authentication_credential]") unless input[:xks_proxy_authentication_credential].nil?
        Hearth::Validator.validate_types!(input[:xks_proxy_connectivity], ::String, context: "#{context}[:xks_proxy_connectivity]")
      end
    end

    class UpdateCustomKeyStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateCustomKeyStoreOutput, context: context)
      end
    end

    class UpdateKeyDescriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateKeyDescriptionInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:description], context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateKeyDescriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateKeyDescriptionOutput, context: context)
      end
    end

    class UpdatePrimaryRegionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdatePrimaryRegionInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:primary_region], context: "#{context}[:primary_region]")
        Hearth::Validator.validate_types!(input[:primary_region], ::String, context: "#{context}[:primary_region]")
      end
    end

    class UpdatePrimaryRegionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdatePrimaryRegionOutput, context: context)
      end
    end

    class VerifyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::VerifyInput, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate_required!(input[:signature], context: "#{context}[:signature]")
        Hearth::Validator.validate_types!(input[:signature], ::String, context: "#{context}[:signature]")
        Hearth::Validator.validate_required!(input[:signing_algorithm], context: "#{context}[:signing_algorithm]")
        Hearth::Validator.validate_types!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class VerifyMacInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::VerifyMacInput, context: context)
        Hearth::Validator.validate_required!(input[:message], context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_required!(input[:mac_algorithm], context: "#{context}[:mac_algorithm]")
        Hearth::Validator.validate_types!(input[:mac_algorithm], ::String, context: "#{context}[:mac_algorithm]")
        Hearth::Validator.validate_required!(input[:mac], context: "#{context}[:mac]")
        Hearth::Validator.validate_types!(input[:mac], ::String, context: "#{context}[:mac]")
        GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class VerifyMacOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::VerifyMacOutput, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:mac_valid], ::TrueClass, ::FalseClass, context: "#{context}[:mac_valid]")
        Hearth::Validator.validate_types!(input[:mac_algorithm], ::String, context: "#{context}[:mac_algorithm]")
      end
    end

    class VerifyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::VerifyOutput, context: context)
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:signature_valid], ::TrueClass, ::FalseClass, context: "#{context}[:signature_valid]")
        Hearth::Validator.validate_types!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
      end
    end

    class XksKeyAlreadyInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksKeyAlreadyInUseException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksKeyConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksKeyConfigurationType, context: context)
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class XksKeyInvalidConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksKeyInvalidConfigurationException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksKeyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksKeyNotFoundException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksProxyAuthenticationCredentialType
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyAuthenticationCredentialType, context: context)
        Hearth::Validator.validate_required!(input[:access_key_id], context: "#{context}[:access_key_id]")
        Hearth::Validator.validate_types!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate_required!(input[:raw_secret_access_key], context: "#{context}[:raw_secret_access_key]")
        Hearth::Validator.validate_types!(input[:raw_secret_access_key], ::String, context: "#{context}[:raw_secret_access_key]")
      end
    end

    class XksProxyConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyConfigurationType, context: context)
        Hearth::Validator.validate_types!(input[:connectivity], ::String, context: "#{context}[:connectivity]")
        Hearth::Validator.validate_types!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate_types!(input[:uri_endpoint], ::String, context: "#{context}[:uri_endpoint]")
        Hearth::Validator.validate_types!(input[:uri_path], ::String, context: "#{context}[:uri_path]")
        Hearth::Validator.validate_types!(input[:vpc_endpoint_service_name], ::String, context: "#{context}[:vpc_endpoint_service_name]")
      end
    end

    class XksProxyIncorrectAuthenticationCredentialException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyIncorrectAuthenticationCredentialException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksProxyInvalidConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyInvalidConfigurationException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksProxyInvalidResponseException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyInvalidResponseException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksProxyUriEndpointInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyUriEndpointInUseException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksProxyUriInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyUriInUseException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksProxyUriUnreachableException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyUriUnreachableException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksProxyVpcEndpointServiceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyVpcEndpointServiceInUseException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksProxyVpcEndpointServiceInvalidConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyVpcEndpointServiceInvalidConfigurationException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class XksProxyVpcEndpointServiceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::XksProxyVpcEndpointServiceNotFoundException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
