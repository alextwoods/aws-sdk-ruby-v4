# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
  # @api private
  module Params

    class AliasList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AliasListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class AliasListEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AliasListEntry, context: context)
        type = Types::AliasListEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alias_name = params[:alias_name] unless params[:alias_name].nil?
        type.alias_arn = params[:alias_arn] unless params[:alias_arn].nil?
        type.target_key_id = params[:target_key_id] unless params[:target_key_id].nil?
        type.creation_date = params[:creation_date] unless params[:creation_date].nil?
        type.last_updated_date = params[:last_updated_date] unless params[:last_updated_date].nil?
        type
      end
    end

    class AlreadyExistsException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CancelKeyDeletionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CancelKeyDeletionInput, context: context)
        type = Types::CancelKeyDeletionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class CancelKeyDeletionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CancelKeyDeletionOutput, context: context)
        type = Types::CancelKeyDeletionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class CloudHsmClusterInUseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CloudHsmClusterInUseException, context: context)
        type = Types::CloudHsmClusterInUseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CloudHsmClusterInvalidConfigurationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CloudHsmClusterInvalidConfigurationException, context: context)
        type = Types::CloudHsmClusterInvalidConfigurationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CloudHsmClusterNotActiveException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CloudHsmClusterNotActiveException, context: context)
        type = Types::CloudHsmClusterNotActiveException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CloudHsmClusterNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CloudHsmClusterNotFoundException, context: context)
        type = Types::CloudHsmClusterNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CloudHsmClusterNotRelatedException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CloudHsmClusterNotRelatedException, context: context)
        type = Types::CloudHsmClusterNotRelatedException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ConnectCustomKeyStoreInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConnectCustomKeyStoreInput, context: context)
        type = Types::ConnectCustomKeyStoreInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.custom_key_store_id = params[:custom_key_store_id] unless params[:custom_key_store_id].nil?
        type
      end
    end

    class ConnectCustomKeyStoreOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConnectCustomKeyStoreOutput, context: context)
        type = Types::ConnectCustomKeyStoreOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class CreateAliasInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateAliasInput, context: context)
        type = Types::CreateAliasInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alias_name = params[:alias_name] unless params[:alias_name].nil?
        type.target_key_id = params[:target_key_id] unless params[:target_key_id].nil?
        type
      end
    end

    class CreateAliasOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateAliasOutput, context: context)
        type = Types::CreateAliasOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class CreateCustomKeyStoreInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateCustomKeyStoreInput, context: context)
        type = Types::CreateCustomKeyStoreInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.custom_key_store_name = params[:custom_key_store_name] unless params[:custom_key_store_name].nil?
        type.cloud_hsm_cluster_id = params[:cloud_hsm_cluster_id] unless params[:cloud_hsm_cluster_id].nil?
        type.trust_anchor_certificate = params[:trust_anchor_certificate] unless params[:trust_anchor_certificate].nil?
        type.key_store_password = params[:key_store_password] unless params[:key_store_password].nil?
        type.custom_key_store_type = params[:custom_key_store_type] unless params[:custom_key_store_type].nil?
        type.xks_proxy_uri_endpoint = params[:xks_proxy_uri_endpoint] unless params[:xks_proxy_uri_endpoint].nil?
        type.xks_proxy_uri_path = params[:xks_proxy_uri_path] unless params[:xks_proxy_uri_path].nil?
        type.xks_proxy_vpc_endpoint_service_name = params[:xks_proxy_vpc_endpoint_service_name] unless params[:xks_proxy_vpc_endpoint_service_name].nil?
        type.xks_proxy_authentication_credential = XksProxyAuthenticationCredentialType.build(params[:xks_proxy_authentication_credential], context: "#{context}[:xks_proxy_authentication_credential]") unless params[:xks_proxy_authentication_credential].nil?
        type.xks_proxy_connectivity = params[:xks_proxy_connectivity] unless params[:xks_proxy_connectivity].nil?
        type
      end
    end

    class CreateCustomKeyStoreOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateCustomKeyStoreOutput, context: context)
        type = Types::CreateCustomKeyStoreOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.custom_key_store_id = params[:custom_key_store_id] unless params[:custom_key_store_id].nil?
        type
      end
    end

    class CreateGrantInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateGrantInput, context: context)
        type = Types::CreateGrantInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.grantee_principal = params[:grantee_principal] unless params[:grantee_principal].nil?
        type.retiring_principal = params[:retiring_principal] unless params[:retiring_principal].nil?
        type.operations = GrantOperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.constraints = GrantConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.name = params[:name] unless params[:name].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class CreateGrantOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateGrantOutput, context: context)
        type = Types::CreateGrantOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.grant_token = params[:grant_token] unless params[:grant_token].nil?
        type.grant_id = params[:grant_id] unless params[:grant_id].nil?
        type
      end
    end

    class CreateKeyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateKeyInput, context: context)
        type = Types::CreateKeyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.policy = params[:policy] unless params[:policy].nil?
        type.description = params[:description] unless params[:description].nil?
        type.key_usage = params[:key_usage] unless params[:key_usage].nil?
        type.customer_master_key_spec = params[:customer_master_key_spec] unless params[:customer_master_key_spec].nil?
        type.key_spec = params[:key_spec] unless params[:key_spec].nil?
        type.origin = params[:origin] unless params[:origin].nil?
        type.custom_key_store_id = params[:custom_key_store_id] unless params[:custom_key_store_id].nil?
        type.bypass_policy_lockout_safety_check = params[:bypass_policy_lockout_safety_check] unless params[:bypass_policy_lockout_safety_check].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.multi_region = params[:multi_region] unless params[:multi_region].nil?
        type.xks_key_id = params[:xks_key_id] unless params[:xks_key_id].nil?
        type
      end
    end

    class CreateKeyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateKeyOutput, context: context)
        type = Types::CreateKeyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_metadata = KeyMetadata.build(params[:key_metadata], context: "#{context}[:key_metadata]") unless params[:key_metadata].nil?
        type
      end
    end

    class CustomKeyStoreHasCMKsException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CustomKeyStoreHasCMKsException, context: context)
        type = Types::CustomKeyStoreHasCMKsException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CustomKeyStoreInvalidStateException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CustomKeyStoreInvalidStateException, context: context)
        type = Types::CustomKeyStoreInvalidStateException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CustomKeyStoreNameInUseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CustomKeyStoreNameInUseException, context: context)
        type = Types::CustomKeyStoreNameInUseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CustomKeyStoreNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CustomKeyStoreNotFoundException, context: context)
        type = Types::CustomKeyStoreNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CustomKeyStoresList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomKeyStoresListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class CustomKeyStoresListEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CustomKeyStoresListEntry, context: context)
        type = Types::CustomKeyStoresListEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.custom_key_store_id = params[:custom_key_store_id] unless params[:custom_key_store_id].nil?
        type.custom_key_store_name = params[:custom_key_store_name] unless params[:custom_key_store_name].nil?
        type.cloud_hsm_cluster_id = params[:cloud_hsm_cluster_id] unless params[:cloud_hsm_cluster_id].nil?
        type.trust_anchor_certificate = params[:trust_anchor_certificate] unless params[:trust_anchor_certificate].nil?
        type.connection_state = params[:connection_state] unless params[:connection_state].nil?
        type.connection_error_code = params[:connection_error_code] unless params[:connection_error_code].nil?
        type.creation_date = params[:creation_date] unless params[:creation_date].nil?
        type.custom_key_store_type = params[:custom_key_store_type] unless params[:custom_key_store_type].nil?
        type.xks_proxy_configuration = XksProxyConfigurationType.build(params[:xks_proxy_configuration], context: "#{context}[:xks_proxy_configuration]") unless params[:xks_proxy_configuration].nil?
        type
      end
    end

    class DecryptInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DecryptInput, context: context)
        type = Types::DecryptInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.ciphertext_blob = params[:ciphertext_blob] unless params[:ciphertext_blob].nil?
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.encryption_algorithm = params[:encryption_algorithm] unless params[:encryption_algorithm].nil?
        type.recipient = RecipientInfo.build(params[:recipient], context: "#{context}[:recipient]") unless params[:recipient].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class DecryptOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DecryptOutput, context: context)
        type = Types::DecryptOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.plaintext = params[:plaintext] unless params[:plaintext].nil?
        type.encryption_algorithm = params[:encryption_algorithm] unless params[:encryption_algorithm].nil?
        type.ciphertext_for_recipient = params[:ciphertext_for_recipient] unless params[:ciphertext_for_recipient].nil?
        type
      end
    end

    class DeleteAliasInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAliasInput, context: context)
        type = Types::DeleteAliasInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alias_name = params[:alias_name] unless params[:alias_name].nil?
        type
      end
    end

    class DeleteAliasOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAliasOutput, context: context)
        type = Types::DeleteAliasOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteCustomKeyStoreInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteCustomKeyStoreInput, context: context)
        type = Types::DeleteCustomKeyStoreInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.custom_key_store_id = params[:custom_key_store_id] unless params[:custom_key_store_id].nil?
        type
      end
    end

    class DeleteCustomKeyStoreOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteCustomKeyStoreOutput, context: context)
        type = Types::DeleteCustomKeyStoreOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteImportedKeyMaterialInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteImportedKeyMaterialInput, context: context)
        type = Types::DeleteImportedKeyMaterialInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class DeleteImportedKeyMaterialOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteImportedKeyMaterialOutput, context: context)
        type = Types::DeleteImportedKeyMaterialOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DependencyTimeoutException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DependencyTimeoutException, context: context)
        type = Types::DependencyTimeoutException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class DescribeCustomKeyStoresInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeCustomKeyStoresInput, context: context)
        type = Types::DescribeCustomKeyStoresInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.custom_key_store_id = params[:custom_key_store_id] unless params[:custom_key_store_id].nil?
        type.custom_key_store_name = params[:custom_key_store_name] unless params[:custom_key_store_name].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.marker = params[:marker] unless params[:marker].nil?
        type
      end
    end

    class DescribeCustomKeyStoresOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeCustomKeyStoresOutput, context: context)
        type = Types::DescribeCustomKeyStoresOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.custom_key_stores = CustomKeyStoresList.build(params[:custom_key_stores], context: "#{context}[:custom_key_stores]") unless params[:custom_key_stores].nil?
        type.next_marker = params[:next_marker] unless params[:next_marker].nil?
        type.truncated = params[:truncated] unless params[:truncated].nil?
        type
      end
    end

    class DescribeKeyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeKeyInput, context: context)
        type = Types::DescribeKeyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    class DescribeKeyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeKeyOutput, context: context)
        type = Types::DescribeKeyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_metadata = KeyMetadata.build(params[:key_metadata], context: "#{context}[:key_metadata]") unless params[:key_metadata].nil?
        type
      end
    end

    class DisableKeyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableKeyInput, context: context)
        type = Types::DisableKeyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class DisableKeyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableKeyOutput, context: context)
        type = Types::DisableKeyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DisableKeyRotationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableKeyRotationInput, context: context)
        type = Types::DisableKeyRotationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class DisableKeyRotationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableKeyRotationOutput, context: context)
        type = Types::DisableKeyRotationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DisabledException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisabledException, context: context)
        type = Types::DisabledException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class DisconnectCustomKeyStoreInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisconnectCustomKeyStoreInput, context: context)
        type = Types::DisconnectCustomKeyStoreInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.custom_key_store_id = params[:custom_key_store_id] unless params[:custom_key_store_id].nil?
        type
      end
    end

    class DisconnectCustomKeyStoreOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisconnectCustomKeyStoreOutput, context: context)
        type = Types::DisconnectCustomKeyStoreOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DryRunOperationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DryRunOperationException, context: context)
        type = Types::DryRunOperationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class EnableKeyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableKeyInput, context: context)
        type = Types::EnableKeyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class EnableKeyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableKeyOutput, context: context)
        type = Types::EnableKeyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class EnableKeyRotationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableKeyRotationInput, context: context)
        type = Types::EnableKeyRotationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class EnableKeyRotationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableKeyRotationOutput, context: context)
        type = Types::EnableKeyRotationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class EncryptInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EncryptInput, context: context)
        type = Types::EncryptInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.plaintext = params[:plaintext] unless params[:plaintext].nil?
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.encryption_algorithm = params[:encryption_algorithm] unless params[:encryption_algorithm].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class EncryptOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EncryptOutput, context: context)
        type = Types::EncryptOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.ciphertext_blob = params[:ciphertext_blob] unless params[:ciphertext_blob].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.encryption_algorithm = params[:encryption_algorithm] unless params[:encryption_algorithm].nil?
        type
      end
    end

    class EncryptionAlgorithmSpecList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class EncryptionContextType
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExpiredImportTokenException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExpiredImportTokenException, context: context)
        type = Types::ExpiredImportTokenException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class GenerateDataKeyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateDataKeyInput, context: context)
        type = Types::GenerateDataKeyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.number_of_bytes = params[:number_of_bytes] unless params[:number_of_bytes].nil?
        type.key_spec = params[:key_spec] unless params[:key_spec].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.recipient = RecipientInfo.build(params[:recipient], context: "#{context}[:recipient]") unless params[:recipient].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class GenerateDataKeyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateDataKeyOutput, context: context)
        type = Types::GenerateDataKeyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.ciphertext_blob = params[:ciphertext_blob] unless params[:ciphertext_blob].nil?
        type.plaintext = params[:plaintext] unless params[:plaintext].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.ciphertext_for_recipient = params[:ciphertext_for_recipient] unless params[:ciphertext_for_recipient].nil?
        type
      end
    end

    class GenerateDataKeyPairInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateDataKeyPairInput, context: context)
        type = Types::GenerateDataKeyPairInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.key_pair_spec = params[:key_pair_spec] unless params[:key_pair_spec].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.recipient = RecipientInfo.build(params[:recipient], context: "#{context}[:recipient]") unless params[:recipient].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class GenerateDataKeyPairOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateDataKeyPairOutput, context: context)
        type = Types::GenerateDataKeyPairOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.private_key_ciphertext_blob = params[:private_key_ciphertext_blob] unless params[:private_key_ciphertext_blob].nil?
        type.private_key_plaintext = params[:private_key_plaintext] unless params[:private_key_plaintext].nil?
        type.public_key = params[:public_key] unless params[:public_key].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.key_pair_spec = params[:key_pair_spec] unless params[:key_pair_spec].nil?
        type.ciphertext_for_recipient = params[:ciphertext_for_recipient] unless params[:ciphertext_for_recipient].nil?
        type
      end
    end

    class GenerateDataKeyPairWithoutPlaintextInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateDataKeyPairWithoutPlaintextInput, context: context)
        type = Types::GenerateDataKeyPairWithoutPlaintextInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.key_pair_spec = params[:key_pair_spec] unless params[:key_pair_spec].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class GenerateDataKeyPairWithoutPlaintextOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateDataKeyPairWithoutPlaintextOutput, context: context)
        type = Types::GenerateDataKeyPairWithoutPlaintextOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.private_key_ciphertext_blob = params[:private_key_ciphertext_blob] unless params[:private_key_ciphertext_blob].nil?
        type.public_key = params[:public_key] unless params[:public_key].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.key_pair_spec = params[:key_pair_spec] unless params[:key_pair_spec].nil?
        type
      end
    end

    class GenerateDataKeyWithoutPlaintextInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateDataKeyWithoutPlaintextInput, context: context)
        type = Types::GenerateDataKeyWithoutPlaintextInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.encryption_context = EncryptionContextType.build(params[:encryption_context], context: "#{context}[:encryption_context]") unless params[:encryption_context].nil?
        type.key_spec = params[:key_spec] unless params[:key_spec].nil?
        type.number_of_bytes = params[:number_of_bytes] unless params[:number_of_bytes].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class GenerateDataKeyWithoutPlaintextOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateDataKeyWithoutPlaintextOutput, context: context)
        type = Types::GenerateDataKeyWithoutPlaintextOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.ciphertext_blob = params[:ciphertext_blob] unless params[:ciphertext_blob].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class GenerateMacInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateMacInput, context: context)
        type = Types::GenerateMacInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.mac_algorithm = params[:mac_algorithm] unless params[:mac_algorithm].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class GenerateMacOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateMacOutput, context: context)
        type = Types::GenerateMacOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.mac = params[:mac] unless params[:mac].nil?
        type.mac_algorithm = params[:mac_algorithm] unless params[:mac_algorithm].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class GenerateRandomInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateRandomInput, context: context)
        type = Types::GenerateRandomInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.number_of_bytes = params[:number_of_bytes] unless params[:number_of_bytes].nil?
        type.custom_key_store_id = params[:custom_key_store_id] unless params[:custom_key_store_id].nil?
        type.recipient = RecipientInfo.build(params[:recipient], context: "#{context}[:recipient]") unless params[:recipient].nil?
        type
      end
    end

    class GenerateRandomOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GenerateRandomOutput, context: context)
        type = Types::GenerateRandomOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.plaintext = params[:plaintext] unless params[:plaintext].nil?
        type.ciphertext_for_recipient = params[:ciphertext_for_recipient] unless params[:ciphertext_for_recipient].nil?
        type
      end
    end

    class GetKeyPolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetKeyPolicyInput, context: context)
        type = Types::GetKeyPolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.policy_name = params[:policy_name] unless params[:policy_name].nil?
        type
      end
    end

    class GetKeyPolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetKeyPolicyOutput, context: context)
        type = Types::GetKeyPolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.policy = params[:policy] unless params[:policy].nil?
        type
      end
    end

    class GetKeyRotationStatusInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetKeyRotationStatusInput, context: context)
        type = Types::GetKeyRotationStatusInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class GetKeyRotationStatusOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetKeyRotationStatusOutput, context: context)
        type = Types::GetKeyRotationStatusOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_rotation_enabled = params[:key_rotation_enabled] unless params[:key_rotation_enabled].nil?
        type
      end
    end

    class GetParametersForImportInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetParametersForImportInput, context: context)
        type = Types::GetParametersForImportInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.wrapping_algorithm = params[:wrapping_algorithm] unless params[:wrapping_algorithm].nil?
        type.wrapping_key_spec = params[:wrapping_key_spec] unless params[:wrapping_key_spec].nil?
        type
      end
    end

    class GetParametersForImportOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetParametersForImportOutput, context: context)
        type = Types::GetParametersForImportOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.import_token = params[:import_token] unless params[:import_token].nil?
        type.public_key = params[:public_key] unless params[:public_key].nil?
        type.parameters_valid_to = params[:parameters_valid_to] unless params[:parameters_valid_to].nil?
        type
      end
    end

    class GetPublicKeyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetPublicKeyInput, context: context)
        type = Types::GetPublicKeyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type
      end
    end

    class GetPublicKeyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetPublicKeyOutput, context: context)
        type = Types::GetPublicKeyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.public_key = params[:public_key] unless params[:public_key].nil?
        type.customer_master_key_spec = params[:customer_master_key_spec] unless params[:customer_master_key_spec].nil?
        type.key_spec = params[:key_spec] unless params[:key_spec].nil?
        type.key_usage = params[:key_usage] unless params[:key_usage].nil?
        type.encryption_algorithms = EncryptionAlgorithmSpecList.build(params[:encryption_algorithms], context: "#{context}[:encryption_algorithms]") unless params[:encryption_algorithms].nil?
        type.signing_algorithms = SigningAlgorithmSpecList.build(params[:signing_algorithms], context: "#{context}[:signing_algorithms]") unless params[:signing_algorithms].nil?
        type
      end
    end

    class GrantConstraints
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GrantConstraints, context: context)
        type = Types::GrantConstraints.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.encryption_context_subset = EncryptionContextType.build(params[:encryption_context_subset], context: "#{context}[:encryption_context_subset]") unless params[:encryption_context_subset].nil?
        type.encryption_context_equals = EncryptionContextType.build(params[:encryption_context_equals], context: "#{context}[:encryption_context_equals]") unless params[:encryption_context_equals].nil?
        type
      end
    end

    class GrantList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GrantListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GrantListEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GrantListEntry, context: context)
        type = Types::GrantListEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.grant_id = params[:grant_id] unless params[:grant_id].nil?
        type.name = params[:name] unless params[:name].nil?
        type.creation_date = params[:creation_date] unless params[:creation_date].nil?
        type.grantee_principal = params[:grantee_principal] unless params[:grantee_principal].nil?
        type.retiring_principal = params[:retiring_principal] unless params[:retiring_principal].nil?
        type.issuing_account = params[:issuing_account] unless params[:issuing_account].nil?
        type.operations = GrantOperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.constraints = GrantConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type
      end
    end

    class GrantOperationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class GrantTokenList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ImportKeyMaterialInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ImportKeyMaterialInput, context: context)
        type = Types::ImportKeyMaterialInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.import_token = params[:import_token] unless params[:import_token].nil?
        type.encrypted_key_material = params[:encrypted_key_material] unless params[:encrypted_key_material].nil?
        type.valid_to = params[:valid_to] unless params[:valid_to].nil?
        type.expiration_model = params[:expiration_model] unless params[:expiration_model].nil?
        type
      end
    end

    class ImportKeyMaterialOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ImportKeyMaterialOutput, context: context)
        type = Types::ImportKeyMaterialOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class IncorrectKeyException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IncorrectKeyException, context: context)
        type = Types::IncorrectKeyException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class IncorrectKeyMaterialException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IncorrectKeyMaterialException, context: context)
        type = Types::IncorrectKeyMaterialException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class IncorrectTrustAnchorException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IncorrectTrustAnchorException, context: context)
        type = Types::IncorrectTrustAnchorException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidAliasNameException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidAliasNameException, context: context)
        type = Types::InvalidAliasNameException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidArnException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidArnException, context: context)
        type = Types::InvalidArnException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidCiphertextException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidCiphertextException, context: context)
        type = Types::InvalidCiphertextException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidGrantIdException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidGrantIdException, context: context)
        type = Types::InvalidGrantIdException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidGrantTokenException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidGrantTokenException, context: context)
        type = Types::InvalidGrantTokenException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidImportTokenException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidImportTokenException, context: context)
        type = Types::InvalidImportTokenException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidKeyUsageException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidKeyUsageException, context: context)
        type = Types::InvalidKeyUsageException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidMarkerException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidMarkerException, context: context)
        type = Types::InvalidMarkerException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KMSInternalException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KMSInternalException, context: context)
        type = Types::KMSInternalException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KMSInvalidMacException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KMSInvalidMacException, context: context)
        type = Types::KMSInvalidMacException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KMSInvalidSignatureException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KMSInvalidSignatureException, context: context)
        type = Types::KMSInvalidSignatureException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KMSInvalidStateException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KMSInvalidStateException, context: context)
        type = Types::KMSInvalidStateException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class KeyList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class KeyListEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KeyListEntry, context: context)
        type = Types::KeyListEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.key_arn = params[:key_arn] unless params[:key_arn].nil?
        type
      end
    end

    class KeyMetadata
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KeyMetadata, context: context)
        type = Types::KeyMetadata.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.aws_account_id = params[:aws_account_id] unless params[:aws_account_id].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.arn = params[:arn] unless params[:arn].nil?
        type.creation_date = params[:creation_date] unless params[:creation_date].nil?
        type.enabled = params[:enabled] unless params[:enabled].nil?
        type.description = params[:description] unless params[:description].nil?
        type.key_usage = params[:key_usage] unless params[:key_usage].nil?
        type.key_state = params[:key_state] unless params[:key_state].nil?
        type.deletion_date = params[:deletion_date] unless params[:deletion_date].nil?
        type.valid_to = params[:valid_to] unless params[:valid_to].nil?
        type.origin = params[:origin] unless params[:origin].nil?
        type.custom_key_store_id = params[:custom_key_store_id] unless params[:custom_key_store_id].nil?
        type.cloud_hsm_cluster_id = params[:cloud_hsm_cluster_id] unless params[:cloud_hsm_cluster_id].nil?
        type.expiration_model = params[:expiration_model] unless params[:expiration_model].nil?
        type.key_manager = params[:key_manager] unless params[:key_manager].nil?
        type.customer_master_key_spec = params[:customer_master_key_spec] unless params[:customer_master_key_spec].nil?
        type.key_spec = params[:key_spec] unless params[:key_spec].nil?
        type.encryption_algorithms = EncryptionAlgorithmSpecList.build(params[:encryption_algorithms], context: "#{context}[:encryption_algorithms]") unless params[:encryption_algorithms].nil?
        type.signing_algorithms = SigningAlgorithmSpecList.build(params[:signing_algorithms], context: "#{context}[:signing_algorithms]") unless params[:signing_algorithms].nil?
        type.multi_region = params[:multi_region] unless params[:multi_region].nil?
        type.multi_region_configuration = MultiRegionConfiguration.build(params[:multi_region_configuration], context: "#{context}[:multi_region_configuration]") unless params[:multi_region_configuration].nil?
        type.pending_deletion_window_in_days = params[:pending_deletion_window_in_days] unless params[:pending_deletion_window_in_days].nil?
        type.mac_algorithms = MacAlgorithmSpecList.build(params[:mac_algorithms], context: "#{context}[:mac_algorithms]") unless params[:mac_algorithms].nil?
        type.xks_key_configuration = XksKeyConfigurationType.build(params[:xks_key_configuration], context: "#{context}[:xks_key_configuration]") unless params[:xks_key_configuration].nil?
        type
      end
    end

    class KeyUnavailableException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KeyUnavailableException, context: context)
        type = Types::KeyUnavailableException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class LimitExceededException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ListAliasesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListAliasesInput, context: context)
        type = Types::ListAliasesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.marker = params[:marker] unless params[:marker].nil?
        type
      end
    end

    class ListAliasesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListAliasesOutput, context: context)
        type = Types::ListAliasesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.aliases = AliasList.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type.next_marker = params[:next_marker] unless params[:next_marker].nil?
        type.truncated = params[:truncated] unless params[:truncated].nil?
        type
      end
    end

    class ListGrantsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListGrantsInput, context: context)
        type = Types::ListGrantsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.limit = params[:limit] unless params[:limit].nil?
        type.marker = params[:marker] unless params[:marker].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.grant_id = params[:grant_id] unless params[:grant_id].nil?
        type.grantee_principal = params[:grantee_principal] unless params[:grantee_principal].nil?
        type
      end
    end

    class ListGrantsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListGrantsOutput, context: context)
        type = Types::ListGrantsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.grants = GrantList.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type.next_marker = params[:next_marker] unless params[:next_marker].nil?
        type.truncated = params[:truncated] unless params[:truncated].nil?
        type
      end
    end

    class ListKeyPoliciesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListKeyPoliciesInput, context: context)
        type = Types::ListKeyPoliciesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.marker = params[:marker] unless params[:marker].nil?
        type
      end
    end

    class ListKeyPoliciesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListKeyPoliciesOutput, context: context)
        type = Types::ListKeyPoliciesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.policy_names = PolicyNameList.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type.next_marker = params[:next_marker] unless params[:next_marker].nil?
        type.truncated = params[:truncated] unless params[:truncated].nil?
        type
      end
    end

    class ListKeysInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListKeysInput, context: context)
        type = Types::ListKeysInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.limit = params[:limit] unless params[:limit].nil?
        type.marker = params[:marker] unless params[:marker].nil?
        type
      end
    end

    class ListKeysOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListKeysOutput, context: context)
        type = Types::ListKeysOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.keys = KeyList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.next_marker = params[:next_marker] unless params[:next_marker].nil?
        type.truncated = params[:truncated] unless params[:truncated].nil?
        type
      end
    end

    class ListResourceTagsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListResourceTagsInput, context: context)
        type = Types::ListResourceTagsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.marker = params[:marker] unless params[:marker].nil?
        type
      end
    end

    class ListResourceTagsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListResourceTagsOutput, context: context)
        type = Types::ListResourceTagsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_marker = params[:next_marker] unless params[:next_marker].nil?
        type.truncated = params[:truncated] unless params[:truncated].nil?
        type
      end
    end

    class ListRetirableGrantsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListRetirableGrantsInput, context: context)
        type = Types::ListRetirableGrantsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.limit = params[:limit] unless params[:limit].nil?
        type.marker = params[:marker] unless params[:marker].nil?
        type.retiring_principal = params[:retiring_principal] unless params[:retiring_principal].nil?
        type
      end
    end

    class ListRetirableGrantsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListRetirableGrantsOutput, context: context)
        type = Types::ListRetirableGrantsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.grants = GrantList.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type.next_marker = params[:next_marker] unless params[:next_marker].nil?
        type.truncated = params[:truncated] unless params[:truncated].nil?
        type
      end
    end

    class MacAlgorithmSpecList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class MalformedPolicyDocumentException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MalformedPolicyDocumentException, context: context)
        type = Types::MalformedPolicyDocumentException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class MultiRegionConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MultiRegionConfiguration, context: context)
        type = Types::MultiRegionConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.multi_region_key_type = params[:multi_region_key_type] unless params[:multi_region_key_type].nil?
        type.primary_key = MultiRegionKey.build(params[:primary_key], context: "#{context}[:primary_key]") unless params[:primary_key].nil?
        type.replica_keys = MultiRegionKeyList.build(params[:replica_keys], context: "#{context}[:replica_keys]") unless params[:replica_keys].nil?
        type
      end
    end

    class MultiRegionKey
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MultiRegionKey, context: context)
        type = Types::MultiRegionKey.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.arn = params[:arn] unless params[:arn].nil?
        type.region = params[:region] unless params[:region].nil?
        type
      end
    end

    class MultiRegionKeyList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultiRegionKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class NotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class PolicyNameList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class PutKeyPolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutKeyPolicyInput, context: context)
        type = Types::PutKeyPolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.policy_name = params[:policy_name] unless params[:policy_name].nil?
        type.policy = params[:policy] unless params[:policy].nil?
        type.bypass_policy_lockout_safety_check = params[:bypass_policy_lockout_safety_check] unless params[:bypass_policy_lockout_safety_check].nil?
        type
      end
    end

    class PutKeyPolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutKeyPolicyOutput, context: context)
        type = Types::PutKeyPolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class ReEncryptInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReEncryptInput, context: context)
        type = Types::ReEncryptInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.ciphertext_blob = params[:ciphertext_blob] unless params[:ciphertext_blob].nil?
        type.source_encryption_context = EncryptionContextType.build(params[:source_encryption_context], context: "#{context}[:source_encryption_context]") unless params[:source_encryption_context].nil?
        type.source_key_id = params[:source_key_id] unless params[:source_key_id].nil?
        type.destination_key_id = params[:destination_key_id] unless params[:destination_key_id].nil?
        type.destination_encryption_context = EncryptionContextType.build(params[:destination_encryption_context], context: "#{context}[:destination_encryption_context]") unless params[:destination_encryption_context].nil?
        type.source_encryption_algorithm = params[:source_encryption_algorithm] unless params[:source_encryption_algorithm].nil?
        type.destination_encryption_algorithm = params[:destination_encryption_algorithm] unless params[:destination_encryption_algorithm].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class ReEncryptOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReEncryptOutput, context: context)
        type = Types::ReEncryptOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.ciphertext_blob = params[:ciphertext_blob] unless params[:ciphertext_blob].nil?
        type.source_key_id = params[:source_key_id] unless params[:source_key_id].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.source_encryption_algorithm = params[:source_encryption_algorithm] unless params[:source_encryption_algorithm].nil?
        type.destination_encryption_algorithm = params[:destination_encryption_algorithm] unless params[:destination_encryption_algorithm].nil?
        type
      end
    end

    class RecipientInfo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RecipientInfo, context: context)
        type = Types::RecipientInfo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_encryption_algorithm = params[:key_encryption_algorithm] unless params[:key_encryption_algorithm].nil?
        type.attestation_document = params[:attestation_document] unless params[:attestation_document].nil?
        type
      end
    end

    class ReplicateKeyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicateKeyInput, context: context)
        type = Types::ReplicateKeyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.replica_region = params[:replica_region] unless params[:replica_region].nil?
        type.policy = params[:policy] unless params[:policy].nil?
        type.bypass_policy_lockout_safety_check = params[:bypass_policy_lockout_safety_check] unless params[:bypass_policy_lockout_safety_check].nil?
        type.description = params[:description] unless params[:description].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    class ReplicateKeyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicateKeyOutput, context: context)
        type = Types::ReplicateKeyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.replica_key_metadata = KeyMetadata.build(params[:replica_key_metadata], context: "#{context}[:replica_key_metadata]") unless params[:replica_key_metadata].nil?
        type.replica_policy = params[:replica_policy] unless params[:replica_policy].nil?
        type.replica_tags = TagList.build(params[:replica_tags], context: "#{context}[:replica_tags]") unless params[:replica_tags].nil?
        type
      end
    end

    class RetireGrantInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RetireGrantInput, context: context)
        type = Types::RetireGrantInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.grant_token = params[:grant_token] unless params[:grant_token].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.grant_id = params[:grant_id] unless params[:grant_id].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class RetireGrantOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RetireGrantOutput, context: context)
        type = Types::RetireGrantOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class RevokeGrantInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RevokeGrantInput, context: context)
        type = Types::RevokeGrantInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.grant_id = params[:grant_id] unless params[:grant_id].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class RevokeGrantOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RevokeGrantOutput, context: context)
        type = Types::RevokeGrantOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class ScheduleKeyDeletionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ScheduleKeyDeletionInput, context: context)
        type = Types::ScheduleKeyDeletionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.pending_window_in_days = params[:pending_window_in_days] unless params[:pending_window_in_days].nil?
        type
      end
    end

    class ScheduleKeyDeletionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ScheduleKeyDeletionOutput, context: context)
        type = Types::ScheduleKeyDeletionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.deletion_date = params[:deletion_date] unless params[:deletion_date].nil?
        type.key_state = params[:key_state] unless params[:key_state].nil?
        type.pending_window_in_days = params[:pending_window_in_days] unless params[:pending_window_in_days].nil?
        type
      end
    end

    class SignInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SignInput, context: context)
        type = Types::SignInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.message = params[:message] unless params[:message].nil?
        type.message_type = params[:message_type] unless params[:message_type].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.signing_algorithm = params[:signing_algorithm] unless params[:signing_algorithm].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class SignOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SignOutput, context: context)
        type = Types::SignOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.signature = params[:signature] unless params[:signature].nil?
        type.signing_algorithm = params[:signing_algorithm] unless params[:signing_algorithm].nil?
        type
      end
    end

    class SigningAlgorithmSpecList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class Tag
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tag_key = params[:tag_key] unless params[:tag_key].nil?
        type.tag_value = params[:tag_value] unless params[:tag_value].nil?
        type
      end
    end

    class TagException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagException, context: context)
        type = Types::TagException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class TagKeyList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TagList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class TagResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    class TagResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class UnsupportedOperationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class UntagResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    class UntagResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class UpdateAliasInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateAliasInput, context: context)
        type = Types::UpdateAliasInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.alias_name = params[:alias_name] unless params[:alias_name].nil?
        type.target_key_id = params[:target_key_id] unless params[:target_key_id].nil?
        type
      end
    end

    class UpdateAliasOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateAliasOutput, context: context)
        type = Types::UpdateAliasOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class UpdateCustomKeyStoreInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateCustomKeyStoreInput, context: context)
        type = Types::UpdateCustomKeyStoreInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.custom_key_store_id = params[:custom_key_store_id] unless params[:custom_key_store_id].nil?
        type.new_custom_key_store_name = params[:new_custom_key_store_name] unless params[:new_custom_key_store_name].nil?
        type.key_store_password = params[:key_store_password] unless params[:key_store_password].nil?
        type.cloud_hsm_cluster_id = params[:cloud_hsm_cluster_id] unless params[:cloud_hsm_cluster_id].nil?
        type.xks_proxy_uri_endpoint = params[:xks_proxy_uri_endpoint] unless params[:xks_proxy_uri_endpoint].nil?
        type.xks_proxy_uri_path = params[:xks_proxy_uri_path] unless params[:xks_proxy_uri_path].nil?
        type.xks_proxy_vpc_endpoint_service_name = params[:xks_proxy_vpc_endpoint_service_name] unless params[:xks_proxy_vpc_endpoint_service_name].nil?
        type.xks_proxy_authentication_credential = XksProxyAuthenticationCredentialType.build(params[:xks_proxy_authentication_credential], context: "#{context}[:xks_proxy_authentication_credential]") unless params[:xks_proxy_authentication_credential].nil?
        type.xks_proxy_connectivity = params[:xks_proxy_connectivity] unless params[:xks_proxy_connectivity].nil?
        type
      end
    end

    class UpdateCustomKeyStoreOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateCustomKeyStoreOutput, context: context)
        type = Types::UpdateCustomKeyStoreOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class UpdateKeyDescriptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateKeyDescriptionInput, context: context)
        type = Types::UpdateKeyDescriptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class UpdateKeyDescriptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateKeyDescriptionOutput, context: context)
        type = Types::UpdateKeyDescriptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class UpdatePrimaryRegionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdatePrimaryRegionInput, context: context)
        type = Types::UpdatePrimaryRegionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.primary_region = params[:primary_region] unless params[:primary_region].nil?
        type
      end
    end

    class UpdatePrimaryRegionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdatePrimaryRegionOutput, context: context)
        type = Types::UpdatePrimaryRegionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class VerifyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::VerifyInput, context: context)
        type = Types::VerifyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.message = params[:message] unless params[:message].nil?
        type.message_type = params[:message_type] unless params[:message_type].nil?
        type.signature = params[:signature] unless params[:signature].nil?
        type.signing_algorithm = params[:signing_algorithm] unless params[:signing_algorithm].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class VerifyMacInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::VerifyMacInput, context: context)
        type = Types::VerifyMacInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.mac_algorithm = params[:mac_algorithm] unless params[:mac_algorithm].nil?
        type.mac = params[:mac] unless params[:mac].nil?
        type.grant_tokens = GrantTokenList.build(params[:grant_tokens], context: "#{context}[:grant_tokens]") unless params[:grant_tokens].nil?
        type.dry_run = params[:dry_run] unless params[:dry_run].nil?
        type
      end
    end

    class VerifyMacOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::VerifyMacOutput, context: context)
        type = Types::VerifyMacOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.mac_valid = params[:mac_valid] unless params[:mac_valid].nil?
        type.mac_algorithm = params[:mac_algorithm] unless params[:mac_algorithm].nil?
        type
      end
    end

    class VerifyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::VerifyOutput, context: context)
        type = Types::VerifyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type.signature_valid = params[:signature_valid] unless params[:signature_valid].nil?
        type.signing_algorithm = params[:signing_algorithm] unless params[:signing_algorithm].nil?
        type
      end
    end

    class XksKeyAlreadyInUseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksKeyAlreadyInUseException, context: context)
        type = Types::XksKeyAlreadyInUseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksKeyConfigurationType
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksKeyConfigurationType, context: context)
        type = Types::XksKeyConfigurationType.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class XksKeyInvalidConfigurationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksKeyInvalidConfigurationException, context: context)
        type = Types::XksKeyInvalidConfigurationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksKeyNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksKeyNotFoundException, context: context)
        type = Types::XksKeyNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksProxyAuthenticationCredentialType
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyAuthenticationCredentialType, context: context)
        type = Types::XksProxyAuthenticationCredentialType.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.access_key_id = params[:access_key_id] unless params[:access_key_id].nil?
        type.raw_secret_access_key = params[:raw_secret_access_key] unless params[:raw_secret_access_key].nil?
        type
      end
    end

    class XksProxyConfigurationType
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyConfigurationType, context: context)
        type = Types::XksProxyConfigurationType.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.connectivity = params[:connectivity] unless params[:connectivity].nil?
        type.access_key_id = params[:access_key_id] unless params[:access_key_id].nil?
        type.uri_endpoint = params[:uri_endpoint] unless params[:uri_endpoint].nil?
        type.uri_path = params[:uri_path] unless params[:uri_path].nil?
        type.vpc_endpoint_service_name = params[:vpc_endpoint_service_name] unless params[:vpc_endpoint_service_name].nil?
        type
      end
    end

    class XksProxyIncorrectAuthenticationCredentialException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyIncorrectAuthenticationCredentialException, context: context)
        type = Types::XksProxyIncorrectAuthenticationCredentialException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksProxyInvalidConfigurationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyInvalidConfigurationException, context: context)
        type = Types::XksProxyInvalidConfigurationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksProxyInvalidResponseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyInvalidResponseException, context: context)
        type = Types::XksProxyInvalidResponseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksProxyUriEndpointInUseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyUriEndpointInUseException, context: context)
        type = Types::XksProxyUriEndpointInUseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksProxyUriInUseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyUriInUseException, context: context)
        type = Types::XksProxyUriInUseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksProxyUriUnreachableException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyUriUnreachableException, context: context)
        type = Types::XksProxyUriUnreachableException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksProxyVpcEndpointServiceInUseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyVpcEndpointServiceInUseException, context: context)
        type = Types::XksProxyVpcEndpointServiceInUseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksProxyVpcEndpointServiceInvalidConfigurationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyVpcEndpointServiceInvalidConfigurationException, context: context)
        type = Types::XksProxyVpcEndpointServiceInvalidConfigurationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class XksProxyVpcEndpointServiceNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::XksProxyVpcEndpointServiceNotFoundException, context: context)
        type = Types::XksProxyVpcEndpointServiceNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

  end
end
