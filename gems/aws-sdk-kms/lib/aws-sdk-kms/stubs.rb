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
  module Stubs

    class AliasList
      def self.default(visited = [])
        return nil if visited.include?('AliasList')
        visited = visited + ['AliasList']
        [
          AliasListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AliasListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    class AliasListEntry
      def self.default(visited = [])
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

    class AlreadyExistsException
      def self.build(params, context:)
        Params::AlreadyExistsException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::AlreadyExistsException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 409
        data = {}
        data['__type'] = 'AlreadyExistsException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CancelKeyDeletion
      def self.build(params, context:)
        Params::CancelKeyDeletionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CancelKeyDeletionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          key_id: 'key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class CloudHsmClusterInUseException
      def self.build(params, context:)
        Params::CloudHsmClusterInUseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CloudHsmClusterInUseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'CloudHsmClusterInUseException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CloudHsmClusterInvalidConfigurationException
      def self.build(params, context:)
        Params::CloudHsmClusterInvalidConfigurationException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CloudHsmClusterInvalidConfigurationException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'CloudHsmClusterInvalidConfigurationException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CloudHsmClusterNotActiveException
      def self.build(params, context:)
        Params::CloudHsmClusterNotActiveException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CloudHsmClusterNotActiveException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'CloudHsmClusterNotActiveException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CloudHsmClusterNotFoundException
      def self.build(params, context:)
        Params::CloudHsmClusterNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CloudHsmClusterNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'CloudHsmClusterNotFoundException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CloudHsmClusterNotRelatedException
      def self.build(params, context:)
        Params::CloudHsmClusterNotRelatedException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CloudHsmClusterNotRelatedException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'CloudHsmClusterNotRelatedException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ConnectCustomKeyStore
      def self.build(params, context:)
        Params::ConnectCustomKeyStoreOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ConnectCustomKeyStoreOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class CreateAlias
      def self.build(params, context:)
        Params::CreateAliasOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateAliasOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class CreateCustomKeyStore
      def self.build(params, context:)
        Params::CreateCustomKeyStoreOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateCustomKeyStoreOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          custom_key_store_id: 'custom_key_store_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CustomKeyStoreId'] = stub[:custom_key_store_id] unless stub[:custom_key_store_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class CreateGrant
      def self.build(params, context:)
        Params::CreateGrantOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateGrantOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          grant_token: 'grant_token',
          grant_id: 'grant_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GrantToken'] = stub[:grant_token] unless stub[:grant_token].nil?
        data['GrantId'] = stub[:grant_id] unless stub[:grant_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class CreateKey
      def self.build(params, context:)
        Params::CreateKeyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateKeyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          key_metadata: KeyMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyMetadata'] = KeyMetadata.stub(stub[:key_metadata]) unless stub[:key_metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class CustomKeyStoreHasCMKsException
      def self.build(params, context:)
        Params::CustomKeyStoreHasCMKsException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CustomKeyStoreHasCMKsException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'CustomKeyStoreHasCMKsException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CustomKeyStoreInvalidStateException
      def self.build(params, context:)
        Params::CustomKeyStoreInvalidStateException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CustomKeyStoreInvalidStateException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'CustomKeyStoreInvalidStateException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CustomKeyStoreNameInUseException
      def self.build(params, context:)
        Params::CustomKeyStoreNameInUseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CustomKeyStoreNameInUseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'CustomKeyStoreNameInUseException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CustomKeyStoreNotFoundException
      def self.build(params, context:)
        Params::CustomKeyStoreNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CustomKeyStoreNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'CustomKeyStoreNotFoundException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CustomKeyStoresList
      def self.default(visited = [])
        return nil if visited.include?('CustomKeyStoresList')
        visited = visited + ['CustomKeyStoresList']
        [
          CustomKeyStoresListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomKeyStoresListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    class CustomKeyStoresListEntry
      def self.default(visited = [])
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
          custom_key_store_type: 'custom_key_store_type',
          xks_proxy_configuration: XksProxyConfigurationType.default(visited),
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
        data['CustomKeyStoreType'] = stub[:custom_key_store_type] unless stub[:custom_key_store_type].nil?
        data['XksProxyConfiguration'] = XksProxyConfigurationType.stub(stub[:xks_proxy_configuration]) unless stub[:xks_proxy_configuration].nil?
        data
      end
    end

    class Decrypt
      def self.build(params, context:)
        Params::DecryptOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DecryptOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          key_id: 'key_id',
          plaintext: 'plaintext',
          encryption_algorithm: 'encryption_algorithm',
          ciphertext_for_recipient: 'ciphertext_for_recipient',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['Plaintext'] = ::Base64::strict_encode64(stub[:plaintext]) unless stub[:plaintext].nil?
        data['EncryptionAlgorithm'] = stub[:encryption_algorithm] unless stub[:encryption_algorithm].nil?
        data['CiphertextForRecipient'] = ::Base64::strict_encode64(stub[:ciphertext_for_recipient]) unless stub[:ciphertext_for_recipient].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DeleteAlias
      def self.build(params, context:)
        Params::DeleteAliasOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteAliasOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DeleteCustomKeyStore
      def self.build(params, context:)
        Params::DeleteCustomKeyStoreOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteCustomKeyStoreOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DeleteImportedKeyMaterial
      def self.build(params, context:)
        Params::DeleteImportedKeyMaterialOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteImportedKeyMaterialOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DependencyTimeoutException
      def self.build(params, context:)
        Params::DependencyTimeoutException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DependencyTimeoutException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 503
        data = {}
        data['__type'] = 'DependencyTimeoutException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeCustomKeyStores
      def self.build(params, context:)
        Params::DescribeCustomKeyStoresOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeCustomKeyStoresOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          custom_key_stores: CustomKeyStoresList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CustomKeyStores'] = CustomKeyStoresList.stub(stub[:custom_key_stores]) unless stub[:custom_key_stores].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeKey
      def self.build(params, context:)
        Params::DescribeKeyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeKeyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          key_metadata: KeyMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyMetadata'] = KeyMetadata.stub(stub[:key_metadata]) unless stub[:key_metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DisableKey
      def self.build(params, context:)
        Params::DisableKeyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DisableKeyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DisableKeyRotation
      def self.build(params, context:)
        Params::DisableKeyRotationOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DisableKeyRotationOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DisabledException
      def self.build(params, context:)
        Params::DisabledException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DisabledException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 409
        data = {}
        data['__type'] = 'DisabledException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DisconnectCustomKeyStore
      def self.build(params, context:)
        Params::DisconnectCustomKeyStoreOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DisconnectCustomKeyStoreOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DryRunOperationException
      def self.build(params, context:)
        Params::DryRunOperationException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DryRunOperationException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 412
        data = {}
        data['__type'] = 'DryRunOperationException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class EnableKey
      def self.build(params, context:)
        Params::EnableKeyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::EnableKeyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class EnableKeyRotation
      def self.build(params, context:)
        Params::EnableKeyRotationOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::EnableKeyRotationOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class Encrypt
      def self.build(params, context:)
        Params::EncryptOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::EncryptOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          ciphertext_blob: 'ciphertext_blob',
          key_id: 'key_id',
          encryption_algorithm: 'encryption_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CiphertextBlob'] = ::Base64::strict_encode64(stub[:ciphertext_blob]) unless stub[:ciphertext_blob].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['EncryptionAlgorithm'] = stub[:encryption_algorithm] unless stub[:encryption_algorithm].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class EncryptionAlgorithmSpecList
      def self.default(visited = [])
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

    class EncryptionContextType
      def self.default(visited = [])
        return nil if visited.include?('EncryptionContextType')
        visited = visited + ['EncryptionContextType']
        {
          key: 'value'
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

    class ExpiredImportTokenException
      def self.build(params, context:)
        Params::ExpiredImportTokenException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ExpiredImportTokenException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'ExpiredImportTokenException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GenerateDataKey
      def self.build(params, context:)
        Params::GenerateDataKeyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GenerateDataKeyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          ciphertext_blob: 'ciphertext_blob',
          plaintext: 'plaintext',
          key_id: 'key_id',
          ciphertext_for_recipient: 'ciphertext_for_recipient',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CiphertextBlob'] = ::Base64::strict_encode64(stub[:ciphertext_blob]) unless stub[:ciphertext_blob].nil?
        data['Plaintext'] = ::Base64::strict_encode64(stub[:plaintext]) unless stub[:plaintext].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['CiphertextForRecipient'] = ::Base64::strict_encode64(stub[:ciphertext_for_recipient]) unless stub[:ciphertext_for_recipient].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GenerateDataKeyPair
      def self.build(params, context:)
        Params::GenerateDataKeyPairOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GenerateDataKeyPairOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          private_key_ciphertext_blob: 'private_key_ciphertext_blob',
          private_key_plaintext: 'private_key_plaintext',
          public_key: 'public_key',
          key_id: 'key_id',
          key_pair_spec: 'key_pair_spec',
          ciphertext_for_recipient: 'ciphertext_for_recipient',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PrivateKeyCiphertextBlob'] = ::Base64::strict_encode64(stub[:private_key_ciphertext_blob]) unless stub[:private_key_ciphertext_blob].nil?
        data['PrivateKeyPlaintext'] = ::Base64::strict_encode64(stub[:private_key_plaintext]) unless stub[:private_key_plaintext].nil?
        data['PublicKey'] = ::Base64::strict_encode64(stub[:public_key]) unless stub[:public_key].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['KeyPairSpec'] = stub[:key_pair_spec] unless stub[:key_pair_spec].nil?
        data['CiphertextForRecipient'] = ::Base64::strict_encode64(stub[:ciphertext_for_recipient]) unless stub[:ciphertext_for_recipient].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GenerateDataKeyPairWithoutPlaintext
      def self.build(params, context:)
        Params::GenerateDataKeyPairWithoutPlaintextOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GenerateDataKeyPairWithoutPlaintextOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          private_key_ciphertext_blob: 'private_key_ciphertext_blob',
          public_key: 'public_key',
          key_id: 'key_id',
          key_pair_spec: 'key_pair_spec',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PrivateKeyCiphertextBlob'] = ::Base64::strict_encode64(stub[:private_key_ciphertext_blob]) unless stub[:private_key_ciphertext_blob].nil?
        data['PublicKey'] = ::Base64::strict_encode64(stub[:public_key]) unless stub[:public_key].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['KeyPairSpec'] = stub[:key_pair_spec] unless stub[:key_pair_spec].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GenerateDataKeyWithoutPlaintext
      def self.build(params, context:)
        Params::GenerateDataKeyWithoutPlaintextOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GenerateDataKeyWithoutPlaintextOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          ciphertext_blob: 'ciphertext_blob',
          key_id: 'key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CiphertextBlob'] = ::Base64::strict_encode64(stub[:ciphertext_blob]) unless stub[:ciphertext_blob].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GenerateMac
      def self.build(params, context:)
        Params::GenerateMacOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GenerateMacOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          mac: 'mac',
          mac_algorithm: 'mac_algorithm',
          key_id: 'key_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Mac'] = ::Base64::strict_encode64(stub[:mac]) unless stub[:mac].nil?
        data['MacAlgorithm'] = stub[:mac_algorithm] unless stub[:mac_algorithm].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GenerateRandom
      def self.build(params, context:)
        Params::GenerateRandomOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GenerateRandomOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          plaintext: 'plaintext',
          ciphertext_for_recipient: 'ciphertext_for_recipient',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Plaintext'] = ::Base64::strict_encode64(stub[:plaintext]) unless stub[:plaintext].nil?
        data['CiphertextForRecipient'] = ::Base64::strict_encode64(stub[:ciphertext_for_recipient]) unless stub[:ciphertext_for_recipient].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GetKeyPolicy
      def self.build(params, context:)
        Params::GetKeyPolicyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetKeyPolicyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GetKeyRotationStatus
      def self.build(params, context:)
        Params::GetKeyRotationStatusOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetKeyRotationStatusOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          key_rotation_enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyRotationEnabled'] = stub[:key_rotation_enabled] unless stub[:key_rotation_enabled].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GetParametersForImport
      def self.build(params, context:)
        Params::GetParametersForImportOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetParametersForImportOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
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
        data['ImportToken'] = ::Base64::strict_encode64(stub[:import_token]) unless stub[:import_token].nil?
        data['PublicKey'] = ::Base64::strict_encode64(stub[:public_key]) unless stub[:public_key].nil?
        data['ParametersValidTo'] = Hearth::TimeHelper.to_epoch_seconds(stub[:parameters_valid_to]).to_i unless stub[:parameters_valid_to].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GetPublicKey
      def self.build(params, context:)
        Params::GetPublicKeyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetPublicKeyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          key_id: 'key_id',
          public_key: 'public_key',
          customer_master_key_spec: 'customer_master_key_spec',
          key_spec: 'key_spec',
          key_usage: 'key_usage',
          encryption_algorithms: EncryptionAlgorithmSpecList.default(visited),
          signing_algorithms: SigningAlgorithmSpecList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['PublicKey'] = ::Base64::strict_encode64(stub[:public_key]) unless stub[:public_key].nil?
        data['CustomerMasterKeySpec'] = stub[:customer_master_key_spec] unless stub[:customer_master_key_spec].nil?
        data['KeySpec'] = stub[:key_spec] unless stub[:key_spec].nil?
        data['KeyUsage'] = stub[:key_usage] unless stub[:key_usage].nil?
        data['EncryptionAlgorithms'] = EncryptionAlgorithmSpecList.stub(stub[:encryption_algorithms]) unless stub[:encryption_algorithms].nil?
        data['SigningAlgorithms'] = SigningAlgorithmSpecList.stub(stub[:signing_algorithms]) unless stub[:signing_algorithms].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GrantConstraints
      def self.default(visited = [])
        return nil if visited.include?('GrantConstraints')
        visited = visited + ['GrantConstraints']
        {
          encryption_context_subset: EncryptionContextType.default(visited),
          encryption_context_equals: EncryptionContextType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GrantConstraints.new
        data = {}
        data['EncryptionContextSubset'] = EncryptionContextType.stub(stub[:encryption_context_subset]) unless stub[:encryption_context_subset].nil?
        data['EncryptionContextEquals'] = EncryptionContextType.stub(stub[:encryption_context_equals]) unless stub[:encryption_context_equals].nil?
        data
      end
    end

    class GrantList
      def self.default(visited = [])
        return nil if visited.include?('GrantList')
        visited = visited + ['GrantList']
        [
          GrantListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GrantListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    class GrantListEntry
      def self.default(visited = [])
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
          operations: GrantOperationList.default(visited),
          constraints: GrantConstraints.default(visited),
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
        data['Operations'] = GrantOperationList.stub(stub[:operations]) unless stub[:operations].nil?
        data['Constraints'] = GrantConstraints.stub(stub[:constraints]) unless stub[:constraints].nil?
        data
      end
    end

    class GrantOperationList
      def self.default(visited = [])
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

    class ImportKeyMaterial
      def self.build(params, context:)
        Params::ImportKeyMaterialOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ImportKeyMaterialOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class IncorrectKeyException
      def self.build(params, context:)
        Params::IncorrectKeyException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::IncorrectKeyException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'IncorrectKeyException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class IncorrectKeyMaterialException
      def self.build(params, context:)
        Params::IncorrectKeyMaterialException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::IncorrectKeyMaterialException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'IncorrectKeyMaterialException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class IncorrectTrustAnchorException
      def self.build(params, context:)
        Params::IncorrectTrustAnchorException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::IncorrectTrustAnchorException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'IncorrectTrustAnchorException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidAliasNameException
      def self.build(params, context:)
        Params::InvalidAliasNameException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidAliasNameException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'InvalidAliasNameException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidArnException
      def self.build(params, context:)
        Params::InvalidArnException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidArnException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'InvalidArnException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidCiphertextException
      def self.build(params, context:)
        Params::InvalidCiphertextException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidCiphertextException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'InvalidCiphertextException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidGrantIdException
      def self.build(params, context:)
        Params::InvalidGrantIdException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidGrantIdException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'InvalidGrantIdException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidGrantTokenException
      def self.build(params, context:)
        Params::InvalidGrantTokenException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidGrantTokenException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'InvalidGrantTokenException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidImportTokenException
      def self.build(params, context:)
        Params::InvalidImportTokenException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidImportTokenException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'InvalidImportTokenException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidKeyUsageException
      def self.build(params, context:)
        Params::InvalidKeyUsageException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidKeyUsageException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'InvalidKeyUsageException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidMarkerException
      def self.build(params, context:)
        Params::InvalidMarkerException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidMarkerException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'InvalidMarkerException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KMSInternalException
      def self.build(params, context:)
        Params::KMSInternalException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KMSInternalException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 500
        data = {}
        data['__type'] = 'KMSInternalException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KMSInvalidMacException
      def self.build(params, context:)
        Params::KMSInvalidMacException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KMSInvalidMacException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'KMSInvalidMacException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KMSInvalidSignatureException
      def self.build(params, context:)
        Params::KMSInvalidSignatureException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KMSInvalidSignatureException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'KMSInvalidSignatureException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KMSInvalidStateException
      def self.build(params, context:)
        Params::KMSInvalidStateException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KMSInvalidStateException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 409
        data = {}
        data['__type'] = 'KMSInvalidStateException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class KeyList
      def self.default(visited = [])
        return nil if visited.include?('KeyList')
        visited = visited + ['KeyList']
        [
          KeyListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeyListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    class KeyListEntry
      def self.default(visited = [])
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

    class KeyMetadata
      def self.default(visited = [])
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
          encryption_algorithms: EncryptionAlgorithmSpecList.default(visited),
          signing_algorithms: SigningAlgorithmSpecList.default(visited),
          multi_region: false,
          multi_region_configuration: MultiRegionConfiguration.default(visited),
          pending_deletion_window_in_days: 1,
          mac_algorithms: MacAlgorithmSpecList.default(visited),
          xks_key_configuration: XksKeyConfigurationType.default(visited),
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
        data['EncryptionAlgorithms'] = EncryptionAlgorithmSpecList.stub(stub[:encryption_algorithms]) unless stub[:encryption_algorithms].nil?
        data['SigningAlgorithms'] = SigningAlgorithmSpecList.stub(stub[:signing_algorithms]) unless stub[:signing_algorithms].nil?
        data['MultiRegion'] = stub[:multi_region] unless stub[:multi_region].nil?
        data['MultiRegionConfiguration'] = MultiRegionConfiguration.stub(stub[:multi_region_configuration]) unless stub[:multi_region_configuration].nil?
        data['PendingDeletionWindowInDays'] = stub[:pending_deletion_window_in_days] unless stub[:pending_deletion_window_in_days].nil?
        data['MacAlgorithms'] = MacAlgorithmSpecList.stub(stub[:mac_algorithms]) unless stub[:mac_algorithms].nil?
        data['XksKeyConfiguration'] = XksKeyConfigurationType.stub(stub[:xks_key_configuration]) unless stub[:xks_key_configuration].nil?
        data
      end
    end

    class KeyUnavailableException
      def self.build(params, context:)
        Params::KeyUnavailableException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::KeyUnavailableException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 500
        data = {}
        data['__type'] = 'KeyUnavailableException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class LimitExceededException
      def self.build(params, context:)
        Params::LimitExceededException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::LimitExceededException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'LimitExceededException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListAliases
      def self.build(params, context:)
        Params::ListAliasesOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListAliasesOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          aliases: AliasList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Aliases'] = AliasList.stub(stub[:aliases]) unless stub[:aliases].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListGrants
      def self.build(params, context:)
        Params::ListGrantsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListGrantsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          grants: GrantList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Grants'] = GrantList.stub(stub[:grants]) unless stub[:grants].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListKeyPolicies
      def self.build(params, context:)
        Params::ListKeyPoliciesOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListKeyPoliciesOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          policy_names: PolicyNameList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyNames'] = PolicyNameList.stub(stub[:policy_names]) unless stub[:policy_names].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListKeys
      def self.build(params, context:)
        Params::ListKeysOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListKeysOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          keys: KeyList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Keys'] = KeyList.stub(stub[:keys]) unless stub[:keys].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListResourceTags
      def self.build(params, context:)
        Params::ListResourceTagsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListResourceTagsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          tags: TagList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListRetirableGrants
      def self.build(params, context:)
        Params::ListRetirableGrantsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListRetirableGrantsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          grants: GrantList.default(visited),
          next_marker: 'next_marker',
          truncated: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Grants'] = GrantList.stub(stub[:grants]) unless stub[:grants].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class MacAlgorithmSpecList
      def self.default(visited = [])
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

    class MalformedPolicyDocumentException
      def self.build(params, context:)
        Params::MalformedPolicyDocumentException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::MalformedPolicyDocumentException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'MalformedPolicyDocumentException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class MultiRegionConfiguration
      def self.default(visited = [])
        return nil if visited.include?('MultiRegionConfiguration')
        visited = visited + ['MultiRegionConfiguration']
        {
          multi_region_key_type: 'multi_region_key_type',
          primary_key: MultiRegionKey.default(visited),
          replica_keys: MultiRegionKeyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiRegionConfiguration.new
        data = {}
        data['MultiRegionKeyType'] = stub[:multi_region_key_type] unless stub[:multi_region_key_type].nil?
        data['PrimaryKey'] = MultiRegionKey.stub(stub[:primary_key]) unless stub[:primary_key].nil?
        data['ReplicaKeys'] = MultiRegionKeyList.stub(stub[:replica_keys]) unless stub[:replica_keys].nil?
        data
      end
    end

    class MultiRegionKey
      def self.default(visited = [])
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

    class MultiRegionKeyList
      def self.default(visited = [])
        return nil if visited.include?('MultiRegionKeyList')
        visited = visited + ['MultiRegionKeyList']
        [
          MultiRegionKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MultiRegionKey.stub(element) unless element.nil?
        end
        data
      end
    end

    class NotFoundException
      def self.build(params, context:)
        Params::NotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::NotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 404
        data = {}
        data['__type'] = 'NotFoundException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class PolicyNameList
      def self.default(visited = [])
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

    class PutKeyPolicy
      def self.build(params, context:)
        Params::PutKeyPolicyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::PutKeyPolicyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ReEncrypt
      def self.build(params, context:)
        Params::ReEncryptOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ReEncryptOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
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
        data['CiphertextBlob'] = ::Base64::strict_encode64(stub[:ciphertext_blob]) unless stub[:ciphertext_blob].nil?
        data['SourceKeyId'] = stub[:source_key_id] unless stub[:source_key_id].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['SourceEncryptionAlgorithm'] = stub[:source_encryption_algorithm] unless stub[:source_encryption_algorithm].nil?
        data['DestinationEncryptionAlgorithm'] = stub[:destination_encryption_algorithm] unless stub[:destination_encryption_algorithm].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ReplicateKey
      def self.build(params, context:)
        Params::ReplicateKeyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ReplicateKeyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          replica_key_metadata: KeyMetadata.default(visited),
          replica_policy: 'replica_policy',
          replica_tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReplicaKeyMetadata'] = KeyMetadata.stub(stub[:replica_key_metadata]) unless stub[:replica_key_metadata].nil?
        data['ReplicaPolicy'] = stub[:replica_policy] unless stub[:replica_policy].nil?
        data['ReplicaTags'] = TagList.stub(stub[:replica_tags]) unless stub[:replica_tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class RetireGrant
      def self.build(params, context:)
        Params::RetireGrantOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::RetireGrantOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class RevokeGrant
      def self.build(params, context:)
        Params::RevokeGrantOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::RevokeGrantOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ScheduleKeyDeletion
      def self.build(params, context:)
        Params::ScheduleKeyDeletionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ScheduleKeyDeletionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class Sign
      def self.build(params, context:)
        Params::SignOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::SignOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          key_id: 'key_id',
          signature: 'signature',
          signing_algorithm: 'signing_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['Signature'] = ::Base64::strict_encode64(stub[:signature]) unless stub[:signature].nil?
        data['SigningAlgorithm'] = stub[:signing_algorithm] unless stub[:signing_algorithm].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class SigningAlgorithmSpecList
      def self.default(visited = [])
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

    class Tag
      def self.default(visited = [])
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

    class TagException
      def self.build(params, context:)
        Params::TagException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TagException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'TagException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class TagList
      def self.default(visited = [])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    class TagResource
      def self.build(params, context:)
        Params::TagResourceOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TagResourceOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UnsupportedOperationException
      def self.build(params, context:)
        Params::UnsupportedOperationException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UnsupportedOperationException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'UnsupportedOperationException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UntagResource
      def self.build(params, context:)
        Params::UntagResourceOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UntagResourceOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateAlias
      def self.build(params, context:)
        Params::UpdateAliasOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateAliasOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateCustomKeyStore
      def self.build(params, context:)
        Params::UpdateCustomKeyStoreOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateCustomKeyStoreOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateKeyDescription
      def self.build(params, context:)
        Params::UpdateKeyDescriptionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateKeyDescriptionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdatePrimaryRegion
      def self.build(params, context:)
        Params::UpdatePrimaryRegionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdatePrimaryRegionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class Verify
      def self.build(params, context:)
        Params::VerifyOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::VerifyOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class VerifyMac
      def self.build(params, context:)
        Params::VerifyMacOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::VerifyMacOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class XksKeyAlreadyInUseException
      def self.build(params, context:)
        Params::XksKeyAlreadyInUseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksKeyAlreadyInUseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksKeyAlreadyInUseException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksKeyConfigurationType
      def self.default(visited = [])
        return nil if visited.include?('XksKeyConfigurationType')
        visited = visited + ['XksKeyConfigurationType']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::XksKeyConfigurationType.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    class XksKeyInvalidConfigurationException
      def self.build(params, context:)
        Params::XksKeyInvalidConfigurationException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksKeyInvalidConfigurationException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksKeyInvalidConfigurationException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksKeyNotFoundException
      def self.build(params, context:)
        Params::XksKeyNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksKeyNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksKeyNotFoundException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksProxyConfigurationType
      def self.default(visited = [])
        return nil if visited.include?('XksProxyConfigurationType')
        visited = visited + ['XksProxyConfigurationType']
        {
          connectivity: 'connectivity',
          access_key_id: 'access_key_id',
          uri_endpoint: 'uri_endpoint',
          uri_path: 'uri_path',
          vpc_endpoint_service_name: 'vpc_endpoint_service_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::XksProxyConfigurationType.new
        data = {}
        data['Connectivity'] = stub[:connectivity] unless stub[:connectivity].nil?
        data['AccessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['UriEndpoint'] = stub[:uri_endpoint] unless stub[:uri_endpoint].nil?
        data['UriPath'] = stub[:uri_path] unless stub[:uri_path].nil?
        data['VpcEndpointServiceName'] = stub[:vpc_endpoint_service_name] unless stub[:vpc_endpoint_service_name].nil?
        data
      end
    end

    class XksProxyIncorrectAuthenticationCredentialException
      def self.build(params, context:)
        Params::XksProxyIncorrectAuthenticationCredentialException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksProxyIncorrectAuthenticationCredentialException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksProxyIncorrectAuthenticationCredentialException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksProxyInvalidConfigurationException
      def self.build(params, context:)
        Params::XksProxyInvalidConfigurationException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksProxyInvalidConfigurationException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksProxyInvalidConfigurationException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksProxyInvalidResponseException
      def self.build(params, context:)
        Params::XksProxyInvalidResponseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksProxyInvalidResponseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksProxyInvalidResponseException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksProxyUriEndpointInUseException
      def self.build(params, context:)
        Params::XksProxyUriEndpointInUseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksProxyUriEndpointInUseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksProxyUriEndpointInUseException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksProxyUriInUseException
      def self.build(params, context:)
        Params::XksProxyUriInUseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksProxyUriInUseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksProxyUriInUseException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksProxyUriUnreachableException
      def self.build(params, context:)
        Params::XksProxyUriUnreachableException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksProxyUriUnreachableException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksProxyUriUnreachableException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksProxyVpcEndpointServiceInUseException
      def self.build(params, context:)
        Params::XksProxyVpcEndpointServiceInUseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksProxyVpcEndpointServiceInUseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksProxyVpcEndpointServiceInUseException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksProxyVpcEndpointServiceInvalidConfigurationException
      def self.build(params, context:)
        Params::XksProxyVpcEndpointServiceInvalidConfigurationException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksProxyVpcEndpointServiceInvalidConfigurationException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksProxyVpcEndpointServiceInvalidConfigurationException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class XksProxyVpcEndpointServiceNotFoundException
      def self.build(params, context:)
        Params::XksProxyVpcEndpointServiceNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::XksProxyVpcEndpointServiceNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'XksProxyVpcEndpointServiceNotFoundException'
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
