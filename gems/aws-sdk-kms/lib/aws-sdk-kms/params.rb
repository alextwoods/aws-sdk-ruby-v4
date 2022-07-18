# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
  module Params

    module AliasList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AliasListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AliasListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AliasListEntry, context: context)
        type = Types::AliasListEntry.new
        type.alias_name = params[:alias_name]
        type.alias_arn = params[:alias_arn]
        type.target_key_id = params[:target_key_id]
        type.creation_date = params[:creation_date]
        type.last_updated_date = params[:last_updated_date]
        type
      end
    end

    module AlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module CancelKeyDeletionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelKeyDeletionInput, context: context)
        type = Types::CancelKeyDeletionInput.new
        type.key_id = params[:key_id]
        type
      end
    end

    module CancelKeyDeletionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelKeyDeletionOutput, context: context)
        type = Types::CancelKeyDeletionOutput.new
        type.key_id = params[:key_id]
        type
      end
    end

    module CloudHsmClusterInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmClusterInUseException, context: context)
        type = Types::CloudHsmClusterInUseException.new
        type.message = params[:message]
        type
      end
    end

    module CloudHsmClusterInvalidConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmClusterInvalidConfigurationException, context: context)
        type = Types::CloudHsmClusterInvalidConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module CloudHsmClusterNotActiveException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmClusterNotActiveException, context: context)
        type = Types::CloudHsmClusterNotActiveException.new
        type.message = params[:message]
        type
      end
    end

    module CloudHsmClusterNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmClusterNotFoundException, context: context)
        type = Types::CloudHsmClusterNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module CloudHsmClusterNotRelatedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmClusterNotRelatedException, context: context)
        type = Types::CloudHsmClusterNotRelatedException.new
        type.message = params[:message]
        type
      end
    end

    module ConnectCustomKeyStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectCustomKeyStoreInput, context: context)
        type = Types::ConnectCustomKeyStoreInput.new
        type.custom_key_store_id = params[:custom_key_store_id]
        type
      end
    end

    module ConnectCustomKeyStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectCustomKeyStoreOutput, context: context)
        type = Types::ConnectCustomKeyStoreOutput.new
        type
      end
    end

    module CreateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasInput, context: context)
        type = Types::CreateAliasInput.new
        type.alias_name = params[:alias_name]
        type.target_key_id = params[:target_key_id]
        type
      end
    end

    module CreateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasOutput, context: context)
        type = Types::CreateAliasOutput.new
        type
      end
    end

    module CreateCustomKeyStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomKeyStoreInput, context: context)
        type = Types::CreateCustomKeyStoreInput.new
        type.custom_key_store_name = params[:custom_key_store_name]
        type.cloud_hsm_cluster_id = params[:cloud_hsm_cluster_id]
        type.trust_anchor_certificate = params[:trust_anchor_certificate]
        type.key_store_password = params[:key_store_password]
        type
      end
    end

    module CreateCustomKeyStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomKeyStoreOutput, context: context)
        type = Types::CreateCustomKeyStoreOutput.new
        type.custom_key_store_id = params[:custom_key_store_id]
        type
      end
    end

    module CreateGrantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGrantInput, context: context)
        type = Types::CreateGrantInput.new
        type.key_id = params[:key_id]
        type.grantee_principal = params[:grantee_principal]
        type.retiring_principal = params[:retiring_principal]
        type.operations = GrantOperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.constraints = GrantConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.name = params[:name]
        type
      end
    end

    module CreateGrantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGrantOutput, context: context)
        type = Types::CreateGrantOutput.new
        type.grant_token = params[:grant_token]
        type.grant_id = params[:grant_id]
        type
      end
    end

    module CreateKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeyInput, context: context)
        type = Types::CreateKeyInput.new
        type.policy = params[:policy]
        type.description = params[:description]
        type.key_usage = params[:key_usage]
        type.customer_master_key_spec = params[:customer_master_key_spec]
        type.key_spec = params[:key_spec]
        type.origin = params[:origin]
        type.custom_key_store_id = params[:custom_key_store_id]
        type.bypass_policy_lockout_safety_check = params[:bypass_policy_lockout_safety_check]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.multi_region = params[:multi_region]
        type
      end
    end

    module CreateKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeyOutput, context: context)
        type = Types::CreateKeyOutput.new
        type.key_metadata = KeyMetadata.build(params[:key_metadata], context: "#{context}[:key_metadata]") unless params[:key_metadata].nil?
        type
      end
    end

    module CustomKeyStoreHasCMKsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomKeyStoreHasCMKsException, context: context)
        type = Types::CustomKeyStoreHasCMKsException.new
        type.message = params[:message]
        type
      end
    end

    module CustomKeyStoreInvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomKeyStoreInvalidStateException, context: context)
        type = Types::CustomKeyStoreInvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module CustomKeyStoreNameInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomKeyStoreNameInUseException, context: context)
        type = Types::CustomKeyStoreNameInUseException.new
        type.message = params[:message]
        type
      end
    end

    module CustomKeyStoreNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomKeyStoreNotFoundException, context: context)
        type = Types::CustomKeyStoreNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module CustomKeyStoresList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomKeyStoresListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomKeyStoresListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomKeyStoresListEntry, context: context)
        type = Types::CustomKeyStoresListEntry.new
        type.custom_key_store_id = params[:custom_key_store_id]
        type.custom_key_store_name = params[:custom_key_store_name]
        type.cloud_hsm_cluster_id = params[:cloud_hsm_cluster_id]
        type.trust_anchor_certificate = params[:trust_anchor_certificate]
        type.connection_state = params[:connection_state]
        type.connection_error_code = params[:connection_error_code]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module DecryptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecryptInput, context: context)
        type = Types::DecryptInput.new
        type.ciphertext_blob = params[:ciphertext_blob]
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.key_id = params[:key_id]
        type.encryption_algorithm = params[:encryption_algorithm]
        type
      end
    end

    module DecryptOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecryptOutput, context: context)
        type = Types::DecryptOutput.new
        type.key_id = params[:key_id]
        type.plaintext = params[:plaintext]
        type.encryption_algorithm = params[:encryption_algorithm]
        type
      end
    end

    module DeleteAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAliasInput, context: context)
        type = Types::DeleteAliasInput.new
        type.alias_name = params[:alias_name]
        type
      end
    end

    module DeleteAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAliasOutput, context: context)
        type = Types::DeleteAliasOutput.new
        type
      end
    end

    module DeleteCustomKeyStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomKeyStoreInput, context: context)
        type = Types::DeleteCustomKeyStoreInput.new
        type.custom_key_store_id = params[:custom_key_store_id]
        type
      end
    end

    module DeleteCustomKeyStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomKeyStoreOutput, context: context)
        type = Types::DeleteCustomKeyStoreOutput.new
        type
      end
    end

    module DeleteImportedKeyMaterialInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImportedKeyMaterialInput, context: context)
        type = Types::DeleteImportedKeyMaterialInput.new
        type.key_id = params[:key_id]
        type
      end
    end

    module DeleteImportedKeyMaterialOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImportedKeyMaterialOutput, context: context)
        type = Types::DeleteImportedKeyMaterialOutput.new
        type
      end
    end

    module DependencyTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependencyTimeoutException, context: context)
        type = Types::DependencyTimeoutException.new
        type.message = params[:message]
        type
      end
    end

    module DescribeCustomKeyStoresInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomKeyStoresInput, context: context)
        type = Types::DescribeCustomKeyStoresInput.new
        type.custom_key_store_id = params[:custom_key_store_id]
        type.custom_key_store_name = params[:custom_key_store_name]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeCustomKeyStoresOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomKeyStoresOutput, context: context)
        type = Types::DescribeCustomKeyStoresOutput.new
        type.custom_key_stores = CustomKeyStoresList.build(params[:custom_key_stores], context: "#{context}[:custom_key_stores]") unless params[:custom_key_stores].nil?
        type.next_marker = params[:next_marker]
        type.truncated = params[:truncated]
        type
      end
    end

    module DescribeKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeKeyInput, context: context)
        type = Types::DescribeKeyInput.new
        type.key_id = params[:key_id]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    module DescribeKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeKeyOutput, context: context)
        type = Types::DescribeKeyOutput.new
        type.key_metadata = KeyMetadata.build(params[:key_metadata], context: "#{context}[:key_metadata]") unless params[:key_metadata].nil?
        type
      end
    end

    module DisableKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableKeyInput, context: context)
        type = Types::DisableKeyInput.new
        type.key_id = params[:key_id]
        type
      end
    end

    module DisableKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableKeyOutput, context: context)
        type = Types::DisableKeyOutput.new
        type
      end
    end

    module DisableKeyRotationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableKeyRotationInput, context: context)
        type = Types::DisableKeyRotationInput.new
        type.key_id = params[:key_id]
        type
      end
    end

    module DisableKeyRotationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableKeyRotationOutput, context: context)
        type = Types::DisableKeyRotationOutput.new
        type
      end
    end

    module DisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisabledException, context: context)
        type = Types::DisabledException.new
        type.message = params[:message]
        type
      end
    end

    module DisconnectCustomKeyStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectCustomKeyStoreInput, context: context)
        type = Types::DisconnectCustomKeyStoreInput.new
        type.custom_key_store_id = params[:custom_key_store_id]
        type
      end
    end

    module DisconnectCustomKeyStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectCustomKeyStoreOutput, context: context)
        type = Types::DisconnectCustomKeyStoreOutput.new
        type
      end
    end

    module EnableKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableKeyInput, context: context)
        type = Types::EnableKeyInput.new
        type.key_id = params[:key_id]
        type
      end
    end

    module EnableKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableKeyOutput, context: context)
        type = Types::EnableKeyOutput.new
        type
      end
    end

    module EnableKeyRotationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableKeyRotationInput, context: context)
        type = Types::EnableKeyRotationInput.new
        type.key_id = params[:key_id]
        type
      end
    end

    module EnableKeyRotationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableKeyRotationOutput, context: context)
        type = Types::EnableKeyRotationOutput.new
        type
      end
    end

    module EncryptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptInput, context: context)
        type = Types::EncryptInput.new
        type.key_id = params[:key_id]
        type.plaintext = params[:plaintext]
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.encryption_algorithm = params[:encryption_algorithm]
        type
      end
    end

    module EncryptOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptOutput, context: context)
        type = Types::EncryptOutput.new
        type.ciphertext_blob = params[:ciphertext_blob]
        type.key_id = params[:key_id]
        type.encryption_algorithm = params[:encryption_algorithm]
        type
      end
    end

    module EncryptionAlgorithmSpecList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EncryptionContextType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ExpiredImportTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiredImportTokenException, context: context)
        type = Types::ExpiredImportTokenException.new
        type.message = params[:message]
        type
      end
    end

    module GenerateDataKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateDataKeyInput, context: context)
        type = Types::GenerateDataKeyInput.new
        type.key_id = params[:key_id]
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.number_of_bytes = params[:number_of_bytes]
        type.key_spec = params[:key_spec]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    module GenerateDataKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateDataKeyOutput, context: context)
        type = Types::GenerateDataKeyOutput.new
        type.ciphertext_blob = params[:ciphertext_blob]
        type.plaintext = params[:plaintext]
        type.key_id = params[:key_id]
        type
      end
    end

    module GenerateDataKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateDataKeyPairInput, context: context)
        type = Types::GenerateDataKeyPairInput.new
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.key_id = params[:key_id]
        type.key_pair_spec = params[:key_pair_spec]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    module GenerateDataKeyPairOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateDataKeyPairOutput, context: context)
        type = Types::GenerateDataKeyPairOutput.new
        type.private_key_ciphertext_blob = params[:private_key_ciphertext_blob]
        type.private_key_plaintext = params[:private_key_plaintext]
        type.public_key = params[:public_key]
        type.key_id = params[:key_id]
        type.key_pair_spec = params[:key_pair_spec]
        type
      end
    end

    module GenerateDataKeyPairWithoutPlaintextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateDataKeyPairWithoutPlaintextInput, context: context)
        type = Types::GenerateDataKeyPairWithoutPlaintextInput.new
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.key_id = params[:key_id]
        type.key_pair_spec = params[:key_pair_spec]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    module GenerateDataKeyPairWithoutPlaintextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateDataKeyPairWithoutPlaintextOutput, context: context)
        type = Types::GenerateDataKeyPairWithoutPlaintextOutput.new
        type.private_key_ciphertext_blob = params[:private_key_ciphertext_blob]
        type.public_key = params[:public_key]
        type.key_id = params[:key_id]
        type.key_pair_spec = params[:key_pair_spec]
        type
      end
    end

    module GenerateDataKeyWithoutPlaintextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateDataKeyWithoutPlaintextInput, context: context)
        type = Types::GenerateDataKeyWithoutPlaintextInput.new
        type.key_id = params[:key_id]
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.key_spec = params[:key_spec]
        type.number_of_bytes = params[:number_of_bytes]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    module GenerateDataKeyWithoutPlaintextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateDataKeyWithoutPlaintextOutput, context: context)
        type = Types::GenerateDataKeyWithoutPlaintextOutput.new
        type.ciphertext_blob = params[:ciphertext_blob]
        type.key_id = params[:key_id]
        type
      end
    end

    module GenerateMacInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateMacInput, context: context)
        type = Types::GenerateMacInput.new
        type.message = params[:message]
        type.key_id = params[:key_id]
        type.mac_algorithm = params[:mac_algorithm]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    module GenerateMacOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateMacOutput, context: context)
        type = Types::GenerateMacOutput.new
        type.mac = params[:mac]
        type.mac_algorithm = params[:mac_algorithm]
        type.key_id = params[:key_id]
        type
      end
    end

    module GenerateRandomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateRandomInput, context: context)
        type = Types::GenerateRandomInput.new
        type.number_of_bytes = params[:number_of_bytes]
        type.custom_key_store_id = params[:custom_key_store_id]
        type
      end
    end

    module GenerateRandomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateRandomOutput, context: context)
        type = Types::GenerateRandomOutput.new
        type.plaintext = params[:plaintext]
        type
      end
    end

    module GetKeyPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKeyPolicyInput, context: context)
        type = Types::GetKeyPolicyInput.new
        type.key_id = params[:key_id]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module GetKeyPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKeyPolicyOutput, context: context)
        type = Types::GetKeyPolicyOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module GetKeyRotationStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKeyRotationStatusInput, context: context)
        type = Types::GetKeyRotationStatusInput.new
        type.key_id = params[:key_id]
        type
      end
    end

    module GetKeyRotationStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKeyRotationStatusOutput, context: context)
        type = Types::GetKeyRotationStatusOutput.new
        type.key_rotation_enabled = params[:key_rotation_enabled]
        type
      end
    end

    module GetParametersForImportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParametersForImportInput, context: context)
        type = Types::GetParametersForImportInput.new
        type.key_id = params[:key_id]
        type.wrapping_algorithm = params[:wrapping_algorithm]
        type.wrapping_key_spec = params[:wrapping_key_spec]
        type
      end
    end

    module GetParametersForImportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParametersForImportOutput, context: context)
        type = Types::GetParametersForImportOutput.new
        type.key_id = params[:key_id]
        type.import_token = params[:import_token]
        type.public_key = params[:public_key]
        type.parameters_valid_to = params[:parameters_valid_to]
        type
      end
    end

    module GetPublicKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPublicKeyInput, context: context)
        type = Types::GetPublicKeyInput.new
        type.key_id = params[:key_id]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    module GetPublicKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPublicKeyOutput, context: context)
        type = Types::GetPublicKeyOutput.new
        type.key_id = params[:key_id]
        type.public_key = params[:public_key]
        type.customer_master_key_spec = params[:customer_master_key_spec]
        type.key_spec = params[:key_spec]
        type.key_usage = params[:key_usage]
        type.encryption_algorithms = EncryptionAlgorithmSpecList.build(params[:encryption_algorithms], context: "#{context}[:encryption_algorithms]") unless params[:encryption_algorithms].nil?
        type.signing_algorithms = SigningAlgorithmSpecList.build(params[:signing_algorithms], context: "#{context}[:signing_algorithms]") unless params[:signing_algorithms].nil?
        type
      end
    end

    module GrantConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantConstraints, context: context)
        type = Types::GrantConstraints.new
        type.encryption_context_subset = EncryptionContextType.build(params[:encryption_context_subset], context: "#{context}[:encryption_context_subset]") unless params[:encryption_context_subset].nil?
        type.encryption_context_equals = EncryptionContextType.build(params[:encryption_context_equals], context: "#{context}[:encryption_context_equals]") unless params[:encryption_context_equals].nil?
        type
      end
    end

    module GrantList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GrantListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GrantListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantListEntry, context: context)
        type = Types::GrantListEntry.new
        type.key_id = params[:key_id]
        type.grant_id = params[:grant_id]
        type.name = params[:name]
        type.creation_date = params[:creation_date]
        type.grantee_principal = params[:grantee_principal]
        type.retiring_principal = params[:retiring_principal]
        type.issuing_account = params[:issuing_account]
        type.operations = GrantOperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.constraints = GrantConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type
      end
    end

    module GrantOperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GrantTokenList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImportKeyMaterialInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportKeyMaterialInput, context: context)
        type = Types::ImportKeyMaterialInput.new
        type.key_id = params[:key_id]
        type.import_token = params[:import_token]
        type.encrypted_key_material = params[:encrypted_key_material]
        type.valid_to = params[:valid_to]
        type.expiration_model = params[:expiration_model]
        type
      end
    end

    module ImportKeyMaterialOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportKeyMaterialOutput, context: context)
        type = Types::ImportKeyMaterialOutput.new
        type
      end
    end

    module IncorrectKeyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncorrectKeyException, context: context)
        type = Types::IncorrectKeyException.new
        type.message = params[:message]
        type
      end
    end

    module IncorrectKeyMaterialException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncorrectKeyMaterialException, context: context)
        type = Types::IncorrectKeyMaterialException.new
        type.message = params[:message]
        type
      end
    end

    module IncorrectTrustAnchorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncorrectTrustAnchorException, context: context)
        type = Types::IncorrectTrustAnchorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAliasNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAliasNameException, context: context)
        type = Types::InvalidAliasNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArnException, context: context)
        type = Types::InvalidArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCiphertextException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCiphertextException, context: context)
        type = Types::InvalidCiphertextException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidGrantIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidGrantIdException, context: context)
        type = Types::InvalidGrantIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidGrantTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidGrantTokenException, context: context)
        type = Types::InvalidGrantTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidImportTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidImportTokenException, context: context)
        type = Types::InvalidImportTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidKeyUsageException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKeyUsageException, context: context)
        type = Types::InvalidKeyUsageException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidMarkerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidMarkerException, context: context)
        type = Types::InvalidMarkerException.new
        type.message = params[:message]
        type
      end
    end

    module KMSInternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSInternalException, context: context)
        type = Types::KMSInternalException.new
        type.message = params[:message]
        type
      end
    end

    module KMSInvalidMacException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSInvalidMacException, context: context)
        type = Types::KMSInvalidMacException.new
        type.message = params[:message]
        type
      end
    end

    module KMSInvalidSignatureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSInvalidSignatureException, context: context)
        type = Types::KMSInvalidSignatureException.new
        type.message = params[:message]
        type
      end
    end

    module KMSInvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSInvalidStateException, context: context)
        type = Types::KMSInvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module KeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KeyListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyListEntry, context: context)
        type = Types::KeyListEntry.new
        type.key_id = params[:key_id]
        type.key_arn = params[:key_arn]
        type
      end
    end

    module KeyMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyMetadata, context: context)
        type = Types::KeyMetadata.new
        type.aws_account_id = params[:aws_account_id]
        type.key_id = params[:key_id]
        type.arn = params[:arn]
        type.creation_date = params[:creation_date]
        type.enabled = params[:enabled]
        type.description = params[:description]
        type.key_usage = params[:key_usage]
        type.key_state = params[:key_state]
        type.deletion_date = params[:deletion_date]
        type.valid_to = params[:valid_to]
        type.origin = params[:origin]
        type.custom_key_store_id = params[:custom_key_store_id]
        type.cloud_hsm_cluster_id = params[:cloud_hsm_cluster_id]
        type.expiration_model = params[:expiration_model]
        type.key_manager = params[:key_manager]
        type.customer_master_key_spec = params[:customer_master_key_spec]
        type.key_spec = params[:key_spec]
        type.encryption_algorithms = EncryptionAlgorithmSpecList.build(params[:encryption_algorithms], context: "#{context}[:encryption_algorithms]") unless params[:encryption_algorithms].nil?
        type.signing_algorithms = SigningAlgorithmSpecList.build(params[:signing_algorithms], context: "#{context}[:signing_algorithms]") unless params[:signing_algorithms].nil?
        type.multi_region = params[:multi_region]
        type.multi_region_configuration = MultiRegionConfiguration.build(params[:multi_region_configuration], context: "#{context}[:multi_region_configuration]") unless params[:multi_region_configuration].nil?
        type.pending_deletion_window_in_days = params[:pending_deletion_window_in_days]
        type.mac_algorithms = MacAlgorithmSpecList.build(params[:mac_algorithms], context: "#{context}[:mac_algorithms]") unless params[:mac_algorithms].nil?
        type
      end
    end

    module KeyUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyUnavailableException, context: context)
        type = Types::KeyUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAliasesInput, context: context)
        type = Types::ListAliasesInput.new
        type.key_id = params[:key_id]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module ListAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAliasesOutput, context: context)
        type = Types::ListAliasesOutput.new
        type.aliases = AliasList.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type.next_marker = params[:next_marker]
        type.truncated = params[:truncated]
        type
      end
    end

    module ListGrantsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGrantsInput, context: context)
        type = Types::ListGrantsInput.new
        type.limit = params[:limit]
        type.marker = params[:marker]
        type.key_id = params[:key_id]
        type.grant_id = params[:grant_id]
        type.grantee_principal = params[:grantee_principal]
        type
      end
    end

    module ListGrantsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGrantsOutput, context: context)
        type = Types::ListGrantsOutput.new
        type.grants = GrantList.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type.next_marker = params[:next_marker]
        type.truncated = params[:truncated]
        type
      end
    end

    module ListKeyPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKeyPoliciesInput, context: context)
        type = Types::ListKeyPoliciesInput.new
        type.key_id = params[:key_id]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module ListKeyPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKeyPoliciesOutput, context: context)
        type = Types::ListKeyPoliciesOutput.new
        type.policy_names = PolicyNameList.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type.next_marker = params[:next_marker]
        type.truncated = params[:truncated]
        type
      end
    end

    module ListKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKeysInput, context: context)
        type = Types::ListKeysInput.new
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module ListKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKeysOutput, context: context)
        type = Types::ListKeysOutput.new
        type.keys = KeyList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.next_marker = params[:next_marker]
        type.truncated = params[:truncated]
        type
      end
    end

    module ListResourceTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceTagsInput, context: context)
        type = Types::ListResourceTagsInput.new
        type.key_id = params[:key_id]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module ListResourceTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceTagsOutput, context: context)
        type = Types::ListResourceTagsOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_marker = params[:next_marker]
        type.truncated = params[:truncated]
        type
      end
    end

    module ListRetirableGrantsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRetirableGrantsInput, context: context)
        type = Types::ListRetirableGrantsInput.new
        type.limit = params[:limit]
        type.marker = params[:marker]
        type.retiring_principal = params[:retiring_principal]
        type
      end
    end

    module ListRetirableGrantsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRetirableGrantsOutput, context: context)
        type = Types::ListRetirableGrantsOutput.new
        type.grants = GrantList.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type.next_marker = params[:next_marker]
        type.truncated = params[:truncated]
        type
      end
    end

    module MacAlgorithmSpecList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MalformedPolicyDocumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MalformedPolicyDocumentException, context: context)
        type = Types::MalformedPolicyDocumentException.new
        type.message = params[:message]
        type
      end
    end

    module MultiRegionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiRegionConfiguration, context: context)
        type = Types::MultiRegionConfiguration.new
        type.multi_region_key_type = params[:multi_region_key_type]
        type.primary_key = MultiRegionKey.build(params[:primary_key], context: "#{context}[:primary_key]") unless params[:primary_key].nil?
        type.replica_keys = MultiRegionKeyList.build(params[:replica_keys], context: "#{context}[:replica_keys]") unless params[:replica_keys].nil?
        type
      end
    end

    module MultiRegionKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiRegionKey, context: context)
        type = Types::MultiRegionKey.new
        type.arn = params[:arn]
        type.region = params[:region]
        type
      end
    end

    module MultiRegionKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultiRegionKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PolicyNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PutKeyPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutKeyPolicyInput, context: context)
        type = Types::PutKeyPolicyInput.new
        type.key_id = params[:key_id]
        type.policy_name = params[:policy_name]
        type.policy = params[:policy]
        type.bypass_policy_lockout_safety_check = params[:bypass_policy_lockout_safety_check]
        type
      end
    end

    module PutKeyPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutKeyPolicyOutput, context: context)
        type = Types::PutKeyPolicyOutput.new
        type
      end
    end

    module ReEncryptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReEncryptInput, context: context)
        type = Types::ReEncryptInput.new
        type.ciphertext_blob = params[:ciphertext_blob]
        type.source_encryption_context = EncryptionContextType.build(params[:source_encryption_context], context: "#{context}[:source_encryption_context]") unless params[:source_encryption_context].nil?
        type.source_key_id = params[:source_key_id]
        type.destination_key_id = params[:destination_key_id]
        type.destination_encryption_context = EncryptionContextType.build(params[:destination_encryption_context], context: "#{context}[:destination_encryption_context]") unless params[:destination_encryption_context].nil?
        type.source_encryption_algorithm = params[:source_encryption_algorithm]
        type.destination_encryption_algorithm = params[:destination_encryption_algorithm]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    module ReEncryptOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReEncryptOutput, context: context)
        type = Types::ReEncryptOutput.new
        type.ciphertext_blob = params[:ciphertext_blob]
        type.source_key_id = params[:source_key_id]
        type.key_id = params[:key_id]
        type.source_encryption_algorithm = params[:source_encryption_algorithm]
        type.destination_encryption_algorithm = params[:destination_encryption_algorithm]
        type
      end
    end

    module ReplicateKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicateKeyInput, context: context)
        type = Types::ReplicateKeyInput.new
        type.key_id = params[:key_id]
        type.replica_region = params[:replica_region]
        type.policy = params[:policy]
        type.bypass_policy_lockout_safety_check = params[:bypass_policy_lockout_safety_check]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ReplicateKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicateKeyOutput, context: context)
        type = Types::ReplicateKeyOutput.new
        type.replica_key_metadata = KeyMetadata.build(params[:replica_key_metadata], context: "#{context}[:replica_key_metadata]") unless params[:replica_key_metadata].nil?
        type.replica_policy = params[:replica_policy]
        type.replica_tags = TagList.build(params[:replica_tags], context: "#{context}[:replica_tags]") unless params[:replica_tags].nil?
        type
      end
    end

    module RetireGrantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetireGrantInput, context: context)
        type = Types::RetireGrantInput.new
        type.grant_token = params[:grant_token]
        type.key_id = params[:key_id]
        type.grant_id = params[:grant_id]
        type
      end
    end

    module RetireGrantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetireGrantOutput, context: context)
        type = Types::RetireGrantOutput.new
        type
      end
    end

    module RevokeGrantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeGrantInput, context: context)
        type = Types::RevokeGrantInput.new
        type.key_id = params[:key_id]
        type.grant_id = params[:grant_id]
        type
      end
    end

    module RevokeGrantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeGrantOutput, context: context)
        type = Types::RevokeGrantOutput.new
        type
      end
    end

    module ScheduleKeyDeletionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleKeyDeletionInput, context: context)
        type = Types::ScheduleKeyDeletionInput.new
        type.key_id = params[:key_id]
        type.pending_window_in_days = params[:pending_window_in_days]
        type
      end
    end

    module ScheduleKeyDeletionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleKeyDeletionOutput, context: context)
        type = Types::ScheduleKeyDeletionOutput.new
        type.key_id = params[:key_id]
        type.deletion_date = params[:deletion_date]
        type.key_state = params[:key_state]
        type.pending_window_in_days = params[:pending_window_in_days]
        type
      end
    end

    module SignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignInput, context: context)
        type = Types::SignInput.new
        type.key_id = params[:key_id]
        type.message = params[:message]
        type.message_type = params[:message_type]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.signing_algorithm = params[:signing_algorithm]
        type
      end
    end

    module SignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignOutput, context: context)
        type = Types::SignOutput.new
        type.key_id = params[:key_id]
        type.signature = params[:signature]
        type.signing_algorithm = params[:signing_algorithm]
        type
      end
    end

    module SigningAlgorithmSpecList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.tag_key = params[:tag_key]
        type.tag_value = params[:tag_value]
        type
      end
    end

    module TagException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagException, context: context)
        type = Types::TagException.new
        type.message = params[:message]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.key_id = params[:key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module UnsupportedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.key_id = params[:key_id]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAliasInput, context: context)
        type = Types::UpdateAliasInput.new
        type.alias_name = params[:alias_name]
        type.target_key_id = params[:target_key_id]
        type
      end
    end

    module UpdateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAliasOutput, context: context)
        type = Types::UpdateAliasOutput.new
        type
      end
    end

    module UpdateCustomKeyStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomKeyStoreInput, context: context)
        type = Types::UpdateCustomKeyStoreInput.new
        type.custom_key_store_id = params[:custom_key_store_id]
        type.new_custom_key_store_name = params[:new_custom_key_store_name]
        type.key_store_password = params[:key_store_password]
        type.cloud_hsm_cluster_id = params[:cloud_hsm_cluster_id]
        type
      end
    end

    module UpdateCustomKeyStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomKeyStoreOutput, context: context)
        type = Types::UpdateCustomKeyStoreOutput.new
        type
      end
    end

    module UpdateKeyDescriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateKeyDescriptionInput, context: context)
        type = Types::UpdateKeyDescriptionInput.new
        type.key_id = params[:key_id]
        type.description = params[:description]
        type
      end
    end

    module UpdateKeyDescriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateKeyDescriptionOutput, context: context)
        type = Types::UpdateKeyDescriptionOutput.new
        type
      end
    end

    module UpdatePrimaryRegionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePrimaryRegionInput, context: context)
        type = Types::UpdatePrimaryRegionInput.new
        type.key_id = params[:key_id]
        type.primary_region = params[:primary_region]
        type
      end
    end

    module UpdatePrimaryRegionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePrimaryRegionOutput, context: context)
        type = Types::UpdatePrimaryRegionOutput.new
        type
      end
    end

    module VerifyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyInput, context: context)
        type = Types::VerifyInput.new
        type.key_id = params[:key_id]
        type.message = params[:message]
        type.message_type = params[:message_type]
        type.signature = params[:signature]
        type.signing_algorithm = params[:signing_algorithm]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    module VerifyMacInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyMacInput, context: context)
        type = Types::VerifyMacInput.new
        type.message = params[:message]
        type.key_id = params[:key_id]
        type.mac_algorithm = params[:mac_algorithm]
        type.mac = params[:mac]
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    module VerifyMacOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyMacOutput, context: context)
        type = Types::VerifyMacOutput.new
        type.key_id = params[:key_id]
        type.mac_valid = params[:mac_valid]
        type.mac_algorithm = params[:mac_algorithm]
        type
      end
    end

    module VerifyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyOutput, context: context)
        type = Types::VerifyOutput.new
        type.key_id = params[:key_id]
        type.signature_valid = params[:signature_valid]
        type.signing_algorithm = params[:signing_algorithm]
        type
      end
    end

  end
end
