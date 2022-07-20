# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::FSx
  module Stubs

    # Operation Stubber for AssociateFileSystemAliases
    class AssociateFileSystemAliases
      def self.default(visited=[])
        {
          aliases: Aliases.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Aliases'] = Aliases.stub(stub[:aliases]) unless stub[:aliases].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Aliases
    class Aliases
      def self.default(visited=[])
        return nil if visited.include?('Aliases')
        visited = visited + ['Aliases']
        [
          Alias.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Alias.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Alias
    class Alias
      def self.default(visited=[])
        return nil if visited.include?('Alias')
        visited = visited + ['Alias']
        {
          name: 'name',
          lifecycle: 'lifecycle',
        }
      end

      def self.stub(stub)
        stub ||= Types::Alias.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data
      end
    end

    # Operation Stubber for CancelDataRepositoryTask
    class CancelDataRepositoryTask
      def self.default(visited=[])
        {
          lifecycle: 'lifecycle',
          task_id: 'task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['TaskId'] = stub[:task_id] unless stub[:task_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CopyBackup
    class CopyBackup
      def self.default(visited=[])
        {
          backup: Backup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Backup'] = Backup.stub(stub[:backup]) unless stub[:backup].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Backup
    class Backup
      def self.default(visited=[])
        return nil if visited.include?('Backup')
        visited = visited + ['Backup']
        {
          backup_id: 'backup_id',
          lifecycle: 'lifecycle',
          failure_details: BackupFailureDetails.default(visited),
          type: 'type',
          progress_percent: 1,
          creation_time: Time.now,
          kms_key_id: 'kms_key_id',
          resource_arn: 'resource_arn',
          tags: Tags.default(visited),
          file_system: FileSystem.default(visited),
          directory_information: ActiveDirectoryBackupAttributes.default(visited),
          owner_id: 'owner_id',
          source_backup_id: 'source_backup_id',
          source_backup_region: 'source_backup_region',
          resource_type: 'resource_type',
          volume: Volume.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Backup.new
        data = {}
        data['BackupId'] = stub[:backup_id] unless stub[:backup_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['FailureDetails'] = BackupFailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ProgressPercent'] = stub[:progress_percent] unless stub[:progress_percent].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['FileSystem'] = FileSystem.stub(stub[:file_system]) unless stub[:file_system].nil?
        data['DirectoryInformation'] = ActiveDirectoryBackupAttributes.stub(stub[:directory_information]) unless stub[:directory_information].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['SourceBackupId'] = stub[:source_backup_id] unless stub[:source_backup_id].nil?
        data['SourceBackupRegion'] = stub[:source_backup_region] unless stub[:source_backup_region].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Volume'] = Volume.stub(stub[:volume]) unless stub[:volume].nil?
        data
      end
    end

    # Structure Stubber for Volume
    class Volume
      def self.default(visited=[])
        return nil if visited.include?('Volume')
        visited = visited + ['Volume']
        {
          creation_time: Time.now,
          file_system_id: 'file_system_id',
          lifecycle: 'lifecycle',
          name: 'name',
          ontap_configuration: OntapVolumeConfiguration.default(visited),
          resource_arn: 'resource_arn',
          tags: Tags.default(visited),
          volume_id: 'volume_id',
          volume_type: 'volume_type',
          lifecycle_transition_reason: LifecycleTransitionReason.default(visited),
          administrative_actions: AdministrativeActions.default(visited),
          open_zfs_configuration: OpenZFSVolumeConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Volume.new
        data = {}
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['OntapConfiguration'] = OntapVolumeConfiguration.stub(stub[:ontap_configuration]) unless stub[:ontap_configuration].nil?
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['VolumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['LifecycleTransitionReason'] = LifecycleTransitionReason.stub(stub[:lifecycle_transition_reason]) unless stub[:lifecycle_transition_reason].nil?
        data['AdministrativeActions'] = AdministrativeActions.stub(stub[:administrative_actions]) unless stub[:administrative_actions].nil?
        data['OpenZFSConfiguration'] = OpenZFSVolumeConfiguration.stub(stub[:open_zfs_configuration]) unless stub[:open_zfs_configuration].nil?
        data
      end
    end

    # Structure Stubber for OpenZFSVolumeConfiguration
    class OpenZFSVolumeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OpenZFSVolumeConfiguration')
        visited = visited + ['OpenZFSVolumeConfiguration']
        {
          parent_volume_id: 'parent_volume_id',
          volume_path: 'volume_path',
          storage_capacity_reservation_gi_b: 1,
          storage_capacity_quota_gi_b: 1,
          record_size_ki_b: 1,
          data_compression_type: 'data_compression_type',
          copy_tags_to_snapshots: false,
          origin_snapshot: OpenZFSOriginSnapshotConfiguration.default(visited),
          read_only: false,
          nfs_exports: OpenZFSNfsExports.default(visited),
          user_and_group_quotas: OpenZFSUserAndGroupQuotas.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenZFSVolumeConfiguration.new
        data = {}
        data['ParentVolumeId'] = stub[:parent_volume_id] unless stub[:parent_volume_id].nil?
        data['VolumePath'] = stub[:volume_path] unless stub[:volume_path].nil?
        data['StorageCapacityReservationGiB'] = stub[:storage_capacity_reservation_gi_b] unless stub[:storage_capacity_reservation_gi_b].nil?
        data['StorageCapacityQuotaGiB'] = stub[:storage_capacity_quota_gi_b] unless stub[:storage_capacity_quota_gi_b].nil?
        data['RecordSizeKiB'] = stub[:record_size_ki_b] unless stub[:record_size_ki_b].nil?
        data['DataCompressionType'] = stub[:data_compression_type] unless stub[:data_compression_type].nil?
        data['CopyTagsToSnapshots'] = stub[:copy_tags_to_snapshots] unless stub[:copy_tags_to_snapshots].nil?
        data['OriginSnapshot'] = OpenZFSOriginSnapshotConfiguration.stub(stub[:origin_snapshot]) unless stub[:origin_snapshot].nil?
        data['ReadOnly'] = stub[:read_only] unless stub[:read_only].nil?
        data['NfsExports'] = OpenZFSNfsExports.stub(stub[:nfs_exports]) unless stub[:nfs_exports].nil?
        data['UserAndGroupQuotas'] = OpenZFSUserAndGroupQuotas.stub(stub[:user_and_group_quotas]) unless stub[:user_and_group_quotas].nil?
        data
      end
    end

    # List Stubber for OpenZFSUserAndGroupQuotas
    class OpenZFSUserAndGroupQuotas
      def self.default(visited=[])
        return nil if visited.include?('OpenZFSUserAndGroupQuotas')
        visited = visited + ['OpenZFSUserAndGroupQuotas']
        [
          OpenZFSUserOrGroupQuota.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OpenZFSUserOrGroupQuota.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OpenZFSUserOrGroupQuota
    class OpenZFSUserOrGroupQuota
      def self.default(visited=[])
        return nil if visited.include?('OpenZFSUserOrGroupQuota')
        visited = visited + ['OpenZFSUserOrGroupQuota']
        {
          type: 'type',
          id: 1,
          storage_capacity_quota_gi_b: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenZFSUserOrGroupQuota.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['StorageCapacityQuotaGiB'] = stub[:storage_capacity_quota_gi_b] unless stub[:storage_capacity_quota_gi_b].nil?
        data
      end
    end

    # List Stubber for OpenZFSNfsExports
    class OpenZFSNfsExports
      def self.default(visited=[])
        return nil if visited.include?('OpenZFSNfsExports')
        visited = visited + ['OpenZFSNfsExports']
        [
          OpenZFSNfsExport.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OpenZFSNfsExport.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OpenZFSNfsExport
    class OpenZFSNfsExport
      def self.default(visited=[])
        return nil if visited.include?('OpenZFSNfsExport')
        visited = visited + ['OpenZFSNfsExport']
        {
          client_configurations: OpenZFSClientConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenZFSNfsExport.new
        data = {}
        data['ClientConfigurations'] = OpenZFSClientConfigurations.stub(stub[:client_configurations]) unless stub[:client_configurations].nil?
        data
      end
    end

    # List Stubber for OpenZFSClientConfigurations
    class OpenZFSClientConfigurations
      def self.default(visited=[])
        return nil if visited.include?('OpenZFSClientConfigurations')
        visited = visited + ['OpenZFSClientConfigurations']
        [
          OpenZFSClientConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OpenZFSClientConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OpenZFSClientConfiguration
    class OpenZFSClientConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OpenZFSClientConfiguration')
        visited = visited + ['OpenZFSClientConfiguration']
        {
          clients: 'clients',
          options: OpenZFSNfsExportOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenZFSClientConfiguration.new
        data = {}
        data['Clients'] = stub[:clients] unless stub[:clients].nil?
        data['Options'] = OpenZFSNfsExportOptions.stub(stub[:options]) unless stub[:options].nil?
        data
      end
    end

    # List Stubber for OpenZFSNfsExportOptions
    class OpenZFSNfsExportOptions
      def self.default(visited=[])
        return nil if visited.include?('OpenZFSNfsExportOptions')
        visited = visited + ['OpenZFSNfsExportOptions']
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

    # Structure Stubber for OpenZFSOriginSnapshotConfiguration
    class OpenZFSOriginSnapshotConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OpenZFSOriginSnapshotConfiguration')
        visited = visited + ['OpenZFSOriginSnapshotConfiguration']
        {
          snapshot_arn: 'snapshot_arn',
          copy_strategy: 'copy_strategy',
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenZFSOriginSnapshotConfiguration.new
        data = {}
        data['SnapshotARN'] = stub[:snapshot_arn] unless stub[:snapshot_arn].nil?
        data['CopyStrategy'] = stub[:copy_strategy] unless stub[:copy_strategy].nil?
        data
      end
    end

    # List Stubber for AdministrativeActions
    class AdministrativeActions
      def self.default(visited=[])
        return nil if visited.include?('AdministrativeActions')
        visited = visited + ['AdministrativeActions']
        [
          AdministrativeAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AdministrativeAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdministrativeAction
    class AdministrativeAction
      def self.default(visited=[])
        return nil if visited.include?('AdministrativeAction')
        visited = visited + ['AdministrativeAction']
        {
          administrative_action_type: 'administrative_action_type',
          progress_percent: 1,
          request_time: Time.now,
          status: 'status',
          target_file_system_values: FileSystem.default(visited),
          failure_details: AdministrativeActionFailureDetails.default(visited),
          target_volume_values: Volume.default(visited),
          target_snapshot_values: Snapshot.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdministrativeAction.new
        data = {}
        data['AdministrativeActionType'] = stub[:administrative_action_type] unless stub[:administrative_action_type].nil?
        data['ProgressPercent'] = stub[:progress_percent] unless stub[:progress_percent].nil?
        data['RequestTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:request_time]).to_i unless stub[:request_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['TargetFileSystemValues'] = FileSystem.stub(stub[:target_file_system_values]) unless stub[:target_file_system_values].nil?
        data['FailureDetails'] = AdministrativeActionFailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['TargetVolumeValues'] = Volume.stub(stub[:target_volume_values]) unless stub[:target_volume_values].nil?
        data['TargetSnapshotValues'] = Snapshot.stub(stub[:target_snapshot_values]) unless stub[:target_snapshot_values].nil?
        data
      end
    end

    # Structure Stubber for Snapshot
    class Snapshot
      def self.default(visited=[])
        return nil if visited.include?('Snapshot')
        visited = visited + ['Snapshot']
        {
          resource_arn: 'resource_arn',
          snapshot_id: 'snapshot_id',
          name: 'name',
          volume_id: 'volume_id',
          creation_time: Time.now,
          lifecycle: 'lifecycle',
          lifecycle_transition_reason: LifecycleTransitionReason.default(visited),
          tags: Tags.default(visited),
          administrative_actions: AdministrativeActions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Snapshot.new
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VolumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['LifecycleTransitionReason'] = LifecycleTransitionReason.stub(stub[:lifecycle_transition_reason]) unless stub[:lifecycle_transition_reason].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['AdministrativeActions'] = AdministrativeActions.stub(stub[:administrative_actions]) unless stub[:administrative_actions].nil?
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

    # Structure Stubber for LifecycleTransitionReason
    class LifecycleTransitionReason
      def self.default(visited=[])
        return nil if visited.include?('LifecycleTransitionReason')
        visited = visited + ['LifecycleTransitionReason']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifecycleTransitionReason.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for AdministrativeActionFailureDetails
    class AdministrativeActionFailureDetails
      def self.default(visited=[])
        return nil if visited.include?('AdministrativeActionFailureDetails')
        visited = visited + ['AdministrativeActionFailureDetails']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AdministrativeActionFailureDetails.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for FileSystem
    class FileSystem
      def self.default(visited=[])
        return nil if visited.include?('FileSystem')
        visited = visited + ['FileSystem']
        {
          owner_id: 'owner_id',
          creation_time: Time.now,
          file_system_id: 'file_system_id',
          file_system_type: 'file_system_type',
          lifecycle: 'lifecycle',
          failure_details: FileSystemFailureDetails.default(visited),
          storage_capacity: 1,
          storage_type: 'storage_type',
          vpc_id: 'vpc_id',
          subnet_ids: SubnetIds.default(visited),
          network_interface_ids: NetworkInterfaceIds.default(visited),
          dns_name: 'dns_name',
          kms_key_id: 'kms_key_id',
          resource_arn: 'resource_arn',
          tags: Tags.default(visited),
          windows_configuration: WindowsFileSystemConfiguration.default(visited),
          lustre_configuration: LustreFileSystemConfiguration.default(visited),
          administrative_actions: AdministrativeActions.default(visited),
          ontap_configuration: OntapFileSystemConfiguration.default(visited),
          file_system_type_version: 'file_system_type_version',
          open_zfs_configuration: OpenZFSFileSystemConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystem.new
        data = {}
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['FileSystemType'] = stub[:file_system_type] unless stub[:file_system_type].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['FailureDetails'] = FileSystemFailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['StorageCapacity'] = stub[:storage_capacity] unless stub[:storage_capacity].nil?
        data['StorageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetIds'] = SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['NetworkInterfaceIds'] = NetworkInterfaceIds.stub(stub[:network_interface_ids]) unless stub[:network_interface_ids].nil?
        data['DNSName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['WindowsConfiguration'] = WindowsFileSystemConfiguration.stub(stub[:windows_configuration]) unless stub[:windows_configuration].nil?
        data['LustreConfiguration'] = LustreFileSystemConfiguration.stub(stub[:lustre_configuration]) unless stub[:lustre_configuration].nil?
        data['AdministrativeActions'] = AdministrativeActions.stub(stub[:administrative_actions]) unless stub[:administrative_actions].nil?
        data['OntapConfiguration'] = OntapFileSystemConfiguration.stub(stub[:ontap_configuration]) unless stub[:ontap_configuration].nil?
        data['FileSystemTypeVersion'] = stub[:file_system_type_version] unless stub[:file_system_type_version].nil?
        data['OpenZFSConfiguration'] = OpenZFSFileSystemConfiguration.stub(stub[:open_zfs_configuration]) unless stub[:open_zfs_configuration].nil?
        data
      end
    end

    # Structure Stubber for OpenZFSFileSystemConfiguration
    class OpenZFSFileSystemConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OpenZFSFileSystemConfiguration')
        visited = visited + ['OpenZFSFileSystemConfiguration']
        {
          automatic_backup_retention_days: 1,
          copy_tags_to_backups: false,
          copy_tags_to_volumes: false,
          daily_automatic_backup_start_time: 'daily_automatic_backup_start_time',
          deployment_type: 'deployment_type',
          throughput_capacity: 1,
          weekly_maintenance_start_time: 'weekly_maintenance_start_time',
          disk_iops_configuration: DiskIopsConfiguration.default(visited),
          root_volume_id: 'root_volume_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenZFSFileSystemConfiguration.new
        data = {}
        data['AutomaticBackupRetentionDays'] = stub[:automatic_backup_retention_days] unless stub[:automatic_backup_retention_days].nil?
        data['CopyTagsToBackups'] = stub[:copy_tags_to_backups] unless stub[:copy_tags_to_backups].nil?
        data['CopyTagsToVolumes'] = stub[:copy_tags_to_volumes] unless stub[:copy_tags_to_volumes].nil?
        data['DailyAutomaticBackupStartTime'] = stub[:daily_automatic_backup_start_time] unless stub[:daily_automatic_backup_start_time].nil?
        data['DeploymentType'] = stub[:deployment_type] unless stub[:deployment_type].nil?
        data['ThroughputCapacity'] = stub[:throughput_capacity] unless stub[:throughput_capacity].nil?
        data['WeeklyMaintenanceStartTime'] = stub[:weekly_maintenance_start_time] unless stub[:weekly_maintenance_start_time].nil?
        data['DiskIopsConfiguration'] = DiskIopsConfiguration.stub(stub[:disk_iops_configuration]) unless stub[:disk_iops_configuration].nil?
        data['RootVolumeId'] = stub[:root_volume_id] unless stub[:root_volume_id].nil?
        data
      end
    end

    # Structure Stubber for DiskIopsConfiguration
    class DiskIopsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DiskIopsConfiguration')
        visited = visited + ['DiskIopsConfiguration']
        {
          mode: 'mode',
          iops: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DiskIopsConfiguration.new
        data = {}
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data
      end
    end

    # Structure Stubber for OntapFileSystemConfiguration
    class OntapFileSystemConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OntapFileSystemConfiguration')
        visited = visited + ['OntapFileSystemConfiguration']
        {
          automatic_backup_retention_days: 1,
          daily_automatic_backup_start_time: 'daily_automatic_backup_start_time',
          deployment_type: 'deployment_type',
          endpoint_ip_address_range: 'endpoint_ip_address_range',
          endpoints: FileSystemEndpoints.default(visited),
          disk_iops_configuration: DiskIopsConfiguration.default(visited),
          preferred_subnet_id: 'preferred_subnet_id',
          route_table_ids: RouteTableIds.default(visited),
          throughput_capacity: 1,
          weekly_maintenance_start_time: 'weekly_maintenance_start_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::OntapFileSystemConfiguration.new
        data = {}
        data['AutomaticBackupRetentionDays'] = stub[:automatic_backup_retention_days] unless stub[:automatic_backup_retention_days].nil?
        data['DailyAutomaticBackupStartTime'] = stub[:daily_automatic_backup_start_time] unless stub[:daily_automatic_backup_start_time].nil?
        data['DeploymentType'] = stub[:deployment_type] unless stub[:deployment_type].nil?
        data['EndpointIpAddressRange'] = stub[:endpoint_ip_address_range] unless stub[:endpoint_ip_address_range].nil?
        data['Endpoints'] = FileSystemEndpoints.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['DiskIopsConfiguration'] = DiskIopsConfiguration.stub(stub[:disk_iops_configuration]) unless stub[:disk_iops_configuration].nil?
        data['PreferredSubnetId'] = stub[:preferred_subnet_id] unless stub[:preferred_subnet_id].nil?
        data['RouteTableIds'] = RouteTableIds.stub(stub[:route_table_ids]) unless stub[:route_table_ids].nil?
        data['ThroughputCapacity'] = stub[:throughput_capacity] unless stub[:throughput_capacity].nil?
        data['WeeklyMaintenanceStartTime'] = stub[:weekly_maintenance_start_time] unless stub[:weekly_maintenance_start_time].nil?
        data
      end
    end

    # List Stubber for RouteTableIds
    class RouteTableIds
      def self.default(visited=[])
        return nil if visited.include?('RouteTableIds')
        visited = visited + ['RouteTableIds']
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

    # Structure Stubber for FileSystemEndpoints
    class FileSystemEndpoints
      def self.default(visited=[])
        return nil if visited.include?('FileSystemEndpoints')
        visited = visited + ['FileSystemEndpoints']
        {
          intercluster: FileSystemEndpoint.default(visited),
          management: FileSystemEndpoint.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystemEndpoints.new
        data = {}
        data['Intercluster'] = FileSystemEndpoint.stub(stub[:intercluster]) unless stub[:intercluster].nil?
        data['Management'] = FileSystemEndpoint.stub(stub[:management]) unless stub[:management].nil?
        data
      end
    end

    # Structure Stubber for FileSystemEndpoint
    class FileSystemEndpoint
      def self.default(visited=[])
        return nil if visited.include?('FileSystemEndpoint')
        visited = visited + ['FileSystemEndpoint']
        {
          dns_name: 'dns_name',
          ip_addresses: OntapEndpointIpAddresses.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystemEndpoint.new
        data = {}
        data['DNSName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['IpAddresses'] = OntapEndpointIpAddresses.stub(stub[:ip_addresses]) unless stub[:ip_addresses].nil?
        data
      end
    end

    # List Stubber for OntapEndpointIpAddresses
    class OntapEndpointIpAddresses
      def self.default(visited=[])
        return nil if visited.include?('OntapEndpointIpAddresses')
        visited = visited + ['OntapEndpointIpAddresses']
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

    # Structure Stubber for LustreFileSystemConfiguration
    class LustreFileSystemConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LustreFileSystemConfiguration')
        visited = visited + ['LustreFileSystemConfiguration']
        {
          weekly_maintenance_start_time: 'weekly_maintenance_start_time',
          data_repository_configuration: DataRepositoryConfiguration.default(visited),
          deployment_type: 'deployment_type',
          per_unit_storage_throughput: 1,
          mount_name: 'mount_name',
          daily_automatic_backup_start_time: 'daily_automatic_backup_start_time',
          automatic_backup_retention_days: 1,
          copy_tags_to_backups: false,
          drive_cache_type: 'drive_cache_type',
          data_compression_type: 'data_compression_type',
          log_configuration: LustreLogConfiguration.default(visited),
          root_squash_configuration: LustreRootSquashConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LustreFileSystemConfiguration.new
        data = {}
        data['WeeklyMaintenanceStartTime'] = stub[:weekly_maintenance_start_time] unless stub[:weekly_maintenance_start_time].nil?
        data['DataRepositoryConfiguration'] = DataRepositoryConfiguration.stub(stub[:data_repository_configuration]) unless stub[:data_repository_configuration].nil?
        data['DeploymentType'] = stub[:deployment_type] unless stub[:deployment_type].nil?
        data['PerUnitStorageThroughput'] = stub[:per_unit_storage_throughput] unless stub[:per_unit_storage_throughput].nil?
        data['MountName'] = stub[:mount_name] unless stub[:mount_name].nil?
        data['DailyAutomaticBackupStartTime'] = stub[:daily_automatic_backup_start_time] unless stub[:daily_automatic_backup_start_time].nil?
        data['AutomaticBackupRetentionDays'] = stub[:automatic_backup_retention_days] unless stub[:automatic_backup_retention_days].nil?
        data['CopyTagsToBackups'] = stub[:copy_tags_to_backups] unless stub[:copy_tags_to_backups].nil?
        data['DriveCacheType'] = stub[:drive_cache_type] unless stub[:drive_cache_type].nil?
        data['DataCompressionType'] = stub[:data_compression_type] unless stub[:data_compression_type].nil?
        data['LogConfiguration'] = LustreLogConfiguration.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data['RootSquashConfiguration'] = LustreRootSquashConfiguration.stub(stub[:root_squash_configuration]) unless stub[:root_squash_configuration].nil?
        data
      end
    end

    # Structure Stubber for LustreRootSquashConfiguration
    class LustreRootSquashConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LustreRootSquashConfiguration')
        visited = visited + ['LustreRootSquashConfiguration']
        {
          root_squash: 'root_squash',
          no_squash_nids: LustreNoSquashNids.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LustreRootSquashConfiguration.new
        data = {}
        data['RootSquash'] = stub[:root_squash] unless stub[:root_squash].nil?
        data['NoSquashNids'] = LustreNoSquashNids.stub(stub[:no_squash_nids]) unless stub[:no_squash_nids].nil?
        data
      end
    end

    # List Stubber for LustreNoSquashNids
    class LustreNoSquashNids
      def self.default(visited=[])
        return nil if visited.include?('LustreNoSquashNids')
        visited = visited + ['LustreNoSquashNids']
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

    # Structure Stubber for LustreLogConfiguration
    class LustreLogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LustreLogConfiguration')
        visited = visited + ['LustreLogConfiguration']
        {
          level: 'level',
          destination: 'destination',
        }
      end

      def self.stub(stub)
        stub ||= Types::LustreLogConfiguration.new
        data = {}
        data['Level'] = stub[:level] unless stub[:level].nil?
        data['Destination'] = stub[:destination] unless stub[:destination].nil?
        data
      end
    end

    # Structure Stubber for DataRepositoryConfiguration
    class DataRepositoryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DataRepositoryConfiguration')
        visited = visited + ['DataRepositoryConfiguration']
        {
          lifecycle: 'lifecycle',
          import_path: 'import_path',
          export_path: 'export_path',
          imported_file_chunk_size: 1,
          auto_import_policy: 'auto_import_policy',
          failure_details: DataRepositoryFailureDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataRepositoryConfiguration.new
        data = {}
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['ImportPath'] = stub[:import_path] unless stub[:import_path].nil?
        data['ExportPath'] = stub[:export_path] unless stub[:export_path].nil?
        data['ImportedFileChunkSize'] = stub[:imported_file_chunk_size] unless stub[:imported_file_chunk_size].nil?
        data['AutoImportPolicy'] = stub[:auto_import_policy] unless stub[:auto_import_policy].nil?
        data['FailureDetails'] = DataRepositoryFailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data
      end
    end

    # Structure Stubber for DataRepositoryFailureDetails
    class DataRepositoryFailureDetails
      def self.default(visited=[])
        return nil if visited.include?('DataRepositoryFailureDetails')
        visited = visited + ['DataRepositoryFailureDetails']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataRepositoryFailureDetails.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for WindowsFileSystemConfiguration
    class WindowsFileSystemConfiguration
      def self.default(visited=[])
        return nil if visited.include?('WindowsFileSystemConfiguration')
        visited = visited + ['WindowsFileSystemConfiguration']
        {
          active_directory_id: 'active_directory_id',
          self_managed_active_directory_configuration: SelfManagedActiveDirectoryAttributes.default(visited),
          deployment_type: 'deployment_type',
          remote_administration_endpoint: 'remote_administration_endpoint',
          preferred_subnet_id: 'preferred_subnet_id',
          preferred_file_server_ip: 'preferred_file_server_ip',
          throughput_capacity: 1,
          maintenance_operations_in_progress: FileSystemMaintenanceOperations.default(visited),
          weekly_maintenance_start_time: 'weekly_maintenance_start_time',
          daily_automatic_backup_start_time: 'daily_automatic_backup_start_time',
          automatic_backup_retention_days: 1,
          copy_tags_to_backups: false,
          aliases: Aliases.default(visited),
          audit_log_configuration: WindowsAuditLogConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WindowsFileSystemConfiguration.new
        data = {}
        data['ActiveDirectoryId'] = stub[:active_directory_id] unless stub[:active_directory_id].nil?
        data['SelfManagedActiveDirectoryConfiguration'] = SelfManagedActiveDirectoryAttributes.stub(stub[:self_managed_active_directory_configuration]) unless stub[:self_managed_active_directory_configuration].nil?
        data['DeploymentType'] = stub[:deployment_type] unless stub[:deployment_type].nil?
        data['RemoteAdministrationEndpoint'] = stub[:remote_administration_endpoint] unless stub[:remote_administration_endpoint].nil?
        data['PreferredSubnetId'] = stub[:preferred_subnet_id] unless stub[:preferred_subnet_id].nil?
        data['PreferredFileServerIp'] = stub[:preferred_file_server_ip] unless stub[:preferred_file_server_ip].nil?
        data['ThroughputCapacity'] = stub[:throughput_capacity] unless stub[:throughput_capacity].nil?
        data['MaintenanceOperationsInProgress'] = FileSystemMaintenanceOperations.stub(stub[:maintenance_operations_in_progress]) unless stub[:maintenance_operations_in_progress].nil?
        data['WeeklyMaintenanceStartTime'] = stub[:weekly_maintenance_start_time] unless stub[:weekly_maintenance_start_time].nil?
        data['DailyAutomaticBackupStartTime'] = stub[:daily_automatic_backup_start_time] unless stub[:daily_automatic_backup_start_time].nil?
        data['AutomaticBackupRetentionDays'] = stub[:automatic_backup_retention_days] unless stub[:automatic_backup_retention_days].nil?
        data['CopyTagsToBackups'] = stub[:copy_tags_to_backups] unless stub[:copy_tags_to_backups].nil?
        data['Aliases'] = Aliases.stub(stub[:aliases]) unless stub[:aliases].nil?
        data['AuditLogConfiguration'] = WindowsAuditLogConfiguration.stub(stub[:audit_log_configuration]) unless stub[:audit_log_configuration].nil?
        data
      end
    end

    # Structure Stubber for WindowsAuditLogConfiguration
    class WindowsAuditLogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('WindowsAuditLogConfiguration')
        visited = visited + ['WindowsAuditLogConfiguration']
        {
          file_access_audit_log_level: 'file_access_audit_log_level',
          file_share_access_audit_log_level: 'file_share_access_audit_log_level',
          audit_log_destination: 'audit_log_destination',
        }
      end

      def self.stub(stub)
        stub ||= Types::WindowsAuditLogConfiguration.new
        data = {}
        data['FileAccessAuditLogLevel'] = stub[:file_access_audit_log_level] unless stub[:file_access_audit_log_level].nil?
        data['FileShareAccessAuditLogLevel'] = stub[:file_share_access_audit_log_level] unless stub[:file_share_access_audit_log_level].nil?
        data['AuditLogDestination'] = stub[:audit_log_destination] unless stub[:audit_log_destination].nil?
        data
      end
    end

    # List Stubber for FileSystemMaintenanceOperations
    class FileSystemMaintenanceOperations
      def self.default(visited=[])
        return nil if visited.include?('FileSystemMaintenanceOperations')
        visited = visited + ['FileSystemMaintenanceOperations']
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

    # Structure Stubber for SelfManagedActiveDirectoryAttributes
    class SelfManagedActiveDirectoryAttributes
      def self.default(visited=[])
        return nil if visited.include?('SelfManagedActiveDirectoryAttributes')
        visited = visited + ['SelfManagedActiveDirectoryAttributes']
        {
          domain_name: 'domain_name',
          organizational_unit_distinguished_name: 'organizational_unit_distinguished_name',
          file_system_administrators_group: 'file_system_administrators_group',
          user_name: 'user_name',
          dns_ips: DnsIps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SelfManagedActiveDirectoryAttributes.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['OrganizationalUnitDistinguishedName'] = stub[:organizational_unit_distinguished_name] unless stub[:organizational_unit_distinguished_name].nil?
        data['FileSystemAdministratorsGroup'] = stub[:file_system_administrators_group] unless stub[:file_system_administrators_group].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['DnsIps'] = DnsIps.stub(stub[:dns_ips]) unless stub[:dns_ips].nil?
        data
      end
    end

    # List Stubber for DnsIps
    class DnsIps
      def self.default(visited=[])
        return nil if visited.include?('DnsIps')
        visited = visited + ['DnsIps']
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

    # List Stubber for NetworkInterfaceIds
    class NetworkInterfaceIds
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaceIds')
        visited = visited + ['NetworkInterfaceIds']
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

    # List Stubber for SubnetIds
    class SubnetIds
      def self.default(visited=[])
        return nil if visited.include?('SubnetIds')
        visited = visited + ['SubnetIds']
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

    # Structure Stubber for FileSystemFailureDetails
    class FileSystemFailureDetails
      def self.default(visited=[])
        return nil if visited.include?('FileSystemFailureDetails')
        visited = visited + ['FileSystemFailureDetails']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystemFailureDetails.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for OntapVolumeConfiguration
    class OntapVolumeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OntapVolumeConfiguration')
        visited = visited + ['OntapVolumeConfiguration']
        {
          flex_cache_endpoint_type: 'flex_cache_endpoint_type',
          junction_path: 'junction_path',
          security_style: 'security_style',
          size_in_megabytes: 1,
          storage_efficiency_enabled: false,
          storage_virtual_machine_id: 'storage_virtual_machine_id',
          storage_virtual_machine_root: false,
          tiering_policy: TieringPolicy.default(visited),
          uuid: 'uuid',
          ontap_volume_type: 'ontap_volume_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::OntapVolumeConfiguration.new
        data = {}
        data['FlexCacheEndpointType'] = stub[:flex_cache_endpoint_type] unless stub[:flex_cache_endpoint_type].nil?
        data['JunctionPath'] = stub[:junction_path] unless stub[:junction_path].nil?
        data['SecurityStyle'] = stub[:security_style] unless stub[:security_style].nil?
        data['SizeInMegabytes'] = stub[:size_in_megabytes] unless stub[:size_in_megabytes].nil?
        data['StorageEfficiencyEnabled'] = stub[:storage_efficiency_enabled] unless stub[:storage_efficiency_enabled].nil?
        data['StorageVirtualMachineId'] = stub[:storage_virtual_machine_id] unless stub[:storage_virtual_machine_id].nil?
        data['StorageVirtualMachineRoot'] = stub[:storage_virtual_machine_root] unless stub[:storage_virtual_machine_root].nil?
        data['TieringPolicy'] = TieringPolicy.stub(stub[:tiering_policy]) unless stub[:tiering_policy].nil?
        data['UUID'] = stub[:uuid] unless stub[:uuid].nil?
        data['OntapVolumeType'] = stub[:ontap_volume_type] unless stub[:ontap_volume_type].nil?
        data
      end
    end

    # Structure Stubber for TieringPolicy
    class TieringPolicy
      def self.default(visited=[])
        return nil if visited.include?('TieringPolicy')
        visited = visited + ['TieringPolicy']
        {
          cooling_period: 1,
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TieringPolicy.new
        data = {}
        data['CoolingPeriod'] = stub[:cooling_period] unless stub[:cooling_period].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for ActiveDirectoryBackupAttributes
    class ActiveDirectoryBackupAttributes
      def self.default(visited=[])
        return nil if visited.include?('ActiveDirectoryBackupAttributes')
        visited = visited + ['ActiveDirectoryBackupAttributes']
        {
          domain_name: 'domain_name',
          active_directory_id: 'active_directory_id',
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActiveDirectoryBackupAttributes.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['ActiveDirectoryId'] = stub[:active_directory_id] unless stub[:active_directory_id].nil?
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # Structure Stubber for BackupFailureDetails
    class BackupFailureDetails
      def self.default(visited=[])
        return nil if visited.include?('BackupFailureDetails')
        visited = visited + ['BackupFailureDetails']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupFailureDetails.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for CreateBackup
    class CreateBackup
      def self.default(visited=[])
        {
          backup: Backup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Backup'] = Backup.stub(stub[:backup]) unless stub[:backup].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDataRepositoryAssociation
    class CreateDataRepositoryAssociation
      def self.default(visited=[])
        {
          association: DataRepositoryAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Association'] = DataRepositoryAssociation.stub(stub[:association]) unless stub[:association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DataRepositoryAssociation
    class DataRepositoryAssociation
      def self.default(visited=[])
        return nil if visited.include?('DataRepositoryAssociation')
        visited = visited + ['DataRepositoryAssociation']
        {
          association_id: 'association_id',
          resource_arn: 'resource_arn',
          file_system_id: 'file_system_id',
          lifecycle: 'lifecycle',
          failure_details: DataRepositoryFailureDetails.default(visited),
          file_system_path: 'file_system_path',
          data_repository_path: 'data_repository_path',
          batch_import_meta_data_on_create: false,
          imported_file_chunk_size: 1,
          s3: S3DataRepositoryConfiguration.default(visited),
          tags: Tags.default(visited),
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataRepositoryAssociation.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['FailureDetails'] = DataRepositoryFailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['FileSystemPath'] = stub[:file_system_path] unless stub[:file_system_path].nil?
        data['DataRepositoryPath'] = stub[:data_repository_path] unless stub[:data_repository_path].nil?
        data['BatchImportMetaDataOnCreate'] = stub[:batch_import_meta_data_on_create] unless stub[:batch_import_meta_data_on_create].nil?
        data['ImportedFileChunkSize'] = stub[:imported_file_chunk_size] unless stub[:imported_file_chunk_size].nil?
        data['S3'] = S3DataRepositoryConfiguration.stub(stub[:s3]) unless stub[:s3].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Structure Stubber for S3DataRepositoryConfiguration
    class S3DataRepositoryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3DataRepositoryConfiguration')
        visited = visited + ['S3DataRepositoryConfiguration']
        {
          auto_import_policy: AutoImportPolicy.default(visited),
          auto_export_policy: AutoExportPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DataRepositoryConfiguration.new
        data = {}
        data['AutoImportPolicy'] = AutoImportPolicy.stub(stub[:auto_import_policy]) unless stub[:auto_import_policy].nil?
        data['AutoExportPolicy'] = AutoExportPolicy.stub(stub[:auto_export_policy]) unless stub[:auto_export_policy].nil?
        data
      end
    end

    # Structure Stubber for AutoExportPolicy
    class AutoExportPolicy
      def self.default(visited=[])
        return nil if visited.include?('AutoExportPolicy')
        visited = visited + ['AutoExportPolicy']
        {
          events: EventTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoExportPolicy.new
        data = {}
        data['Events'] = EventTypes.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # List Stubber for EventTypes
    class EventTypes
      def self.default(visited=[])
        return nil if visited.include?('EventTypes')
        visited = visited + ['EventTypes']
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

    # Structure Stubber for AutoImportPolicy
    class AutoImportPolicy
      def self.default(visited=[])
        return nil if visited.include?('AutoImportPolicy')
        visited = visited + ['AutoImportPolicy']
        {
          events: EventTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoImportPolicy.new
        data = {}
        data['Events'] = EventTypes.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # Operation Stubber for CreateDataRepositoryTask
    class CreateDataRepositoryTask
      def self.default(visited=[])
        {
          data_repository_task: DataRepositoryTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataRepositoryTask'] = DataRepositoryTask.stub(stub[:data_repository_task]) unless stub[:data_repository_task].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DataRepositoryTask
    class DataRepositoryTask
      def self.default(visited=[])
        return nil if visited.include?('DataRepositoryTask')
        visited = visited + ['DataRepositoryTask']
        {
          task_id: 'task_id',
          lifecycle: 'lifecycle',
          type: 'type',
          creation_time: Time.now,
          start_time: Time.now,
          end_time: Time.now,
          resource_arn: 'resource_arn',
          tags: Tags.default(visited),
          file_system_id: 'file_system_id',
          paths: DataRepositoryTaskPaths.default(visited),
          failure_details: DataRepositoryTaskFailureDetails.default(visited),
          status: DataRepositoryTaskStatus.default(visited),
          report: CompletionReport.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataRepositoryTask.new
        data = {}
        data['TaskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['Paths'] = DataRepositoryTaskPaths.stub(stub[:paths]) unless stub[:paths].nil?
        data['FailureDetails'] = DataRepositoryTaskFailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['Status'] = DataRepositoryTaskStatus.stub(stub[:status]) unless stub[:status].nil?
        data['Report'] = CompletionReport.stub(stub[:report]) unless stub[:report].nil?
        data
      end
    end

    # Structure Stubber for CompletionReport
    class CompletionReport
      def self.default(visited=[])
        return nil if visited.include?('CompletionReport')
        visited = visited + ['CompletionReport']
        {
          enabled: false,
          path: 'path',
          format: 'format',
          scope: 'scope',
        }
      end

      def self.stub(stub)
        stub ||= Types::CompletionReport.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['Scope'] = stub[:scope] unless stub[:scope].nil?
        data
      end
    end

    # Structure Stubber for DataRepositoryTaskStatus
    class DataRepositoryTaskStatus
      def self.default(visited=[])
        return nil if visited.include?('DataRepositoryTaskStatus')
        visited = visited + ['DataRepositoryTaskStatus']
        {
          total_count: 1,
          succeeded_count: 1,
          failed_count: 1,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataRepositoryTaskStatus.new
        data = {}
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data['SucceededCount'] = stub[:succeeded_count] unless stub[:succeeded_count].nil?
        data['FailedCount'] = stub[:failed_count] unless stub[:failed_count].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Structure Stubber for DataRepositoryTaskFailureDetails
    class DataRepositoryTaskFailureDetails
      def self.default(visited=[])
        return nil if visited.include?('DataRepositoryTaskFailureDetails')
        visited = visited + ['DataRepositoryTaskFailureDetails']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataRepositoryTaskFailureDetails.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for DataRepositoryTaskPaths
    class DataRepositoryTaskPaths
      def self.default(visited=[])
        return nil if visited.include?('DataRepositoryTaskPaths')
        visited = visited + ['DataRepositoryTaskPaths']
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

    # Operation Stubber for CreateFileSystem
    class CreateFileSystem
      def self.default(visited=[])
        {
          file_system: FileSystem.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileSystem'] = FileSystem.stub(stub[:file_system]) unless stub[:file_system].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateFileSystemFromBackup
    class CreateFileSystemFromBackup
      def self.default(visited=[])
        {
          file_system: FileSystem.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileSystem'] = FileSystem.stub(stub[:file_system]) unless stub[:file_system].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSnapshot
    class CreateSnapshot
      def self.default(visited=[])
        {
          snapshot: Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Snapshot'] = Snapshot.stub(stub[:snapshot]) unless stub[:snapshot].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStorageVirtualMachine
    class CreateStorageVirtualMachine
      def self.default(visited=[])
        {
          storage_virtual_machine: StorageVirtualMachine.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StorageVirtualMachine'] = StorageVirtualMachine.stub(stub[:storage_virtual_machine]) unless stub[:storage_virtual_machine].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for StorageVirtualMachine
    class StorageVirtualMachine
      def self.default(visited=[])
        return nil if visited.include?('StorageVirtualMachine')
        visited = visited + ['StorageVirtualMachine']
        {
          active_directory_configuration: SvmActiveDirectoryConfiguration.default(visited),
          creation_time: Time.now,
          endpoints: SvmEndpoints.default(visited),
          file_system_id: 'file_system_id',
          lifecycle: 'lifecycle',
          name: 'name',
          resource_arn: 'resource_arn',
          storage_virtual_machine_id: 'storage_virtual_machine_id',
          subtype: 'subtype',
          uuid: 'uuid',
          tags: Tags.default(visited),
          lifecycle_transition_reason: LifecycleTransitionReason.default(visited),
          root_volume_security_style: 'root_volume_security_style',
        }
      end

      def self.stub(stub)
        stub ||= Types::StorageVirtualMachine.new
        data = {}
        data['ActiveDirectoryConfiguration'] = SvmActiveDirectoryConfiguration.stub(stub[:active_directory_configuration]) unless stub[:active_directory_configuration].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Endpoints'] = SvmEndpoints.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['StorageVirtualMachineId'] = stub[:storage_virtual_machine_id] unless stub[:storage_virtual_machine_id].nil?
        data['Subtype'] = stub[:subtype] unless stub[:subtype].nil?
        data['UUID'] = stub[:uuid] unless stub[:uuid].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['LifecycleTransitionReason'] = LifecycleTransitionReason.stub(stub[:lifecycle_transition_reason]) unless stub[:lifecycle_transition_reason].nil?
        data['RootVolumeSecurityStyle'] = stub[:root_volume_security_style] unless stub[:root_volume_security_style].nil?
        data
      end
    end

    # Structure Stubber for SvmEndpoints
    class SvmEndpoints
      def self.default(visited=[])
        return nil if visited.include?('SvmEndpoints')
        visited = visited + ['SvmEndpoints']
        {
          iscsi: SvmEndpoint.default(visited),
          management: SvmEndpoint.default(visited),
          nfs: SvmEndpoint.default(visited),
          smb: SvmEndpoint.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SvmEndpoints.new
        data = {}
        data['Iscsi'] = SvmEndpoint.stub(stub[:iscsi]) unless stub[:iscsi].nil?
        data['Management'] = SvmEndpoint.stub(stub[:management]) unless stub[:management].nil?
        data['Nfs'] = SvmEndpoint.stub(stub[:nfs]) unless stub[:nfs].nil?
        data['Smb'] = SvmEndpoint.stub(stub[:smb]) unless stub[:smb].nil?
        data
      end
    end

    # Structure Stubber for SvmEndpoint
    class SvmEndpoint
      def self.default(visited=[])
        return nil if visited.include?('SvmEndpoint')
        visited = visited + ['SvmEndpoint']
        {
          dns_name: 'dns_name',
          ip_addresses: OntapEndpointIpAddresses.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SvmEndpoint.new
        data = {}
        data['DNSName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['IpAddresses'] = OntapEndpointIpAddresses.stub(stub[:ip_addresses]) unless stub[:ip_addresses].nil?
        data
      end
    end

    # Structure Stubber for SvmActiveDirectoryConfiguration
    class SvmActiveDirectoryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SvmActiveDirectoryConfiguration')
        visited = visited + ['SvmActiveDirectoryConfiguration']
        {
          net_bios_name: 'net_bios_name',
          self_managed_active_directory_configuration: SelfManagedActiveDirectoryAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SvmActiveDirectoryConfiguration.new
        data = {}
        data['NetBiosName'] = stub[:net_bios_name] unless stub[:net_bios_name].nil?
        data['SelfManagedActiveDirectoryConfiguration'] = SelfManagedActiveDirectoryAttributes.stub(stub[:self_managed_active_directory_configuration]) unless stub[:self_managed_active_directory_configuration].nil?
        data
      end
    end

    # Operation Stubber for CreateVolume
    class CreateVolume
      def self.default(visited=[])
        {
          volume: Volume.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Volume'] = Volume.stub(stub[:volume]) unless stub[:volume].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateVolumeFromBackup
    class CreateVolumeFromBackup
      def self.default(visited=[])
        {
          volume: Volume.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Volume'] = Volume.stub(stub[:volume]) unless stub[:volume].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBackup
    class DeleteBackup
      def self.default(visited=[])
        {
          backup_id: 'backup_id',
          lifecycle: 'lifecycle',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BackupId'] = stub[:backup_id] unless stub[:backup_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDataRepositoryAssociation
    class DeleteDataRepositoryAssociation
      def self.default(visited=[])
        {
          association_id: 'association_id',
          lifecycle: 'lifecycle',
          delete_data_in_file_system: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['DeleteDataInFileSystem'] = stub[:delete_data_in_file_system] unless stub[:delete_data_in_file_system].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFileSystem
    class DeleteFileSystem
      def self.default(visited=[])
        {
          file_system_id: 'file_system_id',
          lifecycle: 'lifecycle',
          windows_response: DeleteFileSystemWindowsResponse.default(visited),
          lustre_response: DeleteFileSystemLustreResponse.default(visited),
          open_zfs_response: DeleteFileSystemOpenZFSResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['WindowsResponse'] = DeleteFileSystemWindowsResponse.stub(stub[:windows_response]) unless stub[:windows_response].nil?
        data['LustreResponse'] = DeleteFileSystemLustreResponse.stub(stub[:lustre_response]) unless stub[:lustre_response].nil?
        data['OpenZFSResponse'] = DeleteFileSystemOpenZFSResponse.stub(stub[:open_zfs_response]) unless stub[:open_zfs_response].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DeleteFileSystemOpenZFSResponse
    class DeleteFileSystemOpenZFSResponse
      def self.default(visited=[])
        return nil if visited.include?('DeleteFileSystemOpenZFSResponse')
        visited = visited + ['DeleteFileSystemOpenZFSResponse']
        {
          final_backup_id: 'final_backup_id',
          final_backup_tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeleteFileSystemOpenZFSResponse.new
        data = {}
        data['FinalBackupId'] = stub[:final_backup_id] unless stub[:final_backup_id].nil?
        data['FinalBackupTags'] = Tags.stub(stub[:final_backup_tags]) unless stub[:final_backup_tags].nil?
        data
      end
    end

    # Structure Stubber for DeleteFileSystemLustreResponse
    class DeleteFileSystemLustreResponse
      def self.default(visited=[])
        return nil if visited.include?('DeleteFileSystemLustreResponse')
        visited = visited + ['DeleteFileSystemLustreResponse']
        {
          final_backup_id: 'final_backup_id',
          final_backup_tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeleteFileSystemLustreResponse.new
        data = {}
        data['FinalBackupId'] = stub[:final_backup_id] unless stub[:final_backup_id].nil?
        data['FinalBackupTags'] = Tags.stub(stub[:final_backup_tags]) unless stub[:final_backup_tags].nil?
        data
      end
    end

    # Structure Stubber for DeleteFileSystemWindowsResponse
    class DeleteFileSystemWindowsResponse
      def self.default(visited=[])
        return nil if visited.include?('DeleteFileSystemWindowsResponse')
        visited = visited + ['DeleteFileSystemWindowsResponse']
        {
          final_backup_id: 'final_backup_id',
          final_backup_tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeleteFileSystemWindowsResponse.new
        data = {}
        data['FinalBackupId'] = stub[:final_backup_id] unless stub[:final_backup_id].nil?
        data['FinalBackupTags'] = Tags.stub(stub[:final_backup_tags]) unless stub[:final_backup_tags].nil?
        data
      end
    end

    # Operation Stubber for DeleteSnapshot
    class DeleteSnapshot
      def self.default(visited=[])
        {
          snapshot_id: 'snapshot_id',
          lifecycle: 'lifecycle',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStorageVirtualMachine
    class DeleteStorageVirtualMachine
      def self.default(visited=[])
        {
          storage_virtual_machine_id: 'storage_virtual_machine_id',
          lifecycle: 'lifecycle',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StorageVirtualMachineId'] = stub[:storage_virtual_machine_id] unless stub[:storage_virtual_machine_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVolume
    class DeleteVolume
      def self.default(visited=[])
        {
          volume_id: 'volume_id',
          lifecycle: 'lifecycle',
          ontap_response: DeleteVolumeOntapResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        data['OntapResponse'] = DeleteVolumeOntapResponse.stub(stub[:ontap_response]) unless stub[:ontap_response].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DeleteVolumeOntapResponse
    class DeleteVolumeOntapResponse
      def self.default(visited=[])
        return nil if visited.include?('DeleteVolumeOntapResponse')
        visited = visited + ['DeleteVolumeOntapResponse']
        {
          final_backup_id: 'final_backup_id',
          final_backup_tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeleteVolumeOntapResponse.new
        data = {}
        data['FinalBackupId'] = stub[:final_backup_id] unless stub[:final_backup_id].nil?
        data['FinalBackupTags'] = Tags.stub(stub[:final_backup_tags]) unless stub[:final_backup_tags].nil?
        data
      end
    end

    # Operation Stubber for DescribeBackups
    class DescribeBackups
      def self.default(visited=[])
        {
          backups: Backups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Backups'] = Backups.stub(stub[:backups]) unless stub[:backups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Backups
    class Backups
      def self.default(visited=[])
        return nil if visited.include?('Backups')
        visited = visited + ['Backups']
        [
          Backup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Backup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDataRepositoryAssociations
    class DescribeDataRepositoryAssociations
      def self.default(visited=[])
        {
          associations: DataRepositoryAssociations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Associations'] = DataRepositoryAssociations.stub(stub[:associations]) unless stub[:associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DataRepositoryAssociations
    class DataRepositoryAssociations
      def self.default(visited=[])
        return nil if visited.include?('DataRepositoryAssociations')
        visited = visited + ['DataRepositoryAssociations']
        [
          DataRepositoryAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataRepositoryAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDataRepositoryTasks
    class DescribeDataRepositoryTasks
      def self.default(visited=[])
        {
          data_repository_tasks: DataRepositoryTasks.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataRepositoryTasks'] = DataRepositoryTasks.stub(stub[:data_repository_tasks]) unless stub[:data_repository_tasks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DataRepositoryTasks
    class DataRepositoryTasks
      def self.default(visited=[])
        return nil if visited.include?('DataRepositoryTasks')
        visited = visited + ['DataRepositoryTasks']
        [
          DataRepositoryTask.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataRepositoryTask.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeFileSystemAliases
    class DescribeFileSystemAliases
      def self.default(visited=[])
        {
          aliases: Aliases.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Aliases'] = Aliases.stub(stub[:aliases]) unless stub[:aliases].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeFileSystems
    class DescribeFileSystems
      def self.default(visited=[])
        {
          file_systems: FileSystems.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileSystems'] = FileSystems.stub(stub[:file_systems]) unless stub[:file_systems].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FileSystems
    class FileSystems
      def self.default(visited=[])
        return nil if visited.include?('FileSystems')
        visited = visited + ['FileSystems']
        [
          FileSystem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FileSystem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeSnapshots
    class DescribeSnapshots
      def self.default(visited=[])
        {
          snapshots: Snapshots.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Snapshots'] = Snapshots.stub(stub[:snapshots]) unless stub[:snapshots].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Snapshots
    class Snapshots
      def self.default(visited=[])
        return nil if visited.include?('Snapshots')
        visited = visited + ['Snapshots']
        [
          Snapshot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Snapshot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeStorageVirtualMachines
    class DescribeStorageVirtualMachines
      def self.default(visited=[])
        {
          storage_virtual_machines: StorageVirtualMachines.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StorageVirtualMachines'] = StorageVirtualMachines.stub(stub[:storage_virtual_machines]) unless stub[:storage_virtual_machines].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StorageVirtualMachines
    class StorageVirtualMachines
      def self.default(visited=[])
        return nil if visited.include?('StorageVirtualMachines')
        visited = visited + ['StorageVirtualMachines']
        [
          StorageVirtualMachine.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StorageVirtualMachine.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeVolumes
    class DescribeVolumes
      def self.default(visited=[])
        {
          volumes: Volumes.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Volumes'] = Volumes.stub(stub[:volumes]) unless stub[:volumes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Volumes
    class Volumes
      def self.default(visited=[])
        return nil if visited.include?('Volumes')
        visited = visited + ['Volumes']
        [
          Volume.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Volume.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DisassociateFileSystemAliases
    class DisassociateFileSystemAliases
      def self.default(visited=[])
        {
          aliases: Aliases.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Aliases'] = Aliases.stub(stub[:aliases]) unless stub[:aliases].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReleaseFileSystemNfsV3Locks
    class ReleaseFileSystemNfsV3Locks
      def self.default(visited=[])
        {
          file_system: FileSystem.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileSystem'] = FileSystem.stub(stub[:file_system]) unless stub[:file_system].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreVolumeFromSnapshot
    class RestoreVolumeFromSnapshot
      def self.default(visited=[])
        {
          volume_id: 'volume_id',
          lifecycle: 'lifecycle',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        data['Lifecycle'] = stub[:lifecycle] unless stub[:lifecycle].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDataRepositoryAssociation
    class UpdateDataRepositoryAssociation
      def self.default(visited=[])
        {
          association: DataRepositoryAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Association'] = DataRepositoryAssociation.stub(stub[:association]) unless stub[:association].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFileSystem
    class UpdateFileSystem
      def self.default(visited=[])
        {
          file_system: FileSystem.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileSystem'] = FileSystem.stub(stub[:file_system]) unless stub[:file_system].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSnapshot
    class UpdateSnapshot
      def self.default(visited=[])
        {
          snapshot: Snapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Snapshot'] = Snapshot.stub(stub[:snapshot]) unless stub[:snapshot].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateStorageVirtualMachine
    class UpdateStorageVirtualMachine
      def self.default(visited=[])
        {
          storage_virtual_machine: StorageVirtualMachine.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StorageVirtualMachine'] = StorageVirtualMachine.stub(stub[:storage_virtual_machine]) unless stub[:storage_virtual_machine].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateVolume
    class UpdateVolume
      def self.default(visited=[])
        {
          volume: Volume.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Volume'] = Volume.stub(stub[:volume]) unless stub[:volume].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
