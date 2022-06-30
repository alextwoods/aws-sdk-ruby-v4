# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
  module Stubs

    # Operation Stubber for CancelKeyDeletion
    class CancelKeyDeletion
      def self.default(visited=[])
        {
          key_id: 'key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConnectCustomKeyStore
    class ConnectCustomKeyStore
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAlias
    class CreateAlias
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCustomKeyStore
    class CreateCustomKeyStore
      def self.default(visited=[])
        {
          custom_key_store_id: 'custom_key_store_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CustomKeyStoreId'] = stub[:custom_key_store_id] unless stub[:custom_key_store_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateGrant
    class CreateGrant
      def self.default(visited=[])
        {
          grant_token: 'grant_token',
          grant_id: 'grant_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GrantToken'] = stub[:grant_token] unless stub[:grant_token].nil?
        data['GrantId'] = stub[:grant_id] unless stub[:grant_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateKey
    class CreateKey
      def self.default(visited=[])
        {
          key_metadata: Stubs::KeyMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyMetadata'] = Stubs::KeyMetadata.stub(stub[:key_metadata]) unless stub[:key_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for KeyMetadata
    class KeyMetadata
      def self.default(visited=[])
        return nil if visited.include?('KeyMetadata')
        visited = visited + ['KeyMetadata']
        {
          aws_account_id: 'aws_account_id',
          key_id: 'key_id',
          arn: 'arn',
          creation_date: Time.now,
          enabled: false,
          description: 'description',
          key_usage: 'key_usage',
          key_state: 'key_state',
          deletion_date: Time.now,
          valid_to: Time.now,
          origin: 'origin',
          custom_key_store_id: 'custom_key_store_id',
          cloud_hsm_cluster_id: 'cloud_hsm_cluster_id',
          expiration_model: 'expiration_model',
          key_manager: 'key_manager',
          customer_master_key_spec: 'customer_master_key_spec',
          key_spec: 'key_spec',
          encryption_algorithms: Stubs::EncryptionAlgorithmSpecList.default(visited),
          signing_algorithms: Stubs::SigningAlgorithmSpecList.default(visited),
          multi_region: false,
          multi_region_configuration: Stubs::MultiRegionConfiguration.default(visited),
          pending_deletion_window_in_days: 1,
          mac_algorithms: Stubs::MacAlgorithmSpecList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyMetadata.new
        data = {}
        data['AWSAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['KeyUsage'] = stub[:key_usage] unless stub[:key_usage].nil?
        data['KeyState'] = stub[:key_state] unless stub[:key_state].nil?
        data['DeletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deletion_date]).to_i unless stub[:deletion_date].nil?
        data['ValidTo'] = Hearth::TimeHelper.to_epoch_seconds(stub[:valid_to]).to_i unless stub[:valid_to].nil?
        data['Origin'] = stub[:origin] unless stub[:origin].nil?
        data['CustomKeyStoreId'] = stub[:custom_key_store_id] unless stub[:custom_key_store_id].nil?
        data['CloudHsmClusterId'] = stub[:cloud_hsm_cluster_id] unless stub[:cloud_hsm_cluster_id].nil?
        data['ExpirationModel'] = stub[:expiration_model] unless stub[:expiration_model].nil?
        data['KeyManager'] = stub[:key_manager] unless stub[:key_manager].nil?
        data['CustomerMasterKeySpec'] = stub[:customer_master_key_spec] unless stub[:customer_master_key_spec].nil?
        data['KeySpec'] = stub[:key_spec] unless stub[:key_spec].nil?
        data['EncryptionAlgorithms'] = Stubs::EncryptionAlgorithmSpecList.stub(stub[:encryption_algorithms]) unless stub[:encryption_algorithms].nil?
        data['SigningAlgorithms'] = Stubs::SigningAlgorithmSpecList.stub(stub[:signing_algorithms]) unless stub[:signing_algorithms].nil?
        data['MultiRegion'] = stub[:multi_region] unless stub[:multi_region].nil?
        data['MultiRegionConfiguration'] = Stubs::MultiRegionConfiguration.stub(stub[:multi_region_configuration]) unless stub[:multi_region_configuration].nil?
        data['PendingDeletionWindowInDays'] = stub[:pending_deletion_window_in_days] unless stub[:pending_deletion_window_in_days].nil?
        data['MacAlgorithms'] = Stubs::MacAlgorithmSpecList.stub(stub[:mac_algorithms]) unless stub[:mac_algorithms].nil?
        data
      end
    end

    # List Stubber for MacAlgorithmSpecList
    class MacAlgorithmSpecList
      def self.default(visited=[])
        return nil if visited.include?('MacAlgorithmSpecList')
        visited = visited + ['MacAlgorithmSpecList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MultiRegionConfiguration
    class MultiRegionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MultiRegionConfiguration')
        visited = visited + ['MultiRegionConfiguration']
        {
          multi_region_key_type: 'multi_region_key_type',
          primary_key: Stubs::MultiRegionKey.default(visited),
          replica_keys: Stubs::MultiRegionKeyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiRegionConfiguration.new
        data = {}
        data['MultiRegionKeyType'] = stub[:multi_region_key_type] unless stub[:multi_region_key_type].nil?
        data['PrimaryKey'] = Stubs::MultiRegionKey.stub(stub[:primary_key]) unless stub[:primary_key].nil?
        data['ReplicaKeys'] = Stubs::MultiRegionKeyList.stub(stub[:replica_keys]) unless stub[:replica_keys].nil?
        data
      end
    end

    # List Stubber for MultiRegionKeyList
    class MultiRegionKeyList
      def self.default(visited=[])
        return nil if visited.include?('MultiRegionKeyList')
        visited = visited + ['MultiRegionKeyList']
        [
          Stubs::MultiRegionKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MultiRegionKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MultiRegionKey
    class MultiRegionKey
      def self.default(visited=[])
        return nil if visited.include?('MultiRegionKey')
        visited = visited + ['MultiRegionKey']
        {
          arn: 'arn',
          region: 'region',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiRegionKey.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data
      end
    end

    # List Stubber for SigningAlgorithmSpecList
    class SigningAlgorithmSpecList
      def self.default(visited=[])
        return nil if visited.include?('SigningAlgorithmSpecList')
        visited = visited + ['SigningAlgorithmSpecList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for EncryptionAlgorithmSpecList
    class EncryptionAlgorithmSpecList
      def self.default(visited=[])
        return nil if visited.include?('EncryptionAlgorithmSpecList')
        visited = visited + ['EncryptionAlgorithmSpecList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for Decrypt
    class Decrypt
      def self.default(visited=[])
        {
          key_id: 'key_id',
          plaintext: 'plaintext',
          encryption_algorithm: 'encryption_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['Plaintext'] = Base64::encode64(stub[:plaintext]) unless stub[:plaintext].nil?
        data['EncryptionAlgorithm'] = stub[:encryption_algorithm] unless stub[:encryption_algorithm].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAlias
    class DeleteAlias
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCustomKeyStore
    class DeleteCustomKeyStore
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteImportedKeyMaterial
    class DeleteImportedKeyMaterial
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCustomKeyStores
    class DescribeCustomKeyStores
      def self.default(visited=[])
        {
          custom_key_stores: Stubs::CustomKeyStoresList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CustomKeyStores'] = Stubs::CustomKeyStoresList.stub(stub[:custom_key_stores]) unless stub[:custom_key_stores].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CustomKeyStoresList
    class CustomKeyStoresList
      def self.default(visited=[])
        return nil if visited.include?('CustomKeyStoresList')
        visited = visited + ['CustomKeyStoresList']
        [
          Stubs::CustomKeyStoresListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CustomKeyStoresListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomKeyStoresListEntry
    class CustomKeyStoresListEntry
      def self.default(visited=[])
        return nil if visited.include?('CustomKeyStoresListEntry')
        visited = visited + ['CustomKeyStoresListEntry']
        {
          custom_key_store_id: 'custom_key_store_id',
          custom_key_store_name: 'custom_key_store_name',
          cloud_hsm_cluster_id: 'cloud_hsm_cluster_id',
          trust_anchor_certificate: 'trust_anchor_certificate',
          connection_state: 'connection_state',
          connection_error_code: 'connection_error_code',
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomKeyStoresListEntry.new
        data = {}
        data['CustomKeyStoreId'] = stub[:custom_key_store_id] unless stub[:custom_key_store_id].nil?
        data['CustomKeyStoreName'] = stub[:custom_key_store_name] unless stub[:custom_key_store_name].nil?
        data['CloudHsmClusterId'] = stub[:cloud_hsm_cluster_id] unless stub[:cloud_hsm_cluster_id].nil?
        data['TrustAnchorCertificate'] = stub[:trust_anchor_certificate] unless stub[:trust_anchor_certificate].nil?
        data['ConnectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['ConnectionErrorCode'] = stub[:connection_error_code] unless stub[:connection_error_code].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for DescribeKey
    class DescribeKey
      def self.default(visited=[])
        {
          key_metadata: Stubs::KeyMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyMetadata'] = Stubs::KeyMetadata.stub(stub[:key_metadata]) unless stub[:key_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableKey
    class DisableKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableKeyRotation
    class DisableKeyRotation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisconnectCustomKeyStore
    class DisconnectCustomKeyStore
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableKey
    class EnableKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableKeyRotation
    class EnableKeyRotation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for Encrypt
    class Encrypt
      def self.default(visited=[])
        {
          ciphertext_blob: 'ciphertext_blob',
          key_id: 'key_id',
          encryption_algorithm: 'encryption_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CiphertextBlob'] = Base64::encode64(stub[:ciphertext_blob]) unless stub[:ciphertext_blob].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['EncryptionAlgorithm'] = stub[:encryption_algorithm] unless stub[:encryption_algorithm].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GenerateDataKey
    class GenerateDataKey
      def self.default(visited=[])
        {
          ciphertext_blob: 'ciphertext_blob',
          plaintext: 'plaintext',
          key_id: 'key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CiphertextBlob'] = Base64::encode64(stub[:ciphertext_blob]) unless stub[:ciphertext_blob].nil?
        data['Plaintext'] = Base64::encode64(stub[:plaintext]) unless stub[:plaintext].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GenerateDataKeyPair
    class GenerateDataKeyPair
      def self.default(visited=[])
        {
          private_key_ciphertext_blob: 'private_key_ciphertext_blob',
          private_key_plaintext: 'private_key_plaintext',
          public_key: 'public_key',
          key_id: 'key_id',
          key_pair_spec: 'key_pair_spec',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PrivateKeyCiphertextBlob'] = Base64::encode64(stub[:private_key_ciphertext_blob]) unless stub[:private_key_ciphertext_blob].nil?
        data['PrivateKeyPlaintext'] = Base64::encode64(stub[:private_key_plaintext]) unless stub[:private_key_plaintext].nil?
        data['PublicKey'] = Base64::encode64(stub[:public_key]) unless stub[:public_key].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['KeyPairSpec'] = stub[:key_pair_spec] unless stub[:key_pair_spec].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GenerateDataKeyPairWithoutPlaintext
    class GenerateDataKeyPairWithoutPlaintext
      def self.default(visited=[])
        {
          private_key_ciphertext_blob: 'private_key_ciphertext_blob',
          public_key: 'public_key',
          key_id: 'key_id',
          key_pair_spec: 'key_pair_spec',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PrivateKeyCiphertextBlob'] = Base64::encode64(stub[:private_key_ciphertext_blob]) unless stub[:private_key_ciphertext_blob].nil?
        data['PublicKey'] = Base64::encode64(stub[:public_key]) unless stub[:public_key].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['KeyPairSpec'] = stub[:key_pair_spec] unless stub[:key_pair_spec].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GenerateDataKeyWithoutPlaintext
    class GenerateDataKeyWithoutPlaintext
      def self.default(visited=[])
        {
          ciphertext_blob: 'ciphertext_blob',
          key_id: 'key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CiphertextBlob'] = Base64::encode64(stub[:ciphertext_blob]) unless stub[:ciphertext_blob].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GenerateMac
    class GenerateMac
      def self.default(visited=[])
        {
          mac: 'mac',
          mac_algorithm: 'mac_algorithm',
          key_id: 'key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Mac'] = Base64::encode64(stub[:mac]) unless stub[:mac].nil?
        data['MacAlgorithm'] = stub[:mac_algorithm] unless stub[:mac_algorithm].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GenerateRandom
    class GenerateRandom
      def self.default(visited=[])
        {
          plaintext: 'plaintext',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Plaintext'] = Base64::encode64(stub[:plaintext]) unless stub[:plaintext].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetKeyPolicy
    class GetKeyPolicy
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetKeyRotationStatus
    class GetKeyRotationStatus
      def self.default(visited=[])
        {
          key_rotation_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyRotationEnabled'] = stub[:key_rotation_enabled] unless stub[:key_rotation_enabled].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetParametersForImport
    class GetParametersForImport
      def self.default(visited=[])
        {
          key_id: 'key_id',
          import_token: 'import_token',
          public_key: 'public_key',
          parameters_valid_to: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['ImportToken'] = Base64::encode64(stub[:import_token]) unless stub[:import_token].nil?
        data['PublicKey'] = Base64::encode64(stub[:public_key]) unless stub[:public_key].nil?
        data['ParametersValidTo'] = Hearth::TimeHelper.to_epoch_seconds(stub[:parameters_valid_to]).to_i unless stub[:parameters_valid_to].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPublicKey
    class GetPublicKey
      def self.default(visited=[])
        {
          key_id: 'key_id',
          public_key: 'public_key',
          customer_master_key_spec: 'customer_master_key_spec',
          key_spec: 'key_spec',
          key_usage: 'key_usage',
          encryption_algorithms: Stubs::EncryptionAlgorithmSpecList.default(visited),
          signing_algorithms: Stubs::SigningAlgorithmSpecList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['PublicKey'] = Base64::encode64(stub[:public_key]) unless stub[:public_key].nil?
        data['CustomerMasterKeySpec'] = stub[:customer_master_key_spec] unless stub[:customer_master_key_spec].nil?
        data['KeySpec'] = stub[:key_spec] unless stub[:key_spec].nil?
        data['KeyUsage'] = stub[:key_usage] unless stub[:key_usage].nil?
        data['EncryptionAlgorithms'] = Stubs::EncryptionAlgorithmSpecList.stub(stub[:encryption_algorithms]) unless stub[:encryption_algorithms].nil?
        data['SigningAlgorithms'] = Stubs::SigningAlgorithmSpecList.stub(stub[:signing_algorithms]) unless stub[:signing_algorithms].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportKeyMaterial
    class ImportKeyMaterial
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAliases
    class ListAliases
      def self.default(visited=[])
        {
          aliases: Stubs::AliasList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Aliases'] = Stubs::AliasList.stub(stub[:aliases]) unless stub[:aliases].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AliasList
    class AliasList
      def self.default(visited=[])
        return nil if visited.include?('AliasList')
        visited = visited + ['AliasList']
        [
          Stubs::AliasListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AliasListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AliasListEntry
    class AliasListEntry
      def self.default(visited=[])
        return nil if visited.include?('AliasListEntry')
        visited = visited + ['AliasListEntry']
        {
          alias_name: 'alias_name',
          alias_arn: 'alias_arn',
          target_key_id: 'target_key_id',
          creation_date: Time.now,
          last_updated_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AliasListEntry.new
        data = {}
        data['AliasName'] = stub[:alias_name] unless stub[:alias_name].nil?
        data['AliasArn'] = stub[:alias_arn] unless stub[:alias_arn].nil?
        data['TargetKeyId'] = stub[:target_key_id] unless stub[:target_key_id].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['LastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data
      end
    end

    # Operation Stubber for ListGrants
    class ListGrants
      def self.default(visited=[])
        {
          grants: Stubs::GrantList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Grants'] = Stubs::GrantList.stub(stub[:grants]) unless stub[:grants].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GrantList
    class GrantList
      def self.default(visited=[])
        return nil if visited.include?('GrantList')
        visited = visited + ['GrantList']
        [
          Stubs::GrantListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GrantListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GrantListEntry
    class GrantListEntry
      def self.default(visited=[])
        return nil if visited.include?('GrantListEntry')
        visited = visited + ['GrantListEntry']
        {
          key_id: 'key_id',
          grant_id: 'grant_id',
          name: 'name',
          creation_date: Time.now,
          grantee_principal: 'grantee_principal',
          retiring_principal: 'retiring_principal',
          issuing_account: 'issuing_account',
          operations: Stubs::GrantOperationList.default(visited),
          constraints: Stubs::GrantConstraints.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrantListEntry.new
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['GrantId'] = stub[:grant_id] unless stub[:grant_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['GranteePrincipal'] = stub[:grantee_principal] unless stub[:grantee_principal].nil?
        data['RetiringPrincipal'] = stub[:retiring_principal] unless stub[:retiring_principal].nil?
        data['IssuingAccount'] = stub[:issuing_account] unless stub[:issuing_account].nil?
        data['Operations'] = Stubs::GrantOperationList.stub(stub[:operations]) unless stub[:operations].nil?
        data['Constraints'] = Stubs::GrantConstraints.stub(stub[:constraints]) unless stub[:constraints].nil?
        data
      end
    end

    # Structure Stubber for GrantConstraints
    class GrantConstraints
      def self.default(visited=[])
        return nil if visited.include?('GrantConstraints')
        visited = visited + ['GrantConstraints']
        {
          encryption_context_subset: Stubs::EncryptionContextType.default(visited),
          encryption_context_equals: Stubs::EncryptionContextType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrantConstraints.new
        data = {}
        data['EncryptionContextSubset'] = Stubs::EncryptionContextType.stub(stub[:encryption_context_subset]) unless stub[:encryption_context_subset].nil?
        data['EncryptionContextEquals'] = Stubs::EncryptionContextType.stub(stub[:encryption_context_equals]) unless stub[:encryption_context_equals].nil?
        data
      end
    end

    # Map Stubber for EncryptionContextType
    class EncryptionContextType
      def self.default(visited=[])
        return nil if visited.include?('EncryptionContextType')
        visited = visited + ['EncryptionContextType']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for GrantOperationList
    class GrantOperationList
      def self.default(visited=[])
        return nil if visited.include?('GrantOperationList')
        visited = visited + ['GrantOperationList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListKeyPolicies
    class ListKeyPolicies
      def self.default(visited=[])
        {
          policy_names: Stubs::PolicyNameList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyNames'] = Stubs::PolicyNameList.stub(stub[:policy_names]) unless stub[:policy_names].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PolicyNameList
    class PolicyNameList
      def self.default(visited=[])
        return nil if visited.include?('PolicyNameList')
        visited = visited + ['PolicyNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListKeys
    class ListKeys
      def self.default(visited=[])
        {
          keys: Stubs::KeyList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Keys'] = Stubs::KeyList.stub(stub[:keys]) unless stub[:keys].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for KeyList
    class KeyList
      def self.default(visited=[])
        return nil if visited.include?('KeyList')
        visited = visited + ['KeyList']
        [
          Stubs::KeyListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeyListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeyListEntry
    class KeyListEntry
      def self.default(visited=[])
        return nil if visited.include?('KeyListEntry')
        visited = visited + ['KeyListEntry']
        {
          key_id: 'key_id',
          key_arn: 'key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyListEntry.new
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['KeyArn'] = stub[:key_arn] unless stub[:key_arn].nil?
        data
      end
    end

    # Operation Stubber for ListResourceTags
    class ListResourceTags
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          tag_key: 'tag_key',
          tag_value: 'tag_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['TagKey'] = stub[:tag_key] unless stub[:tag_key].nil?
        data['TagValue'] = stub[:tag_value] unless stub[:tag_value].nil?
        data
      end
    end

    # Operation Stubber for ListRetirableGrants
    class ListRetirableGrants
      def self.default(visited=[])
        {
          grants: Stubs::GrantList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Grants'] = Stubs::GrantList.stub(stub[:grants]) unless stub[:grants].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutKeyPolicy
    class PutKeyPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReEncrypt
    class ReEncrypt
      def self.default(visited=[])
        {
          ciphertext_blob: 'ciphertext_blob',
          source_key_id: 'source_key_id',
          key_id: 'key_id',
          source_encryption_algorithm: 'source_encryption_algorithm',
          destination_encryption_algorithm: 'destination_encryption_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CiphertextBlob'] = Base64::encode64(stub[:ciphertext_blob]) unless stub[:ciphertext_blob].nil?
        data['SourceKeyId'] = stub[:source_key_id] unless stub[:source_key_id].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['SourceEncryptionAlgorithm'] = stub[:source_encryption_algorithm] unless stub[:source_encryption_algorithm].nil?
        data['DestinationEncryptionAlgorithm'] = stub[:destination_encryption_algorithm] unless stub[:destination_encryption_algorithm].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReplicateKey
    class ReplicateKey
      def self.default(visited=[])
        {
          replica_key_metadata: Stubs::KeyMetadata.default(visited),
          replica_policy: 'replica_policy',
          replica_tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicaKeyMetadata'] = Stubs::KeyMetadata.stub(stub[:replica_key_metadata]) unless stub[:replica_key_metadata].nil?
        data['ReplicaPolicy'] = stub[:replica_policy] unless stub[:replica_policy].nil?
        data['ReplicaTags'] = Stubs::TagList.stub(stub[:replica_tags]) unless stub[:replica_tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RetireGrant
    class RetireGrant
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RevokeGrant
    class RevokeGrant
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ScheduleKeyDeletion
    class ScheduleKeyDeletion
      def self.default(visited=[])
        {
          key_id: 'key_id',
          deletion_date: Time.now,
          key_state: 'key_state',
          pending_window_in_days: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['DeletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deletion_date]).to_i unless stub[:deletion_date].nil?
        data['KeyState'] = stub[:key_state] unless stub[:key_state].nil?
        data['PendingWindowInDays'] = stub[:pending_window_in_days] unless stub[:pending_window_in_days].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for Sign
    class Sign
      def self.default(visited=[])
        {
          key_id: 'key_id',
          signature: 'signature',
          signing_algorithm: 'signing_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['Signature'] = Base64::encode64(stub[:signature]) unless stub[:signature].nil?
        data['SigningAlgorithm'] = stub[:signing_algorithm] unless stub[:signing_algorithm].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAlias
    class UpdateAlias
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCustomKeyStore
    class UpdateCustomKeyStore
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateKeyDescription
    class UpdateKeyDescription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePrimaryRegion
    class UpdatePrimaryRegion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for Verify
    class Verify
      def self.default(visited=[])
        {
          key_id: 'key_id',
          signature_valid: false,
          signing_algorithm: 'signing_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['SignatureValid'] = stub[:signature_valid] unless stub[:signature_valid].nil?
        data['SigningAlgorithm'] = stub[:signing_algorithm] unless stub[:signing_algorithm].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for VerifyMac
    class VerifyMac
      def self.default(visited=[])
        {
          key_id: 'key_id',
          mac_valid: false,
          mac_algorithm: 'mac_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['MacValid'] = stub[:mac_valid] unless stub[:mac_valid].nil?
        data['MacAlgorithm'] = stub[:mac_algorithm] unless stub[:mac_algorithm].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
