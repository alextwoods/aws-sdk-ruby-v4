# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
  module Builders

    # Operation Builder for CancelKeyDeletion
    class CancelKeyDeletion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.CancelKeyDeletion'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ConnectCustomKeyStore
    class ConnectCustomKeyStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ConnectCustomKeyStore'
        data = {}
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAlias
    class CreateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.CreateAlias'
        data = {}
        data['AliasName'] = input[:alias_name] unless input[:alias_name].nil?
        data['TargetKeyId'] = input[:target_key_id] unless input[:target_key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCustomKeyStore
    class CreateCustomKeyStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.CreateCustomKeyStore'
        data = {}
        data['CustomKeyStoreName'] = input[:custom_key_store_name] unless input[:custom_key_store_name].nil?
        data['CloudHsmClusterId'] = input[:cloud_hsm_cluster_id] unless input[:cloud_hsm_cluster_id].nil?
        data['TrustAnchorCertificate'] = input[:trust_anchor_certificate] unless input[:trust_anchor_certificate].nil?
        data['KeyStorePassword'] = input[:key_store_password] unless input[:key_store_password].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateGrant
    class CreateGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.CreateGrant'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['GranteePrincipal'] = input[:grantee_principal] unless input[:grantee_principal].nil?
        data['RetiringPrincipal'] = input[:retiring_principal] unless input[:retiring_principal].nil?
        data['Operations'] = Builders::GrantOperationList.build(input[:operations]) unless input[:operations].nil?
        data['Constraints'] = Builders::GrantConstraints.build(input[:constraints]) unless input[:constraints].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GrantTokenList
    class GrantTokenList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GrantConstraints
    class GrantConstraints
      def self.build(input)
        data = {}
        data['EncryptionContextSubset'] = Builders::EncryptionContextType.build(input[:encryption_context_subset]) unless input[:encryption_context_subset].nil?
        data['EncryptionContextEquals'] = Builders::EncryptionContextType.build(input[:encryption_context_equals]) unless input[:encryption_context_equals].nil?
        data
      end
    end

    # Map Builder for EncryptionContextType
    class EncryptionContextType
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for GrantOperationList
    class GrantOperationList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateKey
    class CreateKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.CreateKey'
        data = {}
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['KeyUsage'] = input[:key_usage] unless input[:key_usage].nil?
        data['CustomerMasterKeySpec'] = input[:customer_master_key_spec] unless input[:customer_master_key_spec].nil?
        data['KeySpec'] = input[:key_spec] unless input[:key_spec].nil?
        data['Origin'] = input[:origin] unless input[:origin].nil?
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        data['BypassPolicyLockoutSafetyCheck'] = input[:bypass_policy_lockout_safety_check] unless input[:bypass_policy_lockout_safety_check].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['MultiRegion'] = input[:multi_region] unless input[:multi_region].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['TagValue'] = input[:tag_value] unless input[:tag_value].nil?
        data
      end
    end

    # Operation Builder for Decrypt
    class Decrypt
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.Decrypt'
        data = {}
        data['CiphertextBlob'] = Base64::encode64(input[:ciphertext_blob]).strip unless input[:ciphertext_blob].nil?
        data['EncryptionContext'] = Builders::EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['EncryptionAlgorithm'] = input[:encryption_algorithm] unless input[:encryption_algorithm].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAlias
    class DeleteAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DeleteAlias'
        data = {}
        data['AliasName'] = input[:alias_name] unless input[:alias_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCustomKeyStore
    class DeleteCustomKeyStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DeleteCustomKeyStore'
        data = {}
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteImportedKeyMaterial
    class DeleteImportedKeyMaterial
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DeleteImportedKeyMaterial'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCustomKeyStores
    class DescribeCustomKeyStores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DescribeCustomKeyStores'
        data = {}
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        data['CustomKeyStoreName'] = input[:custom_key_store_name] unless input[:custom_key_store_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeKey
    class DescribeKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DescribeKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableKey
    class DisableKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DisableKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableKeyRotation
    class DisableKeyRotation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DisableKeyRotation'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisconnectCustomKeyStore
    class DisconnectCustomKeyStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DisconnectCustomKeyStore'
        data = {}
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableKey
    class EnableKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.EnableKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableKeyRotation
    class EnableKeyRotation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.EnableKeyRotation'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Encrypt
    class Encrypt
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.Encrypt'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Plaintext'] = Base64::encode64(input[:plaintext]).strip unless input[:plaintext].nil?
        data['EncryptionContext'] = Builders::EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['EncryptionAlgorithm'] = input[:encryption_algorithm] unless input[:encryption_algorithm].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GenerateDataKey
    class GenerateDataKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateDataKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['EncryptionContext'] = Builders::EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['NumberOfBytes'] = input[:number_of_bytes] unless input[:number_of_bytes].nil?
        data['KeySpec'] = input[:key_spec] unless input[:key_spec].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GenerateDataKeyPair
    class GenerateDataKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateDataKeyPair'
        data = {}
        data['EncryptionContext'] = Builders::EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['KeyPairSpec'] = input[:key_pair_spec] unless input[:key_pair_spec].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GenerateDataKeyPairWithoutPlaintext
    class GenerateDataKeyPairWithoutPlaintext
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateDataKeyPairWithoutPlaintext'
        data = {}
        data['EncryptionContext'] = Builders::EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['KeyPairSpec'] = input[:key_pair_spec] unless input[:key_pair_spec].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GenerateDataKeyWithoutPlaintext
    class GenerateDataKeyWithoutPlaintext
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateDataKeyWithoutPlaintext'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['EncryptionContext'] = Builders::EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['KeySpec'] = input[:key_spec] unless input[:key_spec].nil?
        data['NumberOfBytes'] = input[:number_of_bytes] unless input[:number_of_bytes].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GenerateMac
    class GenerateMac
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateMac'
        data = {}
        data['Message'] = Base64::encode64(input[:message]).strip unless input[:message].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['MacAlgorithm'] = input[:mac_algorithm] unless input[:mac_algorithm].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GenerateRandom
    class GenerateRandom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateRandom'
        data = {}
        data['NumberOfBytes'] = input[:number_of_bytes] unless input[:number_of_bytes].nil?
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetKeyPolicy
    class GetKeyPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GetKeyPolicy'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetKeyRotationStatus
    class GetKeyRotationStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GetKeyRotationStatus'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetParametersForImport
    class GetParametersForImport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GetParametersForImport'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['WrappingAlgorithm'] = input[:wrapping_algorithm] unless input[:wrapping_algorithm].nil?
        data['WrappingKeySpec'] = input[:wrapping_key_spec] unless input[:wrapping_key_spec].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPublicKey
    class GetPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GetPublicKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportKeyMaterial
    class ImportKeyMaterial
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ImportKeyMaterial'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['ImportToken'] = Base64::encode64(input[:import_token]).strip unless input[:import_token].nil?
        data['EncryptedKeyMaterial'] = Base64::encode64(input[:encrypted_key_material]).strip unless input[:encrypted_key_material].nil?
        data['ValidTo'] = Hearth::TimeHelper.to_epoch_seconds(input[:valid_to]).to_i unless input[:valid_to].nil?
        data['ExpirationModel'] = input[:expiration_model] unless input[:expiration_model].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAliases
    class ListAliases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ListAliases'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGrants
    class ListGrants
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ListGrants'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['GrantId'] = input[:grant_id] unless input[:grant_id].nil?
        data['GranteePrincipal'] = input[:grantee_principal] unless input[:grantee_principal].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListKeyPolicies
    class ListKeyPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ListKeyPolicies'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListKeys
    class ListKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ListKeys'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourceTags
    class ListResourceTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ListResourceTags'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRetirableGrants
    class ListRetirableGrants
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ListRetirableGrants'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['RetiringPrincipal'] = input[:retiring_principal] unless input[:retiring_principal].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutKeyPolicy
    class PutKeyPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.PutKeyPolicy'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data['BypassPolicyLockoutSafetyCheck'] = input[:bypass_policy_lockout_safety_check] unless input[:bypass_policy_lockout_safety_check].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReEncrypt
    class ReEncrypt
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ReEncrypt'
        data = {}
        data['CiphertextBlob'] = Base64::encode64(input[:ciphertext_blob]).strip unless input[:ciphertext_blob].nil?
        data['SourceEncryptionContext'] = Builders::EncryptionContextType.build(input[:source_encryption_context]) unless input[:source_encryption_context].nil?
        data['SourceKeyId'] = input[:source_key_id] unless input[:source_key_id].nil?
        data['DestinationKeyId'] = input[:destination_key_id] unless input[:destination_key_id].nil?
        data['DestinationEncryptionContext'] = Builders::EncryptionContextType.build(input[:destination_encryption_context]) unless input[:destination_encryption_context].nil?
        data['SourceEncryptionAlgorithm'] = input[:source_encryption_algorithm] unless input[:source_encryption_algorithm].nil?
        data['DestinationEncryptionAlgorithm'] = input[:destination_encryption_algorithm] unless input[:destination_encryption_algorithm].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReplicateKey
    class ReplicateKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ReplicateKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['ReplicaRegion'] = input[:replica_region] unless input[:replica_region].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data['BypassPolicyLockoutSafetyCheck'] = input[:bypass_policy_lockout_safety_check] unless input[:bypass_policy_lockout_safety_check].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RetireGrant
    class RetireGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.RetireGrant'
        data = {}
        data['GrantToken'] = input[:grant_token] unless input[:grant_token].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['GrantId'] = input[:grant_id] unless input[:grant_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RevokeGrant
    class RevokeGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.RevokeGrant'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['GrantId'] = input[:grant_id] unless input[:grant_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ScheduleKeyDeletion
    class ScheduleKeyDeletion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ScheduleKeyDeletion'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['PendingWindowInDays'] = input[:pending_window_in_days] unless input[:pending_window_in_days].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Sign
    class Sign
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.Sign'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Message'] = Base64::encode64(input[:message]).strip unless input[:message].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['SigningAlgorithm'] = input[:signing_algorithm] unless input[:signing_algorithm].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.TagResource'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.UntagResource'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAlias
    class UpdateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.UpdateAlias'
        data = {}
        data['AliasName'] = input[:alias_name] unless input[:alias_name].nil?
        data['TargetKeyId'] = input[:target_key_id] unless input[:target_key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCustomKeyStore
    class UpdateCustomKeyStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.UpdateCustomKeyStore'
        data = {}
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        data['NewCustomKeyStoreName'] = input[:new_custom_key_store_name] unless input[:new_custom_key_store_name].nil?
        data['KeyStorePassword'] = input[:key_store_password] unless input[:key_store_password].nil?
        data['CloudHsmClusterId'] = input[:cloud_hsm_cluster_id] unless input[:cloud_hsm_cluster_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateKeyDescription
    class UpdateKeyDescription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.UpdateKeyDescription'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePrimaryRegion
    class UpdatePrimaryRegion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.UpdatePrimaryRegion'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['PrimaryRegion'] = input[:primary_region] unless input[:primary_region].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Verify
    class Verify
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.Verify'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Message'] = Base64::encode64(input[:message]).strip unless input[:message].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['Signature'] = Base64::encode64(input[:signature]).strip unless input[:signature].nil?
        data['SigningAlgorithm'] = input[:signing_algorithm] unless input[:signing_algorithm].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for VerifyMac
    class VerifyMac
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.VerifyMac'
        data = {}
        data['Message'] = Base64::encode64(input[:message]).strip unless input[:message].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['MacAlgorithm'] = input[:mac_algorithm] unless input[:mac_algorithm].nil?
        data['Mac'] = Base64::encode64(input[:mac]).strip unless input[:mac].nil?
        data['GrantTokens'] = Builders::GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
