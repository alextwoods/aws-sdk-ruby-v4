# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::StorageGateway
  module Builders

    # Operation Builder for ActivateGateway
    class ActivateGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ActivateGateway'
        data = {}
        data['ActivationKey'] = input[:activation_key] unless input[:activation_key].nil?
        data['GatewayName'] = input[:gateway_name] unless input[:gateway_name].nil?
        data['GatewayTimezone'] = input[:gateway_timezone] unless input[:gateway_timezone].nil?
        data['GatewayRegion'] = input[:gateway_region] unless input[:gateway_region].nil?
        data['GatewayType'] = input[:gateway_type] unless input[:gateway_type].nil?
        data['TapeDriveType'] = input[:tape_drive_type] unless input[:tape_drive_type].nil?
        data['MediumChangerType'] = input[:medium_changer_type] unless input[:medium_changer_type].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for AddCache
    class AddCache
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.AddCache'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['DiskIds'] = DiskIds.build(input[:disk_ids]) unless input[:disk_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DiskIds
    class DiskIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for AddTagsToResource
    class AddTagsToResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.AddTagsToResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AddUploadBuffer
    class AddUploadBuffer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.AddUploadBuffer'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['DiskIds'] = DiskIds.build(input[:disk_ids]) unless input[:disk_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AddWorkingStorage
    class AddWorkingStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.AddWorkingStorage'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['DiskIds'] = DiskIds.build(input[:disk_ids]) unless input[:disk_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssignTapePool
    class AssignTapePool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.AssignTapePool'
        data = {}
        data['TapeARN'] = input[:tape_arn] unless input[:tape_arn].nil?
        data['PoolId'] = input[:pool_id] unless input[:pool_id].nil?
        data['BypassGovernanceRetention'] = input[:bypass_governance_retention] unless input[:bypass_governance_retention].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateFileSystem
    class AssociateFileSystem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.AssociateFileSystem'
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['LocationARN'] = input[:location_arn] unless input[:location_arn].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['AuditDestinationARN'] = input[:audit_destination_arn] unless input[:audit_destination_arn].nil?
        data['CacheAttributes'] = CacheAttributes.build(input[:cache_attributes]) unless input[:cache_attributes].nil?
        data['EndpointNetworkConfiguration'] = EndpointNetworkConfiguration.build(input[:endpoint_network_configuration]) unless input[:endpoint_network_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EndpointNetworkConfiguration
    class EndpointNetworkConfiguration
      def self.build(input)
        data = {}
        data['IpAddresses'] = IpAddressList.build(input[:ip_addresses]) unless input[:ip_addresses].nil?
        data
      end
    end

    # List Builder for IpAddressList
    class IpAddressList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CacheAttributes
    class CacheAttributes
      def self.build(input)
        data = {}
        data['CacheStaleTimeoutInSeconds'] = input[:cache_stale_timeout_in_seconds] unless input[:cache_stale_timeout_in_seconds].nil?
        data
      end
    end

    # Operation Builder for AttachVolume
    class AttachVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.AttachVolume'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['TargetName'] = input[:target_name] unless input[:target_name].nil?
        data['VolumeARN'] = input[:volume_arn] unless input[:volume_arn].nil?
        data['NetworkInterfaceId'] = input[:network_interface_id] unless input[:network_interface_id].nil?
        data['DiskId'] = input[:disk_id] unless input[:disk_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelArchival
    class CancelArchival
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CancelArchival'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['TapeARN'] = input[:tape_arn] unless input[:tape_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelRetrieval
    class CancelRetrieval
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CancelRetrieval'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['TapeARN'] = input[:tape_arn] unless input[:tape_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCachediSCSIVolume
    class CreateCachediSCSIVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CreateCachediSCSIVolume'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['VolumeSizeInBytes'] = input[:volume_size_in_bytes] unless input[:volume_size_in_bytes].nil?
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        data['TargetName'] = input[:target_name] unless input[:target_name].nil?
        data['SourceVolumeARN'] = input[:source_volume_arn] unless input[:source_volume_arn].nil?
        data['NetworkInterfaceId'] = input[:network_interface_id] unless input[:network_interface_id].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['KMSEncrypted'] = input[:kms_encrypted] unless input[:kms_encrypted].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateNFSFileShare
    class CreateNFSFileShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CreateNFSFileShare'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['NFSFileShareDefaults'] = NFSFileShareDefaults.build(input[:nfs_file_share_defaults]) unless input[:nfs_file_share_defaults].nil?
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['KMSEncrypted'] = input[:kms_encrypted] unless input[:kms_encrypted].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['LocationARN'] = input[:location_arn] unless input[:location_arn].nil?
        data['DefaultStorageClass'] = input[:default_storage_class] unless input[:default_storage_class].nil?
        data['ObjectACL'] = input[:object_acl] unless input[:object_acl].nil?
        data['ClientList'] = FileShareClientList.build(input[:client_list]) unless input[:client_list].nil?
        data['Squash'] = input[:squash] unless input[:squash].nil?
        data['ReadOnly'] = input[:read_only] unless input[:read_only].nil?
        data['GuessMIMETypeEnabled'] = input[:guess_mime_type_enabled] unless input[:guess_mime_type_enabled].nil?
        data['RequesterPays'] = input[:requester_pays] unless input[:requester_pays].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['FileShareName'] = input[:file_share_name] unless input[:file_share_name].nil?
        data['CacheAttributes'] = CacheAttributes.build(input[:cache_attributes]) unless input[:cache_attributes].nil?
        data['NotificationPolicy'] = input[:notification_policy] unless input[:notification_policy].nil?
        data['VPCEndpointDNSName'] = input[:vpc_endpoint_dns_name] unless input[:vpc_endpoint_dns_name].nil?
        data['BucketRegion'] = input[:bucket_region] unless input[:bucket_region].nil?
        data['AuditDestinationARN'] = input[:audit_destination_arn] unless input[:audit_destination_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FileShareClientList
    class FileShareClientList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NFSFileShareDefaults
    class NFSFileShareDefaults
      def self.build(input)
        data = {}
        data['FileMode'] = input[:file_mode] unless input[:file_mode].nil?
        data['DirectoryMode'] = input[:directory_mode] unless input[:directory_mode].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['OwnerId'] = input[:owner_id] unless input[:owner_id].nil?
        data
      end
    end

    # Operation Builder for CreateSMBFileShare
    class CreateSMBFileShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CreateSMBFileShare'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['KMSEncrypted'] = input[:kms_encrypted] unless input[:kms_encrypted].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['LocationARN'] = input[:location_arn] unless input[:location_arn].nil?
        data['DefaultStorageClass'] = input[:default_storage_class] unless input[:default_storage_class].nil?
        data['ObjectACL'] = input[:object_acl] unless input[:object_acl].nil?
        data['ReadOnly'] = input[:read_only] unless input[:read_only].nil?
        data['GuessMIMETypeEnabled'] = input[:guess_mime_type_enabled] unless input[:guess_mime_type_enabled].nil?
        data['RequesterPays'] = input[:requester_pays] unless input[:requester_pays].nil?
        data['SMBACLEnabled'] = input[:smbacl_enabled] unless input[:smbacl_enabled].nil?
        data['AccessBasedEnumeration'] = input[:access_based_enumeration] unless input[:access_based_enumeration].nil?
        data['AdminUserList'] = UserList.build(input[:admin_user_list]) unless input[:admin_user_list].nil?
        data['ValidUserList'] = UserList.build(input[:valid_user_list]) unless input[:valid_user_list].nil?
        data['InvalidUserList'] = UserList.build(input[:invalid_user_list]) unless input[:invalid_user_list].nil?
        data['AuditDestinationARN'] = input[:audit_destination_arn] unless input[:audit_destination_arn].nil?
        data['Authentication'] = input[:authentication] unless input[:authentication].nil?
        data['CaseSensitivity'] = input[:case_sensitivity] unless input[:case_sensitivity].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['FileShareName'] = input[:file_share_name] unless input[:file_share_name].nil?
        data['CacheAttributes'] = CacheAttributes.build(input[:cache_attributes]) unless input[:cache_attributes].nil?
        data['NotificationPolicy'] = input[:notification_policy] unless input[:notification_policy].nil?
        data['VPCEndpointDNSName'] = input[:vpc_endpoint_dns_name] unless input[:vpc_endpoint_dns_name].nil?
        data['BucketRegion'] = input[:bucket_region] unless input[:bucket_region].nil?
        data['OplocksEnabled'] = input[:oplocks_enabled] unless input[:oplocks_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UserList
    class UserList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateSnapshot
    class CreateSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CreateSnapshot'
        data = {}
        data['VolumeARN'] = input[:volume_arn] unless input[:volume_arn].nil?
        data['SnapshotDescription'] = input[:snapshot_description] unless input[:snapshot_description].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSnapshotFromVolumeRecoveryPoint
    class CreateSnapshotFromVolumeRecoveryPoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CreateSnapshotFromVolumeRecoveryPoint'
        data = {}
        data['VolumeARN'] = input[:volume_arn] unless input[:volume_arn].nil?
        data['SnapshotDescription'] = input[:snapshot_description] unless input[:snapshot_description].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateStorediSCSIVolume
    class CreateStorediSCSIVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CreateStorediSCSIVolume'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['DiskId'] = input[:disk_id] unless input[:disk_id].nil?
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        data['PreserveExistingData'] = input[:preserve_existing_data] unless input[:preserve_existing_data].nil?
        data['TargetName'] = input[:target_name] unless input[:target_name].nil?
        data['NetworkInterfaceId'] = input[:network_interface_id] unless input[:network_interface_id].nil?
        data['KMSEncrypted'] = input[:kms_encrypted] unless input[:kms_encrypted].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTapePool
    class CreateTapePool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CreateTapePool'
        data = {}
        data['PoolName'] = input[:pool_name] unless input[:pool_name].nil?
        data['StorageClass'] = input[:storage_class] unless input[:storage_class].nil?
        data['RetentionLockType'] = input[:retention_lock_type] unless input[:retention_lock_type].nil?
        data['RetentionLockTimeInDays'] = input[:retention_lock_time_in_days] unless input[:retention_lock_time_in_days].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTapeWithBarcode
    class CreateTapeWithBarcode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CreateTapeWithBarcode'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['TapeSizeInBytes'] = input[:tape_size_in_bytes] unless input[:tape_size_in_bytes].nil?
        data['TapeBarcode'] = input[:tape_barcode] unless input[:tape_barcode].nil?
        data['KMSEncrypted'] = input[:kms_encrypted] unless input[:kms_encrypted].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['PoolId'] = input[:pool_id] unless input[:pool_id].nil?
        data['Worm'] = input[:worm] unless input[:worm].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTapes
    class CreateTapes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.CreateTapes'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['TapeSizeInBytes'] = input[:tape_size_in_bytes] unless input[:tape_size_in_bytes].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['NumTapesToCreate'] = input[:num_tapes_to_create] unless input[:num_tapes_to_create].nil?
        data['TapeBarcodePrefix'] = input[:tape_barcode_prefix] unless input[:tape_barcode_prefix].nil?
        data['KMSEncrypted'] = input[:kms_encrypted] unless input[:kms_encrypted].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['PoolId'] = input[:pool_id] unless input[:pool_id].nil?
        data['Worm'] = input[:worm] unless input[:worm].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAutomaticTapeCreationPolicy
    class DeleteAutomaticTapeCreationPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DeleteAutomaticTapeCreationPolicy'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBandwidthRateLimit
    class DeleteBandwidthRateLimit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DeleteBandwidthRateLimit'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['BandwidthType'] = input[:bandwidth_type] unless input[:bandwidth_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteChapCredentials
    class DeleteChapCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DeleteChapCredentials'
        data = {}
        data['TargetARN'] = input[:target_arn] unless input[:target_arn].nil?
        data['InitiatorName'] = input[:initiator_name] unless input[:initiator_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFileShare
    class DeleteFileShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DeleteFileShare'
        data = {}
        data['FileShareARN'] = input[:file_share_arn] unless input[:file_share_arn].nil?
        data['ForceDelete'] = input[:force_delete] unless input[:force_delete].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteGateway
    class DeleteGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DeleteGateway'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSnapshotSchedule
    class DeleteSnapshotSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DeleteSnapshotSchedule'
        data = {}
        data['VolumeARN'] = input[:volume_arn] unless input[:volume_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTape
    class DeleteTape
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DeleteTape'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['TapeARN'] = input[:tape_arn] unless input[:tape_arn].nil?
        data['BypassGovernanceRetention'] = input[:bypass_governance_retention] unless input[:bypass_governance_retention].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTapeArchive
    class DeleteTapeArchive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DeleteTapeArchive'
        data = {}
        data['TapeARN'] = input[:tape_arn] unless input[:tape_arn].nil?
        data['BypassGovernanceRetention'] = input[:bypass_governance_retention] unless input[:bypass_governance_retention].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTapePool
    class DeleteTapePool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DeleteTapePool'
        data = {}
        data['PoolARN'] = input[:pool_arn] unless input[:pool_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVolume
    class DeleteVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DeleteVolume'
        data = {}
        data['VolumeARN'] = input[:volume_arn] unless input[:volume_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAvailabilityMonitorTest
    class DescribeAvailabilityMonitorTest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeAvailabilityMonitorTest'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBandwidthRateLimit
    class DescribeBandwidthRateLimit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeBandwidthRateLimit'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBandwidthRateLimitSchedule
    class DescribeBandwidthRateLimitSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeBandwidthRateLimitSchedule'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCache
    class DescribeCache
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeCache'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCachediSCSIVolumes
    class DescribeCachediSCSIVolumes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeCachediSCSIVolumes'
        data = {}
        data['VolumeARNs'] = VolumeARNs.build(input[:volume_ar_ns]) unless input[:volume_ar_ns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VolumeARNs
    class VolumeARNs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeChapCredentials
    class DescribeChapCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeChapCredentials'
        data = {}
        data['TargetARN'] = input[:target_arn] unless input[:target_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFileSystemAssociations
    class DescribeFileSystemAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeFileSystemAssociations'
        data = {}
        data['FileSystemAssociationARNList'] = FileSystemAssociationARNList.build(input[:file_system_association_arn_list]) unless input[:file_system_association_arn_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FileSystemAssociationARNList
    class FileSystemAssociationARNList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeGatewayInformation
    class DescribeGatewayInformation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeGatewayInformation'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMaintenanceStartTime
    class DescribeMaintenanceStartTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeMaintenanceStartTime'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeNFSFileShares
    class DescribeNFSFileShares
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeNFSFileShares'
        data = {}
        data['FileShareARNList'] = FileShareARNList.build(input[:file_share_arn_list]) unless input[:file_share_arn_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FileShareARNList
    class FileShareARNList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeSMBFileShares
    class DescribeSMBFileShares
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeSMBFileShares'
        data = {}
        data['FileShareARNList'] = FileShareARNList.build(input[:file_share_arn_list]) unless input[:file_share_arn_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSMBSettings
    class DescribeSMBSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeSMBSettings'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSnapshotSchedule
    class DescribeSnapshotSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeSnapshotSchedule'
        data = {}
        data['VolumeARN'] = input[:volume_arn] unless input[:volume_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStorediSCSIVolumes
    class DescribeStorediSCSIVolumes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeStorediSCSIVolumes'
        data = {}
        data['VolumeARNs'] = VolumeARNs.build(input[:volume_ar_ns]) unless input[:volume_ar_ns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTapeArchives
    class DescribeTapeArchives
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeTapeArchives'
        data = {}
        data['TapeARNs'] = TapeARNs.build(input[:tape_ar_ns]) unless input[:tape_ar_ns].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TapeARNs
    class TapeARNs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeTapeRecoveryPoints
    class DescribeTapeRecoveryPoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeTapeRecoveryPoints'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTapes
    class DescribeTapes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeTapes'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['TapeARNs'] = TapeARNs.build(input[:tape_ar_ns]) unless input[:tape_ar_ns].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUploadBuffer
    class DescribeUploadBuffer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeUploadBuffer'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeVTLDevices
    class DescribeVTLDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeVTLDevices'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['VTLDeviceARNs'] = VTLDeviceARNs.build(input[:vtl_device_ar_ns]) unless input[:vtl_device_ar_ns].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VTLDeviceARNs
    class VTLDeviceARNs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeWorkingStorage
    class DescribeWorkingStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DescribeWorkingStorage'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetachVolume
    class DetachVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DetachVolume'
        data = {}
        data['VolumeARN'] = input[:volume_arn] unless input[:volume_arn].nil?
        data['ForceDetach'] = input[:force_detach] unless input[:force_detach].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableGateway
    class DisableGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DisableGateway'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateFileSystem
    class DisassociateFileSystem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.DisassociateFileSystem'
        data = {}
        data['FileSystemAssociationARN'] = input[:file_system_association_arn] unless input[:file_system_association_arn].nil?
        data['ForceDelete'] = input[:force_delete] unless input[:force_delete].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for JoinDomain
    class JoinDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.JoinDomain'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['OrganizationalUnit'] = input[:organizational_unit] unless input[:organizational_unit].nil?
        data['DomainControllers'] = Hosts.build(input[:domain_controllers]) unless input[:domain_controllers].nil?
        data['TimeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Hosts
    class Hosts
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListAutomaticTapeCreationPolicies
    class ListAutomaticTapeCreationPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListAutomaticTapeCreationPolicies'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFileShares
    class ListFileShares
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListFileShares'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFileSystemAssociations
    class ListFileSystemAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListFileSystemAssociations'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGateways
    class ListGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListGateways'
        data = {}
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLocalDisks
    class ListLocalDisks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListLocalDisks'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTapePools
    class ListTapePools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListTapePools'
        data = {}
        data['PoolARNs'] = PoolARNs.build(input[:pool_ar_ns]) unless input[:pool_ar_ns].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PoolARNs
    class PoolARNs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListTapes
    class ListTapes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListTapes'
        data = {}
        data['TapeARNs'] = TapeARNs.build(input[:tape_ar_ns]) unless input[:tape_ar_ns].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListVolumeInitiators
    class ListVolumeInitiators
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListVolumeInitiators'
        data = {}
        data['VolumeARN'] = input[:volume_arn] unless input[:volume_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListVolumeRecoveryPoints
    class ListVolumeRecoveryPoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListVolumeRecoveryPoints'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListVolumes
    class ListVolumes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ListVolumes'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for NotifyWhenUploaded
    class NotifyWhenUploaded
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.NotifyWhenUploaded'
        data = {}
        data['FileShareARN'] = input[:file_share_arn] unless input[:file_share_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RefreshCache
    class RefreshCache
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.RefreshCache'
        data = {}
        data['FileShareARN'] = input[:file_share_arn] unless input[:file_share_arn].nil?
        data['FolderList'] = FolderList.build(input[:folder_list]) unless input[:folder_list].nil?
        data['Recursive'] = input[:recursive] unless input[:recursive].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FolderList
    class FolderList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.RemoveTagsFromResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ResetCache
    class ResetCache
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ResetCache'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RetrieveTapeArchive
    class RetrieveTapeArchive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.RetrieveTapeArchive'
        data = {}
        data['TapeARN'] = input[:tape_arn] unless input[:tape_arn].nil?
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RetrieveTapeRecoveryPoint
    class RetrieveTapeRecoveryPoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.RetrieveTapeRecoveryPoint'
        data = {}
        data['TapeARN'] = input[:tape_arn] unless input[:tape_arn].nil?
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetLocalConsolePassword
    class SetLocalConsolePassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.SetLocalConsolePassword'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['LocalConsolePassword'] = input[:local_console_password] unless input[:local_console_password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetSMBGuestPassword
    class SetSMBGuestPassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.SetSMBGuestPassword'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ShutdownGateway
    class ShutdownGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.ShutdownGateway'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartAvailabilityMonitorTest
    class StartAvailabilityMonitorTest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.StartAvailabilityMonitorTest'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartGateway
    class StartGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.StartGateway'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAutomaticTapeCreationPolicy
    class UpdateAutomaticTapeCreationPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateAutomaticTapeCreationPolicy'
        data = {}
        data['AutomaticTapeCreationRules'] = AutomaticTapeCreationRules.build(input[:automatic_tape_creation_rules]) unless input[:automatic_tape_creation_rules].nil?
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AutomaticTapeCreationRules
    class AutomaticTapeCreationRules
      def self.build(input)
        data = []
        input.each do |element|
          data << AutomaticTapeCreationRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AutomaticTapeCreationRule
    class AutomaticTapeCreationRule
      def self.build(input)
        data = {}
        data['TapeBarcodePrefix'] = input[:tape_barcode_prefix] unless input[:tape_barcode_prefix].nil?
        data['PoolId'] = input[:pool_id] unless input[:pool_id].nil?
        data['TapeSizeInBytes'] = input[:tape_size_in_bytes] unless input[:tape_size_in_bytes].nil?
        data['MinimumNumTapes'] = input[:minimum_num_tapes] unless input[:minimum_num_tapes].nil?
        data['Worm'] = input[:worm] unless input[:worm].nil?
        data
      end
    end

    # Operation Builder for UpdateBandwidthRateLimit
    class UpdateBandwidthRateLimit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateBandwidthRateLimit'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['AverageUploadRateLimitInBitsPerSec'] = input[:average_upload_rate_limit_in_bits_per_sec] unless input[:average_upload_rate_limit_in_bits_per_sec].nil?
        data['AverageDownloadRateLimitInBitsPerSec'] = input[:average_download_rate_limit_in_bits_per_sec] unless input[:average_download_rate_limit_in_bits_per_sec].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBandwidthRateLimitSchedule
    class UpdateBandwidthRateLimitSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateBandwidthRateLimitSchedule'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['BandwidthRateLimitIntervals'] = BandwidthRateLimitIntervals.build(input[:bandwidth_rate_limit_intervals]) unless input[:bandwidth_rate_limit_intervals].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BandwidthRateLimitIntervals
    class BandwidthRateLimitIntervals
      def self.build(input)
        data = []
        input.each do |element|
          data << BandwidthRateLimitInterval.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BandwidthRateLimitInterval
    class BandwidthRateLimitInterval
      def self.build(input)
        data = {}
        data['StartHourOfDay'] = input[:start_hour_of_day] unless input[:start_hour_of_day].nil?
        data['StartMinuteOfHour'] = input[:start_minute_of_hour] unless input[:start_minute_of_hour].nil?
        data['EndHourOfDay'] = input[:end_hour_of_day] unless input[:end_hour_of_day].nil?
        data['EndMinuteOfHour'] = input[:end_minute_of_hour] unless input[:end_minute_of_hour].nil?
        data['DaysOfWeek'] = DaysOfWeek.build(input[:days_of_week]) unless input[:days_of_week].nil?
        data['AverageUploadRateLimitInBitsPerSec'] = input[:average_upload_rate_limit_in_bits_per_sec] unless input[:average_upload_rate_limit_in_bits_per_sec].nil?
        data['AverageDownloadRateLimitInBitsPerSec'] = input[:average_download_rate_limit_in_bits_per_sec] unless input[:average_download_rate_limit_in_bits_per_sec].nil?
        data
      end
    end

    # List Builder for DaysOfWeek
    class DaysOfWeek
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateChapCredentials
    class UpdateChapCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateChapCredentials'
        data = {}
        data['TargetARN'] = input[:target_arn] unless input[:target_arn].nil?
        data['SecretToAuthenticateInitiator'] = input[:secret_to_authenticate_initiator] unless input[:secret_to_authenticate_initiator].nil?
        data['InitiatorName'] = input[:initiator_name] unless input[:initiator_name].nil?
        data['SecretToAuthenticateTarget'] = input[:secret_to_authenticate_target] unless input[:secret_to_authenticate_target].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFileSystemAssociation
    class UpdateFileSystemAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateFileSystemAssociation'
        data = {}
        data['FileSystemAssociationARN'] = input[:file_system_association_arn] unless input[:file_system_association_arn].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['AuditDestinationARN'] = input[:audit_destination_arn] unless input[:audit_destination_arn].nil?
        data['CacheAttributes'] = CacheAttributes.build(input[:cache_attributes]) unless input[:cache_attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGatewayInformation
    class UpdateGatewayInformation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateGatewayInformation'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['GatewayName'] = input[:gateway_name] unless input[:gateway_name].nil?
        data['GatewayTimezone'] = input[:gateway_timezone] unless input[:gateway_timezone].nil?
        data['CloudWatchLogGroupARN'] = input[:cloud_watch_log_group_arn] unless input[:cloud_watch_log_group_arn].nil?
        data['GatewayCapacity'] = input[:gateway_capacity] unless input[:gateway_capacity].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGatewaySoftwareNow
    class UpdateGatewaySoftwareNow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateGatewaySoftwareNow'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMaintenanceStartTime
    class UpdateMaintenanceStartTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateMaintenanceStartTime'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['HourOfDay'] = input[:hour_of_day] unless input[:hour_of_day].nil?
        data['MinuteOfHour'] = input[:minute_of_hour] unless input[:minute_of_hour].nil?
        data['DayOfWeek'] = input[:day_of_week] unless input[:day_of_week].nil?
        data['DayOfMonth'] = input[:day_of_month] unless input[:day_of_month].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNFSFileShare
    class UpdateNFSFileShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateNFSFileShare'
        data = {}
        data['FileShareARN'] = input[:file_share_arn] unless input[:file_share_arn].nil?
        data['KMSEncrypted'] = input[:kms_encrypted] unless input[:kms_encrypted].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['NFSFileShareDefaults'] = NFSFileShareDefaults.build(input[:nfs_file_share_defaults]) unless input[:nfs_file_share_defaults].nil?
        data['DefaultStorageClass'] = input[:default_storage_class] unless input[:default_storage_class].nil?
        data['ObjectACL'] = input[:object_acl] unless input[:object_acl].nil?
        data['ClientList'] = FileShareClientList.build(input[:client_list]) unless input[:client_list].nil?
        data['Squash'] = input[:squash] unless input[:squash].nil?
        data['ReadOnly'] = input[:read_only] unless input[:read_only].nil?
        data['GuessMIMETypeEnabled'] = input[:guess_mime_type_enabled] unless input[:guess_mime_type_enabled].nil?
        data['RequesterPays'] = input[:requester_pays] unless input[:requester_pays].nil?
        data['FileShareName'] = input[:file_share_name] unless input[:file_share_name].nil?
        data['CacheAttributes'] = CacheAttributes.build(input[:cache_attributes]) unless input[:cache_attributes].nil?
        data['NotificationPolicy'] = input[:notification_policy] unless input[:notification_policy].nil?
        data['AuditDestinationARN'] = input[:audit_destination_arn] unless input[:audit_destination_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSMBFileShare
    class UpdateSMBFileShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateSMBFileShare'
        data = {}
        data['FileShareARN'] = input[:file_share_arn] unless input[:file_share_arn].nil?
        data['KMSEncrypted'] = input[:kms_encrypted] unless input[:kms_encrypted].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['DefaultStorageClass'] = input[:default_storage_class] unless input[:default_storage_class].nil?
        data['ObjectACL'] = input[:object_acl] unless input[:object_acl].nil?
        data['ReadOnly'] = input[:read_only] unless input[:read_only].nil?
        data['GuessMIMETypeEnabled'] = input[:guess_mime_type_enabled] unless input[:guess_mime_type_enabled].nil?
        data['RequesterPays'] = input[:requester_pays] unless input[:requester_pays].nil?
        data['SMBACLEnabled'] = input[:smbacl_enabled] unless input[:smbacl_enabled].nil?
        data['AccessBasedEnumeration'] = input[:access_based_enumeration] unless input[:access_based_enumeration].nil?
        data['AdminUserList'] = UserList.build(input[:admin_user_list]) unless input[:admin_user_list].nil?
        data['ValidUserList'] = UserList.build(input[:valid_user_list]) unless input[:valid_user_list].nil?
        data['InvalidUserList'] = UserList.build(input[:invalid_user_list]) unless input[:invalid_user_list].nil?
        data['AuditDestinationARN'] = input[:audit_destination_arn] unless input[:audit_destination_arn].nil?
        data['CaseSensitivity'] = input[:case_sensitivity] unless input[:case_sensitivity].nil?
        data['FileShareName'] = input[:file_share_name] unless input[:file_share_name].nil?
        data['CacheAttributes'] = CacheAttributes.build(input[:cache_attributes]) unless input[:cache_attributes].nil?
        data['NotificationPolicy'] = input[:notification_policy] unless input[:notification_policy].nil?
        data['OplocksEnabled'] = input[:oplocks_enabled] unless input[:oplocks_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSMBFileShareVisibility
    class UpdateSMBFileShareVisibility
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateSMBFileShareVisibility'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['FileSharesVisible'] = input[:file_shares_visible] unless input[:file_shares_visible].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSMBLocalGroups
    class UpdateSMBLocalGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateSMBLocalGroups'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['SMBLocalGroups'] = SMBLocalGroups.build(input[:smb_local_groups]) unless input[:smb_local_groups].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SMBLocalGroups
    class SMBLocalGroups
      def self.build(input)
        data = {}
        data['GatewayAdmins'] = UserList.build(input[:gateway_admins]) unless input[:gateway_admins].nil?
        data
      end
    end

    # Operation Builder for UpdateSMBSecurityStrategy
    class UpdateSMBSecurityStrategy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateSMBSecurityStrategy'
        data = {}
        data['GatewayARN'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['SMBSecurityStrategy'] = input[:smb_security_strategy] unless input[:smb_security_strategy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSnapshotSchedule
    class UpdateSnapshotSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateSnapshotSchedule'
        data = {}
        data['VolumeARN'] = input[:volume_arn] unless input[:volume_arn].nil?
        data['StartAt'] = input[:start_at] unless input[:start_at].nil?
        data['RecurrenceInHours'] = input[:recurrence_in_hours] unless input[:recurrence_in_hours].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVTLDeviceType
    class UpdateVTLDeviceType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'StorageGateway_20130630.UpdateVTLDeviceType'
        data = {}
        data['VTLDeviceARN'] = input[:vtl_device_arn] unless input[:vtl_device_arn].nil?
        data['DeviceType'] = input[:device_type] unless input[:device_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
