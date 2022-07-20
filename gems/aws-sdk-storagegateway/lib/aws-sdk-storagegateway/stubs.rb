# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::StorageGateway
  module Stubs

    # Operation Stubber for ActivateGateway
    class ActivateGateway
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddCache
    class AddCache
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddTagsToResource
    class AddTagsToResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddUploadBuffer
    class AddUploadBuffer
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddWorkingStorage
    class AddWorkingStorage
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssignTapePool
    class AssignTapePool
      def self.default(visited=[])
        {
          tape_arn: 'tape_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateFileSystem
    class AssociateFileSystem
      def self.default(visited=[])
        {
          file_system_association_arn: 'file_system_association_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileSystemAssociationARN'] = stub[:file_system_association_arn] unless stub[:file_system_association_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachVolume
    class AttachVolume
      def self.default(visited=[])
        {
          volume_arn: 'volume_arn',
          target_arn: 'target_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['TargetARN'] = stub[:target_arn] unless stub[:target_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelArchival
    class CancelArchival
      def self.default(visited=[])
        {
          tape_arn: 'tape_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelRetrieval
    class CancelRetrieval
      def self.default(visited=[])
        {
          tape_arn: 'tape_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCachediSCSIVolume
    class CreateCachediSCSIVolume
      def self.default(visited=[])
        {
          volume_arn: 'volume_arn',
          target_arn: 'target_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['TargetARN'] = stub[:target_arn] unless stub[:target_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateNFSFileShare
    class CreateNFSFileShare
      def self.default(visited=[])
        {
          file_share_arn: 'file_share_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileShareARN'] = stub[:file_share_arn] unless stub[:file_share_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSMBFileShare
    class CreateSMBFileShare
      def self.default(visited=[])
        {
          file_share_arn: 'file_share_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileShareARN'] = stub[:file_share_arn] unless stub[:file_share_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSnapshot
    class CreateSnapshot
      def self.default(visited=[])
        {
          volume_arn: 'volume_arn',
          snapshot_id: 'snapshot_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSnapshotFromVolumeRecoveryPoint
    class CreateSnapshotFromVolumeRecoveryPoint
      def self.default(visited=[])
        {
          snapshot_id: 'snapshot_id',
          volume_arn: 'volume_arn',
          volume_recovery_point_time: 'volume_recovery_point_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['VolumeRecoveryPointTime'] = stub[:volume_recovery_point_time] unless stub[:volume_recovery_point_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStorediSCSIVolume
    class CreateStorediSCSIVolume
      def self.default(visited=[])
        {
          volume_arn: 'volume_arn',
          volume_size_in_bytes: 1,
          target_arn: 'target_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['VolumeSizeInBytes'] = stub[:volume_size_in_bytes] unless stub[:volume_size_in_bytes].nil?
        data['TargetARN'] = stub[:target_arn] unless stub[:target_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTapePool
    class CreateTapePool
      def self.default(visited=[])
        {
          pool_arn: 'pool_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PoolARN'] = stub[:pool_arn] unless stub[:pool_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTapeWithBarcode
    class CreateTapeWithBarcode
      def self.default(visited=[])
        {
          tape_arn: 'tape_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTapes
    class CreateTapes
      def self.default(visited=[])
        {
          tape_ar_ns: TapeARNs.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeARNs'] = TapeARNs.stub(stub[:tape_ar_ns]) unless stub[:tape_ar_ns].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TapeARNs
    class TapeARNs
      def self.default(visited=[])
        return nil if visited.include?('TapeARNs')
        visited = visited + ['TapeARNs']
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

    # Operation Stubber for DeleteAutomaticTapeCreationPolicy
    class DeleteAutomaticTapeCreationPolicy
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBandwidthRateLimit
    class DeleteBandwidthRateLimit
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteChapCredentials
    class DeleteChapCredentials
      def self.default(visited=[])
        {
          target_arn: 'target_arn',
          initiator_name: 'initiator_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TargetARN'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['InitiatorName'] = stub[:initiator_name] unless stub[:initiator_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFileShare
    class DeleteFileShare
      def self.default(visited=[])
        {
          file_share_arn: 'file_share_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileShareARN'] = stub[:file_share_arn] unless stub[:file_share_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGateway
    class DeleteGateway
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSnapshotSchedule
    class DeleteSnapshotSchedule
      def self.default(visited=[])
        {
          volume_arn: 'volume_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTape
    class DeleteTape
      def self.default(visited=[])
        {
          tape_arn: 'tape_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTapeArchive
    class DeleteTapeArchive
      def self.default(visited=[])
        {
          tape_arn: 'tape_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTapePool
    class DeleteTapePool
      def self.default(visited=[])
        {
          pool_arn: 'pool_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PoolARN'] = stub[:pool_arn] unless stub[:pool_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVolume
    class DeleteVolume
      def self.default(visited=[])
        {
          volume_arn: 'volume_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAvailabilityMonitorTest
    class DescribeAvailabilityMonitorTest
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          status: 'status',
          start_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBandwidthRateLimit
    class DescribeBandwidthRateLimit
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          average_upload_rate_limit_in_bits_per_sec: 1,
          average_download_rate_limit_in_bits_per_sec: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['AverageUploadRateLimitInBitsPerSec'] = stub[:average_upload_rate_limit_in_bits_per_sec] unless stub[:average_upload_rate_limit_in_bits_per_sec].nil?
        data['AverageDownloadRateLimitInBitsPerSec'] = stub[:average_download_rate_limit_in_bits_per_sec] unless stub[:average_download_rate_limit_in_bits_per_sec].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBandwidthRateLimitSchedule
    class DescribeBandwidthRateLimitSchedule
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          bandwidth_rate_limit_intervals: BandwidthRateLimitIntervals.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['BandwidthRateLimitIntervals'] = BandwidthRateLimitIntervals.stub(stub[:bandwidth_rate_limit_intervals]) unless stub[:bandwidth_rate_limit_intervals].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BandwidthRateLimitIntervals
    class BandwidthRateLimitIntervals
      def self.default(visited=[])
        return nil if visited.include?('BandwidthRateLimitIntervals')
        visited = visited + ['BandwidthRateLimitIntervals']
        [
          BandwidthRateLimitInterval.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BandwidthRateLimitInterval.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BandwidthRateLimitInterval
    class BandwidthRateLimitInterval
      def self.default(visited=[])
        return nil if visited.include?('BandwidthRateLimitInterval')
        visited = visited + ['BandwidthRateLimitInterval']
        {
          start_hour_of_day: 1,
          start_minute_of_hour: 1,
          end_hour_of_day: 1,
          end_minute_of_hour: 1,
          days_of_week: DaysOfWeek.default(visited),
          average_upload_rate_limit_in_bits_per_sec: 1,
          average_download_rate_limit_in_bits_per_sec: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BandwidthRateLimitInterval.new
        data = {}
        data['StartHourOfDay'] = stub[:start_hour_of_day] unless stub[:start_hour_of_day].nil?
        data['StartMinuteOfHour'] = stub[:start_minute_of_hour] unless stub[:start_minute_of_hour].nil?
        data['EndHourOfDay'] = stub[:end_hour_of_day] unless stub[:end_hour_of_day].nil?
        data['EndMinuteOfHour'] = stub[:end_minute_of_hour] unless stub[:end_minute_of_hour].nil?
        data['DaysOfWeek'] = DaysOfWeek.stub(stub[:days_of_week]) unless stub[:days_of_week].nil?
        data['AverageUploadRateLimitInBitsPerSec'] = stub[:average_upload_rate_limit_in_bits_per_sec] unless stub[:average_upload_rate_limit_in_bits_per_sec].nil?
        data['AverageDownloadRateLimitInBitsPerSec'] = stub[:average_download_rate_limit_in_bits_per_sec] unless stub[:average_download_rate_limit_in_bits_per_sec].nil?
        data
      end
    end

    # List Stubber for DaysOfWeek
    class DaysOfWeek
      def self.default(visited=[])
        return nil if visited.include?('DaysOfWeek')
        visited = visited + ['DaysOfWeek']
        [
          1
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

    # Operation Stubber for DescribeCache
    class DescribeCache
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          disk_ids: DiskIds.default(visited),
          cache_allocated_in_bytes: 1,
          cache_used_percentage: 1.0,
          cache_dirty_percentage: 1.0,
          cache_hit_percentage: 1.0,
          cache_miss_percentage: 1.0,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['DiskIds'] = DiskIds.stub(stub[:disk_ids]) unless stub[:disk_ids].nil?
        data['CacheAllocatedInBytes'] = stub[:cache_allocated_in_bytes] unless stub[:cache_allocated_in_bytes].nil?
        data['CacheUsedPercentage'] = Hearth::NumberHelper.serialize(stub[:cache_used_percentage])
        data['CacheDirtyPercentage'] = Hearth::NumberHelper.serialize(stub[:cache_dirty_percentage])
        data['CacheHitPercentage'] = Hearth::NumberHelper.serialize(stub[:cache_hit_percentage])
        data['CacheMissPercentage'] = Hearth::NumberHelper.serialize(stub[:cache_miss_percentage])
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DiskIds
    class DiskIds
      def self.default(visited=[])
        return nil if visited.include?('DiskIds')
        visited = visited + ['DiskIds']
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

    # Operation Stubber for DescribeCachediSCSIVolumes
    class DescribeCachediSCSIVolumes
      def self.default(visited=[])
        {
          cachedi_scsi_volumes: CachediSCSIVolumes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CachediSCSIVolumes'] = CachediSCSIVolumes.stub(stub[:cachedi_scsi_volumes]) unless stub[:cachedi_scsi_volumes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CachediSCSIVolumes
    class CachediSCSIVolumes
      def self.default(visited=[])
        return nil if visited.include?('CachediSCSIVolumes')
        visited = visited + ['CachediSCSIVolumes']
        [
          CachediSCSIVolume.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CachediSCSIVolume.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CachediSCSIVolume
    class CachediSCSIVolume
      def self.default(visited=[])
        return nil if visited.include?('CachediSCSIVolume')
        visited = visited + ['CachediSCSIVolume']
        {
          volume_arn: 'volume_arn',
          volume_id: 'volume_id',
          volume_type: 'volume_type',
          volume_status: 'volume_status',
          volume_attachment_status: 'volume_attachment_status',
          volume_size_in_bytes: 1,
          volume_progress: 1.0,
          source_snapshot_id: 'source_snapshot_id',
          volumei_scsi_attributes: VolumeiSCSIAttributes.default(visited),
          created_date: Time.now,
          volume_used_in_bytes: 1,
          kms_key: 'kms_key',
          target_name: 'target_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CachediSCSIVolume.new
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['VolumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['VolumeStatus'] = stub[:volume_status] unless stub[:volume_status].nil?
        data['VolumeAttachmentStatus'] = stub[:volume_attachment_status] unless stub[:volume_attachment_status].nil?
        data['VolumeSizeInBytes'] = stub[:volume_size_in_bytes] unless stub[:volume_size_in_bytes].nil?
        data['VolumeProgress'] = Hearth::NumberHelper.serialize(stub[:volume_progress])
        data['SourceSnapshotId'] = stub[:source_snapshot_id] unless stub[:source_snapshot_id].nil?
        data['VolumeiSCSIAttributes'] = VolumeiSCSIAttributes.stub(stub[:volumei_scsi_attributes]) unless stub[:volumei_scsi_attributes].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['VolumeUsedInBytes'] = stub[:volume_used_in_bytes] unless stub[:volume_used_in_bytes].nil?
        data['KMSKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data['TargetName'] = stub[:target_name] unless stub[:target_name].nil?
        data
      end
    end

    # Structure Stubber for VolumeiSCSIAttributes
    class VolumeiSCSIAttributes
      def self.default(visited=[])
        return nil if visited.include?('VolumeiSCSIAttributes')
        visited = visited + ['VolumeiSCSIAttributes']
        {
          target_arn: 'target_arn',
          network_interface_id: 'network_interface_id',
          network_interface_port: 1,
          lun_number: 1,
          chap_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeiSCSIAttributes.new
        data = {}
        data['TargetARN'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['NetworkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data['NetworkInterfacePort'] = stub[:network_interface_port] unless stub[:network_interface_port].nil?
        data['LunNumber'] = stub[:lun_number] unless stub[:lun_number].nil?
        data['ChapEnabled'] = stub[:chap_enabled] unless stub[:chap_enabled].nil?
        data
      end
    end

    # Operation Stubber for DescribeChapCredentials
    class DescribeChapCredentials
      def self.default(visited=[])
        {
          chap_credentials: ChapCredentials.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChapCredentials'] = ChapCredentials.stub(stub[:chap_credentials]) unless stub[:chap_credentials].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ChapCredentials
    class ChapCredentials
      def self.default(visited=[])
        return nil if visited.include?('ChapCredentials')
        visited = visited + ['ChapCredentials']
        [
          ChapInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ChapInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChapInfo
    class ChapInfo
      def self.default(visited=[])
        return nil if visited.include?('ChapInfo')
        visited = visited + ['ChapInfo']
        {
          target_arn: 'target_arn',
          secret_to_authenticate_initiator: 'secret_to_authenticate_initiator',
          initiator_name: 'initiator_name',
          secret_to_authenticate_target: 'secret_to_authenticate_target',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChapInfo.new
        data = {}
        data['TargetARN'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['SecretToAuthenticateInitiator'] = stub[:secret_to_authenticate_initiator] unless stub[:secret_to_authenticate_initiator].nil?
        data['InitiatorName'] = stub[:initiator_name] unless stub[:initiator_name].nil?
        data['SecretToAuthenticateTarget'] = stub[:secret_to_authenticate_target] unless stub[:secret_to_authenticate_target].nil?
        data
      end
    end

    # Operation Stubber for DescribeFileSystemAssociations
    class DescribeFileSystemAssociations
      def self.default(visited=[])
        {
          file_system_association_info_list: FileSystemAssociationInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileSystemAssociationInfoList'] = FileSystemAssociationInfoList.stub(stub[:file_system_association_info_list]) unless stub[:file_system_association_info_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FileSystemAssociationInfoList
    class FileSystemAssociationInfoList
      def self.default(visited=[])
        return nil if visited.include?('FileSystemAssociationInfoList')
        visited = visited + ['FileSystemAssociationInfoList']
        [
          FileSystemAssociationInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FileSystemAssociationInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FileSystemAssociationInfo
    class FileSystemAssociationInfo
      def self.default(visited=[])
        return nil if visited.include?('FileSystemAssociationInfo')
        visited = visited + ['FileSystemAssociationInfo']
        {
          file_system_association_arn: 'file_system_association_arn',
          location_arn: 'location_arn',
          file_system_association_status: 'file_system_association_status',
          audit_destination_arn: 'audit_destination_arn',
          gateway_arn: 'gateway_arn',
          tags: Tags.default(visited),
          cache_attributes: CacheAttributes.default(visited),
          endpoint_network_configuration: EndpointNetworkConfiguration.default(visited),
          file_system_association_status_details: FileSystemAssociationStatusDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystemAssociationInfo.new
        data = {}
        data['FileSystemAssociationARN'] = stub[:file_system_association_arn] unless stub[:file_system_association_arn].nil?
        data['LocationARN'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['FileSystemAssociationStatus'] = stub[:file_system_association_status] unless stub[:file_system_association_status].nil?
        data['AuditDestinationARN'] = stub[:audit_destination_arn] unless stub[:audit_destination_arn].nil?
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['CacheAttributes'] = CacheAttributes.stub(stub[:cache_attributes]) unless stub[:cache_attributes].nil?
        data['EndpointNetworkConfiguration'] = EndpointNetworkConfiguration.stub(stub[:endpoint_network_configuration]) unless stub[:endpoint_network_configuration].nil?
        data['FileSystemAssociationStatusDetails'] = FileSystemAssociationStatusDetails.stub(stub[:file_system_association_status_details]) unless stub[:file_system_association_status_details].nil?
        data
      end
    end

    # List Stubber for FileSystemAssociationStatusDetails
    class FileSystemAssociationStatusDetails
      def self.default(visited=[])
        return nil if visited.include?('FileSystemAssociationStatusDetails')
        visited = visited + ['FileSystemAssociationStatusDetails']
        [
          FileSystemAssociationStatusDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FileSystemAssociationStatusDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FileSystemAssociationStatusDetail
    class FileSystemAssociationStatusDetail
      def self.default(visited=[])
        return nil if visited.include?('FileSystemAssociationStatusDetail')
        visited = visited + ['FileSystemAssociationStatusDetail']
        {
          error_code: 'error_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystemAssociationStatusDetail.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data
      end
    end

    # Structure Stubber for EndpointNetworkConfiguration
    class EndpointNetworkConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EndpointNetworkConfiguration')
        visited = visited + ['EndpointNetworkConfiguration']
        {
          ip_addresses: IpAddressList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointNetworkConfiguration.new
        data = {}
        data['IpAddresses'] = IpAddressList.stub(stub[:ip_addresses]) unless stub[:ip_addresses].nil?
        data
      end
    end

    # List Stubber for IpAddressList
    class IpAddressList
      def self.default(visited=[])
        return nil if visited.include?('IpAddressList')
        visited = visited + ['IpAddressList']
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

    # Structure Stubber for CacheAttributes
    class CacheAttributes
      def self.default(visited=[])
        return nil if visited.include?('CacheAttributes')
        visited = visited + ['CacheAttributes']
        {
          cache_stale_timeout_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CacheAttributes.new
        data = {}
        data['CacheStaleTimeoutInSeconds'] = stub[:cache_stale_timeout_in_seconds] unless stub[:cache_stale_timeout_in_seconds].nil?
        data
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeGatewayInformation
    class DescribeGatewayInformation
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          gateway_id: 'gateway_id',
          gateway_name: 'gateway_name',
          gateway_timezone: 'gateway_timezone',
          gateway_state: 'gateway_state',
          gateway_network_interfaces: GatewayNetworkInterfaces.default(visited),
          gateway_type: 'gateway_type',
          next_update_availability_date: 'next_update_availability_date',
          last_software_update: 'last_software_update',
          ec2_instance_id: 'ec2_instance_id',
          ec2_instance_region: 'ec2_instance_region',
          tags: Tags.default(visited),
          vpc_endpoint: 'vpc_endpoint',
          cloud_watch_log_group_arn: 'cloud_watch_log_group_arn',
          host_environment: 'host_environment',
          endpoint_type: 'endpoint_type',
          software_updates_end_date: 'software_updates_end_date',
          deprecation_date: 'deprecation_date',
          gateway_capacity: 'gateway_capacity',
          supported_gateway_capacities: SupportedGatewayCapacities.default(visited),
          host_environment_id: 'host_environment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['GatewayId'] = stub[:gateway_id] unless stub[:gateway_id].nil?
        data['GatewayName'] = stub[:gateway_name] unless stub[:gateway_name].nil?
        data['GatewayTimezone'] = stub[:gateway_timezone] unless stub[:gateway_timezone].nil?
        data['GatewayState'] = stub[:gateway_state] unless stub[:gateway_state].nil?
        data['GatewayNetworkInterfaces'] = GatewayNetworkInterfaces.stub(stub[:gateway_network_interfaces]) unless stub[:gateway_network_interfaces].nil?
        data['GatewayType'] = stub[:gateway_type] unless stub[:gateway_type].nil?
        data['NextUpdateAvailabilityDate'] = stub[:next_update_availability_date] unless stub[:next_update_availability_date].nil?
        data['LastSoftwareUpdate'] = stub[:last_software_update] unless stub[:last_software_update].nil?
        data['Ec2InstanceId'] = stub[:ec2_instance_id] unless stub[:ec2_instance_id].nil?
        data['Ec2InstanceRegion'] = stub[:ec2_instance_region] unless stub[:ec2_instance_region].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['VPCEndpoint'] = stub[:vpc_endpoint] unless stub[:vpc_endpoint].nil?
        data['CloudWatchLogGroupARN'] = stub[:cloud_watch_log_group_arn] unless stub[:cloud_watch_log_group_arn].nil?
        data['HostEnvironment'] = stub[:host_environment] unless stub[:host_environment].nil?
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['SoftwareUpdatesEndDate'] = stub[:software_updates_end_date] unless stub[:software_updates_end_date].nil?
        data['DeprecationDate'] = stub[:deprecation_date] unless stub[:deprecation_date].nil?
        data['GatewayCapacity'] = stub[:gateway_capacity] unless stub[:gateway_capacity].nil?
        data['SupportedGatewayCapacities'] = SupportedGatewayCapacities.stub(stub[:supported_gateway_capacities]) unless stub[:supported_gateway_capacities].nil?
        data['HostEnvironmentId'] = stub[:host_environment_id] unless stub[:host_environment_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SupportedGatewayCapacities
    class SupportedGatewayCapacities
      def self.default(visited=[])
        return nil if visited.include?('SupportedGatewayCapacities')
        visited = visited + ['SupportedGatewayCapacities']
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

    # List Stubber for GatewayNetworkInterfaces
    class GatewayNetworkInterfaces
      def self.default(visited=[])
        return nil if visited.include?('GatewayNetworkInterfaces')
        visited = visited + ['GatewayNetworkInterfaces']
        [
          NetworkInterface.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NetworkInterface.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          ipv4_address: 'ipv4_address',
          mac_address: 'mac_address',
          ipv6_address: 'ipv6_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInterface.new
        data = {}
        data['Ipv4Address'] = stub[:ipv4_address] unless stub[:ipv4_address].nil?
        data['MacAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data['Ipv6Address'] = stub[:ipv6_address] unless stub[:ipv6_address].nil?
        data
      end
    end

    # Operation Stubber for DescribeMaintenanceStartTime
    class DescribeMaintenanceStartTime
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          hour_of_day: 1,
          minute_of_hour: 1,
          day_of_week: 1,
          day_of_month: 1,
          timezone: 'timezone',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['HourOfDay'] = stub[:hour_of_day] unless stub[:hour_of_day].nil?
        data['MinuteOfHour'] = stub[:minute_of_hour] unless stub[:minute_of_hour].nil?
        data['DayOfWeek'] = stub[:day_of_week] unless stub[:day_of_week].nil?
        data['DayOfMonth'] = stub[:day_of_month] unless stub[:day_of_month].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeNFSFileShares
    class DescribeNFSFileShares
      def self.default(visited=[])
        {
          nfs_file_share_info_list: NFSFileShareInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NFSFileShareInfoList'] = NFSFileShareInfoList.stub(stub[:nfs_file_share_info_list]) unless stub[:nfs_file_share_info_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NFSFileShareInfoList
    class NFSFileShareInfoList
      def self.default(visited=[])
        return nil if visited.include?('NFSFileShareInfoList')
        visited = visited + ['NFSFileShareInfoList']
        [
          NFSFileShareInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NFSFileShareInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NFSFileShareInfo
    class NFSFileShareInfo
      def self.default(visited=[])
        return nil if visited.include?('NFSFileShareInfo')
        visited = visited + ['NFSFileShareInfo']
        {
          nfs_file_share_defaults: NFSFileShareDefaults.default(visited),
          file_share_arn: 'file_share_arn',
          file_share_id: 'file_share_id',
          file_share_status: 'file_share_status',
          gateway_arn: 'gateway_arn',
          kms_encrypted: false,
          kms_key: 'kms_key',
          path: 'path',
          role: 'role',
          location_arn: 'location_arn',
          default_storage_class: 'default_storage_class',
          object_acl: 'object_acl',
          client_list: FileShareClientList.default(visited),
          squash: 'squash',
          read_only: false,
          guess_mime_type_enabled: false,
          requester_pays: false,
          tags: Tags.default(visited),
          file_share_name: 'file_share_name',
          cache_attributes: CacheAttributes.default(visited),
          notification_policy: 'notification_policy',
          vpc_endpoint_dns_name: 'vpc_endpoint_dns_name',
          bucket_region: 'bucket_region',
          audit_destination_arn: 'audit_destination_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::NFSFileShareInfo.new
        data = {}
        data['NFSFileShareDefaults'] = NFSFileShareDefaults.stub(stub[:nfs_file_share_defaults]) unless stub[:nfs_file_share_defaults].nil?
        data['FileShareARN'] = stub[:file_share_arn] unless stub[:file_share_arn].nil?
        data['FileShareId'] = stub[:file_share_id] unless stub[:file_share_id].nil?
        data['FileShareStatus'] = stub[:file_share_status] unless stub[:file_share_status].nil?
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['KMSEncrypted'] = stub[:kms_encrypted] unless stub[:kms_encrypted].nil?
        data['KMSKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['LocationARN'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['DefaultStorageClass'] = stub[:default_storage_class] unless stub[:default_storage_class].nil?
        data['ObjectACL'] = stub[:object_acl] unless stub[:object_acl].nil?
        data['ClientList'] = FileShareClientList.stub(stub[:client_list]) unless stub[:client_list].nil?
        data['Squash'] = stub[:squash] unless stub[:squash].nil?
        data['ReadOnly'] = stub[:read_only] unless stub[:read_only].nil?
        data['GuessMIMETypeEnabled'] = stub[:guess_mime_type_enabled] unless stub[:guess_mime_type_enabled].nil?
        data['RequesterPays'] = stub[:requester_pays] unless stub[:requester_pays].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['FileShareName'] = stub[:file_share_name] unless stub[:file_share_name].nil?
        data['CacheAttributes'] = CacheAttributes.stub(stub[:cache_attributes]) unless stub[:cache_attributes].nil?
        data['NotificationPolicy'] = stub[:notification_policy] unless stub[:notification_policy].nil?
        data['VPCEndpointDNSName'] = stub[:vpc_endpoint_dns_name] unless stub[:vpc_endpoint_dns_name].nil?
        data['BucketRegion'] = stub[:bucket_region] unless stub[:bucket_region].nil?
        data['AuditDestinationARN'] = stub[:audit_destination_arn] unless stub[:audit_destination_arn].nil?
        data
      end
    end

    # List Stubber for FileShareClientList
    class FileShareClientList
      def self.default(visited=[])
        return nil if visited.include?('FileShareClientList')
        visited = visited + ['FileShareClientList']
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

    # Structure Stubber for NFSFileShareDefaults
    class NFSFileShareDefaults
      def self.default(visited=[])
        return nil if visited.include?('NFSFileShareDefaults')
        visited = visited + ['NFSFileShareDefaults']
        {
          file_mode: 'file_mode',
          directory_mode: 'directory_mode',
          group_id: 1,
          owner_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NFSFileShareDefaults.new
        data = {}
        data['FileMode'] = stub[:file_mode] unless stub[:file_mode].nil?
        data['DirectoryMode'] = stub[:directory_mode] unless stub[:directory_mode].nil?
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeSMBFileShares
    class DescribeSMBFileShares
      def self.default(visited=[])
        {
          smb_file_share_info_list: SMBFileShareInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SMBFileShareInfoList'] = SMBFileShareInfoList.stub(stub[:smb_file_share_info_list]) unless stub[:smb_file_share_info_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SMBFileShareInfoList
    class SMBFileShareInfoList
      def self.default(visited=[])
        return nil if visited.include?('SMBFileShareInfoList')
        visited = visited + ['SMBFileShareInfoList']
        [
          SMBFileShareInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SMBFileShareInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SMBFileShareInfo
    class SMBFileShareInfo
      def self.default(visited=[])
        return nil if visited.include?('SMBFileShareInfo')
        visited = visited + ['SMBFileShareInfo']
        {
          file_share_arn: 'file_share_arn',
          file_share_id: 'file_share_id',
          file_share_status: 'file_share_status',
          gateway_arn: 'gateway_arn',
          kms_encrypted: false,
          kms_key: 'kms_key',
          path: 'path',
          role: 'role',
          location_arn: 'location_arn',
          default_storage_class: 'default_storage_class',
          object_acl: 'object_acl',
          read_only: false,
          guess_mime_type_enabled: false,
          requester_pays: false,
          smbacl_enabled: false,
          access_based_enumeration: false,
          admin_user_list: UserList.default(visited),
          valid_user_list: UserList.default(visited),
          invalid_user_list: UserList.default(visited),
          audit_destination_arn: 'audit_destination_arn',
          authentication: 'authentication',
          case_sensitivity: 'case_sensitivity',
          tags: Tags.default(visited),
          file_share_name: 'file_share_name',
          cache_attributes: CacheAttributes.default(visited),
          notification_policy: 'notification_policy',
          vpc_endpoint_dns_name: 'vpc_endpoint_dns_name',
          bucket_region: 'bucket_region',
          oplocks_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SMBFileShareInfo.new
        data = {}
        data['FileShareARN'] = stub[:file_share_arn] unless stub[:file_share_arn].nil?
        data['FileShareId'] = stub[:file_share_id] unless stub[:file_share_id].nil?
        data['FileShareStatus'] = stub[:file_share_status] unless stub[:file_share_status].nil?
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['KMSEncrypted'] = stub[:kms_encrypted] unless stub[:kms_encrypted].nil?
        data['KMSKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['LocationARN'] = stub[:location_arn] unless stub[:location_arn].nil?
        data['DefaultStorageClass'] = stub[:default_storage_class] unless stub[:default_storage_class].nil?
        data['ObjectACL'] = stub[:object_acl] unless stub[:object_acl].nil?
        data['ReadOnly'] = stub[:read_only] unless stub[:read_only].nil?
        data['GuessMIMETypeEnabled'] = stub[:guess_mime_type_enabled] unless stub[:guess_mime_type_enabled].nil?
        data['RequesterPays'] = stub[:requester_pays] unless stub[:requester_pays].nil?
        data['SMBACLEnabled'] = stub[:smbacl_enabled] unless stub[:smbacl_enabled].nil?
        data['AccessBasedEnumeration'] = stub[:access_based_enumeration] unless stub[:access_based_enumeration].nil?
        data['AdminUserList'] = UserList.stub(stub[:admin_user_list]) unless stub[:admin_user_list].nil?
        data['ValidUserList'] = UserList.stub(stub[:valid_user_list]) unless stub[:valid_user_list].nil?
        data['InvalidUserList'] = UserList.stub(stub[:invalid_user_list]) unless stub[:invalid_user_list].nil?
        data['AuditDestinationARN'] = stub[:audit_destination_arn] unless stub[:audit_destination_arn].nil?
        data['Authentication'] = stub[:authentication] unless stub[:authentication].nil?
        data['CaseSensitivity'] = stub[:case_sensitivity] unless stub[:case_sensitivity].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['FileShareName'] = stub[:file_share_name] unless stub[:file_share_name].nil?
        data['CacheAttributes'] = CacheAttributes.stub(stub[:cache_attributes]) unless stub[:cache_attributes].nil?
        data['NotificationPolicy'] = stub[:notification_policy] unless stub[:notification_policy].nil?
        data['VPCEndpointDNSName'] = stub[:vpc_endpoint_dns_name] unless stub[:vpc_endpoint_dns_name].nil?
        data['BucketRegion'] = stub[:bucket_region] unless stub[:bucket_region].nil?
        data['OplocksEnabled'] = stub[:oplocks_enabled] unless stub[:oplocks_enabled].nil?
        data
      end
    end

    # List Stubber for UserList
    class UserList
      def self.default(visited=[])
        return nil if visited.include?('UserList')
        visited = visited + ['UserList']
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

    # Operation Stubber for DescribeSMBSettings
    class DescribeSMBSettings
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          domain_name: 'domain_name',
          active_directory_status: 'active_directory_status',
          smb_guest_password_set: false,
          smb_security_strategy: 'smb_security_strategy',
          file_shares_visible: false,
          smb_local_groups: SMBLocalGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['ActiveDirectoryStatus'] = stub[:active_directory_status] unless stub[:active_directory_status].nil?
        data['SMBGuestPasswordSet'] = stub[:smb_guest_password_set] unless stub[:smb_guest_password_set].nil?
        data['SMBSecurityStrategy'] = stub[:smb_security_strategy] unless stub[:smb_security_strategy].nil?
        data['FileSharesVisible'] = stub[:file_shares_visible] unless stub[:file_shares_visible].nil?
        data['SMBLocalGroups'] = SMBLocalGroups.stub(stub[:smb_local_groups]) unless stub[:smb_local_groups].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SMBLocalGroups
    class SMBLocalGroups
      def self.default(visited=[])
        return nil if visited.include?('SMBLocalGroups')
        visited = visited + ['SMBLocalGroups']
        {
          gateway_admins: UserList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SMBLocalGroups.new
        data = {}
        data['GatewayAdmins'] = UserList.stub(stub[:gateway_admins]) unless stub[:gateway_admins].nil?
        data
      end
    end

    # Operation Stubber for DescribeSnapshotSchedule
    class DescribeSnapshotSchedule
      def self.default(visited=[])
        {
          volume_arn: 'volume_arn',
          start_at: 1,
          recurrence_in_hours: 1,
          description: 'description',
          timezone: 'timezone',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['StartAt'] = stub[:start_at] unless stub[:start_at].nil?
        data['RecurrenceInHours'] = stub[:recurrence_in_hours] unless stub[:recurrence_in_hours].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeStorediSCSIVolumes
    class DescribeStorediSCSIVolumes
      def self.default(visited=[])
        {
          storedi_scsi_volumes: StorediSCSIVolumes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StorediSCSIVolumes'] = StorediSCSIVolumes.stub(stub[:storedi_scsi_volumes]) unless stub[:storedi_scsi_volumes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StorediSCSIVolumes
    class StorediSCSIVolumes
      def self.default(visited=[])
        return nil if visited.include?('StorediSCSIVolumes')
        visited = visited + ['StorediSCSIVolumes']
        [
          StorediSCSIVolume.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StorediSCSIVolume.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StorediSCSIVolume
    class StorediSCSIVolume
      def self.default(visited=[])
        return nil if visited.include?('StorediSCSIVolume')
        visited = visited + ['StorediSCSIVolume']
        {
          volume_arn: 'volume_arn',
          volume_id: 'volume_id',
          volume_type: 'volume_type',
          volume_status: 'volume_status',
          volume_attachment_status: 'volume_attachment_status',
          volume_size_in_bytes: 1,
          volume_progress: 1.0,
          volume_disk_id: 'volume_disk_id',
          source_snapshot_id: 'source_snapshot_id',
          preserved_existing_data: false,
          volumei_scsi_attributes: VolumeiSCSIAttributes.default(visited),
          created_date: Time.now,
          volume_used_in_bytes: 1,
          kms_key: 'kms_key',
          target_name: 'target_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::StorediSCSIVolume.new
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['VolumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['VolumeStatus'] = stub[:volume_status] unless stub[:volume_status].nil?
        data['VolumeAttachmentStatus'] = stub[:volume_attachment_status] unless stub[:volume_attachment_status].nil?
        data['VolumeSizeInBytes'] = stub[:volume_size_in_bytes] unless stub[:volume_size_in_bytes].nil?
        data['VolumeProgress'] = Hearth::NumberHelper.serialize(stub[:volume_progress])
        data['VolumeDiskId'] = stub[:volume_disk_id] unless stub[:volume_disk_id].nil?
        data['SourceSnapshotId'] = stub[:source_snapshot_id] unless stub[:source_snapshot_id].nil?
        data['PreservedExistingData'] = stub[:preserved_existing_data] unless stub[:preserved_existing_data].nil?
        data['VolumeiSCSIAttributes'] = VolumeiSCSIAttributes.stub(stub[:volumei_scsi_attributes]) unless stub[:volumei_scsi_attributes].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['VolumeUsedInBytes'] = stub[:volume_used_in_bytes] unless stub[:volume_used_in_bytes].nil?
        data['KMSKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data['TargetName'] = stub[:target_name] unless stub[:target_name].nil?
        data
      end
    end

    # Operation Stubber for DescribeTapeArchives
    class DescribeTapeArchives
      def self.default(visited=[])
        {
          tape_archives: TapeArchives.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeArchives'] = TapeArchives.stub(stub[:tape_archives]) unless stub[:tape_archives].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TapeArchives
    class TapeArchives
      def self.default(visited=[])
        return nil if visited.include?('TapeArchives')
        visited = visited + ['TapeArchives']
        [
          TapeArchive.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TapeArchive.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TapeArchive
    class TapeArchive
      def self.default(visited=[])
        return nil if visited.include?('TapeArchive')
        visited = visited + ['TapeArchive']
        {
          tape_arn: 'tape_arn',
          tape_barcode: 'tape_barcode',
          tape_created_date: Time.now,
          tape_size_in_bytes: 1,
          completion_time: Time.now,
          retrieved_to: 'retrieved_to',
          tape_status: 'tape_status',
          tape_used_in_bytes: 1,
          kms_key: 'kms_key',
          pool_id: 'pool_id',
          worm: false,
          retention_start_date: Time.now,
          pool_entry_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TapeArchive.new
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        data['TapeBarcode'] = stub[:tape_barcode] unless stub[:tape_barcode].nil?
        data['TapeCreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:tape_created_date]).to_i unless stub[:tape_created_date].nil?
        data['TapeSizeInBytes'] = stub[:tape_size_in_bytes] unless stub[:tape_size_in_bytes].nil?
        data['CompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['RetrievedTo'] = stub[:retrieved_to] unless stub[:retrieved_to].nil?
        data['TapeStatus'] = stub[:tape_status] unless stub[:tape_status].nil?
        data['TapeUsedInBytes'] = stub[:tape_used_in_bytes] unless stub[:tape_used_in_bytes].nil?
        data['KMSKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['Worm'] = stub[:worm] unless stub[:worm].nil?
        data['RetentionStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:retention_start_date]).to_i unless stub[:retention_start_date].nil?
        data['PoolEntryDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:pool_entry_date]).to_i unless stub[:pool_entry_date].nil?
        data
      end
    end

    # Operation Stubber for DescribeTapeRecoveryPoints
    class DescribeTapeRecoveryPoints
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          tape_recovery_point_infos: TapeRecoveryPointInfos.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['TapeRecoveryPointInfos'] = TapeRecoveryPointInfos.stub(stub[:tape_recovery_point_infos]) unless stub[:tape_recovery_point_infos].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TapeRecoveryPointInfos
    class TapeRecoveryPointInfos
      def self.default(visited=[])
        return nil if visited.include?('TapeRecoveryPointInfos')
        visited = visited + ['TapeRecoveryPointInfos']
        [
          TapeRecoveryPointInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TapeRecoveryPointInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TapeRecoveryPointInfo
    class TapeRecoveryPointInfo
      def self.default(visited=[])
        return nil if visited.include?('TapeRecoveryPointInfo')
        visited = visited + ['TapeRecoveryPointInfo']
        {
          tape_arn: 'tape_arn',
          tape_recovery_point_time: Time.now,
          tape_size_in_bytes: 1,
          tape_status: 'tape_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::TapeRecoveryPointInfo.new
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        data['TapeRecoveryPointTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:tape_recovery_point_time]).to_i unless stub[:tape_recovery_point_time].nil?
        data['TapeSizeInBytes'] = stub[:tape_size_in_bytes] unless stub[:tape_size_in_bytes].nil?
        data['TapeStatus'] = stub[:tape_status] unless stub[:tape_status].nil?
        data
      end
    end

    # Operation Stubber for DescribeTapes
    class DescribeTapes
      def self.default(visited=[])
        {
          tapes: Tapes.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tapes'] = Tapes.stub(stub[:tapes]) unless stub[:tapes].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tapes
    class Tapes
      def self.default(visited=[])
        return nil if visited.include?('Tapes')
        visited = visited + ['Tapes']
        [
          Tape.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tape.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tape
    class Tape
      def self.default(visited=[])
        return nil if visited.include?('Tape')
        visited = visited + ['Tape']
        {
          tape_arn: 'tape_arn',
          tape_barcode: 'tape_barcode',
          tape_created_date: Time.now,
          tape_size_in_bytes: 1,
          tape_status: 'tape_status',
          vtl_device: 'vtl_device',
          progress: 1.0,
          tape_used_in_bytes: 1,
          kms_key: 'kms_key',
          pool_id: 'pool_id',
          worm: false,
          retention_start_date: Time.now,
          pool_entry_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Tape.new
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        data['TapeBarcode'] = stub[:tape_barcode] unless stub[:tape_barcode].nil?
        data['TapeCreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:tape_created_date]).to_i unless stub[:tape_created_date].nil?
        data['TapeSizeInBytes'] = stub[:tape_size_in_bytes] unless stub[:tape_size_in_bytes].nil?
        data['TapeStatus'] = stub[:tape_status] unless stub[:tape_status].nil?
        data['VTLDevice'] = stub[:vtl_device] unless stub[:vtl_device].nil?
        data['Progress'] = Hearth::NumberHelper.serialize(stub[:progress])
        data['TapeUsedInBytes'] = stub[:tape_used_in_bytes] unless stub[:tape_used_in_bytes].nil?
        data['KMSKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['Worm'] = stub[:worm] unless stub[:worm].nil?
        data['RetentionStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:retention_start_date]).to_i unless stub[:retention_start_date].nil?
        data['PoolEntryDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:pool_entry_date]).to_i unless stub[:pool_entry_date].nil?
        data
      end
    end

    # Operation Stubber for DescribeUploadBuffer
    class DescribeUploadBuffer
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          disk_ids: DiskIds.default(visited),
          upload_buffer_used_in_bytes: 1,
          upload_buffer_allocated_in_bytes: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['DiskIds'] = DiskIds.stub(stub[:disk_ids]) unless stub[:disk_ids].nil?
        data['UploadBufferUsedInBytes'] = stub[:upload_buffer_used_in_bytes] unless stub[:upload_buffer_used_in_bytes].nil?
        data['UploadBufferAllocatedInBytes'] = stub[:upload_buffer_allocated_in_bytes] unless stub[:upload_buffer_allocated_in_bytes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeVTLDevices
    class DescribeVTLDevices
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          vtl_devices: VTLDevices.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['VTLDevices'] = VTLDevices.stub(stub[:vtl_devices]) unless stub[:vtl_devices].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VTLDevices
    class VTLDevices
      def self.default(visited=[])
        return nil if visited.include?('VTLDevices')
        visited = visited + ['VTLDevices']
        [
          VTLDevice.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VTLDevice.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VTLDevice
    class VTLDevice
      def self.default(visited=[])
        return nil if visited.include?('VTLDevice')
        visited = visited + ['VTLDevice']
        {
          vtl_device_arn: 'vtl_device_arn',
          vtl_device_type: 'vtl_device_type',
          vtl_device_vendor: 'vtl_device_vendor',
          vtl_device_product_identifier: 'vtl_device_product_identifier',
          devicei_scsi_attributes: DeviceiSCSIAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VTLDevice.new
        data = {}
        data['VTLDeviceARN'] = stub[:vtl_device_arn] unless stub[:vtl_device_arn].nil?
        data['VTLDeviceType'] = stub[:vtl_device_type] unless stub[:vtl_device_type].nil?
        data['VTLDeviceVendor'] = stub[:vtl_device_vendor] unless stub[:vtl_device_vendor].nil?
        data['VTLDeviceProductIdentifier'] = stub[:vtl_device_product_identifier] unless stub[:vtl_device_product_identifier].nil?
        data['DeviceiSCSIAttributes'] = DeviceiSCSIAttributes.stub(stub[:devicei_scsi_attributes]) unless stub[:devicei_scsi_attributes].nil?
        data
      end
    end

    # Structure Stubber for DeviceiSCSIAttributes
    class DeviceiSCSIAttributes
      def self.default(visited=[])
        return nil if visited.include?('DeviceiSCSIAttributes')
        visited = visited + ['DeviceiSCSIAttributes']
        {
          target_arn: 'target_arn',
          network_interface_id: 'network_interface_id',
          network_interface_port: 1,
          chap_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceiSCSIAttributes.new
        data = {}
        data['TargetARN'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['NetworkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data['NetworkInterfacePort'] = stub[:network_interface_port] unless stub[:network_interface_port].nil?
        data['ChapEnabled'] = stub[:chap_enabled] unless stub[:chap_enabled].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorkingStorage
    class DescribeWorkingStorage
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          disk_ids: DiskIds.default(visited),
          working_storage_used_in_bytes: 1,
          working_storage_allocated_in_bytes: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['DiskIds'] = DiskIds.stub(stub[:disk_ids]) unless stub[:disk_ids].nil?
        data['WorkingStorageUsedInBytes'] = stub[:working_storage_used_in_bytes] unless stub[:working_storage_used_in_bytes].nil?
        data['WorkingStorageAllocatedInBytes'] = stub[:working_storage_allocated_in_bytes] unless stub[:working_storage_allocated_in_bytes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachVolume
    class DetachVolume
      def self.default(visited=[])
        {
          volume_arn: 'volume_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableGateway
    class DisableGateway
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateFileSystem
    class DisassociateFileSystem
      def self.default(visited=[])
        {
          file_system_association_arn: 'file_system_association_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileSystemAssociationARN'] = stub[:file_system_association_arn] unless stub[:file_system_association_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for JoinDomain
    class JoinDomain
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          active_directory_status: 'active_directory_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['ActiveDirectoryStatus'] = stub[:active_directory_status] unless stub[:active_directory_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAutomaticTapeCreationPolicies
    class ListAutomaticTapeCreationPolicies
      def self.default(visited=[])
        {
          automatic_tape_creation_policy_infos: AutomaticTapeCreationPolicyInfos.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutomaticTapeCreationPolicyInfos'] = AutomaticTapeCreationPolicyInfos.stub(stub[:automatic_tape_creation_policy_infos]) unless stub[:automatic_tape_creation_policy_infos].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AutomaticTapeCreationPolicyInfos
    class AutomaticTapeCreationPolicyInfos
      def self.default(visited=[])
        return nil if visited.include?('AutomaticTapeCreationPolicyInfos')
        visited = visited + ['AutomaticTapeCreationPolicyInfos']
        [
          AutomaticTapeCreationPolicyInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutomaticTapeCreationPolicyInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutomaticTapeCreationPolicyInfo
    class AutomaticTapeCreationPolicyInfo
      def self.default(visited=[])
        return nil if visited.include?('AutomaticTapeCreationPolicyInfo')
        visited = visited + ['AutomaticTapeCreationPolicyInfo']
        {
          automatic_tape_creation_rules: AutomaticTapeCreationRules.default(visited),
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutomaticTapeCreationPolicyInfo.new
        data = {}
        data['AutomaticTapeCreationRules'] = AutomaticTapeCreationRules.stub(stub[:automatic_tape_creation_rules]) unless stub[:automatic_tape_creation_rules].nil?
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data
      end
    end

    # List Stubber for AutomaticTapeCreationRules
    class AutomaticTapeCreationRules
      def self.default(visited=[])
        return nil if visited.include?('AutomaticTapeCreationRules')
        visited = visited + ['AutomaticTapeCreationRules']
        [
          AutomaticTapeCreationRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutomaticTapeCreationRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutomaticTapeCreationRule
    class AutomaticTapeCreationRule
      def self.default(visited=[])
        return nil if visited.include?('AutomaticTapeCreationRule')
        visited = visited + ['AutomaticTapeCreationRule']
        {
          tape_barcode_prefix: 'tape_barcode_prefix',
          pool_id: 'pool_id',
          tape_size_in_bytes: 1,
          minimum_num_tapes: 1,
          worm: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutomaticTapeCreationRule.new
        data = {}
        data['TapeBarcodePrefix'] = stub[:tape_barcode_prefix] unless stub[:tape_barcode_prefix].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['TapeSizeInBytes'] = stub[:tape_size_in_bytes] unless stub[:tape_size_in_bytes].nil?
        data['MinimumNumTapes'] = stub[:minimum_num_tapes] unless stub[:minimum_num_tapes].nil?
        data['Worm'] = stub[:worm] unless stub[:worm].nil?
        data
      end
    end

    # Operation Stubber for ListFileShares
    class ListFileShares
      def self.default(visited=[])
        {
          marker: 'marker',
          next_marker: 'next_marker',
          file_share_info_list: FileShareInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['FileShareInfoList'] = FileShareInfoList.stub(stub[:file_share_info_list]) unless stub[:file_share_info_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FileShareInfoList
    class FileShareInfoList
      def self.default(visited=[])
        return nil if visited.include?('FileShareInfoList')
        visited = visited + ['FileShareInfoList']
        [
          FileShareInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FileShareInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FileShareInfo
    class FileShareInfo
      def self.default(visited=[])
        return nil if visited.include?('FileShareInfo')
        visited = visited + ['FileShareInfo']
        {
          file_share_type: 'file_share_type',
          file_share_arn: 'file_share_arn',
          file_share_id: 'file_share_id',
          file_share_status: 'file_share_status',
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileShareInfo.new
        data = {}
        data['FileShareType'] = stub[:file_share_type] unless stub[:file_share_type].nil?
        data['FileShareARN'] = stub[:file_share_arn] unless stub[:file_share_arn].nil?
        data['FileShareId'] = stub[:file_share_id] unless stub[:file_share_id].nil?
        data['FileShareStatus'] = stub[:file_share_status] unless stub[:file_share_status].nil?
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data
      end
    end

    # Operation Stubber for ListFileSystemAssociations
    class ListFileSystemAssociations
      def self.default(visited=[])
        {
          marker: 'marker',
          next_marker: 'next_marker',
          file_system_association_summary_list: FileSystemAssociationSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['FileSystemAssociationSummaryList'] = FileSystemAssociationSummaryList.stub(stub[:file_system_association_summary_list]) unless stub[:file_system_association_summary_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FileSystemAssociationSummaryList
    class FileSystemAssociationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('FileSystemAssociationSummaryList')
        visited = visited + ['FileSystemAssociationSummaryList']
        [
          FileSystemAssociationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FileSystemAssociationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FileSystemAssociationSummary
    class FileSystemAssociationSummary
      def self.default(visited=[])
        return nil if visited.include?('FileSystemAssociationSummary')
        visited = visited + ['FileSystemAssociationSummary']
        {
          file_system_association_id: 'file_system_association_id',
          file_system_association_arn: 'file_system_association_arn',
          file_system_association_status: 'file_system_association_status',
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystemAssociationSummary.new
        data = {}
        data['FileSystemAssociationId'] = stub[:file_system_association_id] unless stub[:file_system_association_id].nil?
        data['FileSystemAssociationARN'] = stub[:file_system_association_arn] unless stub[:file_system_association_arn].nil?
        data['FileSystemAssociationStatus'] = stub[:file_system_association_status] unless stub[:file_system_association_status].nil?
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data
      end
    end

    # Operation Stubber for ListGateways
    class ListGateways
      def self.default(visited=[])
        {
          gateways: Gateways.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Gateways'] = Gateways.stub(stub[:gateways]) unless stub[:gateways].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Gateways
    class Gateways
      def self.default(visited=[])
        return nil if visited.include?('Gateways')
        visited = visited + ['Gateways']
        [
          GatewayInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GatewayInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GatewayInfo
    class GatewayInfo
      def self.default(visited=[])
        return nil if visited.include?('GatewayInfo')
        visited = visited + ['GatewayInfo']
        {
          gateway_id: 'gateway_id',
          gateway_arn: 'gateway_arn',
          gateway_type: 'gateway_type',
          gateway_operational_state: 'gateway_operational_state',
          gateway_name: 'gateway_name',
          ec2_instance_id: 'ec2_instance_id',
          ec2_instance_region: 'ec2_instance_region',
          host_environment: 'host_environment',
          host_environment_id: 'host_environment_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayInfo.new
        data = {}
        data['GatewayId'] = stub[:gateway_id] unless stub[:gateway_id].nil?
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['GatewayType'] = stub[:gateway_type] unless stub[:gateway_type].nil?
        data['GatewayOperationalState'] = stub[:gateway_operational_state] unless stub[:gateway_operational_state].nil?
        data['GatewayName'] = stub[:gateway_name] unless stub[:gateway_name].nil?
        data['Ec2InstanceId'] = stub[:ec2_instance_id] unless stub[:ec2_instance_id].nil?
        data['Ec2InstanceRegion'] = stub[:ec2_instance_region] unless stub[:ec2_instance_region].nil?
        data['HostEnvironment'] = stub[:host_environment] unless stub[:host_environment].nil?
        data['HostEnvironmentId'] = stub[:host_environment_id] unless stub[:host_environment_id].nil?
        data
      end
    end

    # Operation Stubber for ListLocalDisks
    class ListLocalDisks
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          disks: Disks.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['Disks'] = Disks.stub(stub[:disks]) unless stub[:disks].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Disks
    class Disks
      def self.default(visited=[])
        return nil if visited.include?('Disks')
        visited = visited + ['Disks']
        [
          Disk.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Disk.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Disk
    class Disk
      def self.default(visited=[])
        return nil if visited.include?('Disk')
        visited = visited + ['Disk']
        {
          disk_id: 'disk_id',
          disk_path: 'disk_path',
          disk_node: 'disk_node',
          disk_status: 'disk_status',
          disk_size_in_bytes: 1,
          disk_allocation_type: 'disk_allocation_type',
          disk_allocation_resource: 'disk_allocation_resource',
          disk_attribute_list: DiskAttributeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Disk.new
        data = {}
        data['DiskId'] = stub[:disk_id] unless stub[:disk_id].nil?
        data['DiskPath'] = stub[:disk_path] unless stub[:disk_path].nil?
        data['DiskNode'] = stub[:disk_node] unless stub[:disk_node].nil?
        data['DiskStatus'] = stub[:disk_status] unless stub[:disk_status].nil?
        data['DiskSizeInBytes'] = stub[:disk_size_in_bytes] unless stub[:disk_size_in_bytes].nil?
        data['DiskAllocationType'] = stub[:disk_allocation_type] unless stub[:disk_allocation_type].nil?
        data['DiskAllocationResource'] = stub[:disk_allocation_resource] unless stub[:disk_allocation_resource].nil?
        data['DiskAttributeList'] = DiskAttributeList.stub(stub[:disk_attribute_list]) unless stub[:disk_attribute_list].nil?
        data
      end
    end

    # List Stubber for DiskAttributeList
    class DiskAttributeList
      def self.default(visited=[])
        return nil if visited.include?('DiskAttributeList')
        visited = visited + ['DiskAttributeList']
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

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          marker: 'marker',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTapePools
    class ListTapePools
      def self.default(visited=[])
        {
          pool_infos: PoolInfos.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PoolInfos'] = PoolInfos.stub(stub[:pool_infos]) unless stub[:pool_infos].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PoolInfos
    class PoolInfos
      def self.default(visited=[])
        return nil if visited.include?('PoolInfos')
        visited = visited + ['PoolInfos']
        [
          PoolInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PoolInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PoolInfo
    class PoolInfo
      def self.default(visited=[])
        return nil if visited.include?('PoolInfo')
        visited = visited + ['PoolInfo']
        {
          pool_arn: 'pool_arn',
          pool_name: 'pool_name',
          storage_class: 'storage_class',
          retention_lock_type: 'retention_lock_type',
          retention_lock_time_in_days: 1,
          pool_status: 'pool_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::PoolInfo.new
        data = {}
        data['PoolARN'] = stub[:pool_arn] unless stub[:pool_arn].nil?
        data['PoolName'] = stub[:pool_name] unless stub[:pool_name].nil?
        data['StorageClass'] = stub[:storage_class] unless stub[:storage_class].nil?
        data['RetentionLockType'] = stub[:retention_lock_type] unless stub[:retention_lock_type].nil?
        data['RetentionLockTimeInDays'] = stub[:retention_lock_time_in_days] unless stub[:retention_lock_time_in_days].nil?
        data['PoolStatus'] = stub[:pool_status] unless stub[:pool_status].nil?
        data
      end
    end

    # Operation Stubber for ListTapes
    class ListTapes
      def self.default(visited=[])
        {
          tape_infos: TapeInfos.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeInfos'] = TapeInfos.stub(stub[:tape_infos]) unless stub[:tape_infos].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TapeInfos
    class TapeInfos
      def self.default(visited=[])
        return nil if visited.include?('TapeInfos')
        visited = visited + ['TapeInfos']
        [
          TapeInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TapeInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TapeInfo
    class TapeInfo
      def self.default(visited=[])
        return nil if visited.include?('TapeInfo')
        visited = visited + ['TapeInfo']
        {
          tape_arn: 'tape_arn',
          tape_barcode: 'tape_barcode',
          tape_size_in_bytes: 1,
          tape_status: 'tape_status',
          gateway_arn: 'gateway_arn',
          pool_id: 'pool_id',
          retention_start_date: Time.now,
          pool_entry_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TapeInfo.new
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        data['TapeBarcode'] = stub[:tape_barcode] unless stub[:tape_barcode].nil?
        data['TapeSizeInBytes'] = stub[:tape_size_in_bytes] unless stub[:tape_size_in_bytes].nil?
        data['TapeStatus'] = stub[:tape_status] unless stub[:tape_status].nil?
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['RetentionStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:retention_start_date]).to_i unless stub[:retention_start_date].nil?
        data['PoolEntryDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:pool_entry_date]).to_i unless stub[:pool_entry_date].nil?
        data
      end
    end

    # Operation Stubber for ListVolumeInitiators
    class ListVolumeInitiators
      def self.default(visited=[])
        {
          initiators: Initiators.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Initiators'] = Initiators.stub(stub[:initiators]) unless stub[:initiators].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Initiators
    class Initiators
      def self.default(visited=[])
        return nil if visited.include?('Initiators')
        visited = visited + ['Initiators']
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

    # Operation Stubber for ListVolumeRecoveryPoints
    class ListVolumeRecoveryPoints
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          volume_recovery_point_infos: VolumeRecoveryPointInfos.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['VolumeRecoveryPointInfos'] = VolumeRecoveryPointInfos.stub(stub[:volume_recovery_point_infos]) unless stub[:volume_recovery_point_infos].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VolumeRecoveryPointInfos
    class VolumeRecoveryPointInfos
      def self.default(visited=[])
        return nil if visited.include?('VolumeRecoveryPointInfos')
        visited = visited + ['VolumeRecoveryPointInfos']
        [
          VolumeRecoveryPointInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VolumeRecoveryPointInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VolumeRecoveryPointInfo
    class VolumeRecoveryPointInfo
      def self.default(visited=[])
        return nil if visited.include?('VolumeRecoveryPointInfo')
        visited = visited + ['VolumeRecoveryPointInfo']
        {
          volume_arn: 'volume_arn',
          volume_size_in_bytes: 1,
          volume_usage_in_bytes: 1,
          volume_recovery_point_time: 'volume_recovery_point_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeRecoveryPointInfo.new
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['VolumeSizeInBytes'] = stub[:volume_size_in_bytes] unless stub[:volume_size_in_bytes].nil?
        data['VolumeUsageInBytes'] = stub[:volume_usage_in_bytes] unless stub[:volume_usage_in_bytes].nil?
        data['VolumeRecoveryPointTime'] = stub[:volume_recovery_point_time] unless stub[:volume_recovery_point_time].nil?
        data
      end
    end

    # Operation Stubber for ListVolumes
    class ListVolumes
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          marker: 'marker',
          volume_infos: VolumeInfos.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['VolumeInfos'] = VolumeInfos.stub(stub[:volume_infos]) unless stub[:volume_infos].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VolumeInfos
    class VolumeInfos
      def self.default(visited=[])
        return nil if visited.include?('VolumeInfos')
        visited = visited + ['VolumeInfos']
        [
          VolumeInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VolumeInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VolumeInfo
    class VolumeInfo
      def self.default(visited=[])
        return nil if visited.include?('VolumeInfo')
        visited = visited + ['VolumeInfo']
        {
          volume_arn: 'volume_arn',
          volume_id: 'volume_id',
          gateway_arn: 'gateway_arn',
          gateway_id: 'gateway_id',
          volume_type: 'volume_type',
          volume_size_in_bytes: 1,
          volume_attachment_status: 'volume_attachment_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeInfo.new
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        data['VolumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['GatewayId'] = stub[:gateway_id] unless stub[:gateway_id].nil?
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['VolumeSizeInBytes'] = stub[:volume_size_in_bytes] unless stub[:volume_size_in_bytes].nil?
        data['VolumeAttachmentStatus'] = stub[:volume_attachment_status] unless stub[:volume_attachment_status].nil?
        data
      end
    end

    # Operation Stubber for NotifyWhenUploaded
    class NotifyWhenUploaded
      def self.default(visited=[])
        {
          file_share_arn: 'file_share_arn',
          notification_id: 'notification_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileShareARN'] = stub[:file_share_arn] unless stub[:file_share_arn].nil?
        data['NotificationId'] = stub[:notification_id] unless stub[:notification_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RefreshCache
    class RefreshCache
      def self.default(visited=[])
        {
          file_share_arn: 'file_share_arn',
          notification_id: 'notification_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileShareARN'] = stub[:file_share_arn] unless stub[:file_share_arn].nil?
        data['NotificationId'] = stub[:notification_id] unless stub[:notification_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResetCache
    class ResetCache
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RetrieveTapeArchive
    class RetrieveTapeArchive
      def self.default(visited=[])
        {
          tape_arn: 'tape_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RetrieveTapeRecoveryPoint
    class RetrieveTapeRecoveryPoint
      def self.default(visited=[])
        {
          tape_arn: 'tape_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TapeARN'] = stub[:tape_arn] unless stub[:tape_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetLocalConsolePassword
    class SetLocalConsolePassword
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetSMBGuestPassword
    class SetSMBGuestPassword
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ShutdownGateway
    class ShutdownGateway
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartAvailabilityMonitorTest
    class StartAvailabilityMonitorTest
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartGateway
    class StartGateway
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAutomaticTapeCreationPolicy
    class UpdateAutomaticTapeCreationPolicy
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateBandwidthRateLimit
    class UpdateBandwidthRateLimit
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateBandwidthRateLimitSchedule
    class UpdateBandwidthRateLimitSchedule
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateChapCredentials
    class UpdateChapCredentials
      def self.default(visited=[])
        {
          target_arn: 'target_arn',
          initiator_name: 'initiator_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TargetARN'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['InitiatorName'] = stub[:initiator_name] unless stub[:initiator_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFileSystemAssociation
    class UpdateFileSystemAssociation
      def self.default(visited=[])
        {
          file_system_association_arn: 'file_system_association_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileSystemAssociationARN'] = stub[:file_system_association_arn] unless stub[:file_system_association_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGatewayInformation
    class UpdateGatewayInformation
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
          gateway_name: 'gateway_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['GatewayName'] = stub[:gateway_name] unless stub[:gateway_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGatewaySoftwareNow
    class UpdateGatewaySoftwareNow
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMaintenanceStartTime
    class UpdateMaintenanceStartTime
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNFSFileShare
    class UpdateNFSFileShare
      def self.default(visited=[])
        {
          file_share_arn: 'file_share_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileShareARN'] = stub[:file_share_arn] unless stub[:file_share_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSMBFileShare
    class UpdateSMBFileShare
      def self.default(visited=[])
        {
          file_share_arn: 'file_share_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileShareARN'] = stub[:file_share_arn] unless stub[:file_share_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSMBFileShareVisibility
    class UpdateSMBFileShareVisibility
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSMBLocalGroups
    class UpdateSMBLocalGroups
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSMBSecurityStrategy
    class UpdateSMBSecurityStrategy
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayARN'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSnapshotSchedule
    class UpdateSnapshotSchedule
      def self.default(visited=[])
        {
          volume_arn: 'volume_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeARN'] = stub[:volume_arn] unless stub[:volume_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateVTLDeviceType
    class UpdateVTLDeviceType
      def self.default(visited=[])
        {
          vtl_device_arn: 'vtl_device_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VTLDeviceARN'] = stub[:vtl_device_arn] unless stub[:vtl_device_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
