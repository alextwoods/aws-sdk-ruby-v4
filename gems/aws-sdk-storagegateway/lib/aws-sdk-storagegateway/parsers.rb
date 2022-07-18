# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::StorageGateway
  module Parsers

    # Operation Parser for ActivateGateway
    class ActivateGateway
      def self.parse(http_resp)
        data = Types::ActivateGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.error = (Parsers::StorageGatewayError.parse(map['error']) unless map['error'].nil?)
        data
      end
    end

    class StorageGatewayError
      def self.parse(map)
        data = Types::StorageGatewayError.new
        data.error_code = map['errorCode']
        data.error_details = (Parsers::ErrorDetails.parse(map['errorDetails']) unless map['errorDetails'].nil?)
        return data
      end
    end

    class ErrorDetails
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidGatewayRequestException
    class InvalidGatewayRequestException
      def self.parse(http_resp)
        data = Types::InvalidGatewayRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.error = (Parsers::StorageGatewayError.parse(map['error']) unless map['error'].nil?)
        data
      end
    end

    # Operation Parser for AddCache
    class AddCache
      def self.parse(http_resp)
        data = Types::AddCacheOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for AddTagsToResource
    class AddTagsToResource
      def self.parse(http_resp)
        data = Types::AddTagsToResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['ResourceARN']
        data
      end
    end

    # Operation Parser for AddUploadBuffer
    class AddUploadBuffer
      def self.parse(http_resp)
        data = Types::AddUploadBufferOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for AddWorkingStorage
    class AddWorkingStorage
      def self.parse(http_resp)
        data = Types::AddWorkingStorageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for AssignTapePool
    class AssignTapePool
      def self.parse(http_resp)
        data = Types::AssignTapePoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_arn = map['TapeARN']
        data
      end
    end

    # Operation Parser for AssociateFileSystem
    class AssociateFileSystem
      def self.parse(http_resp)
        data = Types::AssociateFileSystemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_system_association_arn = map['FileSystemAssociationARN']
        data
      end
    end

    # Operation Parser for AttachVolume
    class AttachVolume
      def self.parse(http_resp)
        data = Types::AttachVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_arn = map['VolumeARN']
        data.target_arn = map['TargetARN']
        data
      end
    end

    # Operation Parser for CancelArchival
    class CancelArchival
      def self.parse(http_resp)
        data = Types::CancelArchivalOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_arn = map['TapeARN']
        data
      end
    end

    # Operation Parser for CancelRetrieval
    class CancelRetrieval
      def self.parse(http_resp)
        data = Types::CancelRetrievalOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_arn = map['TapeARN']
        data
      end
    end

    # Operation Parser for CreateCachediSCSIVolume
    class CreateCachediSCSIVolume
      def self.parse(http_resp)
        data = Types::CreateCachediSCSIVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_arn = map['VolumeARN']
        data.target_arn = map['TargetARN']
        data
      end
    end

    # Operation Parser for CreateNFSFileShare
    class CreateNFSFileShare
      def self.parse(http_resp)
        data = Types::CreateNFSFileShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_share_arn = map['FileShareARN']
        data
      end
    end

    # Operation Parser for CreateSMBFileShare
    class CreateSMBFileShare
      def self.parse(http_resp)
        data = Types::CreateSMBFileShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_share_arn = map['FileShareARN']
        data
      end
    end

    # Operation Parser for CreateSnapshot
    class CreateSnapshot
      def self.parse(http_resp)
        data = Types::CreateSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_arn = map['VolumeARN']
        data.snapshot_id = map['SnapshotId']
        data
      end
    end

    # Error Parser for ServiceUnavailableError
    class ServiceUnavailableError
      def self.parse(http_resp)
        data = Types::ServiceUnavailableError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.error = (Parsers::StorageGatewayError.parse(map['error']) unless map['error'].nil?)
        data
      end
    end

    # Operation Parser for CreateSnapshotFromVolumeRecoveryPoint
    class CreateSnapshotFromVolumeRecoveryPoint
      def self.parse(http_resp)
        data = Types::CreateSnapshotFromVolumeRecoveryPointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot_id = map['SnapshotId']
        data.volume_arn = map['VolumeARN']
        data.volume_recovery_point_time = map['VolumeRecoveryPointTime']
        data
      end
    end

    # Operation Parser for CreateStorediSCSIVolume
    class CreateStorediSCSIVolume
      def self.parse(http_resp)
        data = Types::CreateStorediSCSIVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_arn = map['VolumeARN']
        data.volume_size_in_bytes = map['VolumeSizeInBytes']
        data.target_arn = map['TargetARN']
        data
      end
    end

    # Operation Parser for CreateTapePool
    class CreateTapePool
      def self.parse(http_resp)
        data = Types::CreateTapePoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pool_arn = map['PoolARN']
        data
      end
    end

    # Operation Parser for CreateTapeWithBarcode
    class CreateTapeWithBarcode
      def self.parse(http_resp)
        data = Types::CreateTapeWithBarcodeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_arn = map['TapeARN']
        data
      end
    end

    # Operation Parser for CreateTapes
    class CreateTapes
      def self.parse(http_resp)
        data = Types::CreateTapesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_ar_ns = (Parsers::TapeARNs.parse(map['TapeARNs']) unless map['TapeARNs'].nil?)
        data
      end
    end

    class TapeARNs
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DeleteAutomaticTapeCreationPolicy
    class DeleteAutomaticTapeCreationPolicy
      def self.parse(http_resp)
        data = Types::DeleteAutomaticTapeCreationPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for DeleteBandwidthRateLimit
    class DeleteBandwidthRateLimit
      def self.parse(http_resp)
        data = Types::DeleteBandwidthRateLimitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for DeleteChapCredentials
    class DeleteChapCredentials
      def self.parse(http_resp)
        data = Types::DeleteChapCredentialsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.target_arn = map['TargetARN']
        data.initiator_name = map['InitiatorName']
        data
      end
    end

    # Operation Parser for DeleteFileShare
    class DeleteFileShare
      def self.parse(http_resp)
        data = Types::DeleteFileShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_share_arn = map['FileShareARN']
        data
      end
    end

    # Operation Parser for DeleteGateway
    class DeleteGateway
      def self.parse(http_resp)
        data = Types::DeleteGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for DeleteSnapshotSchedule
    class DeleteSnapshotSchedule
      def self.parse(http_resp)
        data = Types::DeleteSnapshotScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_arn = map['VolumeARN']
        data
      end
    end

    # Operation Parser for DeleteTape
    class DeleteTape
      def self.parse(http_resp)
        data = Types::DeleteTapeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_arn = map['TapeARN']
        data
      end
    end

    # Operation Parser for DeleteTapeArchive
    class DeleteTapeArchive
      def self.parse(http_resp)
        data = Types::DeleteTapeArchiveOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_arn = map['TapeARN']
        data
      end
    end

    # Operation Parser for DeleteTapePool
    class DeleteTapePool
      def self.parse(http_resp)
        data = Types::DeleteTapePoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pool_arn = map['PoolARN']
        data
      end
    end

    # Operation Parser for DeleteVolume
    class DeleteVolume
      def self.parse(http_resp)
        data = Types::DeleteVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_arn = map['VolumeARN']
        data
      end
    end

    # Operation Parser for DescribeAvailabilityMonitorTest
    class DescribeAvailabilityMonitorTest
      def self.parse(http_resp)
        data = Types::DescribeAvailabilityMonitorTestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.status = map['Status']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data
      end
    end

    # Operation Parser for DescribeBandwidthRateLimit
    class DescribeBandwidthRateLimit
      def self.parse(http_resp)
        data = Types::DescribeBandwidthRateLimitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.average_upload_rate_limit_in_bits_per_sec = map['AverageUploadRateLimitInBitsPerSec']
        data.average_download_rate_limit_in_bits_per_sec = map['AverageDownloadRateLimitInBitsPerSec']
        data
      end
    end

    # Operation Parser for DescribeBandwidthRateLimitSchedule
    class DescribeBandwidthRateLimitSchedule
      def self.parse(http_resp)
        data = Types::DescribeBandwidthRateLimitScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.bandwidth_rate_limit_intervals = (Parsers::BandwidthRateLimitIntervals.parse(map['BandwidthRateLimitIntervals']) unless map['BandwidthRateLimitIntervals'].nil?)
        data
      end
    end

    class BandwidthRateLimitIntervals
      def self.parse(list)
        list.map do |value|
          Parsers::BandwidthRateLimitInterval.parse(value) unless value.nil?
        end
      end
    end

    class BandwidthRateLimitInterval
      def self.parse(map)
        data = Types::BandwidthRateLimitInterval.new
        data.start_hour_of_day = map['StartHourOfDay']
        data.start_minute_of_hour = map['StartMinuteOfHour']
        data.end_hour_of_day = map['EndHourOfDay']
        data.end_minute_of_hour = map['EndMinuteOfHour']
        data.days_of_week = (Parsers::DaysOfWeek.parse(map['DaysOfWeek']) unless map['DaysOfWeek'].nil?)
        data.average_upload_rate_limit_in_bits_per_sec = map['AverageUploadRateLimitInBitsPerSec']
        data.average_download_rate_limit_in_bits_per_sec = map['AverageDownloadRateLimitInBitsPerSec']
        return data
      end
    end

    class DaysOfWeek
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeCache
    class DescribeCache
      def self.parse(http_resp)
        data = Types::DescribeCacheOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.disk_ids = (Parsers::DiskIds.parse(map['DiskIds']) unless map['DiskIds'].nil?)
        data.cache_allocated_in_bytes = map['CacheAllocatedInBytes']
        data.cache_used_percentage = Hearth::NumberHelper.deserialize(map['CacheUsedPercentage'])
        data.cache_dirty_percentage = Hearth::NumberHelper.deserialize(map['CacheDirtyPercentage'])
        data.cache_hit_percentage = Hearth::NumberHelper.deserialize(map['CacheHitPercentage'])
        data.cache_miss_percentage = Hearth::NumberHelper.deserialize(map['CacheMissPercentage'])
        data
      end
    end

    class DiskIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeCachediSCSIVolumes
    class DescribeCachediSCSIVolumes
      def self.parse(http_resp)
        data = Types::DescribeCachediSCSIVolumesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cachedi_scsi_volumes = (Parsers::CachediSCSIVolumes.parse(map['CachediSCSIVolumes']) unless map['CachediSCSIVolumes'].nil?)
        data
      end
    end

    class CachediSCSIVolumes
      def self.parse(list)
        list.map do |value|
          Parsers::CachediSCSIVolume.parse(value) unless value.nil?
        end
      end
    end

    class CachediSCSIVolume
      def self.parse(map)
        data = Types::CachediSCSIVolume.new
        data.volume_arn = map['VolumeARN']
        data.volume_id = map['VolumeId']
        data.volume_type = map['VolumeType']
        data.volume_status = map['VolumeStatus']
        data.volume_attachment_status = map['VolumeAttachmentStatus']
        data.volume_size_in_bytes = map['VolumeSizeInBytes']
        data.volume_progress = Hearth::NumberHelper.deserialize(map['VolumeProgress'])
        data.source_snapshot_id = map['SourceSnapshotId']
        data.volumei_scsi_attributes = (Parsers::VolumeiSCSIAttributes.parse(map['VolumeiSCSIAttributes']) unless map['VolumeiSCSIAttributes'].nil?)
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.volume_used_in_bytes = map['VolumeUsedInBytes']
        data.kms_key = map['KMSKey']
        data.target_name = map['TargetName']
        return data
      end
    end

    class VolumeiSCSIAttributes
      def self.parse(map)
        data = Types::VolumeiSCSIAttributes.new
        data.target_arn = map['TargetARN']
        data.network_interface_id = map['NetworkInterfaceId']
        data.network_interface_port = map['NetworkInterfacePort']
        data.lun_number = map['LunNumber']
        data.chap_enabled = map['ChapEnabled']
        return data
      end
    end

    # Operation Parser for DescribeChapCredentials
    class DescribeChapCredentials
      def self.parse(http_resp)
        data = Types::DescribeChapCredentialsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.chap_credentials = (Parsers::ChapCredentials.parse(map['ChapCredentials']) unless map['ChapCredentials'].nil?)
        data
      end
    end

    class ChapCredentials
      def self.parse(list)
        list.map do |value|
          Parsers::ChapInfo.parse(value) unless value.nil?
        end
      end
    end

    class ChapInfo
      def self.parse(map)
        data = Types::ChapInfo.new
        data.target_arn = map['TargetARN']
        data.secret_to_authenticate_initiator = map['SecretToAuthenticateInitiator']
        data.initiator_name = map['InitiatorName']
        data.secret_to_authenticate_target = map['SecretToAuthenticateTarget']
        return data
      end
    end

    # Operation Parser for DescribeFileSystemAssociations
    class DescribeFileSystemAssociations
      def self.parse(http_resp)
        data = Types::DescribeFileSystemAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_system_association_info_list = (Parsers::FileSystemAssociationInfoList.parse(map['FileSystemAssociationInfoList']) unless map['FileSystemAssociationInfoList'].nil?)
        data
      end
    end

    class FileSystemAssociationInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::FileSystemAssociationInfo.parse(value) unless value.nil?
        end
      end
    end

    class FileSystemAssociationInfo
      def self.parse(map)
        data = Types::FileSystemAssociationInfo.new
        data.file_system_association_arn = map['FileSystemAssociationARN']
        data.location_arn = map['LocationARN']
        data.file_system_association_status = map['FileSystemAssociationStatus']
        data.audit_destination_arn = map['AuditDestinationARN']
        data.gateway_arn = map['GatewayARN']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.cache_attributes = (Parsers::CacheAttributes.parse(map['CacheAttributes']) unless map['CacheAttributes'].nil?)
        data.endpoint_network_configuration = (Parsers::EndpointNetworkConfiguration.parse(map['EndpointNetworkConfiguration']) unless map['EndpointNetworkConfiguration'].nil?)
        data.file_system_association_status_details = (Parsers::FileSystemAssociationStatusDetails.parse(map['FileSystemAssociationStatusDetails']) unless map['FileSystemAssociationStatusDetails'].nil?)
        return data
      end
    end

    class FileSystemAssociationStatusDetails
      def self.parse(list)
        list.map do |value|
          Parsers::FileSystemAssociationStatusDetail.parse(value) unless value.nil?
        end
      end
    end

    class FileSystemAssociationStatusDetail
      def self.parse(map)
        data = Types::FileSystemAssociationStatusDetail.new
        data.error_code = map['ErrorCode']
        return data
      end
    end

    class EndpointNetworkConfiguration
      def self.parse(map)
        data = Types::EndpointNetworkConfiguration.new
        data.ip_addresses = (Parsers::IpAddressList.parse(map['IpAddresses']) unless map['IpAddresses'].nil?)
        return data
      end
    end

    class IpAddressList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CacheAttributes
      def self.parse(map)
        data = Types::CacheAttributes.new
        data.cache_stale_timeout_in_seconds = map['CacheStaleTimeoutInSeconds']
        return data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for DescribeGatewayInformation
    class DescribeGatewayInformation
      def self.parse(http_resp)
        data = Types::DescribeGatewayInformationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.gateway_id = map['GatewayId']
        data.gateway_name = map['GatewayName']
        data.gateway_timezone = map['GatewayTimezone']
        data.gateway_state = map['GatewayState']
        data.gateway_network_interfaces = (Parsers::GatewayNetworkInterfaces.parse(map['GatewayNetworkInterfaces']) unless map['GatewayNetworkInterfaces'].nil?)
        data.gateway_type = map['GatewayType']
        data.next_update_availability_date = map['NextUpdateAvailabilityDate']
        data.last_software_update = map['LastSoftwareUpdate']
        data.ec2_instance_id = map['Ec2InstanceId']
        data.ec2_instance_region = map['Ec2InstanceRegion']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.vpc_endpoint = map['VPCEndpoint']
        data.cloud_watch_log_group_arn = map['CloudWatchLogGroupARN']
        data.host_environment = map['HostEnvironment']
        data.endpoint_type = map['EndpointType']
        data.software_updates_end_date = map['SoftwareUpdatesEndDate']
        data.deprecation_date = map['DeprecationDate']
        data.gateway_capacity = map['GatewayCapacity']
        data.supported_gateway_capacities = (Parsers::SupportedGatewayCapacities.parse(map['SupportedGatewayCapacities']) unless map['SupportedGatewayCapacities'].nil?)
        data.host_environment_id = map['HostEnvironmentId']
        data
      end
    end

    class SupportedGatewayCapacities
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class GatewayNetworkInterfaces
      def self.parse(list)
        list.map do |value|
          Parsers::NetworkInterface.parse(value) unless value.nil?
        end
      end
    end

    class NetworkInterface
      def self.parse(map)
        data = Types::NetworkInterface.new
        data.ipv4_address = map['Ipv4Address']
        data.mac_address = map['MacAddress']
        data.ipv6_address = map['Ipv6Address']
        return data
      end
    end

    # Operation Parser for DescribeMaintenanceStartTime
    class DescribeMaintenanceStartTime
      def self.parse(http_resp)
        data = Types::DescribeMaintenanceStartTimeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.hour_of_day = map['HourOfDay']
        data.minute_of_hour = map['MinuteOfHour']
        data.day_of_week = map['DayOfWeek']
        data.day_of_month = map['DayOfMonth']
        data.timezone = map['Timezone']
        data
      end
    end

    # Operation Parser for DescribeNFSFileShares
    class DescribeNFSFileShares
      def self.parse(http_resp)
        data = Types::DescribeNFSFileSharesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.nfs_file_share_info_list = (Parsers::NFSFileShareInfoList.parse(map['NFSFileShareInfoList']) unless map['NFSFileShareInfoList'].nil?)
        data
      end
    end

    class NFSFileShareInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::NFSFileShareInfo.parse(value) unless value.nil?
        end
      end
    end

    class NFSFileShareInfo
      def self.parse(map)
        data = Types::NFSFileShareInfo.new
        data.nfs_file_share_defaults = (Parsers::NFSFileShareDefaults.parse(map['NFSFileShareDefaults']) unless map['NFSFileShareDefaults'].nil?)
        data.file_share_arn = map['FileShareARN']
        data.file_share_id = map['FileShareId']
        data.file_share_status = map['FileShareStatus']
        data.gateway_arn = map['GatewayARN']
        data.kms_encrypted = map['KMSEncrypted']
        data.kms_key = map['KMSKey']
        data.path = map['Path']
        data.role = map['Role']
        data.location_arn = map['LocationARN']
        data.default_storage_class = map['DefaultStorageClass']
        data.object_acl = map['ObjectACL']
        data.client_list = (Parsers::FileShareClientList.parse(map['ClientList']) unless map['ClientList'].nil?)
        data.squash = map['Squash']
        data.read_only = map['ReadOnly']
        data.guess_mime_type_enabled = map['GuessMIMETypeEnabled']
        data.requester_pays = map['RequesterPays']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.file_share_name = map['FileShareName']
        data.cache_attributes = (Parsers::CacheAttributes.parse(map['CacheAttributes']) unless map['CacheAttributes'].nil?)
        data.notification_policy = map['NotificationPolicy']
        data.vpc_endpoint_dns_name = map['VPCEndpointDNSName']
        data.bucket_region = map['BucketRegion']
        data.audit_destination_arn = map['AuditDestinationARN']
        return data
      end
    end

    class FileShareClientList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class NFSFileShareDefaults
      def self.parse(map)
        data = Types::NFSFileShareDefaults.new
        data.file_mode = map['FileMode']
        data.directory_mode = map['DirectoryMode']
        data.group_id = map['GroupId']
        data.owner_id = map['OwnerId']
        return data
      end
    end

    # Operation Parser for DescribeSMBFileShares
    class DescribeSMBFileShares
      def self.parse(http_resp)
        data = Types::DescribeSMBFileSharesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.smb_file_share_info_list = (Parsers::SMBFileShareInfoList.parse(map['SMBFileShareInfoList']) unless map['SMBFileShareInfoList'].nil?)
        data
      end
    end

    class SMBFileShareInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::SMBFileShareInfo.parse(value) unless value.nil?
        end
      end
    end

    class SMBFileShareInfo
      def self.parse(map)
        data = Types::SMBFileShareInfo.new
        data.file_share_arn = map['FileShareARN']
        data.file_share_id = map['FileShareId']
        data.file_share_status = map['FileShareStatus']
        data.gateway_arn = map['GatewayARN']
        data.kms_encrypted = map['KMSEncrypted']
        data.kms_key = map['KMSKey']
        data.path = map['Path']
        data.role = map['Role']
        data.location_arn = map['LocationARN']
        data.default_storage_class = map['DefaultStorageClass']
        data.object_acl = map['ObjectACL']
        data.read_only = map['ReadOnly']
        data.guess_mime_type_enabled = map['GuessMIMETypeEnabled']
        data.requester_pays = map['RequesterPays']
        data.smbacl_enabled = map['SMBACLEnabled']
        data.access_based_enumeration = map['AccessBasedEnumeration']
        data.admin_user_list = (Parsers::UserList.parse(map['AdminUserList']) unless map['AdminUserList'].nil?)
        data.valid_user_list = (Parsers::UserList.parse(map['ValidUserList']) unless map['ValidUserList'].nil?)
        data.invalid_user_list = (Parsers::UserList.parse(map['InvalidUserList']) unless map['InvalidUserList'].nil?)
        data.audit_destination_arn = map['AuditDestinationARN']
        data.authentication = map['Authentication']
        data.case_sensitivity = map['CaseSensitivity']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.file_share_name = map['FileShareName']
        data.cache_attributes = (Parsers::CacheAttributes.parse(map['CacheAttributes']) unless map['CacheAttributes'].nil?)
        data.notification_policy = map['NotificationPolicy']
        data.vpc_endpoint_dns_name = map['VPCEndpointDNSName']
        data.bucket_region = map['BucketRegion']
        data.oplocks_enabled = map['OplocksEnabled']
        return data
      end
    end

    class UserList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeSMBSettings
    class DescribeSMBSettings
      def self.parse(http_resp)
        data = Types::DescribeSMBSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.domain_name = map['DomainName']
        data.active_directory_status = map['ActiveDirectoryStatus']
        data.smb_guest_password_set = map['SMBGuestPasswordSet']
        data.smb_security_strategy = map['SMBSecurityStrategy']
        data.file_shares_visible = map['FileSharesVisible']
        data.smb_local_groups = (Parsers::SMBLocalGroups.parse(map['SMBLocalGroups']) unless map['SMBLocalGroups'].nil?)
        data
      end
    end

    class SMBLocalGroups
      def self.parse(map)
        data = Types::SMBLocalGroups.new
        data.gateway_admins = (Parsers::UserList.parse(map['GatewayAdmins']) unless map['GatewayAdmins'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeSnapshotSchedule
    class DescribeSnapshotSchedule
      def self.parse(http_resp)
        data = Types::DescribeSnapshotScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_arn = map['VolumeARN']
        data.start_at = map['StartAt']
        data.recurrence_in_hours = map['RecurrenceInHours']
        data.description = map['Description']
        data.timezone = map['Timezone']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeStorediSCSIVolumes
    class DescribeStorediSCSIVolumes
      def self.parse(http_resp)
        data = Types::DescribeStorediSCSIVolumesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.storedi_scsi_volumes = (Parsers::StorediSCSIVolumes.parse(map['StorediSCSIVolumes']) unless map['StorediSCSIVolumes'].nil?)
        data
      end
    end

    class StorediSCSIVolumes
      def self.parse(list)
        list.map do |value|
          Parsers::StorediSCSIVolume.parse(value) unless value.nil?
        end
      end
    end

    class StorediSCSIVolume
      def self.parse(map)
        data = Types::StorediSCSIVolume.new
        data.volume_arn = map['VolumeARN']
        data.volume_id = map['VolumeId']
        data.volume_type = map['VolumeType']
        data.volume_status = map['VolumeStatus']
        data.volume_attachment_status = map['VolumeAttachmentStatus']
        data.volume_size_in_bytes = map['VolumeSizeInBytes']
        data.volume_progress = Hearth::NumberHelper.deserialize(map['VolumeProgress'])
        data.volume_disk_id = map['VolumeDiskId']
        data.source_snapshot_id = map['SourceSnapshotId']
        data.preserved_existing_data = map['PreservedExistingData']
        data.volumei_scsi_attributes = (Parsers::VolumeiSCSIAttributes.parse(map['VolumeiSCSIAttributes']) unless map['VolumeiSCSIAttributes'].nil?)
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.volume_used_in_bytes = map['VolumeUsedInBytes']
        data.kms_key = map['KMSKey']
        data.target_name = map['TargetName']
        return data
      end
    end

    # Operation Parser for DescribeTapeArchives
    class DescribeTapeArchives
      def self.parse(http_resp)
        data = Types::DescribeTapeArchivesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_archives = (Parsers::TapeArchives.parse(map['TapeArchives']) unless map['TapeArchives'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class TapeArchives
      def self.parse(list)
        list.map do |value|
          Parsers::TapeArchive.parse(value) unless value.nil?
        end
      end
    end

    class TapeArchive
      def self.parse(map)
        data = Types::TapeArchive.new
        data.tape_arn = map['TapeARN']
        data.tape_barcode = map['TapeBarcode']
        data.tape_created_date = Time.at(map['TapeCreatedDate'].to_i) if map['TapeCreatedDate']
        data.tape_size_in_bytes = map['TapeSizeInBytes']
        data.completion_time = Time.at(map['CompletionTime'].to_i) if map['CompletionTime']
        data.retrieved_to = map['RetrievedTo']
        data.tape_status = map['TapeStatus']
        data.tape_used_in_bytes = map['TapeUsedInBytes']
        data.kms_key = map['KMSKey']
        data.pool_id = map['PoolId']
        data.worm = map['Worm']
        data.retention_start_date = Time.at(map['RetentionStartDate'].to_i) if map['RetentionStartDate']
        data.pool_entry_date = Time.at(map['PoolEntryDate'].to_i) if map['PoolEntryDate']
        return data
      end
    end

    # Operation Parser for DescribeTapeRecoveryPoints
    class DescribeTapeRecoveryPoints
      def self.parse(http_resp)
        data = Types::DescribeTapeRecoveryPointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.tape_recovery_point_infos = (Parsers::TapeRecoveryPointInfos.parse(map['TapeRecoveryPointInfos']) unless map['TapeRecoveryPointInfos'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class TapeRecoveryPointInfos
      def self.parse(list)
        list.map do |value|
          Parsers::TapeRecoveryPointInfo.parse(value) unless value.nil?
        end
      end
    end

    class TapeRecoveryPointInfo
      def self.parse(map)
        data = Types::TapeRecoveryPointInfo.new
        data.tape_arn = map['TapeARN']
        data.tape_recovery_point_time = Time.at(map['TapeRecoveryPointTime'].to_i) if map['TapeRecoveryPointTime']
        data.tape_size_in_bytes = map['TapeSizeInBytes']
        data.tape_status = map['TapeStatus']
        return data
      end
    end

    # Operation Parser for DescribeTapes
    class DescribeTapes
      def self.parse(http_resp)
        data = Types::DescribeTapesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tapes = (Parsers::Tapes.parse(map['Tapes']) unless map['Tapes'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class Tapes
      def self.parse(list)
        list.map do |value|
          Parsers::Tape.parse(value) unless value.nil?
        end
      end
    end

    class Tape
      def self.parse(map)
        data = Types::Tape.new
        data.tape_arn = map['TapeARN']
        data.tape_barcode = map['TapeBarcode']
        data.tape_created_date = Time.at(map['TapeCreatedDate'].to_i) if map['TapeCreatedDate']
        data.tape_size_in_bytes = map['TapeSizeInBytes']
        data.tape_status = map['TapeStatus']
        data.vtl_device = map['VTLDevice']
        data.progress = Hearth::NumberHelper.deserialize(map['Progress'])
        data.tape_used_in_bytes = map['TapeUsedInBytes']
        data.kms_key = map['KMSKey']
        data.pool_id = map['PoolId']
        data.worm = map['Worm']
        data.retention_start_date = Time.at(map['RetentionStartDate'].to_i) if map['RetentionStartDate']
        data.pool_entry_date = Time.at(map['PoolEntryDate'].to_i) if map['PoolEntryDate']
        return data
      end
    end

    # Operation Parser for DescribeUploadBuffer
    class DescribeUploadBuffer
      def self.parse(http_resp)
        data = Types::DescribeUploadBufferOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.disk_ids = (Parsers::DiskIds.parse(map['DiskIds']) unless map['DiskIds'].nil?)
        data.upload_buffer_used_in_bytes = map['UploadBufferUsedInBytes']
        data.upload_buffer_allocated_in_bytes = map['UploadBufferAllocatedInBytes']
        data
      end
    end

    # Operation Parser for DescribeVTLDevices
    class DescribeVTLDevices
      def self.parse(http_resp)
        data = Types::DescribeVTLDevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.vtl_devices = (Parsers::VTLDevices.parse(map['VTLDevices']) unless map['VTLDevices'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class VTLDevices
      def self.parse(list)
        list.map do |value|
          Parsers::VTLDevice.parse(value) unless value.nil?
        end
      end
    end

    class VTLDevice
      def self.parse(map)
        data = Types::VTLDevice.new
        data.vtl_device_arn = map['VTLDeviceARN']
        data.vtl_device_type = map['VTLDeviceType']
        data.vtl_device_vendor = map['VTLDeviceVendor']
        data.vtl_device_product_identifier = map['VTLDeviceProductIdentifier']
        data.devicei_scsi_attributes = (Parsers::DeviceiSCSIAttributes.parse(map['DeviceiSCSIAttributes']) unless map['DeviceiSCSIAttributes'].nil?)
        return data
      end
    end

    class DeviceiSCSIAttributes
      def self.parse(map)
        data = Types::DeviceiSCSIAttributes.new
        data.target_arn = map['TargetARN']
        data.network_interface_id = map['NetworkInterfaceId']
        data.network_interface_port = map['NetworkInterfacePort']
        data.chap_enabled = map['ChapEnabled']
        return data
      end
    end

    # Operation Parser for DescribeWorkingStorage
    class DescribeWorkingStorage
      def self.parse(http_resp)
        data = Types::DescribeWorkingStorageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.disk_ids = (Parsers::DiskIds.parse(map['DiskIds']) unless map['DiskIds'].nil?)
        data.working_storage_used_in_bytes = map['WorkingStorageUsedInBytes']
        data.working_storage_allocated_in_bytes = map['WorkingStorageAllocatedInBytes']
        data
      end
    end

    # Operation Parser for DetachVolume
    class DetachVolume
      def self.parse(http_resp)
        data = Types::DetachVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_arn = map['VolumeARN']
        data
      end
    end

    # Operation Parser for DisableGateway
    class DisableGateway
      def self.parse(http_resp)
        data = Types::DisableGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for DisassociateFileSystem
    class DisassociateFileSystem
      def self.parse(http_resp)
        data = Types::DisassociateFileSystemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_system_association_arn = map['FileSystemAssociationARN']
        data
      end
    end

    # Operation Parser for JoinDomain
    class JoinDomain
      def self.parse(http_resp)
        data = Types::JoinDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.active_directory_status = map['ActiveDirectoryStatus']
        data
      end
    end

    # Operation Parser for ListAutomaticTapeCreationPolicies
    class ListAutomaticTapeCreationPolicies
      def self.parse(http_resp)
        data = Types::ListAutomaticTapeCreationPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.automatic_tape_creation_policy_infos = (Parsers::AutomaticTapeCreationPolicyInfos.parse(map['AutomaticTapeCreationPolicyInfos']) unless map['AutomaticTapeCreationPolicyInfos'].nil?)
        data
      end
    end

    class AutomaticTapeCreationPolicyInfos
      def self.parse(list)
        list.map do |value|
          Parsers::AutomaticTapeCreationPolicyInfo.parse(value) unless value.nil?
        end
      end
    end

    class AutomaticTapeCreationPolicyInfo
      def self.parse(map)
        data = Types::AutomaticTapeCreationPolicyInfo.new
        data.automatic_tape_creation_rules = (Parsers::AutomaticTapeCreationRules.parse(map['AutomaticTapeCreationRules']) unless map['AutomaticTapeCreationRules'].nil?)
        data.gateway_arn = map['GatewayARN']
        return data
      end
    end

    class AutomaticTapeCreationRules
      def self.parse(list)
        list.map do |value|
          Parsers::AutomaticTapeCreationRule.parse(value) unless value.nil?
        end
      end
    end

    class AutomaticTapeCreationRule
      def self.parse(map)
        data = Types::AutomaticTapeCreationRule.new
        data.tape_barcode_prefix = map['TapeBarcodePrefix']
        data.pool_id = map['PoolId']
        data.tape_size_in_bytes = map['TapeSizeInBytes']
        data.minimum_num_tapes = map['MinimumNumTapes']
        data.worm = map['Worm']
        return data
      end
    end

    # Operation Parser for ListFileShares
    class ListFileShares
      def self.parse(http_resp)
        data = Types::ListFileSharesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.next_marker = map['NextMarker']
        data.file_share_info_list = (Parsers::FileShareInfoList.parse(map['FileShareInfoList']) unless map['FileShareInfoList'].nil?)
        data
      end
    end

    class FileShareInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::FileShareInfo.parse(value) unless value.nil?
        end
      end
    end

    class FileShareInfo
      def self.parse(map)
        data = Types::FileShareInfo.new
        data.file_share_type = map['FileShareType']
        data.file_share_arn = map['FileShareARN']
        data.file_share_id = map['FileShareId']
        data.file_share_status = map['FileShareStatus']
        data.gateway_arn = map['GatewayARN']
        return data
      end
    end

    # Operation Parser for ListFileSystemAssociations
    class ListFileSystemAssociations
      def self.parse(http_resp)
        data = Types::ListFileSystemAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.marker = map['Marker']
        data.next_marker = map['NextMarker']
        data.file_system_association_summary_list = (Parsers::FileSystemAssociationSummaryList.parse(map['FileSystemAssociationSummaryList']) unless map['FileSystemAssociationSummaryList'].nil?)
        data
      end
    end

    class FileSystemAssociationSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::FileSystemAssociationSummary.parse(value) unless value.nil?
        end
      end
    end

    class FileSystemAssociationSummary
      def self.parse(map)
        data = Types::FileSystemAssociationSummary.new
        data.file_system_association_id = map['FileSystemAssociationId']
        data.file_system_association_arn = map['FileSystemAssociationARN']
        data.file_system_association_status = map['FileSystemAssociationStatus']
        data.gateway_arn = map['GatewayARN']
        return data
      end
    end

    # Operation Parser for ListGateways
    class ListGateways
      def self.parse(http_resp)
        data = Types::ListGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateways = (Parsers::Gateways.parse(map['Gateways']) unless map['Gateways'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class Gateways
      def self.parse(list)
        list.map do |value|
          Parsers::GatewayInfo.parse(value) unless value.nil?
        end
      end
    end

    class GatewayInfo
      def self.parse(map)
        data = Types::GatewayInfo.new
        data.gateway_id = map['GatewayId']
        data.gateway_arn = map['GatewayARN']
        data.gateway_type = map['GatewayType']
        data.gateway_operational_state = map['GatewayOperationalState']
        data.gateway_name = map['GatewayName']
        data.ec2_instance_id = map['Ec2InstanceId']
        data.ec2_instance_region = map['Ec2InstanceRegion']
        data.host_environment = map['HostEnvironment']
        data.host_environment_id = map['HostEnvironmentId']
        return data
      end
    end

    # Operation Parser for ListLocalDisks
    class ListLocalDisks
      def self.parse(http_resp)
        data = Types::ListLocalDisksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.disks = (Parsers::Disks.parse(map['Disks']) unless map['Disks'].nil?)
        data
      end
    end

    class Disks
      def self.parse(list)
        list.map do |value|
          Parsers::Disk.parse(value) unless value.nil?
        end
      end
    end

    class Disk
      def self.parse(map)
        data = Types::Disk.new
        data.disk_id = map['DiskId']
        data.disk_path = map['DiskPath']
        data.disk_node = map['DiskNode']
        data.disk_status = map['DiskStatus']
        data.disk_size_in_bytes = map['DiskSizeInBytes']
        data.disk_allocation_type = map['DiskAllocationType']
        data.disk_allocation_resource = map['DiskAllocationResource']
        data.disk_attribute_list = (Parsers::DiskAttributeList.parse(map['DiskAttributeList']) unless map['DiskAttributeList'].nil?)
        return data
      end
    end

    class DiskAttributeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['ResourceARN']
        data.marker = map['Marker']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListTapePools
    class ListTapePools
      def self.parse(http_resp)
        data = Types::ListTapePoolsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pool_infos = (Parsers::PoolInfos.parse(map['PoolInfos']) unless map['PoolInfos'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class PoolInfos
      def self.parse(list)
        list.map do |value|
          Parsers::PoolInfo.parse(value) unless value.nil?
        end
      end
    end

    class PoolInfo
      def self.parse(map)
        data = Types::PoolInfo.new
        data.pool_arn = map['PoolARN']
        data.pool_name = map['PoolName']
        data.storage_class = map['StorageClass']
        data.retention_lock_type = map['RetentionLockType']
        data.retention_lock_time_in_days = map['RetentionLockTimeInDays']
        data.pool_status = map['PoolStatus']
        return data
      end
    end

    # Operation Parser for ListTapes
    class ListTapes
      def self.parse(http_resp)
        data = Types::ListTapesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_infos = (Parsers::TapeInfos.parse(map['TapeInfos']) unless map['TapeInfos'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class TapeInfos
      def self.parse(list)
        list.map do |value|
          Parsers::TapeInfo.parse(value) unless value.nil?
        end
      end
    end

    class TapeInfo
      def self.parse(map)
        data = Types::TapeInfo.new
        data.tape_arn = map['TapeARN']
        data.tape_barcode = map['TapeBarcode']
        data.tape_size_in_bytes = map['TapeSizeInBytes']
        data.tape_status = map['TapeStatus']
        data.gateway_arn = map['GatewayARN']
        data.pool_id = map['PoolId']
        data.retention_start_date = Time.at(map['RetentionStartDate'].to_i) if map['RetentionStartDate']
        data.pool_entry_date = Time.at(map['PoolEntryDate'].to_i) if map['PoolEntryDate']
        return data
      end
    end

    # Operation Parser for ListVolumeInitiators
    class ListVolumeInitiators
      def self.parse(http_resp)
        data = Types::ListVolumeInitiatorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.initiators = (Parsers::Initiators.parse(map['Initiators']) unless map['Initiators'].nil?)
        data
      end
    end

    class Initiators
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListVolumeRecoveryPoints
    class ListVolumeRecoveryPoints
      def self.parse(http_resp)
        data = Types::ListVolumeRecoveryPointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.volume_recovery_point_infos = (Parsers::VolumeRecoveryPointInfos.parse(map['VolumeRecoveryPointInfos']) unless map['VolumeRecoveryPointInfos'].nil?)
        data
      end
    end

    class VolumeRecoveryPointInfos
      def self.parse(list)
        list.map do |value|
          Parsers::VolumeRecoveryPointInfo.parse(value) unless value.nil?
        end
      end
    end

    class VolumeRecoveryPointInfo
      def self.parse(map)
        data = Types::VolumeRecoveryPointInfo.new
        data.volume_arn = map['VolumeARN']
        data.volume_size_in_bytes = map['VolumeSizeInBytes']
        data.volume_usage_in_bytes = map['VolumeUsageInBytes']
        data.volume_recovery_point_time = map['VolumeRecoveryPointTime']
        return data
      end
    end

    # Operation Parser for ListVolumes
    class ListVolumes
      def self.parse(http_resp)
        data = Types::ListVolumesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.marker = map['Marker']
        data.volume_infos = (Parsers::VolumeInfos.parse(map['VolumeInfos']) unless map['VolumeInfos'].nil?)
        data
      end
    end

    class VolumeInfos
      def self.parse(list)
        list.map do |value|
          Parsers::VolumeInfo.parse(value) unless value.nil?
        end
      end
    end

    class VolumeInfo
      def self.parse(map)
        data = Types::VolumeInfo.new
        data.volume_arn = map['VolumeARN']
        data.volume_id = map['VolumeId']
        data.gateway_arn = map['GatewayARN']
        data.gateway_id = map['GatewayId']
        data.volume_type = map['VolumeType']
        data.volume_size_in_bytes = map['VolumeSizeInBytes']
        data.volume_attachment_status = map['VolumeAttachmentStatus']
        return data
      end
    end

    # Operation Parser for NotifyWhenUploaded
    class NotifyWhenUploaded
      def self.parse(http_resp)
        data = Types::NotifyWhenUploadedOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_share_arn = map['FileShareARN']
        data.notification_id = map['NotificationId']
        data
      end
    end

    # Operation Parser for RefreshCache
    class RefreshCache
      def self.parse(http_resp)
        data = Types::RefreshCacheOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_share_arn = map['FileShareARN']
        data.notification_id = map['NotificationId']
        data
      end
    end

    # Operation Parser for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.parse(http_resp)
        data = Types::RemoveTagsFromResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['ResourceARN']
        data
      end
    end

    # Operation Parser for ResetCache
    class ResetCache
      def self.parse(http_resp)
        data = Types::ResetCacheOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for RetrieveTapeArchive
    class RetrieveTapeArchive
      def self.parse(http_resp)
        data = Types::RetrieveTapeArchiveOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_arn = map['TapeARN']
        data
      end
    end

    # Operation Parser for RetrieveTapeRecoveryPoint
    class RetrieveTapeRecoveryPoint
      def self.parse(http_resp)
        data = Types::RetrieveTapeRecoveryPointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tape_arn = map['TapeARN']
        data
      end
    end

    # Operation Parser for SetLocalConsolePassword
    class SetLocalConsolePassword
      def self.parse(http_resp)
        data = Types::SetLocalConsolePasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for SetSMBGuestPassword
    class SetSMBGuestPassword
      def self.parse(http_resp)
        data = Types::SetSMBGuestPasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for ShutdownGateway
    class ShutdownGateway
      def self.parse(http_resp)
        data = Types::ShutdownGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for StartAvailabilityMonitorTest
    class StartAvailabilityMonitorTest
      def self.parse(http_resp)
        data = Types::StartAvailabilityMonitorTestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for StartGateway
    class StartGateway
      def self.parse(http_resp)
        data = Types::StartGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for UpdateAutomaticTapeCreationPolicy
    class UpdateAutomaticTapeCreationPolicy
      def self.parse(http_resp)
        data = Types::UpdateAutomaticTapeCreationPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for UpdateBandwidthRateLimit
    class UpdateBandwidthRateLimit
      def self.parse(http_resp)
        data = Types::UpdateBandwidthRateLimitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for UpdateBandwidthRateLimitSchedule
    class UpdateBandwidthRateLimitSchedule
      def self.parse(http_resp)
        data = Types::UpdateBandwidthRateLimitScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for UpdateChapCredentials
    class UpdateChapCredentials
      def self.parse(http_resp)
        data = Types::UpdateChapCredentialsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.target_arn = map['TargetARN']
        data.initiator_name = map['InitiatorName']
        data
      end
    end

    # Operation Parser for UpdateFileSystemAssociation
    class UpdateFileSystemAssociation
      def self.parse(http_resp)
        data = Types::UpdateFileSystemAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_system_association_arn = map['FileSystemAssociationARN']
        data
      end
    end

    # Operation Parser for UpdateGatewayInformation
    class UpdateGatewayInformation
      def self.parse(http_resp)
        data = Types::UpdateGatewayInformationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data.gateway_name = map['GatewayName']
        data
      end
    end

    # Operation Parser for UpdateGatewaySoftwareNow
    class UpdateGatewaySoftwareNow
      def self.parse(http_resp)
        data = Types::UpdateGatewaySoftwareNowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for UpdateMaintenanceStartTime
    class UpdateMaintenanceStartTime
      def self.parse(http_resp)
        data = Types::UpdateMaintenanceStartTimeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for UpdateNFSFileShare
    class UpdateNFSFileShare
      def self.parse(http_resp)
        data = Types::UpdateNFSFileShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_share_arn = map['FileShareARN']
        data
      end
    end

    # Operation Parser for UpdateSMBFileShare
    class UpdateSMBFileShare
      def self.parse(http_resp)
        data = Types::UpdateSMBFileShareOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.file_share_arn = map['FileShareARN']
        data
      end
    end

    # Operation Parser for UpdateSMBFileShareVisibility
    class UpdateSMBFileShareVisibility
      def self.parse(http_resp)
        data = Types::UpdateSMBFileShareVisibilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for UpdateSMBLocalGroups
    class UpdateSMBLocalGroups
      def self.parse(http_resp)
        data = Types::UpdateSMBLocalGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for UpdateSMBSecurityStrategy
    class UpdateSMBSecurityStrategy
      def self.parse(http_resp)
        data = Types::UpdateSMBSecurityStrategyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayARN']
        data
      end
    end

    # Operation Parser for UpdateSnapshotSchedule
    class UpdateSnapshotSchedule
      def self.parse(http_resp)
        data = Types::UpdateSnapshotScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_arn = map['VolumeARN']
        data
      end
    end

    # Operation Parser for UpdateVTLDeviceType
    class UpdateVTLDeviceType
      def self.parse(http_resp)
        data = Types::UpdateVTLDeviceTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vtl_device_arn = map['VTLDeviceARN']
        data
      end
    end
  end
end
