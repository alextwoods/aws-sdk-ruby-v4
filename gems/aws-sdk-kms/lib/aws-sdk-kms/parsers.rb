# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::KMS
  # @api private
  module Parsers

    class AliasList
      def self.parse(list)
        list.map do |value|
          AliasListEntry.parse(value) unless value.nil?
        end
      end
    end

    class AliasListEntry
      def self.parse(map)
        data = Types::AliasListEntry.new
        data.alias_name = map['AliasName']
        data.alias_arn = map['AliasArn']
        data.target_key_id = map['TargetKeyId']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.last_updated_date = Time.at(map['LastUpdatedDate'].to_i) if map['LastUpdatedDate']
        return data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CancelKeyDeletion
    class CancelKeyDeletion
      def self.parse(http_resp)
        data = Types::CancelKeyDeletionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_id = map['KeyId']
        data
      end
    end

    # Error Parser for CloudHsmClusterInUseException
    class CloudHsmClusterInUseException
      def self.parse(http_resp)
        data = Types::CloudHsmClusterInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CloudHsmClusterInvalidConfigurationException
    class CloudHsmClusterInvalidConfigurationException
      def self.parse(http_resp)
        data = Types::CloudHsmClusterInvalidConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CloudHsmClusterNotActiveException
    class CloudHsmClusterNotActiveException
      def self.parse(http_resp)
        data = Types::CloudHsmClusterNotActiveException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CloudHsmClusterNotFoundException
    class CloudHsmClusterNotFoundException
      def self.parse(http_resp)
        data = Types::CloudHsmClusterNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CloudHsmClusterNotRelatedException
    class CloudHsmClusterNotRelatedException
      def self.parse(http_resp)
        data = Types::CloudHsmClusterNotRelatedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ConnectCustomKeyStore
    class ConnectCustomKeyStore
      def self.parse(http_resp)
        data = Types::ConnectCustomKeyStoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateAlias
    class CreateAlias
      def self.parse(http_resp)
        data = Types::CreateAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateCustomKeyStore
    class CreateCustomKeyStore
      def self.parse(http_resp)
        data = Types::CreateCustomKeyStoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.custom_key_store_id = map['CustomKeyStoreId']
        data
      end
    end

    # Operation Parser for CreateGrant
    class CreateGrant
      def self.parse(http_resp)
        data = Types::CreateGrantOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grant_token = map['GrantToken']
        data.grant_id = map['GrantId']
        data
      end
    end

    # Operation Parser for CreateKey
    class CreateKey
      def self.parse(http_resp)
        data = Types::CreateKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_metadata = (KeyMetadata.parse(map['KeyMetadata']) unless map['KeyMetadata'].nil?)
        data
      end
    end

    # Error Parser for CustomKeyStoreHasCMKsException
    class CustomKeyStoreHasCMKsException
      def self.parse(http_resp)
        data = Types::CustomKeyStoreHasCMKsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CustomKeyStoreInvalidStateException
    class CustomKeyStoreInvalidStateException
      def self.parse(http_resp)
        data = Types::CustomKeyStoreInvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CustomKeyStoreNameInUseException
    class CustomKeyStoreNameInUseException
      def self.parse(http_resp)
        data = Types::CustomKeyStoreNameInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CustomKeyStoreNotFoundException
    class CustomKeyStoreNotFoundException
      def self.parse(http_resp)
        data = Types::CustomKeyStoreNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    class CustomKeyStoresList
      def self.parse(list)
        list.map do |value|
          CustomKeyStoresListEntry.parse(value) unless value.nil?
        end
      end
    end

    class CustomKeyStoresListEntry
      def self.parse(map)
        data = Types::CustomKeyStoresListEntry.new
        data.custom_key_store_id = map['CustomKeyStoreId']
        data.custom_key_store_name = map['CustomKeyStoreName']
        data.cloud_hsm_cluster_id = map['CloudHsmClusterId']
        data.trust_anchor_certificate = map['TrustAnchorCertificate']
        data.connection_state = map['ConnectionState']
        data.connection_error_code = map['ConnectionErrorCode']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.custom_key_store_type = map['CustomKeyStoreType']
        data.xks_proxy_configuration = (XksProxyConfigurationType.parse(map['XksProxyConfiguration']) unless map['XksProxyConfiguration'].nil?)
        return data
      end
    end

    # Operation Parser for Decrypt
    class Decrypt
      def self.parse(http_resp)
        data = Types::DecryptOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_id = map['KeyId']
        data.plaintext = ::Base64::decode64(map['Plaintext']) unless map['Plaintext'].nil?
        data.encryption_algorithm = map['EncryptionAlgorithm']
        data.ciphertext_for_recipient = ::Base64::decode64(map['CiphertextForRecipient']) unless map['CiphertextForRecipient'].nil?
        data
      end
    end

    # Operation Parser for DeleteAlias
    class DeleteAlias
      def self.parse(http_resp)
        data = Types::DeleteAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteCustomKeyStore
    class DeleteCustomKeyStore
      def self.parse(http_resp)
        data = Types::DeleteCustomKeyStoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteImportedKeyMaterial
    class DeleteImportedKeyMaterial
      def self.parse(http_resp)
        data = Types::DeleteImportedKeyMaterialOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DependencyTimeoutException
    class DependencyTimeoutException
      def self.parse(http_resp)
        data = Types::DependencyTimeoutException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeCustomKeyStores
    class DescribeCustomKeyStores
      def self.parse(http_resp)
        data = Types::DescribeCustomKeyStoresOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.custom_key_stores = (CustomKeyStoresList.parse(map['CustomKeyStores']) unless map['CustomKeyStores'].nil?)
        data.next_marker = map['NextMarker']
        data.truncated = map['Truncated']
        data
      end
    end

    # Operation Parser for DescribeKey
    class DescribeKey
      def self.parse(http_resp)
        data = Types::DescribeKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_metadata = (KeyMetadata.parse(map['KeyMetadata']) unless map['KeyMetadata'].nil?)
        data
      end
    end

    # Operation Parser for DisableKey
    class DisableKey
      def self.parse(http_resp)
        data = Types::DisableKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisableKeyRotation
    class DisableKeyRotation
      def self.parse(http_resp)
        data = Types::DisableKeyRotationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DisabledException
    class DisabledException
      def self.parse(http_resp)
        data = Types::DisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DisconnectCustomKeyStore
    class DisconnectCustomKeyStore
      def self.parse(http_resp)
        data = Types::DisconnectCustomKeyStoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DryRunOperationException
    class DryRunOperationException
      def self.parse(http_resp)
        data = Types::DryRunOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for EnableKey
    class EnableKey
      def self.parse(http_resp)
        data = Types::EnableKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableKeyRotation
    class EnableKeyRotation
      def self.parse(http_resp)
        data = Types::EnableKeyRotationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for Encrypt
    class Encrypt
      def self.parse(http_resp)
        data = Types::EncryptOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ciphertext_blob = ::Base64::decode64(map['CiphertextBlob']) unless map['CiphertextBlob'].nil?
        data.key_id = map['KeyId']
        data.encryption_algorithm = map['EncryptionAlgorithm']
        data
      end
    end

    class EncryptionAlgorithmSpecList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class EncryptionContextType
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ExpiredImportTokenException
    class ExpiredImportTokenException
      def self.parse(http_resp)
        data = Types::ExpiredImportTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GenerateDataKey
    class GenerateDataKey
      def self.parse(http_resp)
        data = Types::GenerateDataKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ciphertext_blob = ::Base64::decode64(map['CiphertextBlob']) unless map['CiphertextBlob'].nil?
        data.plaintext = ::Base64::decode64(map['Plaintext']) unless map['Plaintext'].nil?
        data.key_id = map['KeyId']
        data.ciphertext_for_recipient = ::Base64::decode64(map['CiphertextForRecipient']) unless map['CiphertextForRecipient'].nil?
        data
      end
    end

    # Operation Parser for GenerateDataKeyPair
    class GenerateDataKeyPair
      def self.parse(http_resp)
        data = Types::GenerateDataKeyPairOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.private_key_ciphertext_blob = ::Base64::decode64(map['PrivateKeyCiphertextBlob']) unless map['PrivateKeyCiphertextBlob'].nil?
        data.private_key_plaintext = ::Base64::decode64(map['PrivateKeyPlaintext']) unless map['PrivateKeyPlaintext'].nil?
        data.public_key = ::Base64::decode64(map['PublicKey']) unless map['PublicKey'].nil?
        data.key_id = map['KeyId']
        data.key_pair_spec = map['KeyPairSpec']
        data.ciphertext_for_recipient = ::Base64::decode64(map['CiphertextForRecipient']) unless map['CiphertextForRecipient'].nil?
        data
      end
    end

    # Operation Parser for GenerateDataKeyPairWithoutPlaintext
    class GenerateDataKeyPairWithoutPlaintext
      def self.parse(http_resp)
        data = Types::GenerateDataKeyPairWithoutPlaintextOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.private_key_ciphertext_blob = ::Base64::decode64(map['PrivateKeyCiphertextBlob']) unless map['PrivateKeyCiphertextBlob'].nil?
        data.public_key = ::Base64::decode64(map['PublicKey']) unless map['PublicKey'].nil?
        data.key_id = map['KeyId']
        data.key_pair_spec = map['KeyPairSpec']
        data
      end
    end

    # Operation Parser for GenerateDataKeyWithoutPlaintext
    class GenerateDataKeyWithoutPlaintext
      def self.parse(http_resp)
        data = Types::GenerateDataKeyWithoutPlaintextOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ciphertext_blob = ::Base64::decode64(map['CiphertextBlob']) unless map['CiphertextBlob'].nil?
        data.key_id = map['KeyId']
        data
      end
    end

    # Operation Parser for GenerateMac
    class GenerateMac
      def self.parse(http_resp)
        data = Types::GenerateMacOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.mac = ::Base64::decode64(map['Mac']) unless map['Mac'].nil?
        data.mac_algorithm = map['MacAlgorithm']
        data.key_id = map['KeyId']
        data
      end
    end

    # Operation Parser for GenerateRandom
    class GenerateRandom
      def self.parse(http_resp)
        data = Types::GenerateRandomOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.plaintext = ::Base64::decode64(map['Plaintext']) unless map['Plaintext'].nil?
        data.ciphertext_for_recipient = ::Base64::decode64(map['CiphertextForRecipient']) unless map['CiphertextForRecipient'].nil?
        data
      end
    end

    # Operation Parser for GetKeyPolicy
    class GetKeyPolicy
      def self.parse(http_resp)
        data = Types::GetKeyPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for GetKeyRotationStatus
    class GetKeyRotationStatus
      def self.parse(http_resp)
        data = Types::GetKeyRotationStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_rotation_enabled = map['KeyRotationEnabled']
        data
      end
    end

    # Operation Parser for GetParametersForImport
    class GetParametersForImport
      def self.parse(http_resp)
        data = Types::GetParametersForImportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_id = map['KeyId']
        data.import_token = ::Base64::decode64(map['ImportToken']) unless map['ImportToken'].nil?
        data.public_key = ::Base64::decode64(map['PublicKey']) unless map['PublicKey'].nil?
        data.parameters_valid_to = Time.at(map['ParametersValidTo'].to_i) if map['ParametersValidTo']
        data
      end
    end

    # Operation Parser for GetPublicKey
    class GetPublicKey
      def self.parse(http_resp)
        data = Types::GetPublicKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_id = map['KeyId']
        data.public_key = ::Base64::decode64(map['PublicKey']) unless map['PublicKey'].nil?
        data.customer_master_key_spec = map['CustomerMasterKeySpec']
        data.key_spec = map['KeySpec']
        data.key_usage = map['KeyUsage']
        data.encryption_algorithms = (EncryptionAlgorithmSpecList.parse(map['EncryptionAlgorithms']) unless map['EncryptionAlgorithms'].nil?)
        data.signing_algorithms = (SigningAlgorithmSpecList.parse(map['SigningAlgorithms']) unless map['SigningAlgorithms'].nil?)
        data
      end
    end

    class GrantConstraints
      def self.parse(map)
        data = Types::GrantConstraints.new
        data.encryption_context_subset = (EncryptionContextType.parse(map['EncryptionContextSubset']) unless map['EncryptionContextSubset'].nil?)
        data.encryption_context_equals = (EncryptionContextType.parse(map['EncryptionContextEquals']) unless map['EncryptionContextEquals'].nil?)
        return data
      end
    end

    class GrantList
      def self.parse(list)
        list.map do |value|
          GrantListEntry.parse(value) unless value.nil?
        end
      end
    end

    class GrantListEntry
      def self.parse(map)
        data = Types::GrantListEntry.new
        data.key_id = map['KeyId']
        data.grant_id = map['GrantId']
        data.name = map['Name']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.grantee_principal = map['GranteePrincipal']
        data.retiring_principal = map['RetiringPrincipal']
        data.issuing_account = map['IssuingAccount']
        data.operations = (GrantOperationList.parse(map['Operations']) unless map['Operations'].nil?)
        data.constraints = (GrantConstraints.parse(map['Constraints']) unless map['Constraints'].nil?)
        return data
      end
    end

    class GrantOperationList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ImportKeyMaterial
    class ImportKeyMaterial
      def self.parse(http_resp)
        data = Types::ImportKeyMaterialOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for IncorrectKeyException
    class IncorrectKeyException
      def self.parse(http_resp)
        data = Types::IncorrectKeyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for IncorrectKeyMaterialException
    class IncorrectKeyMaterialException
      def self.parse(http_resp)
        data = Types::IncorrectKeyMaterialException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for IncorrectTrustAnchorException
    class IncorrectTrustAnchorException
      def self.parse(http_resp)
        data = Types::IncorrectTrustAnchorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidAliasNameException
    class InvalidAliasNameException
      def self.parse(http_resp)
        data = Types::InvalidAliasNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidArnException
    class InvalidArnException
      def self.parse(http_resp)
        data = Types::InvalidArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidCiphertextException
    class InvalidCiphertextException
      def self.parse(http_resp)
        data = Types::InvalidCiphertextException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidGrantIdException
    class InvalidGrantIdException
      def self.parse(http_resp)
        data = Types::InvalidGrantIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidGrantTokenException
    class InvalidGrantTokenException
      def self.parse(http_resp)
        data = Types::InvalidGrantTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidImportTokenException
    class InvalidImportTokenException
      def self.parse(http_resp)
        data = Types::InvalidImportTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidKeyUsageException
    class InvalidKeyUsageException
      def self.parse(http_resp)
        data = Types::InvalidKeyUsageException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidMarkerException
    class InvalidMarkerException
      def self.parse(http_resp)
        data = Types::InvalidMarkerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSInternalException
    class KMSInternalException
      def self.parse(http_resp)
        data = Types::KMSInternalException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSInvalidMacException
    class KMSInvalidMacException
      def self.parse(http_resp)
        data = Types::KMSInvalidMacException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSInvalidSignatureException
    class KMSInvalidSignatureException
      def self.parse(http_resp)
        data = Types::KMSInvalidSignatureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for KMSInvalidStateException
    class KMSInvalidStateException
      def self.parse(http_resp)
        data = Types::KMSInvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    class KeyList
      def self.parse(list)
        list.map do |value|
          KeyListEntry.parse(value) unless value.nil?
        end
      end
    end

    class KeyListEntry
      def self.parse(map)
        data = Types::KeyListEntry.new
        data.key_id = map['KeyId']
        data.key_arn = map['KeyArn']
        return data
      end
    end

    class KeyMetadata
      def self.parse(map)
        data = Types::KeyMetadata.new
        data.aws_account_id = map['AWSAccountId']
        data.key_id = map['KeyId']
        data.arn = map['Arn']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.enabled = map['Enabled']
        data.description = map['Description']
        data.key_usage = map['KeyUsage']
        data.key_state = map['KeyState']
        data.deletion_date = Time.at(map['DeletionDate'].to_i) if map['DeletionDate']
        data.valid_to = Time.at(map['ValidTo'].to_i) if map['ValidTo']
        data.origin = map['Origin']
        data.custom_key_store_id = map['CustomKeyStoreId']
        data.cloud_hsm_cluster_id = map['CloudHsmClusterId']
        data.expiration_model = map['ExpirationModel']
        data.key_manager = map['KeyManager']
        data.customer_master_key_spec = map['CustomerMasterKeySpec']
        data.key_spec = map['KeySpec']
        data.encryption_algorithms = (EncryptionAlgorithmSpecList.parse(map['EncryptionAlgorithms']) unless map['EncryptionAlgorithms'].nil?)
        data.signing_algorithms = (SigningAlgorithmSpecList.parse(map['SigningAlgorithms']) unless map['SigningAlgorithms'].nil?)
        data.multi_region = map['MultiRegion']
        data.multi_region_configuration = (MultiRegionConfiguration.parse(map['MultiRegionConfiguration']) unless map['MultiRegionConfiguration'].nil?)
        data.pending_deletion_window_in_days = map['PendingDeletionWindowInDays']
        data.mac_algorithms = (MacAlgorithmSpecList.parse(map['MacAlgorithms']) unless map['MacAlgorithms'].nil?)
        data.xks_key_configuration = (XksKeyConfigurationType.parse(map['XksKeyConfiguration']) unless map['XksKeyConfiguration'].nil?)
        return data
      end
    end

    # Error Parser for KeyUnavailableException
    class KeyUnavailableException
      def self.parse(http_resp)
        data = Types::KeyUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListAliases
    class ListAliases
      def self.parse(http_resp)
        data = Types::ListAliasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aliases = (AliasList.parse(map['Aliases']) unless map['Aliases'].nil?)
        data.next_marker = map['NextMarker']
        data.truncated = map['Truncated']
        data
      end
    end

    # Operation Parser for ListGrants
    class ListGrants
      def self.parse(http_resp)
        data = Types::ListGrantsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grants = (GrantList.parse(map['Grants']) unless map['Grants'].nil?)
        data.next_marker = map['NextMarker']
        data.truncated = map['Truncated']
        data
      end
    end

    # Operation Parser for ListKeyPolicies
    class ListKeyPolicies
      def self.parse(http_resp)
        data = Types::ListKeyPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_names = (PolicyNameList.parse(map['PolicyNames']) unless map['PolicyNames'].nil?)
        data.next_marker = map['NextMarker']
        data.truncated = map['Truncated']
        data
      end
    end

    # Operation Parser for ListKeys
    class ListKeys
      def self.parse(http_resp)
        data = Types::ListKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.keys = (KeyList.parse(map['Keys']) unless map['Keys'].nil?)
        data.next_marker = map['NextMarker']
        data.truncated = map['Truncated']
        data
      end
    end

    # Operation Parser for ListResourceTags
    class ListResourceTags
      def self.parse(http_resp)
        data = Types::ListResourceTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_marker = map['NextMarker']
        data.truncated = map['Truncated']
        data
      end
    end

    # Operation Parser for ListRetirableGrants
    class ListRetirableGrants
      def self.parse(http_resp)
        data = Types::ListRetirableGrantsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grants = (GrantList.parse(map['Grants']) unless map['Grants'].nil?)
        data.next_marker = map['NextMarker']
        data.truncated = map['Truncated']
        data
      end
    end

    class MacAlgorithmSpecList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for MalformedPolicyDocumentException
    class MalformedPolicyDocumentException
      def self.parse(http_resp)
        data = Types::MalformedPolicyDocumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    class MultiRegionConfiguration
      def self.parse(map)
        data = Types::MultiRegionConfiguration.new
        data.multi_region_key_type = map['MultiRegionKeyType']
        data.primary_key = (MultiRegionKey.parse(map['PrimaryKey']) unless map['PrimaryKey'].nil?)
        data.replica_keys = (MultiRegionKeyList.parse(map['ReplicaKeys']) unless map['ReplicaKeys'].nil?)
        return data
      end
    end

    class MultiRegionKey
      def self.parse(map)
        data = Types::MultiRegionKey.new
        data.arn = map['Arn']
        data.region = map['Region']
        return data
      end
    end

    class MultiRegionKeyList
      def self.parse(list)
        list.map do |value|
          MultiRegionKey.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    class PolicyNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for PutKeyPolicy
    class PutKeyPolicy
      def self.parse(http_resp)
        data = Types::PutKeyPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ReEncrypt
    class ReEncrypt
      def self.parse(http_resp)
        data = Types::ReEncryptOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ciphertext_blob = ::Base64::decode64(map['CiphertextBlob']) unless map['CiphertextBlob'].nil?
        data.source_key_id = map['SourceKeyId']
        data.key_id = map['KeyId']
        data.source_encryption_algorithm = map['SourceEncryptionAlgorithm']
        data.destination_encryption_algorithm = map['DestinationEncryptionAlgorithm']
        data
      end
    end

    # Operation Parser for ReplicateKey
    class ReplicateKey
      def self.parse(http_resp)
        data = Types::ReplicateKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.replica_key_metadata = (KeyMetadata.parse(map['ReplicaKeyMetadata']) unless map['ReplicaKeyMetadata'].nil?)
        data.replica_policy = map['ReplicaPolicy']
        data.replica_tags = (TagList.parse(map['ReplicaTags']) unless map['ReplicaTags'].nil?)
        data
      end
    end

    # Operation Parser for RetireGrant
    class RetireGrant
      def self.parse(http_resp)
        data = Types::RetireGrantOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RevokeGrant
    class RevokeGrant
      def self.parse(http_resp)
        data = Types::RevokeGrantOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ScheduleKeyDeletion
    class ScheduleKeyDeletion
      def self.parse(http_resp)
        data = Types::ScheduleKeyDeletionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_id = map['KeyId']
        data.deletion_date = Time.at(map['DeletionDate'].to_i) if map['DeletionDate']
        data.key_state = map['KeyState']
        data.pending_window_in_days = map['PendingWindowInDays']
        data
      end
    end

    # Operation Parser for Sign
    class Sign
      def self.parse(http_resp)
        data = Types::SignOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_id = map['KeyId']
        data.signature = ::Base64::decode64(map['Signature']) unless map['Signature'].nil?
        data.signing_algorithm = map['SigningAlgorithm']
        data
      end
    end

    class SigningAlgorithmSpecList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.tag_key = map['TagKey']
        data.tag_value = map['TagValue']
        return data
      end
    end

    # Error Parser for TagException
    class TagException
      def self.parse(http_resp)
        data = Types::TagException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateAlias
    class UpdateAlias
      def self.parse(http_resp)
        data = Types::UpdateAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateCustomKeyStore
    class UpdateCustomKeyStore
      def self.parse(http_resp)
        data = Types::UpdateCustomKeyStoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateKeyDescription
    class UpdateKeyDescription
      def self.parse(http_resp)
        data = Types::UpdateKeyDescriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdatePrimaryRegion
    class UpdatePrimaryRegion
      def self.parse(http_resp)
        data = Types::UpdatePrimaryRegionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for Verify
    class Verify
      def self.parse(http_resp)
        data = Types::VerifyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_id = map['KeyId']
        data.signature_valid = map['SignatureValid']
        data.signing_algorithm = map['SigningAlgorithm']
        data
      end
    end

    # Operation Parser for VerifyMac
    class VerifyMac
      def self.parse(http_resp)
        data = Types::VerifyMacOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_id = map['KeyId']
        data.mac_valid = map['MacValid']
        data.mac_algorithm = map['MacAlgorithm']
        data
      end
    end

    # Error Parser for XksKeyAlreadyInUseException
    class XksKeyAlreadyInUseException
      def self.parse(http_resp)
        data = Types::XksKeyAlreadyInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    class XksKeyConfigurationType
      def self.parse(map)
        data = Types::XksKeyConfigurationType.new
        data.id = map['Id']
        return data
      end
    end

    # Error Parser for XksKeyInvalidConfigurationException
    class XksKeyInvalidConfigurationException
      def self.parse(http_resp)
        data = Types::XksKeyInvalidConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for XksKeyNotFoundException
    class XksKeyNotFoundException
      def self.parse(http_resp)
        data = Types::XksKeyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    class XksProxyConfigurationType
      def self.parse(map)
        data = Types::XksProxyConfigurationType.new
        data.connectivity = map['Connectivity']
        data.access_key_id = map['AccessKeyId']
        data.uri_endpoint = map['UriEndpoint']
        data.uri_path = map['UriPath']
        data.vpc_endpoint_service_name = map['VpcEndpointServiceName']
        return data
      end
    end

    # Error Parser for XksProxyIncorrectAuthenticationCredentialException
    class XksProxyIncorrectAuthenticationCredentialException
      def self.parse(http_resp)
        data = Types::XksProxyIncorrectAuthenticationCredentialException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for XksProxyInvalidConfigurationException
    class XksProxyInvalidConfigurationException
      def self.parse(http_resp)
        data = Types::XksProxyInvalidConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for XksProxyInvalidResponseException
    class XksProxyInvalidResponseException
      def self.parse(http_resp)
        data = Types::XksProxyInvalidResponseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for XksProxyUriEndpointInUseException
    class XksProxyUriEndpointInUseException
      def self.parse(http_resp)
        data = Types::XksProxyUriEndpointInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for XksProxyUriInUseException
    class XksProxyUriInUseException
      def self.parse(http_resp)
        data = Types::XksProxyUriInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for XksProxyUriUnreachableException
    class XksProxyUriUnreachableException
      def self.parse(http_resp)
        data = Types::XksProxyUriUnreachableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for XksProxyVpcEndpointServiceInUseException
    class XksProxyVpcEndpointServiceInUseException
      def self.parse(http_resp)
        data = Types::XksProxyVpcEndpointServiceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for XksProxyVpcEndpointServiceInvalidConfigurationException
    class XksProxyVpcEndpointServiceInvalidConfigurationException
      def self.parse(http_resp)
        data = Types::XksProxyVpcEndpointServiceInvalidConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for XksProxyVpcEndpointServiceNotFoundException
    class XksProxyVpcEndpointServiceNotFoundException
      def self.parse(http_resp)
        data = Types::XksProxyVpcEndpointServiceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end
  end
end
