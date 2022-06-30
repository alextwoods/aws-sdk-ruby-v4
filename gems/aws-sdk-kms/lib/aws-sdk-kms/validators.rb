# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
  module Validators

    class AliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AliasListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AliasListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AliasListEntry, context: context)
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate!(input[:target_key_id], ::String, context: "#{context}[:target_key_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
      end
    end

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelKeyDeletionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelKeyDeletionInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class CancelKeyDeletionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelKeyDeletionOutput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class CloudHsmClusterInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmClusterInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmClusterInvalidConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmClusterInvalidConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmClusterNotActiveException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmClusterNotActiveException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmClusterNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmClusterNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmClusterNotRelatedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmClusterNotRelatedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectCustomKeyStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectCustomKeyStoreInput, context: context)
        Hearth::Validator.validate!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
      end
    end

    class ConnectCustomKeyStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectCustomKeyStoreOutput, context: context)
      end
    end

    class CreateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasInput, context: context)
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:target_key_id], ::String, context: "#{context}[:target_key_id]")
      end
    end

    class CreateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasOutput, context: context)
      end
    end

    class CreateCustomKeyStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomKeyStoreInput, context: context)
        Hearth::Validator.validate!(input[:custom_key_store_name], ::String, context: "#{context}[:custom_key_store_name]")
        Hearth::Validator.validate!(input[:cloud_hsm_cluster_id], ::String, context: "#{context}[:cloud_hsm_cluster_id]")
        Hearth::Validator.validate!(input[:trust_anchor_certificate], ::String, context: "#{context}[:trust_anchor_certificate]")
        Hearth::Validator.validate!(input[:key_store_password], ::String, context: "#{context}[:key_store_password]")
      end
    end

    class CreateCustomKeyStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomKeyStoreOutput, context: context)
        Hearth::Validator.validate!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
      end
    end

    class CreateGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGrantInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:grantee_principal], ::String, context: "#{context}[:grantee_principal]")
        Hearth::Validator.validate!(input[:retiring_principal], ::String, context: "#{context}[:retiring_principal]")
        Validators::GrantOperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        Validators::GrantConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGrantOutput, context: context)
        Hearth::Validator.validate!(input[:grant_token], ::String, context: "#{context}[:grant_token]")
        Hearth::Validator.validate!(input[:grant_id], ::String, context: "#{context}[:grant_id]")
      end
    end

    class CreateKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeyInput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:key_usage], ::String, context: "#{context}[:key_usage]")
        Hearth::Validator.validate!(input[:customer_master_key_spec], ::String, context: "#{context}[:customer_master_key_spec]")
        Hearth::Validator.validate!(input[:key_spec], ::String, context: "#{context}[:key_spec]")
        Hearth::Validator.validate!(input[:origin], ::String, context: "#{context}[:origin]")
        Hearth::Validator.validate!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate!(input[:bypass_policy_lockout_safety_check], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_policy_lockout_safety_check]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:multi_region], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region]")
      end
    end

    class CreateKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeyOutput, context: context)
        Validators::KeyMetadata.validate!(input[:key_metadata], context: "#{context}[:key_metadata]") unless input[:key_metadata].nil?
      end
    end

    class CustomKeyStoreHasCMKsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomKeyStoreHasCMKsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomKeyStoreInvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomKeyStoreInvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomKeyStoreNameInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomKeyStoreNameInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomKeyStoreNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomKeyStoreNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomKeyStoresList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomKeyStoresListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomKeyStoresListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomKeyStoresListEntry, context: context)
        Hearth::Validator.validate!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate!(input[:custom_key_store_name], ::String, context: "#{context}[:custom_key_store_name]")
        Hearth::Validator.validate!(input[:cloud_hsm_cluster_id], ::String, context: "#{context}[:cloud_hsm_cluster_id]")
        Hearth::Validator.validate!(input[:trust_anchor_certificate], ::String, context: "#{context}[:trust_anchor_certificate]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:connection_error_code], ::String, context: "#{context}[:connection_error_code]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class DecryptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecryptInput, context: context)
        Hearth::Validator.validate!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        Validators::EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:encryption_algorithm], ::String, context: "#{context}[:encryption_algorithm]")
      end
    end

    class DecryptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecryptOutput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:plaintext], ::String, context: "#{context}[:plaintext]")
        Hearth::Validator.validate!(input[:encryption_algorithm], ::String, context: "#{context}[:encryption_algorithm]")
      end
    end

    class DeleteAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAliasInput, context: context)
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
      end
    end

    class DeleteAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAliasOutput, context: context)
      end
    end

    class DeleteCustomKeyStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomKeyStoreInput, context: context)
        Hearth::Validator.validate!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
      end
    end

    class DeleteCustomKeyStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomKeyStoreOutput, context: context)
      end
    end

    class DeleteImportedKeyMaterialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImportedKeyMaterialInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class DeleteImportedKeyMaterialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImportedKeyMaterialOutput, context: context)
      end
    end

    class DependencyTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependencyTimeoutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DescribeCustomKeyStoresInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomKeyStoresInput, context: context)
        Hearth::Validator.validate!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate!(input[:custom_key_store_name], ::String, context: "#{context}[:custom_key_store_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCustomKeyStoresOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomKeyStoresOutput, context: context)
        Validators::CustomKeyStoresList.validate!(input[:custom_key_stores], context: "#{context}[:custom_key_stores]") unless input[:custom_key_stores].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class DescribeKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeKeyInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class DescribeKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeKeyOutput, context: context)
        Validators::KeyMetadata.validate!(input[:key_metadata], context: "#{context}[:key_metadata]") unless input[:key_metadata].nil?
      end
    end

    class DisableKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableKeyInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class DisableKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableKeyOutput, context: context)
      end
    end

    class DisableKeyRotationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableKeyRotationInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class DisableKeyRotationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableKeyRotationOutput, context: context)
      end
    end

    class DisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisconnectCustomKeyStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectCustomKeyStoreInput, context: context)
        Hearth::Validator.validate!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
      end
    end

    class DisconnectCustomKeyStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectCustomKeyStoreOutput, context: context)
      end
    end

    class EnableKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableKeyInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class EnableKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableKeyOutput, context: context)
      end
    end

    class EnableKeyRotationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableKeyRotationInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class EnableKeyRotationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableKeyRotationOutput, context: context)
      end
    end

    class EncryptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:plaintext], ::String, context: "#{context}[:plaintext]")
        Validators::EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate!(input[:encryption_algorithm], ::String, context: "#{context}[:encryption_algorithm]")
      end
    end

    class EncryptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptOutput, context: context)
        Hearth::Validator.validate!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:encryption_algorithm], ::String, context: "#{context}[:encryption_algorithm]")
      end
    end

    class EncryptionAlgorithmSpecList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EncryptionContextType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExpiredImportTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredImportTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GenerateDataKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateDataKeyInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Validators::EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        Hearth::Validator.validate!(input[:number_of_bytes], ::Integer, context: "#{context}[:number_of_bytes]")
        Hearth::Validator.validate!(input[:key_spec], ::String, context: "#{context}[:key_spec]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class GenerateDataKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateDataKeyOutput, context: context)
        Hearth::Validator.validate!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        Hearth::Validator.validate!(input[:plaintext], ::String, context: "#{context}[:plaintext]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class GenerateDataKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateDataKeyPairInput, context: context)
        Validators::EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:key_pair_spec], ::String, context: "#{context}[:key_pair_spec]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class GenerateDataKeyPairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateDataKeyPairOutput, context: context)
        Hearth::Validator.validate!(input[:private_key_ciphertext_blob], ::String, context: "#{context}[:private_key_ciphertext_blob]")
        Hearth::Validator.validate!(input[:private_key_plaintext], ::String, context: "#{context}[:private_key_plaintext]")
        Hearth::Validator.validate!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:key_pair_spec], ::String, context: "#{context}[:key_pair_spec]")
      end
    end

    class GenerateDataKeyPairWithoutPlaintextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateDataKeyPairWithoutPlaintextInput, context: context)
        Validators::EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:key_pair_spec], ::String, context: "#{context}[:key_pair_spec]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class GenerateDataKeyPairWithoutPlaintextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateDataKeyPairWithoutPlaintextOutput, context: context)
        Hearth::Validator.validate!(input[:private_key_ciphertext_blob], ::String, context: "#{context}[:private_key_ciphertext_blob]")
        Hearth::Validator.validate!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:key_pair_spec], ::String, context: "#{context}[:key_pair_spec]")
      end
    end

    class GenerateDataKeyWithoutPlaintextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateDataKeyWithoutPlaintextInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Validators::EncryptionContextType.validate!(input[:encryption_context], context: "#{context}[:encryption_context]") unless input[:encryption_context].nil?
        Hearth::Validator.validate!(input[:key_spec], ::String, context: "#{context}[:key_spec]")
        Hearth::Validator.validate!(input[:number_of_bytes], ::Integer, context: "#{context}[:number_of_bytes]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class GenerateDataKeyWithoutPlaintextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateDataKeyWithoutPlaintextOutput, context: context)
        Hearth::Validator.validate!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class GenerateMacInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateMacInput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:mac_algorithm], ::String, context: "#{context}[:mac_algorithm]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class GenerateMacOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateMacOutput, context: context)
        Hearth::Validator.validate!(input[:mac], ::String, context: "#{context}[:mac]")
        Hearth::Validator.validate!(input[:mac_algorithm], ::String, context: "#{context}[:mac_algorithm]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class GenerateRandomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateRandomInput, context: context)
        Hearth::Validator.validate!(input[:number_of_bytes], ::Integer, context: "#{context}[:number_of_bytes]")
        Hearth::Validator.validate!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
      end
    end

    class GenerateRandomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateRandomOutput, context: context)
        Hearth::Validator.validate!(input[:plaintext], ::String, context: "#{context}[:plaintext]")
      end
    end

    class GetKeyPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyPolicyInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class GetKeyPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetKeyRotationStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyRotationStatusInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class GetKeyRotationStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyRotationStatusOutput, context: context)
        Hearth::Validator.validate!(input[:key_rotation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:key_rotation_enabled]")
      end
    end

    class GetParametersForImportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParametersForImportInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:wrapping_algorithm], ::String, context: "#{context}[:wrapping_algorithm]")
        Hearth::Validator.validate!(input[:wrapping_key_spec], ::String, context: "#{context}[:wrapping_key_spec]")
      end
    end

    class GetParametersForImportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParametersForImportOutput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:import_token], ::String, context: "#{context}[:import_token]")
        Hearth::Validator.validate!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate!(input[:parameters_valid_to], ::Time, context: "#{context}[:parameters_valid_to]")
      end
    end

    class GetPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class GetPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicKeyOutput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate!(input[:customer_master_key_spec], ::String, context: "#{context}[:customer_master_key_spec]")
        Hearth::Validator.validate!(input[:key_spec], ::String, context: "#{context}[:key_spec]")
        Hearth::Validator.validate!(input[:key_usage], ::String, context: "#{context}[:key_usage]")
        Validators::EncryptionAlgorithmSpecList.validate!(input[:encryption_algorithms], context: "#{context}[:encryption_algorithms]") unless input[:encryption_algorithms].nil?
        Validators::SigningAlgorithmSpecList.validate!(input[:signing_algorithms], context: "#{context}[:signing_algorithms]") unless input[:signing_algorithms].nil?
      end
    end

    class GrantConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantConstraints, context: context)
        Validators::EncryptionContextType.validate!(input[:encryption_context_subset], context: "#{context}[:encryption_context_subset]") unless input[:encryption_context_subset].nil?
        Validators::EncryptionContextType.validate!(input[:encryption_context_equals], context: "#{context}[:encryption_context_equals]") unless input[:encryption_context_equals].nil?
      end
    end

    class GrantList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GrantListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GrantListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantListEntry, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:grant_id], ::String, context: "#{context}[:grant_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:grantee_principal], ::String, context: "#{context}[:grantee_principal]")
        Hearth::Validator.validate!(input[:retiring_principal], ::String, context: "#{context}[:retiring_principal]")
        Hearth::Validator.validate!(input[:issuing_account], ::String, context: "#{context}[:issuing_account]")
        Validators::GrantOperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        Validators::GrantConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
      end
    end

    class GrantOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GrantTokenList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportKeyMaterialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportKeyMaterialInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:import_token], ::String, context: "#{context}[:import_token]")
        Hearth::Validator.validate!(input[:encrypted_key_material], ::String, context: "#{context}[:encrypted_key_material]")
        Hearth::Validator.validate!(input[:valid_to], ::Time, context: "#{context}[:valid_to]")
        Hearth::Validator.validate!(input[:expiration_model], ::String, context: "#{context}[:expiration_model]")
      end
    end

    class ImportKeyMaterialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportKeyMaterialOutput, context: context)
      end
    end

    class IncorrectKeyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncorrectKeyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncorrectKeyMaterialException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncorrectKeyMaterialException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncorrectTrustAnchorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncorrectTrustAnchorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAliasNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAliasNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCiphertextException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCiphertextException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidGrantIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGrantIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidGrantTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGrantTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidImportTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidImportTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKeyUsageException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKeyUsageException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMarkerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidMarkerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSInternalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidMacException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSInvalidMacException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidSignatureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSInvalidSignatureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSInvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KeyListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeyListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyListEntry, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:key_arn], ::String, context: "#{context}[:key_arn]")
      end
    end

    class KeyMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyMetadata, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:key_usage], ::String, context: "#{context}[:key_usage]")
        Hearth::Validator.validate!(input[:key_state], ::String, context: "#{context}[:key_state]")
        Hearth::Validator.validate!(input[:deletion_date], ::Time, context: "#{context}[:deletion_date]")
        Hearth::Validator.validate!(input[:valid_to], ::Time, context: "#{context}[:valid_to]")
        Hearth::Validator.validate!(input[:origin], ::String, context: "#{context}[:origin]")
        Hearth::Validator.validate!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate!(input[:cloud_hsm_cluster_id], ::String, context: "#{context}[:cloud_hsm_cluster_id]")
        Hearth::Validator.validate!(input[:expiration_model], ::String, context: "#{context}[:expiration_model]")
        Hearth::Validator.validate!(input[:key_manager], ::String, context: "#{context}[:key_manager]")
        Hearth::Validator.validate!(input[:customer_master_key_spec], ::String, context: "#{context}[:customer_master_key_spec]")
        Hearth::Validator.validate!(input[:key_spec], ::String, context: "#{context}[:key_spec]")
        Validators::EncryptionAlgorithmSpecList.validate!(input[:encryption_algorithms], context: "#{context}[:encryption_algorithms]") unless input[:encryption_algorithms].nil?
        Validators::SigningAlgorithmSpecList.validate!(input[:signing_algorithms], context: "#{context}[:signing_algorithms]") unless input[:signing_algorithms].nil?
        Hearth::Validator.validate!(input[:multi_region], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region]")
        Validators::MultiRegionConfiguration.validate!(input[:multi_region_configuration], context: "#{context}[:multi_region_configuration]") unless input[:multi_region_configuration].nil?
        Hearth::Validator.validate!(input[:pending_deletion_window_in_days], ::Integer, context: "#{context}[:pending_deletion_window_in_days]")
        Validators::MacAlgorithmSpecList.validate!(input[:mac_algorithms], context: "#{context}[:mac_algorithms]") unless input[:mac_algorithms].nil?
      end
    end

    class KeyUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAliasesInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAliasesOutput, context: context)
        Validators::AliasList.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ListGrantsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGrantsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:grant_id], ::String, context: "#{context}[:grant_id]")
        Hearth::Validator.validate!(input[:grantee_principal], ::String, context: "#{context}[:grantee_principal]")
      end
    end

    class ListGrantsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGrantsOutput, context: context)
        Validators::GrantList.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ListKeyPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeyPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListKeyPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeyPoliciesOutput, context: context)
        Validators::PolicyNameList.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ListKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeysInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeysOutput, context: context)
        Validators::KeyList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ListResourceTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceTagsInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListResourceTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceTagsOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ListRetirableGrantsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRetirableGrantsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:retiring_principal], ::String, context: "#{context}[:retiring_principal]")
      end
    end

    class ListRetirableGrantsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRetirableGrantsOutput, context: context)
        Validators::GrantList.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class MacAlgorithmSpecList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MalformedPolicyDocumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedPolicyDocumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MultiRegionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiRegionConfiguration, context: context)
        Hearth::Validator.validate!(input[:multi_region_key_type], ::String, context: "#{context}[:multi_region_key_type]")
        Validators::MultiRegionKey.validate!(input[:primary_key], context: "#{context}[:primary_key]") unless input[:primary_key].nil?
        Validators::MultiRegionKeyList.validate!(input[:replica_keys], context: "#{context}[:replica_keys]") unless input[:replica_keys].nil?
      end
    end

    class MultiRegionKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiRegionKey, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class MultiRegionKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MultiRegionKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PutKeyPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutKeyPolicyInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:bypass_policy_lockout_safety_check], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_policy_lockout_safety_check]")
      end
    end

    class PutKeyPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutKeyPolicyOutput, context: context)
      end
    end

    class ReEncryptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReEncryptInput, context: context)
        Hearth::Validator.validate!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        Validators::EncryptionContextType.validate!(input[:source_encryption_context], context: "#{context}[:source_encryption_context]") unless input[:source_encryption_context].nil?
        Hearth::Validator.validate!(input[:source_key_id], ::String, context: "#{context}[:source_key_id]")
        Hearth::Validator.validate!(input[:destination_key_id], ::String, context: "#{context}[:destination_key_id]")
        Validators::EncryptionContextType.validate!(input[:destination_encryption_context], context: "#{context}[:destination_encryption_context]") unless input[:destination_encryption_context].nil?
        Hearth::Validator.validate!(input[:source_encryption_algorithm], ::String, context: "#{context}[:source_encryption_algorithm]")
        Hearth::Validator.validate!(input[:destination_encryption_algorithm], ::String, context: "#{context}[:destination_encryption_algorithm]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class ReEncryptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReEncryptOutput, context: context)
        Hearth::Validator.validate!(input[:ciphertext_blob], ::String, context: "#{context}[:ciphertext_blob]")
        Hearth::Validator.validate!(input[:source_key_id], ::String, context: "#{context}[:source_key_id]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:source_encryption_algorithm], ::String, context: "#{context}[:source_encryption_algorithm]")
        Hearth::Validator.validate!(input[:destination_encryption_algorithm], ::String, context: "#{context}[:destination_encryption_algorithm]")
      end
    end

    class ReplicateKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicateKeyInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:replica_region], ::String, context: "#{context}[:replica_region]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:bypass_policy_lockout_safety_check], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_policy_lockout_safety_check]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ReplicateKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicateKeyOutput, context: context)
        Validators::KeyMetadata.validate!(input[:replica_key_metadata], context: "#{context}[:replica_key_metadata]") unless input[:replica_key_metadata].nil?
        Hearth::Validator.validate!(input[:replica_policy], ::String, context: "#{context}[:replica_policy]")
        Validators::TagList.validate!(input[:replica_tags], context: "#{context}[:replica_tags]") unless input[:replica_tags].nil?
      end
    end

    class RetireGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetireGrantInput, context: context)
        Hearth::Validator.validate!(input[:grant_token], ::String, context: "#{context}[:grant_token]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:grant_id], ::String, context: "#{context}[:grant_id]")
      end
    end

    class RetireGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetireGrantOutput, context: context)
      end
    end

    class RevokeGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeGrantInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:grant_id], ::String, context: "#{context}[:grant_id]")
      end
    end

    class RevokeGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeGrantOutput, context: context)
      end
    end

    class ScheduleKeyDeletionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleKeyDeletionInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:pending_window_in_days], ::Integer, context: "#{context}[:pending_window_in_days]")
      end
    end

    class ScheduleKeyDeletionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleKeyDeletionOutput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:deletion_date], ::Time, context: "#{context}[:deletion_date]")
        Hearth::Validator.validate!(input[:key_state], ::String, context: "#{context}[:key_state]")
        Hearth::Validator.validate!(input[:pending_window_in_days], ::Integer, context: "#{context}[:pending_window_in_days]")
      end
    end

    class SignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
        Hearth::Validator.validate!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
      end
    end

    class SignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignOutput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
        Hearth::Validator.validate!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
      end
    end

    class SigningAlgorithmSpecList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Hearth::Validator.validate!(input[:tag_value], ::String, context: "#{context}[:tag_value]")
      end
    end

    class TagException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAliasInput, context: context)
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:target_key_id], ::String, context: "#{context}[:target_key_id]")
      end
    end

    class UpdateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAliasOutput, context: context)
      end
    end

    class UpdateCustomKeyStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomKeyStoreInput, context: context)
        Hearth::Validator.validate!(input[:custom_key_store_id], ::String, context: "#{context}[:custom_key_store_id]")
        Hearth::Validator.validate!(input[:new_custom_key_store_name], ::String, context: "#{context}[:new_custom_key_store_name]")
        Hearth::Validator.validate!(input[:key_store_password], ::String, context: "#{context}[:key_store_password]")
        Hearth::Validator.validate!(input[:cloud_hsm_cluster_id], ::String, context: "#{context}[:cloud_hsm_cluster_id]")
      end
    end

    class UpdateCustomKeyStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomKeyStoreOutput, context: context)
      end
    end

    class UpdateKeyDescriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateKeyDescriptionInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateKeyDescriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateKeyDescriptionOutput, context: context)
      end
    end

    class UpdatePrimaryRegionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePrimaryRegionInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:primary_region], ::String, context: "#{context}[:primary_region]")
      end
    end

    class UpdatePrimaryRegionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePrimaryRegionOutput, context: context)
      end
    end

    class VerifyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyInput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
        Hearth::Validator.validate!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class VerifyMacInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyMacInput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:mac_algorithm], ::String, context: "#{context}[:mac_algorithm]")
        Hearth::Validator.validate!(input[:mac], ::String, context: "#{context}[:mac]")
        Validators::GrantTokenList.validate!(input[:grant_tokens], context: "#{context}[:grant_tokens]") unless input[:grant_tokens].nil?
      end
    end

    class VerifyMacOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyMacOutput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:mac_valid], ::TrueClass, ::FalseClass, context: "#{context}[:mac_valid]")
        Hearth::Validator.validate!(input[:mac_algorithm], ::String, context: "#{context}[:mac_algorithm]")
      end
    end

    class VerifyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyOutput, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:signature_valid], ::TrueClass, ::FalseClass, context: "#{context}[:signature_valid]")
        Hearth::Validator.validate!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
      end
    end

  end
end
