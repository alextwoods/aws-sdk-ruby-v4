# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::KMS
  # @api private
  module Builders

    class CancelKeyDeletion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.CancelKeyDeletion'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ConnectCustomKeyStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ConnectCustomKeyStore'
        data = {}
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.CreateAlias'
        data = {}
        data['AliasName'] = input[:alias_name] unless input[:alias_name].nil?
        data['TargetKeyId'] = input[:target_key_id] unless input[:target_key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        data['CustomKeyStoreType'] = input[:custom_key_store_type] unless input[:custom_key_store_type].nil?
        data['XksProxyUriEndpoint'] = input[:xks_proxy_uri_endpoint] unless input[:xks_proxy_uri_endpoint].nil?
        data['XksProxyUriPath'] = input[:xks_proxy_uri_path] unless input[:xks_proxy_uri_path].nil?
        data['XksProxyVpcEndpointServiceName'] = input[:xks_proxy_vpc_endpoint_service_name] unless input[:xks_proxy_vpc_endpoint_service_name].nil?
        data['XksProxyAuthenticationCredential'] = XksProxyAuthenticationCredentialType.build(input[:xks_proxy_authentication_credential]) unless input[:xks_proxy_authentication_credential].nil?
        data['XksProxyConnectivity'] = input[:xks_proxy_connectivity] unless input[:xks_proxy_connectivity].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        data['Operations'] = GrantOperationList.build(input[:operations]) unless input[:operations].nil?
        data['Constraints'] = GrantConstraints.build(input[:constraints]) unless input[:constraints].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['MultiRegion'] = input[:multi_region] unless input[:multi_region].nil?
        data['XksKeyId'] = input[:xks_key_id] unless input[:xks_key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Decrypt
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.Decrypt'
        data = {}
        data['CiphertextBlob'] = ::Base64::encode64(input[:ciphertext_blob]).strip unless input[:ciphertext_blob].nil?
        data['EncryptionContext'] = EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['EncryptionAlgorithm'] = input[:encryption_algorithm] unless input[:encryption_algorithm].nil?
        data['Recipient'] = RecipientInfo.build(input[:recipient]) unless input[:recipient].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DeleteAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DeleteAlias'
        data = {}
        data['AliasName'] = input[:alias_name] unless input[:alias_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DeleteCustomKeyStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DeleteCustomKeyStore'
        data = {}
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DeleteImportedKeyMaterial
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DeleteImportedKeyMaterial'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DescribeKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DisableKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DisableKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DisableKeyRotation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DisableKeyRotation'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DisconnectCustomKeyStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.DisconnectCustomKeyStore'
        data = {}
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class EnableKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.EnableKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class EnableKeyRotation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.EnableKeyRotation'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Encrypt
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.Encrypt'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Plaintext'] = ::Base64::encode64(input[:plaintext]).strip unless input[:plaintext].nil?
        data['EncryptionContext'] = EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['EncryptionAlgorithm'] = input[:encryption_algorithm] unless input[:encryption_algorithm].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class EncryptionContextType
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class GenerateDataKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateDataKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['EncryptionContext'] = EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['NumberOfBytes'] = input[:number_of_bytes] unless input[:number_of_bytes].nil?
        data['KeySpec'] = input[:key_spec] unless input[:key_spec].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['Recipient'] = RecipientInfo.build(input[:recipient]) unless input[:recipient].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GenerateDataKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateDataKeyPair'
        data = {}
        data['EncryptionContext'] = EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['KeyPairSpec'] = input[:key_pair_spec] unless input[:key_pair_spec].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['Recipient'] = RecipientInfo.build(input[:recipient]) unless input[:recipient].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GenerateDataKeyPairWithoutPlaintext
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateDataKeyPairWithoutPlaintext'
        data = {}
        data['EncryptionContext'] = EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['KeyPairSpec'] = input[:key_pair_spec] unless input[:key_pair_spec].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GenerateDataKeyWithoutPlaintext
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateDataKeyWithoutPlaintext'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['EncryptionContext'] = EncryptionContextType.build(input[:encryption_context]) unless input[:encryption_context].nil?
        data['KeySpec'] = input[:key_spec] unless input[:key_spec].nil?
        data['NumberOfBytes'] = input[:number_of_bytes] unless input[:number_of_bytes].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GenerateMac
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateMac'
        data = {}
        data['Message'] = ::Base64::encode64(input[:message]).strip unless input[:message].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['MacAlgorithm'] = input[:mac_algorithm] unless input[:mac_algorithm].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GenerateRandom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GenerateRandom'
        data = {}
        data['NumberOfBytes'] = input[:number_of_bytes] unless input[:number_of_bytes].nil?
        data['CustomKeyStoreId'] = input[:custom_key_store_id] unless input[:custom_key_store_id].nil?
        data['Recipient'] = RecipientInfo.build(input[:recipient]) unless input[:recipient].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetKeyPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GetKeyPolicy'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetKeyRotationStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GetKeyRotationStatus'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GetPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.GetPublicKey'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GrantConstraints
      def self.build(input)
        data = {}
        data['EncryptionContextSubset'] = EncryptionContextType.build(input[:encryption_context_subset]) unless input[:encryption_context_subset].nil?
        data['EncryptionContextEquals'] = EncryptionContextType.build(input[:encryption_context_equals]) unless input[:encryption_context_equals].nil?
        data
      end
    end

    class GrantOperationList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class GrantTokenList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ImportKeyMaterial
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ImportKeyMaterial'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['ImportToken'] = ::Base64::encode64(input[:import_token]).strip unless input[:import_token].nil?
        data['EncryptedKeyMaterial'] = ::Base64::encode64(input[:encrypted_key_material]).strip unless input[:encrypted_key_material].nil?
        data['ValidTo'] = Hearth::TimeHelper.to_epoch_seconds(input[:valid_to]).to_i unless input[:valid_to].nil?
        data['ExpirationModel'] = input[:expiration_model] unless input[:expiration_model].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ListKeys'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ReEncrypt
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ReEncrypt'
        data = {}
        data['CiphertextBlob'] = ::Base64::encode64(input[:ciphertext_blob]).strip unless input[:ciphertext_blob].nil?
        data['SourceEncryptionContext'] = EncryptionContextType.build(input[:source_encryption_context]) unless input[:source_encryption_context].nil?
        data['SourceKeyId'] = input[:source_key_id] unless input[:source_key_id].nil?
        data['DestinationKeyId'] = input[:destination_key_id] unless input[:destination_key_id].nil?
        data['DestinationEncryptionContext'] = EncryptionContextType.build(input[:destination_encryption_context]) unless input[:destination_encryption_context].nil?
        data['SourceEncryptionAlgorithm'] = input[:source_encryption_algorithm] unless input[:source_encryption_algorithm].nil?
        data['DestinationEncryptionAlgorithm'] = input[:destination_encryption_algorithm] unless input[:destination_encryption_algorithm].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class RecipientInfo
      def self.build(input)
        data = {}
        data['KeyEncryptionAlgorithm'] = input[:key_encryption_algorithm] unless input[:key_encryption_algorithm].nil?
        data['AttestationDocument'] = ::Base64::encode64(input[:attestation_document]).strip unless input[:attestation_document].nil?
        data
      end
    end

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
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class RevokeGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.RevokeGrant'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['GrantId'] = input[:grant_id] unless input[:grant_id].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ScheduleKeyDeletion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.ScheduleKeyDeletion'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['PendingWindowInDays'] = input[:pending_window_in_days] unless input[:pending_window_in_days].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Sign
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.Sign'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Message'] = ::Base64::encode64(input[:message]).strip unless input[:message].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['SigningAlgorithm'] = input[:signing_algorithm] unless input[:signing_algorithm].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Tag
      def self.build(input)
        data = {}
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['TagValue'] = input[:tag_value] unless input[:tag_value].nil?
        data
      end
    end

    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.TagResource'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.UntagResource'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.UpdateAlias'
        data = {}
        data['AliasName'] = input[:alias_name] unless input[:alias_name].nil?
        data['TargetKeyId'] = input[:target_key_id] unless input[:target_key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

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
        data['XksProxyUriEndpoint'] = input[:xks_proxy_uri_endpoint] unless input[:xks_proxy_uri_endpoint].nil?
        data['XksProxyUriPath'] = input[:xks_proxy_uri_path] unless input[:xks_proxy_uri_path].nil?
        data['XksProxyVpcEndpointServiceName'] = input[:xks_proxy_vpc_endpoint_service_name] unless input[:xks_proxy_vpc_endpoint_service_name].nil?
        data['XksProxyAuthenticationCredential'] = XksProxyAuthenticationCredentialType.build(input[:xks_proxy_authentication_credential]) unless input[:xks_proxy_authentication_credential].nil?
        data['XksProxyConnectivity'] = input[:xks_proxy_connectivity] unless input[:xks_proxy_connectivity].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateKeyDescription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.UpdateKeyDescription'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdatePrimaryRegion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.UpdatePrimaryRegion'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['PrimaryRegion'] = input[:primary_region] unless input[:primary_region].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Verify
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.Verify'
        data = {}
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Message'] = ::Base64::encode64(input[:message]).strip unless input[:message].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['Signature'] = ::Base64::encode64(input[:signature]).strip unless input[:signature].nil?
        data['SigningAlgorithm'] = input[:signing_algorithm] unless input[:signing_algorithm].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class VerifyMac
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'TrentService.VerifyMac'
        data = {}
        data['Message'] = ::Base64::encode64(input[:message]).strip unless input[:message].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['MacAlgorithm'] = input[:mac_algorithm] unless input[:mac_algorithm].nil?
        data['Mac'] = ::Base64::encode64(input[:mac]).strip unless input[:mac].nil?
        data['GrantTokens'] = GrantTokenList.build(input[:grant_tokens]) unless input[:grant_tokens].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksProxyAuthenticationCredentialType
      def self.build(input)
        data = {}
        data['AccessKeyId'] = input[:access_key_id] unless input[:access_key_id].nil?
        data['RawSecretAccessKey'] = input[:raw_secret_access_key] unless input[:raw_secret_access_key].nil?
        data
      end
    end
  end
end
